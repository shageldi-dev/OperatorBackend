import express from 'express';
import {badRequest, response} from "../../../modules/response.mjs";
import {tables} from "../../../modules/constant/constant.mjs";
import {
    insertCancelReason,
    insertCourier,
    insertCustomerInterestedProduct,
    insertCustomerOrder,
    insertCustomerOrderAddress,
    insertCustomerOrderCourier,
    insertCustomerOrderDate,
    insertCustomerOrderDeliveryPrice,
    insertCustomerOrderLocationHistory,
    insertCustomerOrderProduct,
    insertCustomerOrderProductStatus,
    insertCustomerOrderStatus,
    insertCustomers,
    insertCustomerStatus,
    insertFocusWord,
    insertRolePermission,
    insertSellPoint,
    insertSpeakAccent,
    insertSpeakTone, insertUserRole, insertUsers
} from "../../../modules/query/sync-query.mjs";
import {db} from "../../../modules/database/connection.mjs";
import format from "pg-format";

const insertValues = express.Router();

const getQuery=(type)=>{
    if(type===tables.customer){
        return insertCustomers;
    }
    if(type===tables.cancel_reason){
        return insertCancelReason;
    }
    if(type===tables.courier){
        return insertCourier;
    }
    if(type===tables.customer_interested_product){
        return insertCustomerInterestedProduct;
    }
    if(type===tables.customer_order){
        return insertCustomerOrder;
    }
    if(type===tables.customer_order_address_history){
        return insertCustomerOrderAddress;
    }
    if(type===tables.customer_order_courier_history){
        return insertCustomerOrderCourier;
    }
    if(type===tables.customer_order_date_history){
        return insertCustomerOrderDate;
    }
    if(type===tables.customer_order_delivery_price){
        return insertCustomerOrderDeliveryPrice;
    }
    if(type===tables.customer_order_location_history){
        return insertCustomerOrderLocationHistory;
    }
    if(type===tables.customer_order_product){
        return insertCustomerOrderProduct;
    }
    if(type===tables.customer_order_product_status_history){
        return insertCustomerOrderProductStatus;
    }
    if(type===tables.customer_order_status_history){
        return insertCustomerOrderStatus;
    }
    if(type===tables.customer_status){
        return insertCustomerStatus;
    }
    if(type===tables.focus_word){
        return insertFocusWord;
    }
    if(type===tables.role_permission){
        return insertRolePermission;
    }
    if(type===tables.sell_point){
        return insertSellPoint;
    }
    if(type===tables.speak_accent){
        return insertSpeakAccent;
    }
    if(type===tables.speak_tone){
        return insertSpeakTone;
    }
    if(type===tables.user_role){
        return insertUserRole;
    }
    if(type===tables.users){
        return insertUsers;
    }
}

