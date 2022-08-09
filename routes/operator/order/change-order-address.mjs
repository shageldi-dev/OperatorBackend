import express from 'express';
import {verifyToken} from "../../../modules/auth/token.mjs";
import {badRequest, response} from "../../../modules/response.mjs";
import {db} from "../../../modules/database/connection.mjs";
import {changeOrderAddress, getCourierUniqueId} from "../../../modules/query/operator-query.mjs";
import {sendMessage} from "../../../modules/push/push.mjs";

const changeOrderAddressRouter = express.Router();

changeOrderAddressRouter.put('/',verifyToken,(req,res)=>{
    if(typeof req.body === 'undefined'){
        badRequest(req,res);
    } else {
        const {order_unique_id,address,reason} = req.body;
        db.query(changeOrderAddress,[order_unique_id,address,req.user.user.unique_id,reason])
            .then(async result=>{
                if(result.rows.length){
                    await db.query(getCourierUniqueId,[order_unique_id])
                        .then(async result_courier=>{
                            if(result_courier.rows.length){
                                await sendMessage(result_courier.rows[0].courier_unique_id,
                                    `Sargydyň eltip berilmeli salgysy üýtgedi!`,
                                    `Täze salgy: ${address}, ${reason}`,
                                    {
                                        order_unique_id:order_unique_id,
                                        courier_unique_id:result_courier.rows[0].courier_unique_id,
                                        user_unique_id:req.user.user.unique_id
                                    });
                            }
                        })
                        .catch(err=>{})
                    res.json(response(false,'success',result.rows[0]));
                    res.end();
                } else {
                    badRequest(req,res);
                }
            })
            .catch(err=>{
                badRequest(req,res);
            })
    }
})

export {changeOrderAddressRouter};