const getValues=async(type,values)=>{
    let result=[];
    if(type===tables.customer){
        await values.forEach((e,i)=>{
            const{
                fullname, phone_number, question_mode, address_home, address_work, information, created_at, updated_at, unique_id, operator_unique_id, speak_mode, status, speak_tone, speak_accent, focus_word, find_us
            } = e;
            result.push([fullname, phone_number, question_mode, address_home, address_work, information, created_at, updated_at, unique_id, operator_unique_id, speak_mode, status, speak_tone, speak_accent, focus_word, find_us]);
        })
    }
    if(type===tables.cancel_reason){
        await values.forEach((e,i)=>{
            const{
                unique_id, sell_point_id, reason, created_at, updated_at
            } = e;
            result.push([unique_id, sell_point_id, reason, created_at, updated_at]);
        })
    }
    if(type===tables.courier){
        await values.forEach((e,i)=>{
            const{
                fullname, username, password, phone_number, status, created_at, updated_at, date_of_birthday, work_start_date, sell_point_id, unique_id, user_role, token
            } = e;
            result.push([fullname, username, password, phone_number, status, created_at, updated_at, date_of_birthday, work_start_date, sell_point_id, unique_id, user_role, token]);
        })
    }
    if(type===tables.customer_interested_product){
        await values.forEach((e,i)=>{
            const{
                interested_product_name, interested_product_size, interested_product_color, status, created_at, updated_at, unique_id, customer_unique_id, operator_unique_id
            } = e;
            result.push([interested_product_name, interested_product_size, interested_product_color, status, created_at, updated_at, unique_id, customer_unique_id, operator_unique_id]);
        })
    }
    if(type===tables.customer_order){
        await values.forEach((e,i)=>{
            const{
                unique_id, is_express, created_at, updated_at, additional_information, customer_unique_id, operator_unique_id
            } = e;
            result.push([unique_id, is_express, created_at, updated_at, additional_information, customer_unique_id, operator_unique_id]);
        })
    }
    if(type===tables.customer_order_address_history){
        await values.forEach((e,i)=>{
            const{
                customer_order_unique_id, address, user_unique_id, created_at, updated_at, reason
            } = e;
            result.push([customer_order_unique_id, address, user_unique_id, created_at, updated_at, reason]);
        })
    }
    if(type===tables.customer_order_courier_history){
        await values.forEach((e,i)=>{
            const{
                customer_order_unique_id, courier_unique_id, operator_unique_id, created_at, updated_at, reason
            } = e;
            result.push([customer_order_unique_id, courier_unique_id, operator_unique_id, created_at, updated_at, reason]);
        })
    }
    if(type===tables.customer_order_date_history){
        await values.forEach((e,i)=>{
            const{
                customer_order_unique_id, order_date, order_time, user_unique_id, created_at, updated_at, reason
            } = e;
            result.push([customer_order_unique_id, order_date, order_time, user_unique_id, created_at, updated_at, reason]);
        })
    }
    if(type===tables.customer_order_delivery_price){
        await values.forEach((e,i)=>{
            const {
                customer_order_unique_id, user_unique_id, delivery_price, reason, created_at, updated_at
            } = e;
            result.push([customer_order_unique_id, user_unique_id, delivery_price, reason, created_at, updated_at]);
        })
    }
    if(type===tables.customer_order_location_history){
        await values.forEach((e,i)=>{
            const{
                customer_order_unique_id, user_unique_id, latitude, longitude, reason, created_at, updated_at
            } = e;
            result.push([customer_order_unique_id, user_unique_id, latitude, longitude, reason, created_at, updated_at]);
        })
    }
    if(type===tables.customer_order_product){
        await values.forEach((e,i)=>{
            const{
                customer_order_unique_id, product_name, product_brand, product_model, product_artikul_code, product_debt_price, product_cash_price, product_discount, product_size, product_color, product_count, unique_id, created_at, updated_at, reason, operator_unique_id
            } = e;
            result.push([customer_order_unique_id, product_name, product_brand, product_model, product_artikul_code, product_debt_price, product_cash_price, product_discount, product_size, product_color, product_count, unique_id, created_at, updated_at, reason, operator_unique_id]);
        })
    }
    if(type===tables.customer_order_product_status_history){
        await values.forEach((e,i)=>{
            const{
                customer_order_product_unique_id, status, user_unique_id, created_at, updated_at, reason
            } = e;
            result.push([customer_order_product_unique_id, status, user_unique_id, created_at, updated_at, reason]);
        })
    }
    if(type===tables.customer_order_status_history){
        await values.forEach((e,i)=>{
            const{
                customer_order_unique_id, status, reason, user_unique_id, created_at, updated_at
            } = e;
            result.push([ customer_order_unique_id, status, reason, user_unique_id, created_at, updated_at]);
        })
    }
    if(type===tables.customer_status){
        await values.forEach((e,i)=>{
            const{
                value, status, created_at, updated_at
            } = e;
            result.push([value, status, created_at, updated_at]);
        })
    }
    if(type===tables.focus_word){
        await values.forEach((e,i)=>{
            const{
                value, status, created_at, updated_at
            } = e;
            result.push([value, status, created_at, updated_at]);
        })
    }
    if(type===tables.role_permission){
        await values.forEach((e,i)=>{
            const{
                permission, can_read, can_write, can_edit, can_delete, user_role, created_at, updated_at
            } = e;
            result.push([ permission, can_read, can_write, can_edit, can_delete, user_role, created_at, updated_at]);
        })
    }
    if(type===tables.sell_point){
        await values.forEach((e,i)=>{
            const{
                name, address, phone_number, latitude, longitude, created_at, updated_at, unique_id
            } = e;
            result.push([name, address, phone_number, latitude, longitude, created_at, updated_at, unique_id]);
        })
    }
    if(type===tables.speak_accent){
        await values.forEach((e,i)=>{
            const{
                value, status, created_at, updated_at
            } = e;
            result.push([value, status, created_at, updated_at]);
        })
    }
    if(type===tables.speak_tone){
        await values.forEach((e,i)=>{
            const{
                value, status, created_at, updated_at
            } = e;
            result.push([value, status, created_at, updated_at]);
        })
    }
    if(type===tables.user_role){
        await values.forEach((e,i)=>{
            const{
                name, created_at, updated_at
            } = e;
            result.push([name, created_at, updated_at]);
        })
    }
    if(type===tables.users){
        await values.forEach((e,i)=>{
            const{
                fullname, username, password, phone_number, status, user_role, sell_point_id, token, created_at, updated_at, work_start_date, date_of_birthday, unique_id, user_number
            } = e;
            result.push([fullname, username, password, phone_number, status, user_role, sell_point_id, token, created_at, updated_at, work_start_date, date_of_birthday, unique_id, user_number]);
        })
    }
    return result;
}

insertValues.post('/', async (req, res) => {
    if (typeof req.body === 'undefined' || req.body == null) {
        badRequest(req, res);
    } else {
        const {
            values,
            type
        } = req.body;
        let v = await getValues(type,values);
        db.query(format(getQuery(type),v))
            .then(result=>{
                res.json(response(false,'success',result.rows));
                res.end();
            })
            .catch(err=>{
                badRequest(req,res);
            })

    }
})

export {insertValues};