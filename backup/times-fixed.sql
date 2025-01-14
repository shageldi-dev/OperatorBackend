PGDMP     2    ;                z            operator    14.4    14.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16435    operator    DATABASE     m   CREATE DATABASE operator WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE operator;
                postgres    false            �            1259    16436    cancel_reason    TABLE     �   CREATE TABLE public.cancel_reason (
    id bigint NOT NULL,
    unique_id text,
    sell_point_id text,
    reason text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 !   DROP TABLE public.cancel_reason;
       public         heap    postgres    false            �            1259    16441    cancel_reason_id_seq    SEQUENCE     }   CREATE SEQUENCE public.cancel_reason_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cancel_reason_id_seq;
       public          postgres    false    209                       0    0    cancel_reason_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cancel_reason_id_seq OWNED BY public.cancel_reason.id;
          public          postgres    false    210            �            1259    16442    courier    TABLE     v  CREATE TABLE public.courier (
    id bigint NOT NULL,
    fullname text,
    username text,
    password text,
    phone_number text,
    status bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    date_of_birthday text,
    work_start_date text,
    sell_point_id bigint,
    unique_id text,
    user_role bigint,
    token text
);
    DROP TABLE public.courier;
       public         heap    postgres    false                       0    0    TABLE courier    COMMENT     6   COMMENT ON TABLE public.courier IS 'Eltip berijiler';
          public          postgres    false    211            �            1259    16447    courier_id_seq    SEQUENCE     w   CREATE SEQUENCE public.courier_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courier_id_seq;
       public          postgres    false    211                       0    0    courier_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courier_id_seq OWNED BY public.courier.id;
          public          postgres    false    212            �            1259    16448    customer    TABLE     �  CREATE TABLE public.customer (
    id bigint NOT NULL,
    fullname text,
    phone_number text,
    question_mode text,
    address_home text,
    address_work text,
    information text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    unique_id text,
    operator_unique_id text,
    speak_mode bigint,
    status bigint,
    speak_tone bigint,
    speak_accent bigint,
    focus_word bigint,
    find_us bigint DEFAULT 0
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16453    customer_ID_seq    SEQUENCE     z   CREATE SEQUENCE public."customer_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."customer_ID_seq";
       public          postgres    false    213                       0    0    customer_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."customer_ID_seq" OWNED BY public.customer.id;
          public          postgres    false    214            �            1259    16454    customer_interested_product    TABLE     f  CREATE TABLE public.customer_interested_product (
    id bigint NOT NULL,
    interested_product_name text,
    interested_product_size text,
    interested_product_color text,
    status bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    unique_id text,
    customer_unique_id text,
    operator_unique_id text
);
 /   DROP TABLE public.customer_interested_product;
       public         heap    postgres    false            �            1259    16459 "   customer_interested_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_interested_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.customer_interested_product_id_seq;
       public          postgres    false    215                       0    0 "   customer_interested_product_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.customer_interested_product_id_seq OWNED BY public.customer_interested_product.id;
          public          postgres    false    216            �            1259    16460    customer_order    TABLE     &  CREATE TABLE public.customer_order (
    id bigint NOT NULL,
    unique_id text,
    is_express boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    additional_information text,
    customer_unique_id text,
    operator_unique_id text
);
 "   DROP TABLE public.customer_order;
       public         heap    postgres    false            �            1259    16466    customer_order_address_history    TABLE       CREATE TABLE public.customer_order_address_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    address text,
    user_unique_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    reason text,
    unique_id text
);
 2   DROP TABLE public.customer_order_address_history;
       public         heap    postgres    false            �            1259    16471 %   customer_order_address_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_address_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.customer_order_address_history_id_seq;
       public          postgres    false    218                       0    0 %   customer_order_address_history_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.customer_order_address_history_id_seq OWNED BY public.customer_order_address_history.id;
          public          postgres    false    219            �            1259    16472    customer_order_courier_history    TABLE     "  CREATE TABLE public.customer_order_courier_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    courier_unique_id text,
    operator_unique_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    reason text,
    unique_id text
);
 2   DROP TABLE public.customer_order_courier_history;
       public         heap    postgres    false            �            1259    16477 %   customer_order_courier_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_courier_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.customer_order_courier_history_id_seq;
       public          postgres    false    220                       0    0 %   customer_order_courier_history_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.customer_order_courier_history_id_seq OWNED BY public.customer_order_courier_history.id;
          public          postgres    false    221            �            1259    16478    customer_order_date_history    TABLE     )  CREATE TABLE public.customer_order_date_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    order_date text,
    order_time text,
    user_unique_id text,
    reason text,
    unique_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 /   DROP TABLE public.customer_order_date_history;
       public         heap    postgres    false            �            1259    16483 "   customer_order_date_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_date_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.customer_order_date_history_id_seq;
       public          postgres    false    222            	           0    0 "   customer_order_date_history_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.customer_order_date_history_id_seq OWNED BY public.customer_order_date_history.id;
          public          postgres    false    223            �            1259    16484    customer_order_delivery_price    TABLE     0  CREATE TABLE public.customer_order_delivery_price (
    id bigint NOT NULL,
    customer_order_unique_id text,
    user_unique_id text,
    delivery_price double precision DEFAULT 0,
    reason text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    unique_id text
);
 1   DROP TABLE public.customer_order_delivery_price;
       public         heap    postgres    false            
           0    0 #   TABLE customer_order_delivery_price    COMMENT     R   COMMENT ON TABLE public.customer_order_delivery_price IS 'Eltip bermek bahalary';
          public          postgres    false    224            �            1259    16490 $   customer_order_delivery_price_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_delivery_price_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.customer_order_delivery_price_id_seq;
       public          postgres    false    224                       0    0 $   customer_order_delivery_price_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.customer_order_delivery_price_id_seq OWNED BY public.customer_order_delivery_price.id;
          public          postgres    false    225            �            1259    16491    customer_order_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.customer_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.customer_order_id_seq;
       public          postgres    false    217                       0    0    customer_order_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.customer_order_id_seq OWNED BY public.customer_order.id;
          public          postgres    false    226            �            1259    16492    customer_order_location_history    TABLE     *  CREATE TABLE public.customer_order_location_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    user_unique_id text,
    latitude text,
    longitude text,
    reason text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    unique_id text
);
 3   DROP TABLE public.customer_order_location_history;
       public         heap    postgres    false                       0    0 %   TABLE customer_order_location_history    COMMENT     b   COMMENT ON TABLE public.customer_order_location_history IS 'Eltip berilmeli yerin kordinatalary';
          public          postgres    false    227            �            1259    16497 &   customer_order_location_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_location_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.customer_order_location_history_id_seq;
       public          postgres    false    227                       0    0 &   customer_order_location_history_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.customer_order_location_history_id_seq OWNED BY public.customer_order_location_history.id;
          public          postgres    false    228            �            1259    16498    customer_order_product    TABLE     N  CREATE TABLE public.customer_order_product (
    id bigint NOT NULL,
    customer_order_unique_id text,
    product_name text,
    product_brand text,
    product_model text,
    product_artikul_code text,
    product_debt_price double precision DEFAULT 0,
    product_cash_price double precision DEFAULT 0,
    product_discount double precision DEFAULT 0,
    product_size text,
    product_color text,
    product_count bigint DEFAULT 0,
    unique_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    reason text,
    operator_unique_id text
);
 *   DROP TABLE public.customer_order_product;
       public         heap    postgres    false            �            1259    16507    customer_order_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.customer_order_product_id_seq;
       public          postgres    false    229                       0    0    customer_order_product_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.customer_order_product_id_seq OWNED BY public.customer_order_product.id;
          public          postgres    false    230            �            1259    16508 %   customer_order_product_status_history    TABLE     "  CREATE TABLE public.customer_order_product_status_history (
    id bigint NOT NULL,
    customer_order_product_unique_id text,
    status text,
    user_unique_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    reason text,
    unique_id text
);
 9   DROP TABLE public.customer_order_product_status_history;
       public         heap    postgres    false            �            1259    16513 ,   customer_order_product_status_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_product_status_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.customer_order_product_status_history_id_seq;
       public          postgres    false    231                       0    0 ,   customer_order_product_status_history_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.customer_order_product_status_history_id_seq OWNED BY public.customer_order_product_status_history.id;
          public          postgres    false    232            �            1259    16514    customer_order_status_history    TABLE       CREATE TABLE public.customer_order_status_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    status text,
    reason text,
    user_unique_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    unique_id text
);
 1   DROP TABLE public.customer_order_status_history;
       public         heap    postgres    false            �            1259    16519 $   customer_order_status_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_status_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.customer_order_status_history_id_seq;
       public          postgres    false    233                       0    0 $   customer_order_status_history_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.customer_order_status_history_id_seq OWNED BY public.customer_order_status_history.id;
          public          postgres    false    234            �            1259    16520    customer_status    TABLE     �   CREATE TABLE public.customer_status (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 #   DROP TABLE public.customer_status;
       public         heap    postgres    false                       0    0    TABLE customer_status    COMMENT     D   COMMENT ON TABLE public.customer_status IS 'Müşderiniň statusy';
          public          postgres    false    235            �            1259    16525    customer_status_id_seq    SEQUENCE        CREATE SEQUENCE public.customer_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.customer_status_id_seq;
       public          postgres    false    235                       0    0    customer_status_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.customer_status_id_seq OWNED BY public.customer_status.id;
          public          postgres    false    236            �            1259    16526 	   fcm_token    TABLE     �   CREATE TABLE public.fcm_token (
    id bigint NOT NULL,
    token text,
    user_role bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    user_unique_id text
);
    DROP TABLE public.fcm_token;
       public         heap    postgres    false                       0    0    TABLE fcm_token    COMMENT     H   COMMENT ON TABLE public.fcm_token IS 'Firebase cloud messaging tokens';
          public          postgres    false    237            �            1259    16531    fcm_token_id_seq    SEQUENCE     y   CREATE SEQUENCE public.fcm_token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.fcm_token_id_seq;
       public          postgres    false    237                       0    0    fcm_token_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.fcm_token_id_seq OWNED BY public.fcm_token.id;
          public          postgres    false    238            �            1259    16532    find_us    TABLE     �   CREATE TABLE public.find_us (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.find_us;
       public         heap    postgres    false                       0    0    TABLE find_us    COMMENT     9   COMMENT ON TABLE public.find_us IS 'Bizi nireden tapdy';
          public          postgres    false    239            �            1259    16537    find_us_id_seq    SEQUENCE     w   CREATE SEQUENCE public.find_us_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.find_us_id_seq;
       public          postgres    false    239                       0    0    find_us_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.find_us_id_seq OWNED BY public.find_us.id;
          public          postgres    false    240            �            1259    16538 
   focus_word    TABLE     �   CREATE TABLE public.focus_word (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.focus_word;
       public         heap    postgres    false                       0    0    TABLE focus_word    COMMENT     M   COMMENT ON TABLE public.focus_word IS 'Nähili ýüzlenilse gowy görýär';
          public          postgres    false    241            �            1259    16543    focus_word_id_seq    SEQUENCE     z   CREATE SEQUENCE public.focus_word_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.focus_word_id_seq;
       public          postgres    false    241                       0    0    focus_word_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.focus_word_id_seq OWNED BY public.focus_word.id;
          public          postgres    false    242            �            1259    16544    inbox    TABLE     M  CREATE TABLE public.inbox (
    id bigint NOT NULL,
    title text,
    message text,
    link_to_goal text,
    is_read boolean DEFAULT false,
    is_delete boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    unique_id text,
    from_unique_id text,
    to_unique_id text
);
    DROP TABLE public.inbox;
       public         heap    postgres    false            �            1259    16551    inbox_id_seq    SEQUENCE     u   CREATE SEQUENCE public.inbox_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.inbox_id_seq;
       public          postgres    false    243                       0    0    inbox_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.inbox_id_seq OWNED BY public.inbox.id;
          public          postgres    false    244            �            1259    16552    login_history    TABLE     �   CREATE TABLE public.login_history (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    unique_id text,
    user_unique_id text,
    type bigint DEFAULT 1,
    device_name text
);
 !   DROP TABLE public.login_history;
       public         heap    postgres    false            �            1259    16558    login_history_id_seq    SEQUENCE     }   CREATE SEQUENCE public.login_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.login_history_id_seq;
       public          postgres    false    245                       0    0    login_history_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.login_history_id_seq OWNED BY public.login_history.id;
          public          postgres    false    246            �            1259    16559 
   phone_call    TABLE     q  CREATE TABLE public.phone_call (
    id bigint NOT NULL,
    phone_number text,
    contact_name text,
    call_direction text,
    call_time text,
    call_duration text,
    unique_id text,
    status text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    user_unique_id text,
    call_state text DEFAULT 0,
    call_date date
);
    DROP TABLE public.phone_call;
       public         heap    postgres    false            �            1259    16565    phone_call_id_seq    SEQUENCE     z   CREATE SEQUENCE public.phone_call_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.phone_call_id_seq;
       public          postgres    false    247                       0    0    phone_call_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.phone_call_id_seq OWNED BY public.phone_call.id;
          public          postgres    false    248            �            1259    16566    role_permission    TABLE       CREATE TABLE public.role_permission (
    id bigint NOT NULL,
    permission text,
    can_read boolean,
    can_write boolean,
    can_edit boolean,
    can_delete boolean,
    user_role bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 #   DROP TABLE public.role_permission;
       public         heap    postgres    false            �            1259    16571    role_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.role_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.role_permission_id_seq;
       public          postgres    false    249                       0    0    role_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.role_permission_id_seq OWNED BY public.role_permission.id;
          public          postgres    false    250            �            1259    16572 
   sell_point    TABLE        CREATE TABLE public.sell_point (
    id bigint NOT NULL,
    name text,
    address text,
    phone_number text,
    latitude text,
    longitude text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    unique_id text
);
    DROP TABLE public.sell_point;
       public         heap    postgres    false                       0    0    TABLE sell_point    COMMENT     9   COMMENT ON TABLE public.sell_point IS 'Satuw nokatlary';
          public          postgres    false    251            �            1259    16577    sell_point_id_seq    SEQUENCE     z   CREATE SEQUENCE public.sell_point_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sell_point_id_seq;
       public          postgres    false    251                       0    0    sell_point_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sell_point_id_seq OWNED BY public.sell_point.id;
          public          postgres    false    252            �            1259    16578    speak_accent    TABLE     �   CREATE TABLE public.speak_accent (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
     DROP TABLE public.speak_accent;
       public         heap    postgres    false                        0    0    TABLE speak_accent    COMMENT     J   COMMENT ON TABLE public.speak_accent IS 'Nähili äheňde gürleşýär';
          public          postgres    false    253            �            1259    16583    speak_accent_id_seq    SEQUENCE     |   CREATE SEQUENCE public.speak_accent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.speak_accent_id_seq;
       public          postgres    false    253            !           0    0    speak_accent_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.speak_accent_id_seq OWNED BY public.speak_accent.id;
          public          postgres    false    254            �            1259    16584 
   speak_mode    TABLE     �   CREATE TABLE public.speak_mode (
    id bigint NOT NULL,
    value text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    status bigint
);
    DROP TABLE public.speak_mode;
       public         heap    postgres    false            "           0    0    TABLE speak_mode    COMMENT     <   COMMENT ON TABLE public.speak_mode IS 'Gepleýiş şekili';
          public          postgres    false    255                        1259    16589    speak_mode_id_seq    SEQUENCE     z   CREATE SEQUENCE public.speak_mode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.speak_mode_id_seq;
       public          postgres    false    255            #           0    0    speak_mode_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.speak_mode_id_seq OWNED BY public.speak_mode.id;
          public          postgres    false    256                       1259    16590 
   speak_tone    TABLE     �   CREATE TABLE public.speak_tone (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.speak_tone;
       public         heap    postgres    false            $           0    0    TABLE speak_tone    COMMENT     :   COMMENT ON TABLE public.speak_tone IS 'Gürleýiş tony';
          public          postgres    false    257                       1259    16595    speak_tone_id_seq    SEQUENCE     z   CREATE SEQUENCE public.speak_tone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.speak_tone_id_seq;
       public          postgres    false    257            %           0    0    speak_tone_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.speak_tone_id_seq OWNED BY public.speak_tone.id;
          public          postgres    false    258                       1259    16596    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    fullname text,
    username text,
    password text,
    phone_number text,
    status bigint,
    user_role bigint,
    sell_point_id bigint,
    token text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    work_start_date text,
    date_of_birthday text,
    unique_id text,
    user_number text DEFAULT 0
);
    DROP TABLE public.users;
       public         heap    postgres    false            &           0    0    TABLE users    COMMENT     ?   COMMENT ON TABLE public.users IS 'Admin, moderator, operator';
          public          postgres    false    259                       1259    16602    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    259            '           0    0    user_id_seq    SEQUENCE OWNED BY     <   ALTER SEQUENCE public.user_id_seq OWNED BY public.users.id;
          public          postgres    false    260                       1259    16603 	   user_role    TABLE     �   CREATE TABLE public.user_role (
    id bigint NOT NULL,
    name text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.user_role;
       public         heap    postgres    false                       1259    16608    user_role_id_seq    SEQUENCE     y   CREATE SEQUENCE public.user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_role_id_seq;
       public          postgres    false    261            (           0    0    user_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_role_id_seq OWNED BY public.user_role.id;
          public          postgres    false    262            �           2604    16609    cancel_reason id    DEFAULT     t   ALTER TABLE ONLY public.cancel_reason ALTER COLUMN id SET DEFAULT nextval('public.cancel_reason_id_seq'::regclass);
 ?   ALTER TABLE public.cancel_reason ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    16610 
   courier id    DEFAULT     h   ALTER TABLE ONLY public.courier ALTER COLUMN id SET DEFAULT nextval('public.courier_id_seq'::regclass);
 9   ALTER TABLE public.courier ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �           2604    16611    customer id    DEFAULT     l   ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public."customer_ID_seq"'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    16612    customer_interested_product id    DEFAULT     �   ALTER TABLE ONLY public.customer_interested_product ALTER COLUMN id SET DEFAULT nextval('public.customer_interested_product_id_seq'::regclass);
 M   ALTER TABLE public.customer_interested_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    16613    customer_order id    DEFAULT     v   ALTER TABLE ONLY public.customer_order ALTER COLUMN id SET DEFAULT nextval('public.customer_order_id_seq'::regclass);
 @   ALTER TABLE public.customer_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    217            �           2604    16614 !   customer_order_address_history id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_address_history ALTER COLUMN id SET DEFAULT nextval('public.customer_order_address_history_id_seq'::regclass);
 P   ALTER TABLE public.customer_order_address_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    16615 !   customer_order_courier_history id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_courier_history ALTER COLUMN id SET DEFAULT nextval('public.customer_order_courier_history_id_seq'::regclass);
 P   ALTER TABLE public.customer_order_courier_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    16616    customer_order_date_history id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_date_history ALTER COLUMN id SET DEFAULT nextval('public.customer_order_date_history_id_seq'::regclass);
 M   ALTER TABLE public.customer_order_date_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16617     customer_order_delivery_price id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_delivery_price ALTER COLUMN id SET DEFAULT nextval('public.customer_order_delivery_price_id_seq'::regclass);
 O   ALTER TABLE public.customer_order_delivery_price ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16618 "   customer_order_location_history id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_location_history ALTER COLUMN id SET DEFAULT nextval('public.customer_order_location_history_id_seq'::regclass);
 Q   ALTER TABLE public.customer_order_location_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    16619    customer_order_product id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_product ALTER COLUMN id SET DEFAULT nextval('public.customer_order_product_id_seq'::regclass);
 H   ALTER TABLE public.customer_order_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    16620 (   customer_order_product_status_history id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_product_status_history ALTER COLUMN id SET DEFAULT nextval('public.customer_order_product_status_history_id_seq'::regclass);
 W   ALTER TABLE public.customer_order_product_status_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    16621     customer_order_status_history id    DEFAULT     �   ALTER TABLE ONLY public.customer_order_status_history ALTER COLUMN id SET DEFAULT nextval('public.customer_order_status_history_id_seq'::regclass);
 O   ALTER TABLE public.customer_order_status_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    16622    customer_status id    DEFAULT     x   ALTER TABLE ONLY public.customer_status ALTER COLUMN id SET DEFAULT nextval('public.customer_status_id_seq'::regclass);
 A   ALTER TABLE public.customer_status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            �           2604    16623    fcm_token id    DEFAULT     l   ALTER TABLE ONLY public.fcm_token ALTER COLUMN id SET DEFAULT nextval('public.fcm_token_id_seq'::regclass);
 ;   ALTER TABLE public.fcm_token ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            �           2604    16624 
   find_us id    DEFAULT     h   ALTER TABLE ONLY public.find_us ALTER COLUMN id SET DEFAULT nextval('public.find_us_id_seq'::regclass);
 9   ALTER TABLE public.find_us ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            �           2604    16625    focus_word id    DEFAULT     n   ALTER TABLE ONLY public.focus_word ALTER COLUMN id SET DEFAULT nextval('public.focus_word_id_seq'::regclass);
 <   ALTER TABLE public.focus_word ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            �           2604    16626    inbox id    DEFAULT     d   ALTER TABLE ONLY public.inbox ALTER COLUMN id SET DEFAULT nextval('public.inbox_id_seq'::regclass);
 7   ALTER TABLE public.inbox ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            �           2604    16627    login_history id    DEFAULT     t   ALTER TABLE ONLY public.login_history ALTER COLUMN id SET DEFAULT nextval('public.login_history_id_seq'::regclass);
 ?   ALTER TABLE public.login_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245            �           2604    16628    phone_call id    DEFAULT     n   ALTER TABLE ONLY public.phone_call ALTER COLUMN id SET DEFAULT nextval('public.phone_call_id_seq'::regclass);
 <   ALTER TABLE public.phone_call ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247            �           2604    16629    role_permission id    DEFAULT     x   ALTER TABLE ONLY public.role_permission ALTER COLUMN id SET DEFAULT nextval('public.role_permission_id_seq'::regclass);
 A   ALTER TABLE public.role_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249            �           2604    16630    sell_point id    DEFAULT     n   ALTER TABLE ONLY public.sell_point ALTER COLUMN id SET DEFAULT nextval('public.sell_point_id_seq'::regclass);
 <   ALTER TABLE public.sell_point ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251            �           2604    16631    speak_accent id    DEFAULT     r   ALTER TABLE ONLY public.speak_accent ALTER COLUMN id SET DEFAULT nextval('public.speak_accent_id_seq'::regclass);
 >   ALTER TABLE public.speak_accent ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253                        2604    16632    speak_mode id    DEFAULT     n   ALTER TABLE ONLY public.speak_mode ALTER COLUMN id SET DEFAULT nextval('public.speak_mode_id_seq'::regclass);
 <   ALTER TABLE public.speak_mode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255                       2604    16633    speak_tone id    DEFAULT     n   ALTER TABLE ONLY public.speak_tone ALTER COLUMN id SET DEFAULT nextval('public.speak_tone_id_seq'::regclass);
 <   ALTER TABLE public.speak_tone ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257                       2604    16634    user_role id    DEFAULT     l   ALTER TABLE ONLY public.user_role ALTER COLUMN id SET DEFAULT nextval('public.user_role_id_seq'::regclass);
 ;   ALTER TABLE public.user_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261                       2604    16635    users id    DEFAULT     c   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259            �          0    16436    cancel_reason 
   TABLE DATA           e   COPY public.cancel_reason (id, unique_id, sell_point_id, reason, created_at, updated_at) FROM stdin;
    public          postgres    false    209   �       �          0    16442    courier 
   TABLE DATA           �   COPY public.courier (id, fullname, username, password, phone_number, status, created_at, updated_at, date_of_birthday, work_start_date, sell_point_id, unique_id, user_role, token) FROM stdin;
    public          postgres    false    211   |�       �          0    16448    customer 
   TABLE DATA           �   COPY public.customer (id, fullname, phone_number, question_mode, address_home, address_work, information, created_at, updated_at, unique_id, operator_unique_id, speak_mode, status, speak_tone, speak_accent, focus_word, find_us) FROM stdin;
    public          postgres    false    213   +�       �          0    16454    customer_interested_product 
   TABLE DATA           �   COPY public.customer_interested_product (id, interested_product_name, interested_product_size, interested_product_color, status, created_at, updated_at, unique_id, customer_unique_id, operator_unique_id) FROM stdin;
    public          postgres    false    215   f       �          0    16460    customer_order 
   TABLE DATA           �   COPY public.customer_order (id, unique_id, is_express, created_at, updated_at, additional_information, customer_unique_id, operator_unique_id) FROM stdin;
    public          postgres    false    217   �      �          0    16466    customer_order_address_history 
   TABLE DATA           �   COPY public.customer_order_address_history (id, customer_order_unique_id, address, user_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    218   �      �          0    16472    customer_order_courier_history 
   TABLE DATA           �   COPY public.customer_order_courier_history (id, customer_order_unique_id, courier_unique_id, operator_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    220   m      �          0    16478    customer_order_date_history 
   TABLE DATA           �   COPY public.customer_order_date_history (id, customer_order_unique_id, order_date, order_time, user_unique_id, reason, unique_id, created_at, updated_at) FROM stdin;
    public          postgres    false    222   W      �          0    16484    customer_order_delivery_price 
   TABLE DATA           �   COPY public.customer_order_delivery_price (id, customer_order_unique_id, user_unique_id, delivery_price, reason, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    224   �      �          0    16492    customer_order_location_history 
   TABLE DATA           �   COPY public.customer_order_location_history (id, customer_order_unique_id, user_unique_id, latitude, longitude, reason, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    227   }      �          0    16498    customer_order_product 
   TABLE DATA           5  COPY public.customer_order_product (id, customer_order_unique_id, product_name, product_brand, product_model, product_artikul_code, product_debt_price, product_cash_price, product_discount, product_size, product_color, product_count, unique_id, created_at, updated_at, reason, operator_unique_id) FROM stdin;
    public          postgres    false    229   �      �          0    16508 %   customer_order_product_status_history 
   TABLE DATA           �   COPY public.customer_order_product_status_history (id, customer_order_product_unique_id, status, user_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    231   1%      �          0    16514    customer_order_status_history 
   TABLE DATA           �   COPY public.customer_order_status_history (id, customer_order_unique_id, status, reason, user_unique_id, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    233   1      �          0    16520    customer_status 
   TABLE DATA           T   COPY public.customer_status (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    235   u:      �          0    16526 	   fcm_token 
   TABLE DATA           a   COPY public.fcm_token (id, token, user_role, created_at, updated_at, user_unique_id) FROM stdin;
    public          postgres    false    237   d;      �          0    16532    find_us 
   TABLE DATA           L   COPY public.find_us (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    239   ;T      �          0    16538 
   focus_word 
   TABLE DATA           O   COPY public.focus_word (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    241   U      �          0    16544    inbox 
   TABLE DATA           �   COPY public.inbox (id, title, message, link_to_goal, is_read, is_delete, created_at, updated_at, unique_id, from_unique_id, to_unique_id) FROM stdin;
    public          postgres    false    243   �U      �          0    16552    login_history 
   TABLE DATA           q   COPY public.login_history (id, created_at, updated_at, unique_id, user_unique_id, type, device_name) FROM stdin;
    public          postgres    false    245   =[      �          0    16559 
   phone_call 
   TABLE DATA           �   COPY public.phone_call (id, phone_number, contact_name, call_direction, call_time, call_duration, unique_id, status, created_at, updated_at, user_unique_id, call_state, call_date) FROM stdin;
    public          postgres    false    247   <�      �          0    16566    role_permission 
   TABLE DATA           �   COPY public.role_permission (id, permission, can_read, can_write, can_edit, can_delete, user_role, created_at, updated_at) FROM stdin;
    public          postgres    false    249   &�      �          0    16572 
   sell_point 
   TABLE DATA           }   COPY public.sell_point (id, name, address, phone_number, latitude, longitude, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    251   D�      �          0    16578    speak_accent 
   TABLE DATA           Q   COPY public.speak_accent (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    253   ��      �          0    16584 
   speak_mode 
   TABLE DATA           O   COPY public.speak_mode (id, value, created_at, updated_at, status) FROM stdin;
    public          postgres    false    255   R�      �          0    16590 
   speak_tone 
   TABLE DATA           O   COPY public.speak_tone (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    257   �      �          0    16603 	   user_role 
   TABLE DATA           E   COPY public.user_role (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    261   ��      �          0    16596    users 
   TABLE DATA           �   COPY public.users (id, fullname, username, password, phone_number, status, user_role, sell_point_id, token, created_at, updated_at, work_start_date, date_of_birthday, unique_id, user_number) FROM stdin;
    public          postgres    false    259   c�      )           0    0    cancel_reason_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cancel_reason_id_seq', 1, true);
          public          postgres    false    210            *           0    0    courier_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courier_id_seq', 5, true);
          public          postgres    false    212            +           0    0    customer_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."customer_ID_seq"', 4, true);
          public          postgres    false    214            ,           0    0 "   customer_interested_product_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.customer_interested_product_id_seq', 10, true);
          public          postgres    false    216            -           0    0 %   customer_order_address_history_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.customer_order_address_history_id_seq', 11, true);
          public          postgres    false    219            .           0    0 %   customer_order_courier_history_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.customer_order_courier_history_id_seq', 12, true);
          public          postgres    false    221            /           0    0 "   customer_order_date_history_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.customer_order_date_history_id_seq', 9, true);
          public          postgres    false    223            0           0    0 $   customer_order_delivery_price_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_delivery_price_id_seq', 14, true);
          public          postgres    false    225            1           0    0    customer_order_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.customer_order_id_seq', 10, true);
          public          postgres    false    226            2           0    0 &   customer_order_location_history_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.customer_order_location_history_id_seq', 11, true);
          public          postgres    false    228            3           0    0    customer_order_product_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.customer_order_product_id_seq', 11, true);
          public          postgres    false    230            4           0    0 ,   customer_order_product_status_history_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.customer_order_product_status_history_id_seq', 33, true);
          public          postgres    false    232            5           0    0 $   customer_order_status_history_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_status_history_id_seq', 30, true);
          public          postgres    false    234            6           0    0    customer_status_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.customer_status_id_seq', 5, true);
          public          postgres    false    236            7           0    0    fcm_token_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.fcm_token_id_seq', 253, true);
          public          postgres    false    238            8           0    0    find_us_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.find_us_id_seq', 6, true);
          public          postgres    false    240            9           0    0    focus_word_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.focus_word_id_seq', 5, true);
          public          postgres    false    242            :           0    0    inbox_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.inbox_id_seq', 14, true);
          public          postgres    false    244            ;           0    0    login_history_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.login_history_id_seq', 251, true);
          public          postgres    false    246            <           0    0    phone_call_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.phone_call_id_seq', 285, true);
          public          postgres    false    248            =           0    0    role_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.role_permission_id_seq', 62, true);
          public          postgres    false    250            >           0    0    sell_point_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sell_point_id_seq', 6, true);
          public          postgres    false    252            ?           0    0    speak_accent_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.speak_accent_id_seq', 5, true);
          public          postgres    false    254            @           0    0    speak_mode_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.speak_mode_id_seq', 5, true);
          public          postgres    false    256            A           0    0    speak_tone_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.speak_tone_id_seq', 3, true);
          public          postgres    false    258            B           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 8, true);
          public          postgres    false    260            C           0    0    user_role_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_role_id_seq', 6, true);
          public          postgres    false    262                       2606    16637     cancel_reason cancel_reason_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cancel_reason
    ADD CONSTRAINT cancel_reason_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cancel_reason DROP CONSTRAINT cancel_reason_pkey;
       public            postgres    false    209                       2606    16639    courier courier_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courier
    ADD CONSTRAINT courier_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courier DROP CONSTRAINT courier_pkey;
       public            postgres    false    211                       2606    16641 <   customer_interested_product customer_interested_product_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.customer_interested_product
    ADD CONSTRAINT customer_interested_product_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.customer_interested_product DROP CONSTRAINT customer_interested_product_pkey;
       public            postgres    false    215                       2606    16643 B   customer_order_address_history customer_order_address_history_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_address_history
    ADD CONSTRAINT customer_order_address_history_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.customer_order_address_history DROP CONSTRAINT customer_order_address_history_pkey;
       public            postgres    false    218                       2606    16645 B   customer_order_courier_history customer_order_courier_history_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_courier_history
    ADD CONSTRAINT customer_order_courier_history_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.customer_order_courier_history DROP CONSTRAINT customer_order_courier_history_pkey;
       public            postgres    false    220                       2606    16647 <   customer_order_date_history customer_order_date_history_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.customer_order_date_history
    ADD CONSTRAINT customer_order_date_history_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.customer_order_date_history DROP CONSTRAINT customer_order_date_history_pkey;
       public            postgres    false    222                       2606    16649 @   customer_order_delivery_price customer_order_delivery_price_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.customer_order_delivery_price
    ADD CONSTRAINT customer_order_delivery_price_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.customer_order_delivery_price DROP CONSTRAINT customer_order_delivery_price_pkey;
       public            postgres    false    224                       2606    16651 D   customer_order_location_history customer_order_location_history_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_location_history
    ADD CONSTRAINT customer_order_location_history_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.customer_order_location_history DROP CONSTRAINT customer_order_location_history_pkey;
       public            postgres    false    227                       2606    16653 "   customer_order customer_order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.customer_order
    ADD CONSTRAINT customer_order_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.customer_order DROP CONSTRAINT customer_order_pkey;
       public            postgres    false    217                       2606    16655 2   customer_order_product customer_order_product_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.customer_order_product
    ADD CONSTRAINT customer_order_product_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.customer_order_product DROP CONSTRAINT customer_order_product_pkey;
       public            postgres    false    229                       2606    16657 P   customer_order_product_status_history customer_order_product_status_history_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_product_status_history
    ADD CONSTRAINT customer_order_product_status_history_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.customer_order_product_status_history DROP CONSTRAINT customer_order_product_status_history_pkey;
       public            postgres    false    231                       2606    16659 @   customer_order_status_history customer_order_status_history_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.customer_order_status_history
    ADD CONSTRAINT customer_order_status_history_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.customer_order_status_history DROP CONSTRAINT customer_order_status_history_pkey;
       public            postgres    false    233            
           2606    16661    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    213                        2606    16663 $   customer_status customer_status_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.customer_status
    ADD CONSTRAINT customer_status_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.customer_status DROP CONSTRAINT customer_status_pkey;
       public            postgres    false    235            "           2606    16665    fcm_token fcm_token_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.fcm_token
    ADD CONSTRAINT fcm_token_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.fcm_token DROP CONSTRAINT fcm_token_pkey;
       public            postgres    false    237            $           2606    16667    find_us find_us_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.find_us
    ADD CONSTRAINT find_us_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.find_us DROP CONSTRAINT find_us_pkey;
       public            postgres    false    239            &           2606    16669    focus_word focus_word_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.focus_word
    ADD CONSTRAINT focus_word_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.focus_word DROP CONSTRAINT focus_word_pkey;
       public            postgres    false    241            (           2606    16671    inbox inbox_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.inbox
    ADD CONSTRAINT inbox_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.inbox DROP CONSTRAINT inbox_pkey;
       public            postgres    false    243            *           2606    16673     login_history login_history_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.login_history
    ADD CONSTRAINT login_history_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.login_history DROP CONSTRAINT login_history_pkey;
       public            postgres    false    245            ,           2606    16675    phone_call phone_call_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.phone_call
    ADD CONSTRAINT phone_call_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.phone_call DROP CONSTRAINT phone_call_pkey;
       public            postgres    false    247            .           2606    16677 $   role_permission role_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.role_permission
    ADD CONSTRAINT role_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.role_permission DROP CONSTRAINT role_permission_pkey;
       public            postgres    false    249            0           2606    16679    sell_point sell_point_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sell_point
    ADD CONSTRAINT sell_point_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sell_point DROP CONSTRAINT sell_point_pkey;
       public            postgres    false    251            2           2606    16681    speak_accent speak_accent_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.speak_accent
    ADD CONSTRAINT speak_accent_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.speak_accent DROP CONSTRAINT speak_accent_pkey;
       public            postgres    false    253            4           2606    16683    speak_mode speak_mode_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.speak_mode
    ADD CONSTRAINT speak_mode_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.speak_mode DROP CONSTRAINT speak_mode_pkey;
       public            postgres    false    255            6           2606    16685    speak_tone speak_tone_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.speak_tone
    ADD CONSTRAINT speak_tone_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.speak_tone DROP CONSTRAINT speak_tone_pkey;
       public            postgres    false    257            8           2606    16687    users user_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.users DROP CONSTRAINT user_pkey;
       public            postgres    false    259            :           2606    16689    user_role user_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    261            �   `   x�3��H+-NMI3�HMJ��26��H+K*7��06*�4��--NI-�TH����TH�I����4202�5��50V0��24�24�317�60�#����� [��      �   �  x���mo�F�_˟��
<޳����XlY�D0����l�n��s?��Yڮ��� ��G����u��	����t����}tϻc��k�se-W��&���D����NN�)I�+��"0̼f�l�6g���d��&��ڤ|��d5rD�%��h�AD��	�����J5��Q1s��~w߸M������C(���tn�ۆ�D��\d�b���2�$��̀��A$�����q�HE�0dg�j���B�V���h$ƨ&�e+��
�B�or�"ސ���|�䙱��ր6����$�rk��E�Pj޼P��J������p1AS��K��8��E�O\х:`A��r�`����oKLkG�9i�	@k���ʓg�aELe$	q��m|n;�w�3N1�?m��?ˎ�#ab�mi�}�BVf;��J��e�<v}\��*S^��_��1��XA��^�6��>ڴ~��G �x����wwݼz��b��:T���V�Z��ӹ-s�<U�^W����-��v_����}�Ga��֏a�f��z�~�w�k�헻�a���n��7�]=|��{���~�g�G>����;7�7|yr��հiC�w���u\\����)��r:���?(YW��A�W"�޴��ݭ�f��u-No�F?�����)O#      �   +  x���_k!ş�Oa��;�W���B�4о���̤3;��e�}M�4�$����w�Q�a�˙�8�k�ѢF����eO������e���>-�a|�O�8�9�/�8�ć�D��a<�3Mi��_]]1%�aAI.e'j׍2�Zȋ�@	.|'�S�x�>JFAI{��ZЭI��`�$_4j2\�6���'S� ��A�b��.K��pO�y�>�r�
�=�Om���!�4��L�F�?�[��8p�.���g�3��mc�ze�|�P�+�a�Zp!D1�	�C�%i�	�wt��,-��i��Q�7<�ϴ��_�!�˅�xe���=�3�'�������a��4p:USط��y[�����#���O���e��IhN3?�����=�������vJu�m�Ϝy)��,�s�l�@�\�%�+~
�ƒ1
�*f���A#�8m\�9փ��3�ԥɝfwc�ǧTh4X?�'��!o�!,��5��1�y�_J�⑦J�T]8�-��ָ�0P�mL->�{��N�ir��ڶ�T����d���hv��/��      �   u  x����n\7���O�}�ER9�d�E���.�)�Ο���}9�8�S�P�?��/�9~?�����8�AH؀�u�s���Sgy��"�mր�u��=a�E@�#z ��Ц�X�����\Y�א9g3/zpY�yl�$���ဓyn��l�y���dH/�Cl�%�C�>n߮�?oono�I�-��+:~���������.�/��0t�:cB�� �#���Jm��� �3�Š���<
�]$/c
$������oޭo��1?r��_�~*;�\��n��䯠Z'�������eu(��w� ]�����i�2�*W���詄��fPgY��e��E���lp��2u��y���Ӈ�du����W�Y��)����Y�hg#�]���	B;%p��<W^��s����a���c�EB����ݧ�����Ob����Po�=s�5eV�@7
,q�	X6�p�cg�s_�le��\qj}nU���f=u-Or͎a�[,��N���,�W��3�aq)� wZ�TY�MRu���?{7����s)'Dz��a(3Fi#��%],�/�LA��K�22flsTʆf�*���{1x��ڤڐ�����桏)P��v)'�I�L�dH�]]q{�%��mg3G�њ�VeP9�@�8�l��5'ZP�.�ף&
�j>zqD�6�0I��Ğ��n�i(�]�]�shNIM�mO;i��&��՛���}*�o� �]#�����r�|A�8�n�%K��VŹ=AmϘ��b^ٸ�3׊�W��à��L�`�i;�W�x �<d;@i6�=�j�c���Z���z�3	��9���.��A]�_V�C���G�{�8��f�e�\EOa�p;y+6���9ZNs��o��~z�NC���%ύ������o��g-      �   �  x��UK�7]��B{��X$�z����WR�cH&0|���#i��Dh�(�����I�=�pJ"I���E��	{Rg&Q_��D5X!�H�}̹�f^k{�8`mP�z
u�qOvΒ?��_���z������So|k/�N�?_�����ӥ���\VX��Xd��R����Z��!S�3gBIs%,Ld���QJ�8|m��u�y�\/=��k���O�Y�#�Y2a}�^��	�Ғ�P����^Fs�$�`�'�\K�U�<�P���E�;$����?��~�R\�i2y��Y�عu
3��j+%���t�A��PM2�蕆+���t��`�6G���b'��dcD�:{+C%�^G �o-���)�Ps��X����߃�����1Zc@���^���\��\ @�q�CTk�zoFl^ ��(�}��M�b�@%^ 2	�#�w����F��hN�>�2�sT�
�pm�7��x�,Qqތ�U}ː*�*��D�#=&`u�o�g��!�4^ׄӮFM3�y��ž�	���2*ڪ��Aa�$��AYR;��z�ǣ�\k
�-R=�cݹ��n��8��^O}�������Z6�H�xP�c�P��K#-^�؎x ����arFX�U�`��[.Ez|�_@�{��I�G{7�� ���G;�nY�CD�H;�b� ��ݤ4B:m,-�xq��Z��T�+�i�;}�t�霋<"�A_�`]Q�����D$�V�a�ftq,��poh<"�˫��*B�v �"�|� K�uN)=�������-�g�&ZG�Z@�K���X,�QjAI�t�l��%y��y����ك�w������+*�m�Q�sP���2�
	m�S� u���)����1�a,��:�'nޥ�{}�{�sU}쨛���������7��Yo      �   �  x��Vˎ7]��������HI���v0�&�l$Jr�Ӷ���}N%��;�� ��C��A�C9��)oN���1�Ү�s�"�m�3Se/�֘ZH�:bε��Zǿ��r<�[o���������C�,�a|�I�r��t�~3o����JG�S��"K1H�J��:����^��߷�=�!�F<���}-���ٹ	��i�A�z�[���w�E/a�,��$���&��
��-������������z����_�\�f���@�c�آ��ģ��bF�$��)��j�5�S�hJ��,5*uFN���^�1�r�����K�D^��%)Wr5����w#/h_�\͢f�����_��~�<�����] ����%��CTK=���1aii��L7���{{T�T�a�.������E�����\8�*�����}W rڻw��)Ɇ��N�_W�RD�6��ׇ����_������Z_C��t���P�(��"Wj9�K�E��ʝ�j�@�4��:�M�� ;�XUԖ]���������l�W~Qz���������%H�Y��,=;z�wux.פ�;q��ݮI�0�_��h3ҶK9��uT��@RC�o�`nl��x��m���C������\:˔Z3��M�?��?]?����+�ە��]���Ki�.�'KL�����A�#�VA�-�˙��LpQD��k�r��z M^.AY�墄�t|� ����b ��D!�/t"��a��H��e��;3<{�(_~Q:f��ǧ
��%	� �Wm�zK�p\ �[@����`����n�y����7����*���u���p-0K6��
u� \!��MwGXhķ
�7\��-c�k�_����l�>��*�fǸ� �| ���5��ߍz0�"�!�)?J݁��\�j�`��0�RY���K$�S*����O�{pB���oAւ��+Y�(#j�3�s���	��c�3��)��Im�L��1afC2�/��۰�LK!nm��[ITd�O�1R��(� ��)�H��(WIh~J6}B���߮�p]����_]�4ߊ���E��ҷuP�C� �x^�#{ڰ0XS�v�Ӥ; L`�8a��R�KJ��saȟ�����3�P�-��AYf��i;>�3�x�x�"��=��mc"�;�g����E�X�p��	����g��w?&�J���i���x.0b8�xJP.|ˆ�c^�x�\.�A��      �   �  x��Vˮ7]�|E���$���e7�(ٸY�@~�g�.n���"�����x���X���)m�΋|�"]�Mw�J�{��*�B��ɧ�cF��Y�:��z쯏�}��x�}ݏ��m{3�O}�����[|{��}�㉇�?��H���4�ۡ�w���/\�"��n%�,�W:V�=���{YdV6���j7�����4fk^lQ֔�v��U��Ĝ��(�ԣun�*ԣ`�,�Fmظ��v力^f�xרd	���A3V+����`)��o��/`y_:�R��5�MVp�.%���XS'qJ�e�>��L��n���g:bV.�8���S�S�����JMG��Z����3��S��i���+��[n�#,J�(�zߋ�ď]v,i�%����^0:��VC�sP�)����D��#vX[ǯӒL�����튶��e�$�A�aAC3S�n����x,I�n�Qy_9�&	P=�Ԭւ��B�z�KJ=H��ҼJX�S��(���4�����s�Qi.(�eL���h2;眬�I
t J���Y���u�XCkM�_�a�K�k���?��t��4�^�oc&h�TJ�#��RA�yBY��F&��v��en1p"���@�i5P.�M2���N^
���%�և�B+g��%\�s�1!r`����̠ʭ���C����V���q�
�L����T��^RS�ůVxBp�܆�ࠤ�����r�,�K�o!�e�"'��oJh���=�>�8�J����g0�A�Y��'�<gN��#���r&0�Х>�B}��J'l��u@S'�G����V��/�&�=�[����JG�D�u�u��Jބ��[hf��ɘ�� (���h�
]0��``�g�`iw����Xޗ��}��K����1�ƕ1F�ʱ��c.x*� ��i����3�©�ZN�0M�'S7i��x�K�Uʚ��Y�:�z㺦���vA��4��ˠ���f�Iz?���ؾ+�'� ��<�1��$�©s����u�4�%�|!���9xo�>L
���WV*�YK��lHuk���()��t�+��T4B$G��R�tɟ���t�ä/J}/��D��#/��u�C�5Y=͗��m?E��+�Ĥ�����n��O<�@ۑj�sL�![��ܰ�N�I�V^E%D�s�!7|��J�����&�p�Ѝ$F+\�1���L$��"(1U	$�eT�\�"����<� ޳��      �   �  x�uUInI<���ArɅzļ�23ic>0ߟh@��Z�A�b����X�d�EZ�ɢ]Zy.ɵ0)]%B���<J�� ���2h�>�����G*�"Y�gkϏ��|��=U�������H���a֞����j��[���i��wL�">�|��۱��x����y<�S���v$��	k�К�V��k\<:�L���}4���b���'�74o�XyEz��@2��8Ќ��'Ur�U;׃z�h�-e�}Ξm�X�.'�u�����d�����n "p���T��}O�#�A�O�o ���,�
6��_��c�e����P�\�8�⯆��	����`ϩc~�*�jB�PS�
��Xѩ*�v.W 7�7�{��Ɍ�@P~���0:�Jx��D�g�ԣ�fϕ7h�K�k@%<��Ľ�a�/���vΜ�/�n|,/���K�j%	� �����(�>>:fʜ��7/�O~���k
z���e?����2/Z�5����@��8Q_ƃ���lR17GY��5:�L��n�P����qH� ���?���y��x5���B�a�)�1�|1G�,=��-��!�����uA�O_kG"p1��+��J��J�tAн��@�B����vć��������:�W��I�����Ño��i7\/ox,!;Iw�����'���Y�;��c��=7`u����K5-d���;`��A�lĆ���i��.����&�O���W�'��Ʌ�̑8iN~j[���s�>Q�������ޠ̠&[��x�gH5�c5C�"
&�U�Q� �`s�s�������,�ė � cѶ�;k�%��0r�3�%����[��}A�������2�3      �   �  x��W�n$�<w}��6H&3������{4�0�Yc0卑��`�1 	h1U�dCr1�.ulJ�����s�.k�;�V%��F���k!��Cys�Y׺<^��������ᏤI_.|�(�	����&rK�Z���忕ʐ,�*�J6[�P�T����f���jϋZi��g������
�����ڸr�P�%��ҩ{u �(-mgǇVF�e�4'YF�b�ȅ�J��(�r��ꩼ��u)٪a-(�edA 7����u0�Ķ-��Xh�0`��I�K��k�}��Υ� ^���8�cU��4v��}0��6��RkI�Rb�yx�S?�1n
,q�!��J2���T׉��GM+��J���3v���-Q,<R��f.\d�1n`�_��������e߿���4?���c?�/��c��ϯ�"|�����O������g����*%������ɆC�7FvZ��1�����9$��i��P_�`�I�����#_�VW����m2�&0�Z�o��[�y�n(��ĳ2��0USo�?��7NW+o��TZcdMi��o�S��Pr��C���S�1m5Z��5��K�ѪU�^����k�˟?��~���g@�&���ץ�$Z%�P��1���)3N�%{���T�-=!3G�n&H\
��Y��=ytG�ǂ�Z꨻�`�9��A�Ƣ��<�x��Ϗ�u�{�����Xo�7-ך��ےם�v�1|
M5�1���	�)EE3LBӓ
���s ��Տ�����������$���7+W�;��.Ʉ�0��I0o}Oj�5�،�%"�z�b	�Ix`��&x�4�>��Ѝ�s���UuPR�1.�_��P��eo�#��!&l
>7�`�K�.jz�1à�.o0>�J�<vd�3�ӭ���ֆo`�6��;[}BēAD	��М�[i�3���y �X�������\_?���~y�<�ÿ��)����R��٦�ւ�l�l+�r��e��ٷ��70����R�ы�6q9��Rs&�"�n`�]�-�������`>��0
�>j�c|��)n9!`�[�?��>}�����E�`�q�e�!�y�P�@����4��V��͐'�\'p� ��i��"#xI��8��M�(�6���w�����??��)T�ڷ (�/,K�җ��*��N���껇����8�;r@:,��sâJsF:>$]xol<M�<!�2���n�R��\�x�&N	���pHlhZ�S�h~d����.{�ɧR�	���K� �7Q���1��2��
���R�s��� 2u���Y[�cH� 
WӘ�FERF�ɉ1��m��)Hֆ�>d'�'Z�ظBuq�zַn�C	������)#��s��qE�Ta�
D�׀۴}�/d*$���_ ­��]���{J@P      �   5  x��Vˮ�]K_1��B�XO-�;fç�I�,��9m{ _]G� ��-vS�S�Q�&TG�yJ;T�t�%�څ�t���0���X�8�Ѡ����k��{߾�����뗯_F���yk���:W	��i<Z�R��f�ۍ	�AQ�#��l��f��ni��9ڊV�8Ԗ~����¶Vٜ��:Qĺ��Q���=�~�η�\K_�E��2<PDXo��q�m걍%�,(��*S�XL=��A�Lㄲ���A�]po�	{�>\� �����E�RWEgZ��W�F��֪��k�� a�]:�*�M>}�ؽ��t2�Vh�Q�/9g-�kt�����h�O�a�ZҚ���U����I5ؤ��_(��4?^p�'��xh�+/K��^��D�#��'(�s�<�2&p�YsPj�rSp��j36*Y#�]n�,�m�.��1��+}۫gG�Y��]&�U��!�V*>C����x�����Q�I|��_���h�(4~R{H�g>,�g��̶N�]2�
ye�kp�4�Z�����)�w���(������6D��� ���Wl*5o�����_���k�z	�����K��sh4��� vM�;��L��!��њ�U7(@C.��(]q��zgѻ��3|x�/��ȓe����r9����"��F�m/vo��pB��Y2���@��o��S֟H�?�?�ia���k�%�6l�T�����}��Ap:l9��Jhd�v5X�U�;���o(���Y��LJ?�K����g$�:�ت`�'��@WS��ɨ��To���~~����h�M�a�'�����ԭ%:Π=A�#��*�p��2���<<�
�$��,|#UK=���>j+$;F�#4:ȹ�J�|^{x#�g���m\4dR�4濜r��>�WZ<�}J��Kz�%�-��~�:(8�9�Cאu@4Ъ8PU��Z��d����I���f~&������%�"1+<x^
�γ2��f9�`8���|g�v%��]��&$��+
b�<��g>,��j	�" �����k6hsy_���b�"����q1�0����!��>�n�)ne�!�TzX-Ƈ *��0������P�Hc�2�S]�P�Za��b�yQ����/��'>������Tu@�W3:�K��B��4��>_-��-�:ʻ�2��c��}o�W�cr��ųo��@�+�L�I��$~9�iKV�X%x�g=��boE����_�����=W�d���G�/���9�ap�1�5902l�X�C�f�1j� H���J��lWY��<���JF��      �   _  x���͎cE��w�b�ȑ���qv�a���?'BH���J�a:���nrU�[�|�q�C9�`�):�Ƌj��diS�X]���}F*l�4U�:$S�cεj������}���Ͽ���z��zӘ_�t��Ň��m�����-53NR)B՚P��=g����QIs�cj2���=~Tal�+I����9�)���[:�������z�Qj�F�����h�����
f~y+9i��_�H`~���������2�����XB����;ϡW�R���lt�Q-:�OuN�%�-�?S��56��͜Јܩ+@Skn�|iy$�K���b	;)�hN�=.��~�w��#���#ȋ@b<~��y�ek$-��2-k�t��CW�jͭ
�P�b^������v�\%���K��N��_.=����!�J��Q�����[���LzF�4�Z¾b���4J�)���u���7�m�A�\}^7 ��WC�V�X�*�U�l%�H�)��4s���3)��B�GyE=ʭ�����a�9�tL�j+�˲ ��B-�/mx3sH<����9q�o�Jb*��|�j�;�;��@c��D�17	+�u(rh�Ї�b]���*6�\F��m�/6=4(7ʙ�	8ߓx���D��x��l�PЄ-Usds唢f����#&ս���Wc�RJ�����ێ��G�� �{��8��)Gv1����7��̓�䂈�
�D� I�$F҆2���G�s(g�'���K�y�u�e2(�"�9+5W�TΈ��aUF�]`��\$��g �j��r��o֯���=���2`��l�y���!�|DPYU�La��q+A���`�!V$-�P���
��3,���tf�/N��G*Kϩ�#�Z��D�!)R�!b�-� tS8acռ�$\zR/�2P�qt�;���&�[��Hsǘ�:�1־W�wD��K��a���;*��`Z+rʢ�׆�>�C���S��H�A�Yz\|�c�Z
�EzSM�$!�1�7��h�.����j�wঘ�/���(���k����޲�a�[�N���:�.�>�<m�J�O� Nn8� 65Q�ͅ3�}�x�X3�SL���F��G8�s��Zh�>�T�8��dC�A����3�h�H��x��d����t�|��]o��L��?�!�g
H`��h��.A8�ћ5g�dq�tO��f� a�;o_��3y���[a�3.�������?����҈bm��Lh:G��:v��D�y""�n0�΀���e�Ҽk�j�b��\�K����
x���lh{��j{�9] �\XMNKQUc�lF�$���؞��C6�a���v*��(K�y|���ßpy�/      �   �  x�͙�n����{=��\�HV���G+�F���L^>��AlI�BB�m����U��D�K|���vi�������&q'�1:ѽF��Uo�IV�t��js��9�u���/�z��>�����sOQ�s�)~���^]��|}
�)ٽ����+�m�5�8bs�,�T)����k�^�+��L�����6�i6�V��o{�[��\��J/ޕ������2�͐ʔ���Fev���Lѵ��k�Kj-���-]ּy���Iod��z�J����]}�VF�e�4��D���t#��A~�����U~�rI�4�yީW���E����ba6>S��뛻��ju��'i��1nr�^�-17f��c�\֢˻f�2R/ťayuS�a�G�8���7ݎ\T����_Z_7^��ךצ����������/?���/[Mb~�_d?���_�o������|Y6_r��FC�Y�d-�����SDv��g�4�QQ�M�7s5LZW�p*�;�UT)�ۺ����Ļ�	�\+���*�w?� �>���b��k�9�2]�t;��M��ِ�ǰ 8�{���*���-+L�tM�ᚙ{Z���R��Эd�<�\!/�l�5i���B�V�T4�τm�n����Y��e	�y��~��YURM{�9�
�j������\�[��vz@f�6� M�0���@f������u$�{��͖��tiuK.�Őt�+�O�R�S��(�JB��������lxK����������I��V󍁆�yEs}1�}X�RK.�������.�!P�S/�\$�����> 8OO�׺&�69r�P�&�k�u�6���Y�r6�:Hǎv�D�E�߂�樞�G�V�:̂�����J@K!,����Zx��`�=��k� �����O�z�^byY狥k��!͝��+��&�I��䣆��z�����S2e�n�0"�������W�{��)IE�l� �5弧C�W�)�bu�����G�lp��͞��t�]y4"M�g��Q���PFg�Ff�_օ��cE���&�^OG�V�����=yG@P�=e�{y�%/�.<���Ԑ N��cZ�J�ј��v!{��֋�*a;'����P.��5�E�»$���#O*�]xs{�&��q��<����Jߑ������O�^��KWa�V�x�1Q�<<W<^xj��+���3dXQC�R�5����,c���{����@O��K�	P���6���9 ~�H���G؈G���-���/�.�K�:_�e@�<a��$��8�s�9�1zׁ���H55 �?�'�
*O����n��K5-�NQ{f�$^Q�ˊu3b��H�iLzܞAA$q������/�ʵ�'�l�Q��C�$:0�>�$ņC4+��sf^N�Z??��<�&�~���#w��;W��K:-s#}�������t�Y��*	,c�@ �$�Z�����.���i��j�b�~���֑��a%����>�Q�D�D�u�������?�#%�7z��ҵ�*�w��������V���u�\ه�ٰd��A��F�Z������ �<��(�,�{����C�ma�v�->�G�FCCE�vJM$�t(?�~׿�Հ��d)M���b�Ӳ8\���C8贈����o�|���y�D��QX	q��R�t?��䩥��+4|�r%�'s�w2-'w�9(�֥`��P�W��ɏD��R��c-����޽E6w�Y�� (@S��BtX.���c��ǒ��>�A�!��5� 0Pwz��^m���k�`f�$a����5{�!5�q�B3�i����-���yN� �Mv�u��z�`xT.x"�vS�Z��o���TJ=�e
�*qu?����Ӣi�X��!Ұ�c�$��C����b9�����0�C"W/ �e�F���Eh%r��J�jA!&��[Cc�0�>�t//N�^/]�yU��c��Hz����>E�8��{ե2iF�dKCL�I��zˡ�b�lL8�\����'^W�G��0	%���;�=��9��+òt����l�dO���=�v�
���Q�qRHr�8��h��C~J*~��|f�L�c���fn��z򮀠�sF��]�UW\q4��㐽ӀM�.�g�itґ�,��t��uT2���Ƹ�-�f��!d~e懇Prڨ��8#��@���r��S;p��s+�w�Pzx�"��;��u��-]�w
҉E�=�<�֭��j($��6U��T�⹈����%f��Oe�b���lXh&��&]r�g��igc�s7L4L3����l.��s �!p��4�M���9^a��H��}�� L���b��	;�G��u��h0p��%m�b����+�<�{|q��z���,��4�	��8�#�����sg9:�iK�8NI�'�&���J����Nf���Uq�������IE�a�tN"t8;B&V�  �_�ث:_,]��N�\�C�@��sF�r��q
��$b�����A	d�c	�W�r�v ��?�B���'=��j���N�]-�ΏV��WV�#��;=N>B�g��ċ��?�-��ϑ��[&��5�@'.�A�+���Q
~�:L�ˆ@Zn��߱'_ח5ޫ�D���ŷK���os}����O��_�rs�xr&�
_N�9�:H�+����9!8)b��0�F��pMi�B�v���v�H�E����w9�C�x�L��
W�At��HS~�;�'�O���ub�n�Ev�$�� �z���U<5���8'%�g�- "\��N,_���A�j! ��r�7�pm�!do���>�xR��@�~��	U�cԋ��76�O���=}O�V�;+�� �2�M��G=3	���a�T+A���X��c(�.�x��s���y/����S�	o��%(� ����5^��U�:9�Tl^�da��M��u��p~���̨��(����o��� ���X      �   Z	  x��Y�n\�}��~� k!���y�*Yxv&���IFK#��o�]O��,��Ibj��
�b
R���4�
-�E���mp(�s��S��1�4�9O��߿}���o������tz|�?��G&��E|�h�ʧh��.������_i����B���:C]i�.�j^iF)��K!UÙ�jpYf��#��ut�=�PG� =�Њ�6˕W�������1�0����H��X��!��s�~����x��
NYZpo
�������4�츼5:N���֧i�>s<t���>�������a�X�����e=��O��HO��������������-�rIr6�+-yYJ>�U�:���Y=k�gJMEǠ��̑CbG#T4��2��r����<�C�$Z)j9�^|��ȧ��͒��c6�0��@�Q�J��T��^�r��d�_>�k~�]O8���m����|��+M�	��na�:Si-W�"�9�,6'a��ݵ�Y�|�1�kz�Fi�x�nk��Q-�6wq�b<�{)�ܩ���y�H��j�%S���F/e!�԰�l�{O��h)�"���J��W����ř50Ǣ��A�O����9�ی7%����?b�@��$[qaRG�=P���CZ��L��+R0��=��9����3n�t�|�%��2�^r�#*�[�it
�l���o|BGJ��I�E{{���ȵ��wh�-���v�%]�ɫ�FȹI��%��L�񢜦�� "=L6�,Qk ��[��SKG����@v�64�,���}U��VkU���Bڽ��u��1�nB8N��>�L��g�W6�U)S��5
�p�2Z
 B0�1)H��I�ZM� ��0"�*�R���T��� ������jO�(�}�U��x���e�����Fq�IWJ쁝�&�|��`���$i�Ht���v7����te7^���S����T'��l��	�1R��gT��d=ب��c��܌��i��[�y��A�a��1ZTe�>Fw������$
��H�J�X��nا�[)��^���T>�g�0O\��]%'΅�%� �k�9Af�Ce���h�[> ���|���	ܶ6��Wz�ļZ���3C1��=hH�mH���1�0�A��J"��Ǒ�=��n<#�x!9�����*Uo�6��C&1���4`�A\0(�8�3�
�B{��'�H�	��G�'���b!��xm���3�%Xd�WF v0S1zB x��6]�����ȗ\����%�\�w/l��3�`H{k�s�2G���b���@
�asy�p�RY� ����|���t�%/*�xb5�������� ��j�P`=��#bH���%,j1=Z/���Б[n�3p�mb�ړ?J�9A:��b�,�;lUE�"WB`š��m���~8��:;�4��G򓚕�b�ԅ6�!�Dx������Rz��>��R:�6�����=���h3�.�眯@~U�f)�������R@2_s�,�G�G�m��aX:,���YR��A��o��! G�oJIW�2vc$G��/�}� ��]9BYv{`V��#L�P�lX'���;�䶻���]������1fX�&��6}��8�^��s6š�K6���`ǹw��.cB5�N�⎡�/��{ꀼ��My���n݌v���3�;����)�ń½���K��3��{ȯJ��	@j9o�P��a�1
��O:�YG"L�����3�ݭ��?�� ���!�yv-Wz�-��#o��_�!Ub�,vʍ&23CNz���՗��_eT�JԌ�s:H�Г���S:]���*c��� ��D�
-�t��=���Z8�.����5�8��(�-�S\K�S��bns�9[���lQ���s�`�gf'��n��i)�����=��ޙ�7����DhR� ��t�쑇i��+W��JC��9-�i1uivP��n�3p�����7%�`Y�Nd�Op_�\n�c���>@���~��āͨ�����P��'E�A�=�6�f߽��������6���O�����/7�O���}{]�),y�)(� �kb��ZSة��$C�a~��K�$�v��ֽ>���;!���6�d+8��cA�C �����!��q���Hr�'KO���&�#�
�.��v%f��������g�2���gت֊:`,��3$�p���m�\<CB�ª����; �Պ�fC%�5���Bߗ�8)b.ٟr�M#t�~%x�T�J���E�����B�@��ոF���x���L<����9�	�Kc�)�Ѵ"ϯ��k��\�ۄ�*rk�V4��s�v�m�%��"�FH��u��|ǿ��B�      �   �   x�}�Kn� Eǰ
�<�v��آ/`l[�L'���v���z�F*��H�]I�i��gc���臈D ��*���ZvZ�j���@l�%�MH��ע4�\
U�<!Z��f���F?��3�Dv��΅B�kɕ����hC�����8䯼�ڸ�>��X�߰-y���F���і����z�ߋ�yG���:��r� �P��u����%D�8���]m�      �      x�՝�r#���ך���2��v��[1N��,��<�E�%��:=ڝ��Y�7��� �P��e�g��d;E�x>=�Ɠ�y��������_"$�D�?X�r�JQ�+���?����M���tҧD�)%�x��٨z���0Ì	b7�L�F�n��W&#"�s�6e/�M�}��4����������H9�q?�fR�]˛�e���>���v�M��cj�k�����]k��J&ޏ�Ra[�etF���|4��,����M����m���<QH�%��%Q�5����\�x'���#�ǖ�v�O�u;N�+¯L�%��(�q���q�s�/��*�b)�q�2����Jc]��t�"�"���:��C��b5/�f�UOe7�F=+z�xJ��y�z��4���k�6�j�&>N�R�v��r\L�s�C5��v;2:@�̤7�����J���<��
J ����R$u9���;oڣ�د���W�_�s�5�vǟ)�q�r~�o��g�Q���ٽ�G�?��f����_�u�s[�lI��TT0}%���0"\Z���~���tf�J�"�l��
�Y��¥w�TET��5o�
��j�;'K�D�Ai[5�}3�<x�Ї7��X�&�݋?���t!���?P���QI��U��uh~�j�c��T����e�8�^�瓽֑��I��*㲷{K��았���H+&���g
v#;��Z��Pׂ��E��w�bu)��5<&]��/��g:��ql���[gZ8btn�N9�I"f����Ëz���WڑܒԚ�����M>��.,�d���,���B�LJ��l�B:q�mF�ho�b�<�3G�#��e��(�ˍV�4ߒ�J/�� ��D�bbj���0�{nf�Sy�eT=��^=�K�7$�W�E}S��d�]�cG�j��]C�ê��K�dS\���FgF���c3{��ǹ�$Mez��K�֬7M�h-ٞV��J*�,�k�o��LbS×$�c�t=���V;ǋ�h%�*��9�'n�=�Ì"�C�A
���L�D�CɟDuXc��c�A
����UBʿ�f��P�����(�*���/ye,�%"?M�p��e0��93j�QTl{Z�������cE�/.�X�*�Vd�J�X~mJZ=6مzoS5�4^��/b�+G�K/���v�Db�B���#)�j9+/{�� }dQV*G�M�x�V�Ҧ�Fi#pf�\��.��ѩ�;Dr��*��}�¿�F����+�a�$R��� ����&�&���ԛ�'Ǒ7V�>%O�Ӊ7�N����n��`�_������Z��+fa)������U���*|͆2S`Xs���؄��~��E~��߬�U�"��3�L��^��]7��b�E�#}�,�(� ��E��E;��8:�^��c�~o��B"R~��t�r�WVx8ox��{�Xg�g,4~��ڹ��V4{�~�X��sxSK,eW�ü�kwE��0�.Nf�\��O�o��*�^f�ܶʇ�z9�ԏ�B!rό
!�W,�L�
c"��%s��e��H��K^�S�d��o"/ύ�Y�L�XH��V-��f���R�/��N��hw����G6��$Q=�4[-v�	e"z!�ȼ�.��=\����rI]:�Z<3j%χƚ���ؖr��ݮ��U������w"/�6��F����Z�懝j����ڙ�8������M�"�^��e��fF�A���W�}�`�x=@��̰��f1~��_�JSĭf��f�~.��kv�x�����M6�o`�]^�,�EF�	��a��Z/_�������uz�?�޹0
k�y��6��h��]�D�H9�W-����`�<Nv�eB�����}(�IiS�f���ػ���|*��\Gz�U�7�_����Լ4V�j���nۗv2��Pۺ앚���H��S���ﮅ��6��)�f��f�K�?3��eF�۱^��V�d��v7-��f�d�2��Dq��e�$�N%;)aV��jq�vhV�Ek���v%�K��x��A#}��X�H)�^ #Z��ui�18�KE�;����iAǇ|���}�b��L��2i�j���BVf��n1�B1M��<��eF�<5����)?�.��f)z&+��iڬ�jG\����?��d?����cm�,���dl������mL�Y�^��}|V��4���}�&F���+��j3����/�˳��t��+��i=>O�P*4d�ᕣ3��$�������fb��j�Δ��M���2é����Y3L�7��Z*ި��ސ�/�@��k����E|9����CI�m��U��=��	�K~��Go�ٶ���u��l����X^�M��:�X-6�_��|[�ٴ����t�۱�[�#f��ӌ��⺐[4�h�:s��p8�f2�X��1C�_+�̢���3�]f���+��~��ΧU'w�Fb�����<c�acvD��8�ڼ]+.#���Y7ƺ�m4���9��F�3z���i���"��]�c#����뺜���Xnt���|w���K�ؤ��j��Or1ɉ���KW&�sl?�o��P��a�����3�]f���,�{�1�ח�.��h����ט�m"z/�-��j#���mM��xk�RQ��h�����:�z����J�U6���N��Ɠ��e#��nb��VS������l�DɨQݒmvV<,��o�YZ�x���Ϋ�h-��d4��?e��9�0BS����.3�.of�A^	s�z����w��X�N�|��C�5�$V�n�|�Atщw2�|�[#�F����0k��i*fČ��r~X��f>�o��$[�]uZ��SG]���M=�9S�J�-L����$;5�L�)	yI��ͬ�_��Ҡ��?���!�K/kd�y��W�f߭�ϙ���2#^�o��,ub���Ɠ�Nm7��������0G��0G��q��]?��2��>�5S�U�;�s)Ot��r��lv6$͵��\��ތf�L{��Z�xE܋a��ǷFQ�am�;V��j��{IK�av^�W�Q���Vf�u�dV!Z2m'�	�./����Vs�
�i�	��Q�ܨ�֌�)�O�\�w���l0�z�CD�5&H<.A
?�C��r��UX	J$����ð���y������0n��p(|+��r�>BX����d�+7�>VLp��F�)�*{��/ !a����(,�-a�/Ƙ��`A%zL?Haaa	�?���	EҚ>@
K_�<��W$�'}ce�������p:OG��ܛ���t�]��77�v>��ԒI �a�5%��%��eK�ђk�.�w-qd]�k�C�T&I�� )��[]�������Ṵ��elc�kq��C�c���3��@Aa�ߟ��THآ���^�����0�R<�ׂ),�Aa�?P� a����_T9�I��5U��`��~�0�[�Vw�"����!������q�]z��L92;u���#�p��T�b�V.�a�$F�~��Q�6�^���a��a3�S��S*�),L\�ܘG0�����-l�w��t�����3�*¨S�Naa�<�Jɹ[���¶w~�r�c���"HX>NM �eU��d�3|����u~��s��!|J��9�6��K����N�qɮ�[�Na� �i�	q�o
xά{�p�o
�C���ݩ�SX8����D9��O
�ÔZ�lw��Ys,���p�Z\�;��\g����~���� �I��{D�),�:�q'�Naa�u�ǐ�ف`��]�*��(�6��A�}�J���]��0��(�),��3Ts��9�SX��-T!��S��� �>C�B��6��A�}�R$�s0�O����
5s;�h�� �>CM���_|��p���`��),�<e�eВ¦�p��f��l
8O#$)P�l
8OcJ)�޶),�<��N�}SX8�y�`z������=����Hs����]9k�7u(�N�J�.��ԡϿ�H��u(�λŚկ���Eʰ�>cM.�<[ԡ{�K8\8-�P������g�P��w�����Ȣe�~��f)��Ɲ:�a��b�6�?��:� �=x���,,��w�P�=x����:��<h���ܦ� JD�p���:�<()�ę�o� �  P�d�K�x��� ��'�lܩC9���cM(�С�@��?Ϊ�M�����ө|��7Q(��@�e�:�h�3�_-�P���'�Ҭ���:�a^cb
\Yԡ;��)G�Eʰo���2�o�S�2��[,�\Ccâe؁�X��oQ�2���X��}�Eʰo����l�x'
v�g�ȝ�;u(����U�}I:t�����С�?�4w��N�A��fg��E�A�ӚSh=`Q�r�������ʢ� �i���7S�r��4�T��:���	2%ǩ|���\�M�W�u(8ۿC΁u(�����1g��m�P=�KMY~�Mʠ?c"�m�P=�k���}#�:�A~�rh8[С:�3T ���w�P�k���hS�2���X��M��ɂ����>� R�2�[�I�F�\|S�r���_|w+Q�r���Y�Agl�P��R@�m�P� �`n�;u(�OP���S�N��޸��M�L2h�aS�r����p`���� 
.���6u(y�Kpv��C� ~��̟�`(�u(������aS�2��[�X`6,�P�=x��Xi�
Zԡ{�kV����:�a�b����:�:�a�o?�6F��Eʰo��2���Iae���g,��ܦe؃�X�9�Ŧe�M,W�Nަe�i#��W�:���c��leQ��Ӄ�X��?�C��@�r�9澩C��@KL��VHu(8ЌV��Y�S�r��v+�h���2|�+V(�^�M�4��4���R�!J�/d)�M��-�P���˔���Eʰ�n��`h'oS�2�[�F��:�a^cM����#t������;uhֶ�C��-�R���7u(����2*���6���0����w5,�P��w�K��:��%En�|S�r��2Ӳ�
ީC9��ZK�q��C��@FH��l�Pv:���P�:��4��kW6~R��Ӄ���w8�'u(;=��
�<�MAe����U$ �w�PvzP�u��f8���C��A��Th���u(�<��JA��^u(�<�ǚ}tB��e�M,���N�o�Pvy���{Su(�<��b"\7�C��A?�0��ԡ��k&:�x~��2|.�3��(�حM�.���`=S�r��$ʝ�/��p Sfkϯԡ�@�r���C9��q�M�䄀Gom�Pp '#���� r��]�#t���S�|w��gb>C�`Й^�:��ǹ�Q���M�.�Q�Nc�U�u(����I�WGu(���$w�Ů���\��Ȥ���Xz1)~L��R��j@sю�,Q��[�~�2|�W�Ų�Hף��G��|/���||���+�:�;c�;]��Ta5z�$K�٨�?
���Px�������"ڷ1"V�yd~ʥ=����؏O5���~\� ���x~������{u���:��JI!��R�����&a�W�0�/Y� u(���˯���\[��A�P����_x�����)S�V~�e���b���w��F��3@a�s9�����*Z*�ԡlW��K�u�j��ԡlW�[,y��KR ([ԡlWq��	a��Oc�:��^|}Ⓡ��yl<S��=��b��ƿV[�w�:�r��S����P��C� ���O�$���F�:�m�?H^�Ffz��R����k,�~΂���z���2C/��YH5~ޝ'��T�b���'���Qd�
��f)��Xnŝu�1�Ez�q�;O3	9[���ig�j�I2�^0�,2�|�f;��n�-I��$Y�Rg�,��~5S���l��E��U�<+�-�astܖ�K��s��u���GIɀ�[���h�����C���#�2HI����~]������1AСk��[��K&3˽�\ԡl��k�_����A�P�K�W,���M�m�:����+���+EBX/bAСk�OӾ�������]�|\CMQ�f*EZZ� �C�.�X��Va��W6�>XR�}�<a��6�I��:����;��qtT/��-R�������kI|�ͣ��L���f�IG�P�󣤙�Uct�hv�'�+��F/��l��U{����D`���Z-��q[�*�X����:�Q��QJ{o��iJ�;��֪�Ob��U�(�Z�ޢ!��E���f�����c9��/��l��4�~������	��-��bRXHŭb ��������B      �   �   x�m��
�0��s���%i�t�� ^�^6s���ѧw7��-�����(P0f��B�@�Xfcp�j�B�"��·�J+��57}j�ܥ�4� `�RQ%����v+�A$�<QX;E�N��{��S�6��R~^��F}D�����*Y�fT�E�ܻ4�>��G�.�6_Et���Ţʋ�R� �Wi      �   �   x�}Ͻ
�0��9�*2V�ir�#us��v<HJ�J�k��7�.u
�/��b�_�b(s�rUp�Js/�ƺ�<K����Z�V%���U�>��<��EQ��#�a����M�߷f<5��ӯ��U]�_n�H/�x�����m����#e)�j!�$�#�S ��Ua      �   q  x���On\E���)�5��]�U�=�l�]$�g�챢��c�*�^|/�?G�G��g^���������7ߖ������7�:n.�.7�rSޜ^��z�Ի������/�����ח?ߍ.�W��Vc��F
j�R���sɩJ�܈󌡕�,r�R�?���1�+_��%�q��i'��,�;��Ҋ���d:�A\�\��rP��J�H(�
��{H����3��c�w�j���x;�?\�����j�X|�a�W��0_��z�/x�������)���^����w��26���i���������q��f���s,?�dvuDm�
�u��N�n�y��T|qN�����b�I&{O��YxE��Q����x��ק?������������w�G��s�ݎ�Vcx��^�����>�Q�U���}6��#���i8j�be[r&��R�2E��Ù��/6ߟ�����叛��>�� %#s#aTVp��P(�M3��;9@��#U���#���>{Ӣf��G@up��l����54��u�#R����f�DK��u��P��Ll)�<&�W�O��gE+?�G�� ��0ؑNE:�JMb4[��|K�8*<����r.�D!-�����Z���s��3i�������4\������NhOR�=�<'*�'ȃ'.�nh�i�DnT�.�f�V��˚R��J~zj*�!�\	m��`�L4㜆��@�@���P��e�}�v����6�3�|/�oݥB�Y_z\���YB���B��<�<eQhC-Q���B�.�Ѧ����)�n�Ƴ�?�P1!��Ki�)8��"r6�����@)�J��$�*�""<H���T�5�8?=�-Ά�R8L�G���\��2�����\��y�[C�������:��@9�3hC�9�u�6�e����
B��3� ���Ix4R�o�F#T)���H4���)+���^3���|<��=<�#�;�;I[e���f{W)�����TQ����z���x�d��Yq>�1����{�{g��{��v=G�ҖQt�<Oǖ�A�(��,�$/�VpU)b�
�'��s�¶÷�>f� ��f;#�a�CYlm�L�Zb�RB��b��4$�K��E�0���������y�~V�q�#�<r�B��� Kf(��Opcb���	��F�� ��m-s��.lvj����D�a/OO�J�0ZH���pB�E�p�hӹ)Ա�8tBG33ǄLbel~
ԫ=hpy��N1R�m���P��~q�ʸ�l���-��BE�͡�E��(v��y���	���k����3c���.���!��/�PFO,��ծA�H˿�*�3�r���	ד+&�^�z�Y���/�/ޗS      �      x���I�&ɑ��N�}�9�<�!�	j�#�QD�D]\�?6����~C?�.BaH��A�YUD�������aˏ`~�����6���k,=���Ql�Gh���r�ԓ/.���Ѫ�y�~�Z�BJGu��;ձgM���?�����?���?�w%��w����ۿW����	g~�#�m����uw�������ۧ3G��9�ޢI+�u$��2�>�u��Ea-��J�����������?���/G�?l��U)����[k�5,���L������Q��&����[���ñs�;�Q�+G�1����G�O7�7G���S��\�|��է��iO�hn{�=7?]�7)�>㑧��3��Ms����G�Ƕ�.��q�'7������\�&��y���q#{��=Ÿut?��~ͰM9�f�1�eq�Xm�?73���տs�����Շ¿>�+��/���k��-�Ʋ󭕙��Xq�0�f)�|���m`\co֭�È��s��_N�X���.}���5����`-���+�#W�V��G5)��X�G��J:F��֙¬o\�5��#�cݙSc���捵�]ӴG���c>Z�Cn����°�e\J��� ��2�����s�~�m�����H�?<[���⫛W�.����&�27�PL��133�f�Qc�k6�7�2���R�q����ކ���Mk~z�BKϺ�d����彵�^l��(k2Rs٣Vg��nS�~���j�Ǫ���f9jd�ݘ�vq'S����y��a��1�#8C�����{b<�� ��ŵqka���ξ}f����;�cdA�}��r��)����_��fV X?
_�7?o��g� c�G0�y�2rq�V�*#��R��G���ш�ǬC�dM�o��F��O>LѬz��|��}����L�3�C�� ��vŧj�OG�;u��vz$X�TA��gZ�z�q~z�Ȅq?B��6ǐ~��޺]p��B�Z�l�:A����;�#�D���b/��
�� �I�U����=�z�͹��>R����D�a4�VZ"�@}4�v�]�-�����>C?�'��k?G����������\����?�����{�k&"�������k���������k6���
~��?�3��o�qk���A�9�z/p"��Znl��X� ��:;.�hJG+i@Uv��i�_��������A������je(m,�u������+�i�萪m!�*�/�D�@� ��Vj��w�	q�0^;�6�@�~[�o���PJk�Q�\��p�0]�˗`@e�,�-�=v$�1O�k��_��ο����a�L&X{�k2v� �[�po*��H����^�F�0�$8b�K47>1Z����*������S¶��rY�o��b����m�(&��@(���������WG��H� �&���M��f���������G�Π�ʷ︵6��v��!Fh5@'s�ڬA,�����X_ĵ�$�@&6�V��w��=����_�#�Z��|ǝ5ED$��Z��Px��O0�-�^{�M����~�4&��6������)��p�u>n�&F�l�����P&e���v!��d���b]����$p�H<�-C<�t��E��Y������X�ZI{�:��٬A��|c@'�2�^ Nut_F	�{uE6����'Y�y��OO-���	���	�ƭ��z�pid
��$�:s%Q���U���:?5A'nh��f���_��9j���x����3^�6մ*뽍%n	��Y���|�-� �j�m~~G��#��O��_��|�0�Oc��o����"�-��_�f�QB�oq"'�yAW\� �wdQ�9\ձ;���G�r�4z�M�̱�~��:]b�]����2��M+�()[�s��,�v&�B����c������/#���<u�^)���u�j�ö
�&�n"j�uPD@y8c�5����A�K<d�����W�Ûo�z�G���J@�]���J����A�o,�P�Q�@2��J;�U	������)�k��&���	����w\=Yulػϸ	��XLYO�
ț�-X����C)/����	�Y&l�����]���Q�~��]D�~��:��jw�
*�|#�z�%.K�l��zsY��'�C�N�v d,��w���A$�#����g\��"�3o��C����cOJG O ����p��:y���Z�9�_m5��/�X�9N��U�K�~ƫ��M���-�ł5�3�@uk`6�����2�ά���N��`�;���B`�`�Mz���֔F��i������!x�X���
���k#��h��S{�	GD�6���OO	��x��+�Z[@�Dd�_�Lp.��?�b��Ļ�V�:~o�O����&5��s����w���N�ɜG��8�}Y�gvv#.>pWK�}�U�4���Z��O�Sj}�#������-������Ň�~��Q"!��zx������%�"���"�#B��x�TV~?��_��INo���3k%��2H��@��]D�}��o�qkM		�V;pG��t�zF��Pu �Dp�
��΍��0�*�B��u0W'>����㍋�u���g�Yt/P���cH�oHCT��Ӹuh� �R᧹�zS���"��݉�#�/�GA��tu��ʘy�s��v��P�mxM�9$b��k�B��jס������j��q�DWpW/+��O���x��ZM���!���c�f2�0װ�B�m�Z3:�@�W]v�f�����6U���mH�������[+��M�̱�P1�J�(Zq���BsG����$T�o�k�5�}�}r�7�K�d�S���`o��9�1k#l9#�զ��9	Z��,��xFm�,Td䎲��rYC�h-=��9Q���SorL���u����~`ݱ�կ��˞�]V(�m�e9������BaH~ �������g����������?ֿ��������ſ������s�x�����$��������{��/����C�-���� �G�T�a��"���UQte��?�����8�:⇭yr��7��>A��A���b��k���Эv0�C��R`��DD����M�Eb����hey�M�� ����5gQ��{�FV�Q̰x�cG��*+չ�E3k4�YGS$��Vl��i��ߝ ������c��xc���>��5��E�$�z,X"��$��*\�.�-�K~��?G,��^��߇5�o^��ɮ�d�k]3��K�*���~��+ OX�@�N~B��8���������0���	�[�\��~�vo5P��>b
�<��n��p�5j�5ds���,D{��=R����~��Z�oo���/|ҥ�=��H7뿻xo%L�Il��/�n�Y�"z�v���:#Bx"E`�Y� �E#�
p<�S�W'���J�1����E�-t:�g�,S�Q
�� �+�g��.��������I��Jh}r�>��' I�	�]���{k�iy�� �u����yL=b&@�}��B�+���M5Ƚ�f��Q��Ƌ�@%�齏�[��;������z�=��iK��W�^b9X�C�N]�=�VII�xX��0��'��uZ�PG�\����v���ٕ#��QE��2i�AP_.�s� '�d]�����q E�1����؏Z�w&rk,�_ ~(���D��b�9���r� ѱ�WRX��m�ő����iˍpJ~Q���nm��jV�6�CT��O��q[�Tú �쩪C�Y=߱!"���p��H�c}u��K&ݺ��:uW��z L!�5�}�c�q���y�as0g�.�� @L���K~r1�'�G@���iw��I�� )�g�`2H�s��ʱ��F1�#φ,�cڽ� q޺�˺z��H1���j����a��ގ���S'�Z^��
Kl��Ew�w�ν��5��h�5��� �S��L��{�4��.�t)�쐭Ī"��s�.O�zrѿq    Bw��]�ӊ�NCy�v�3����>�o��4� Z���E�"{J'�M��+�ȶk��' L�މ��o]�i-H
��"�F����p�d�ތ%����tLI ��.Zgf5�=�8��٥���jM����@�fGh� �����9f@ʍԈW��q������b�w����7�i�͛X|Z�l��	�l�4
"��a���͎�C��K@|��g{{E+o�EN���Q�eua� �SiZ=Il}�m)�5�3ù�'}�u�p��@Hh�2�~r�]��������6��å�k�D]0��t���ߐǶ�w�ʊp�-�Jz8{�9�'���ꏈo'��u�#qz�Ei�7�@y�m��L�T>��9n�م�t�CK6��S�����>{X����MJ������t�1��h����ߨ�L]���v ͸Ao�y����	Y~�Y�.ax$`$������ȹ:��i�WE=�r�aC�t�RW�DLt�{{�&�ѥ�Rkx���Blٱm�M֑��m�-a��k+��|�&�1'��+w;�ئ�e�{t����[Z�6-F�uձ4�T�0�0�v��*g�U��
y�� R���
O|1ߣK����Ϟ��J_'��i+����P`�l�e�י��l�тI1M�>�G�ѥ�T^u���C��ը��� ��gݍ	�tq����S�:�T��L�w��Y�3�'����R����v�i�,u�=��>D���p��zTB_��T"ȭPt�[��0����{tA={/]�Y�*���1��BRe�a뒾�G٠��6�����?�{�a��ro�\�G��Mq�]�ieS�jص�-m�����/[�X�fa���2詅P��)v�Ӎ��}�G�� �k�u;T1\�J	K���7�޵��� J`���H���s��fF]���xQ����3ȕo(�պYeM��>U��YC%�h���@#�a��:>-�~�D�cc��z��Oq��q���nh����,�0r�5L�A�Gۦ+l���9�VSj����N@�k�l}*Ok�\��O'�m�y�sU��3}��û�2CY�	g�U�|4㻦c����66�/\��˗Ť��}����T�s:�c���vCPV�̬}�Z�hUL'4�y^]X���|�+�|9Q�G7;�j�)�d(�� �=�d,�T!��	�[q%U�x�LI׺m:X^Z��M���Wt�t���Í��Zٱ)OE��;��̡!;��pJ��r���I0��%��&غ�36�0]3����\��˗6��vG��Nkcm%��	�˭���YTU.��m�ё<���uhS��(��<��+�|9���2��s����:ш���Ot�3	�J�~FU΢3y8�g!�n�~��牾�˗�r��Wk�^���psjG��{���q����΃]���E�{)l�6��� o�q�\��ˉhby�]~Y-��+�}y�KY��MjE�.n��������"�6$�Tq7��3}����Z���t��Z�i�Nyi���7�����ե�a��?a뭳K'�[G�6�DAs�/&��~�t�ź;�r�2H#'���ŎVEa+lK$��:���X���y`f������q|�$��_���R
�}��im�W��u�et�D�i��C�5�,X��[���*���0H���x{U��1�@�Ve�veب�>��uWXmj���زI��<�c�� ]+���ӎ���R-�- ���Q�QHd�+�b/vBGGæ�m]��` @���<;-ك��ۗ��]�ѥ�`ޣ�/+
>��[X�Ί��N�K�h�v�]��}CCQ��Bv׊]�u�'Q�ѥ��ۉ�e�F���/���r%���-I�2�lh�2{%wZ��u��]�k�U�GHH67&WkmF��1ZP���egX�^
�T4�r�p�g����&�0i���)t�{tA�F�~�Z	��I�G�Z��E�&񛳮��9��Dn6IZ^k��	g�J]�1��>	�z�.,1{wxw�B
�_Lf:��0�b��~5�V��R>�*����Q��Q���Dd���U#��5/�䲏d�3w�r�B5�4�*��WM��]!��R��?!�.�$��}�w���&���h�zQ���:�lK0�/�y���=�/�
�I 2�榩�Y��L1\#O��՟���	[ \o]�i�f��_	�a���BR�u����:<���ߑ==��u7�6�Ɔ�|Z�ּ�˧l��~ZSvpA�����)���r4�M��u��37q��!��J��T��>w����������p'/��oL�z�[��D�h�2;�����D=�*T%M�aG�.���G_���{��Ƌ��2�*ʊp'g�x�8T�)�� ���"�ɩ��*֖uU�ъޚ�۳�/��E)��O��'�W�h�}@%��κ��xUwÜ��`�AR:1�}�)v��vb�{'T�~ZQǑ�6��!���ӱ��tȶn4��c�7dwlD�f>����W�ж'��0�{����;�ճ=�Q�b_�����Q��2hMlw��Ni�eF}�h�'Fz����/��E����]��?��ǰj�c?�<�1&D�	�e
[���̐(l�~��V����Mj��g����i%xt�|���$<u�u������) ��y�d�oO�-eHŚ��ǹ��^d㠄�|��
��:�[SRy��I�/���OV�]�Z/KU�xJ�tI�s)�:��$���G�����f���bjݒT΀A�#�jA�A�bS�Hn.���
U��c�U���QL[{�0T�;��nl	� ���4��Ў=r��&�Uh�F[�#	���y�)F#@��N�q���K!�I\��Ŗ�gis�I����n6���V;�f%z%Cueg"���4�����pk������J�iMi����1�oT,�OU�]M�=+�Е�)*�=+#�ƼU������G�j�=�d�S~?�?�])��#�1n�`�l��� �% �5��֖M�gj��#�bAk�>�# �{Z{b����Y��;�*�ζ�\6l"���m�g��=��5l�7���#LV�����iU=�����؂�A��#w�eU���%���_�g�����2�G������]�ila�$�=�Y�� :�-%�^Z&��Luf�Sϟ��wp�U6Q�~��ֽ�KU�Z.>��S���<�
t-n�RC%������zX�j����p���,hZ��k_�x�iw���Ļ�s�f���U%�P�}���olq]��i.�a�;%��\��{�c�v/���q��\���H�)���P����c%Hس�U�K����.]8t4C��?���|z��"��Z��m&�e�RG�Έ�`�mm����͑��I���Y�F����x�e��|z�	�o��/k��<+���AU*jG�\jG�Ot��P}*=B�%���ڞ�׆i*��1�����"w����HS۔�&ޘ-�:�q����|P%[�lxc�Y�p��V�c�5���:}|A�//|�=��XmZ�0U���f���~�+�I|�~�c�V�Ğs���Q��Utƌ?��{A�//������6��~����B3��CW2����OGR�0�u����w�&�Gt/��D��g�ߍ�Y"��w�@X�i]�L���d�C�N�;�Sl��y�C0���TKs���ֺ��rB-޻��U� �!�ئ����A b(�I�o�k�B�.��^�٪~|��)U�~<���{�)%����:�����T
��ܮ_�ڛ)�A}ؽ�ğN�U�.��P�wѴGM��xQuj��ǟV�\���w�Ue4����\��~A'C0K"bU��Qk�+����qO�7�ܜ;s��S���Ǉ.~�0�cu'��̶���t:ǭ �+�5��]Aԋ?�o�cjb_<��em�{fѣuY��sP-�Ҳ]mGٽkd�ɣo�)�?���t�n4���{�Q�d~�g~YsI&B�`c G ��J��_��v����ы҄Wf-@zP�7���\��1R�nOE/V[�B     ����z%fe�M_U�g����Uu��lb�$?aIV�YӍU����ǘjS�+0�Z�4��V�y9�]"֭�MT�2���a�o��L�κv����C������g�=�Tgl�;λX��y��D_����%:�s�u�ͤ�1��Y�θ$�a��Vd!��1��{�Q��y��O+t�����t�P�,	�C-�X��X���n�k۳w��u��F>�Q��{�A��'$\��u�etU[鬢��X�i���ӨB��(u�;�h����J4z�2�3�>���.��j-�n����(	:�h�C&�(yv]O홄�-�*�X��}��ux�w��p��G�V�%e�Y�m��k�h���N?��,��uDЕ�P�e���G�W��Ӌzw�1ڬ� �h�gw)5ύM��r>���t�:����Z�̨��V�j]a���^Q��	��]���:���*��+�3�s�.�6 3R���v�.g�,Z[�^��VJ&�C $����e��P4�a=Wkg)٭J�����A�����#�$��2Jz���
�V֣r�2")�x�j�e��$y��O�-��n��U��;,0��t�� p�
����bP�M����i5Ϝ�󎹢̗ه�$��uW��.�뙭��2D4�w��2�~X��YT�	��M0�T����4�O>^Q�ˋ���)��
婰"�Ùi�*B{��FDC�:ѱ1�Ժ�,��u3Omt0o��MB��̗`���Z���^��Q��P"(d..86����J0�}�������M?ӑΌ`����W���"ݤ���5֓���ێdT�=�v�P2�8���J�Hӭ
B�[��~�1����'�Տ]��쓂��j@|�m�v�zt@ѧ��^���+Q��U��Y���\ni_*��@�[$���pS��(�`VİԺ�Ť������#���UǇ�
�,�����z��h�L�w9[W�BD5���ʙ5�����S"@W�����`Ny�LT�� Ù}U�<�l�{$L��]z����Ḱ���S��>���v8F���m��<��D���g��d����S,ĳ��s�V�j��9���b�'��p��c�v�f�KS�'�<��*lc�%	%GW}�>�)�
�R���\:��M"���S�A��*(0���
F�`����c�;�>f��x��ɫ7��]����m׌[M�4@*� _���vݐTH��I-����-�Z�l�k��a�Iun�>�#aB�ŷ������m!e����ܒ2na���j>�d�Q6&�5�U���C�3�?��&��P����օ��2����z�xGw���*y՛4� �ru+�D��a��مV���{$Lp����O�t�&�U��-CS:�:2)հ�}`�^z?((M�²��P�F�~df/E����N�v���j����J�?}Df�!Aiy��ݪ5Jݪ�UNz���Y��싇cK�=����P{��V�昨��YvBتg��7��߬�m�;�+Y��+V��A�����ЍLH0�G_"��p�[$�Xӄ�tds�#~6X��m:_1�6�f��Ǩ��&FB[�7�X�#x�G$|����"�^"�Vc�Ҏ��:������u���x�&��5�w�:d�u1�h�^�M��/��_^v�{Z�N���:�]* qS�5����,�����z��s�+�~�P�"�?���#3{������0����5�󦤞���t�A�1���A�T�> DE��tw���I��v�h�R�//��.+��2_�p/fX́�[k�`7�d�
eKW*����ꥭF��l�ԩ�*���z�y_�������ʆA�K�u�fxvG�5Ǝ^���<@�ˑ�g��&�J�R��$����Kq��� 1����j:�?��&���I]��I0�o��W5���Wv@5"~O4�U�٣�/X��d�.�j�eϪ�_�)������bZ9+�y��S�9��[֡k���� @m�v��{^�����9��]�֕�S��f�V��>;ݮ�*ZW�������P�܋��^AϹQ/��_^�Z�Σ���#�#�ȣ6=�s]� 6x2�;�P8+�t+��{���)u������	k�ͷ.���ᕴ��U���y��'krI�-+F1V�q�R��J ����b���=j����?���'�W� C�j��f��5���E(�R�tRL�fA�3��	�>�f��y!'ޏ�O�QI[���Xs���,M�M�ot]f�eTeY��g�@(�V�XX�1��&<����O/��;�u��R����O��gе��&|"y�%]<-�y b=�N;�-�l|��e�����5�]:GQ/u��V�ֺ�Bo-!����[�I�:�\z��қ?�(�R�����U���������b١0�uMu�D��^�rd
3��K[NAf)f����z�R���=ʨ	��a��J������έ�(/��f��'u�!�(��XAyGz�����*�)g�����=�X���.�i�9�<>�+�@o��m�Xp�?��tm!!�2�K���G��j{΂{)��Na�
����
��]g>�8�t�.��̴/Av��>���u<i$�X�h_S�������*�//�w�Q���$��fz�Mu߀��l�l�,xc�u4����h�>�z��,�{��e>��p���kj������|b����ظG�éF�ua��[��i}�*�T=����of^����(5�Fǋ�M���z��z�J�t�Ӧ-e� ��㶋)������ZR��g���O�R���E5�����:b\;=��ul,�pC�~�� @�x8�
1դ�(6��H�j(on�="�K���zY��z�eM�G�S�hӮ��WQ۱�]D�n�^!�s�;ڥ>2,X�Z!�n3���3�>��̧q�o/։��I���C�c�]����<�~��M�Y5wp:�W�JӑFr��6n<�̼��y�|�E����A,�p� ��
�'��f��;���t�?6��Ě�[����t�(�Xx�3/(��E�����bI@��UU��um�U��&Ë�U��E��Q�y�7ԟP��%����'^����H�ޞ�\�ug`8�.S�WD��2�z8n�J�_���L�Ե���\9�lC���تӾ��y��]�΋�����
�z�P����V?�.�؉vYͣVp�,�5�U[��|%멑G$|���r�s{w���(x�c��|�H-F�(�x�Di3���h��L4(���(��Y�n�#ʼ��yQ���?���:¿�3�ڲ�����L1ZoY�ZV�]��.�l��,[m�_���E�0ZIw��b���܃=ԍ��z)�*!
-kvl���M�0�����=���J`��������ی�>��F��V����T��(b�{ϼ�~��%\�)i�6��QKR#�uHc?g=�T�y�Y�o��w+����^8��Z`bm�8ĊN�Rl��`z�ʟ��:ϰ�6t!�WY�}��K����?{���[sXs��g"�ݦ$���]ֳHɅ���:�諥K3�/,���sKQ�R���E���h�j���TѸ�������j0J��h�(�=)9��s� k�{m�q1�L�4��$����O/b����XW0�ڡ�$����C���f���:�+!�	z���Xe�q�|D뗪�//��?y�X#t ���K�cʙ�q@o��۶z3&R����K͘�j9̔�	��G�R���~���/�ˮ6�c*�1�����җY��$7r>\�A�U���+9�/E��3�K~?z�Ɖ���Z/FT��fg=_Bq�w�%5U�}Wna�r�k-�0���x^�3��y�{���r�X���?����
/�~�Z��3} MW�"?�~��[4X���8l,��O�U{��&z�q���_�;�Y����,g�iY>��Vw�V�w��U<�BSmY����v�l���{�J�ju���?�~���p@S�'�/z>C�݊�C<`�H�c�r��hT7�V��p�0���a����7���#�����&�9���ò����ai&�y�l*��	T���3�6dF|����������fƠ�F���c�b\ �
  z�] �|�'>z���G�6=�!g۸������]��ڻv�^��|Z��Q�6�f��D�F��J`�K��B�:���q�C1�=��Ke��tW��bęxvT:ߝ/z�M�>��|��|H�M����	p�D��b�Rc�K��1����/�VLj�����h�魺5�m�P_w�l�ǡ���+:�����f���x��^z'|�fH��n�b�te���)뻚���y�q�J���t��ՈP'�	퍬�{=����Qw%o}�iQ����)Bco��QS�ӡ�^܊���T��Y���5�v��|>�^j[��������߬����;�u�netg��+fz���2r�� $02:��F-��rN��ӭ�{���5R���>�����;ݪ�S2Ǯ�j��dlR�rן�do=$�.`:�S�¨G�D����8��w��B��ޯ�_�@��<�G�/��ύgG��i�P�����z̷����zʴ��#+{����Eu���f5�y��[ϗ���[�����:���]7�� /u��=�P�,��m{:cv/=���	w%cE��)��&���g�⨩"
����d��%�r�������>t����Y��B����X3����2�v+յ��Z�]ש�N��~��lj��X��(ն�j�}�g�)��Zu���~�QsvLԽKr�������X*���	�������ۖ�B�M�K��//*o�y�Y�\����X/��)�(k��f�n�q�p�|��Z�T�+�� /j}���7��X�{���U-m��è��(��X�x�S���� ��(�կ�M=}H�Z�������_*�}T�	�w(s��x�v-051�O
��F��r=�b�O���sig�2�����P	����x��?��u���q��"��=��R[���
3]������b���m��à�q�
��=��W�����'	���NJ'�>ط���Y5]E9�>�&*N�s&;w���f@R�oe�vS� �IP���l=i�~��4�.�������[k� e9b�I��-z�h��z�=��꺏u$��B�;�ZC�:m<����|z�>������}�
=����\�Y0�j#���i�|Č,�M��0Տ���ue�Z���q��� �D?Oq������Ŏ@���VxDtkԥz� �E-�-�kbs^-3�E
|��j��g�{w�O/ʏ��4%��r��fX"���ł��"��Й���ӝ-o�K�oU�9��U�Q��xF?�U���N/��#j�!p���ժ|������� �ӛ�����l���E$d�g�6�TWE�Q�xk2��V���! ��H���d����W��#[i�y��;�c��,)��[%#�i��'/�Ϟ\"�� 췄.����Ȃ���������x��A�0"�������{��Gz{��zT1��O	� P���F�~:�w��l	I._N&ol�
�]e�
�h��L�Y������i� �����N)������l��y��;��Aψ�����֚lR1� \�y�oE�=�F���J�:�ӠpQ�gwv5:/j�J�Q�&1�1��y������%z�Z��U��w*�Wk���ю�GW�uPD������S�K��@�_i�1��/ص>|"vy��j]#0��q>B ��+�"�J�iO;f���T������:��B�[�O�_�ǫ^�3��f/F?�@[��*3��!nj�Z��T�.qI��QKV#l{�f)����Et����0�T�I��RYzo]���Ɲ��0��,�SSK}����~�A�s��t
Mʖփ\�1������"��G�W�V(�ތUi��_�P�aT����J��� 9afk����PF(~���Կ����C!?L'ҍ�kڡ�m6���m�~p��g561���CoX���vU��`�D��=D�ag�����Y/���L��/�ժ|ȡ����WAoŕ��Q/F�EP�j���l�|=���Ƀ�9��m�{�,�!���Q���[�U-��y=��2G5�t��SkN�S!B���_���aE�W���kx<�/^T��j���[k�k�zZ��R����N��2���ഛ_�X�O`�(�����!��5}t/D���WYQ~��jEX6"��槞_+Ng��<����2��>��{@�+1>�<ӭ������Nh��;%��� �JZ�]�������s��r�So�ɴ����թvty�,c�3�A����E�¨I #��%��Z#�:4]I_�s�su����	��*�:vV�\��YJsP�Zѳ�h���a�#M���@��Q4z{��n���w)�2y�$�z���^�!Ʀ.xp=Q�YE���SwQ�r$U"T�����-N/ m�>|�|��jUIy���YN�]���t�e�"(A�����{�|=��Qi��Roj=���c�z���2���omj�z*�T��'�9�c�[%]$m:=E�sS�����T1���N��|�B�?��q��q��؈�Q���ݥ�P	��H+tv͞M�W-��%����T�����-jq�Ԅ����P�j�B���i����U��T��!v�E���ܕ��E�͂v��	U��՗��$�+��3�����_��߫�OW�e1|�����;cz�r5���ݫVc/�Ae��N��f�:��C��J����Ecꏛ*�8���y�,囡�Z�zu�=�~>�g�j���DT���w�L�y��Rf��՗�4���4�}����\/i<      �      x��}ٲ㸒�s�W�{d�K�͟��������q�������תJ�������_��������?�_&�6�ӿ�����O����C�&�Z	�|�Ye����^L7�YU�v����X�PtA�P��}�=���/��jk����z�\r����j����٨���������_��_�Y�M�u����_���K��oID+���'ʵ)oLTU�Q���҈�O�Jj���U��M�2x`��P��q�W~�<�ɦp*���%�'�y���Υ���x<�v���%��ǐ�Qb�V^���`�lR�qc�8g��B�*��U���@I:���L���$y���V��5����_����}�F���Z�4Uf�ۨL�9Z�N�Ҧ��6U��5eA���Jj�����Y�
UC��c��lG���I����T��q�U�_�ۍ`~�G�قw�:�T%��}8T#٪�w�u2�Lg���RqN���5�<�v/�_�����c�\5��~h	��f����L~��ۇ_8ho��h�Ў-�<-HPUϪ�ž�#q�L�Rd�g����pؤYj�zڜ�A�����)X�7�lLəۑ��+b�o�7��fѰ�*�JP��Lj[�Ƴ�!C��MK�)�� �:�,�d��bM��x� �A�llJ�hB�*��]�������2�-��\�po�}�ZT�J�0|��1��a����!�0Iբ����4��igA^jq�M���^�����g��=���d$����%���o�t[��A��c�dN �栎��*z;����t�h��aTkv&/�|Rx��$D;�^�pG��ɰw�6�DsZ�%q��J�]k8fѽΖ��$��$����a�f�Ùz.Z|����Ѷ�ע�K��?�h�Ms=U��h�NU�Gq_�t{u�T{Lj�����C!���=wĒND���$����z-Z�.Z\fkCR�ê3��ؕ�vHL9�\T��g����l�q�'��+�D3����������h��E�e�lt�z5�փ� �"���)r�A8�0�~[C�d�����x�'&ʉh�I��s�Z4�F��=^d�a�5�����J�5)�a�tpP`���g� Np��sW0�#}�>=�GsKZ�d�/υ�O"&��q�~47d�fcH`�� ���U�� T)F={OҕLWLrQIu_@�p��(�� ͥ�Sټyd�`.�n��l/<���3�O�<p�fOZ�ě|ea�TRZ��p�~�v�c����#�_)��HG�tƞ��,g��I�z��D�����+����nK�bkb`���r/G`�E��pn6+y e�� �Y��SG���I�aD}������;�m<@ْ�`T��:AJSML�j��`8NY��73R,�(�5�iZ�s�@j�N�ٶ�7d�uO����'���������������{RΆ�	H�q�tؚF���Jp��Mp��#�ă��:�h��ax�93�"Q�'6���K*�U�p��	pJ'X���.SFJ��5�9�A[	�]Av$��n�<�� �p�&'ؘ�,:@�wE	Q��k���W`�%�&�
Q�J�b�
�*�% C�F��aM�Kwy ףV��Gа�gC����x�0ă(���p7\ ���ڀ_
���Vz4%�b���H�<-v!�$'x�X|����G�.9��c�Z�7���^�pa��x)'�zi��Z+\�biq�~<'p�K.�����܁�{�a�q@Nc �K��>�{A ��M;(��� �ѥ�@�>��� �+7���T���2k��=���n��A����*�����n�5���A6=`恧v���^����/�$������B��6��aC,�Lr X0�PA��	yc�����up3�.�J�:�9b�ݎ��?�$�g�S���������,�;�F�e\� ��]���iTQ��v*�����4a-)�0����:�sٶ�7d{�B�]�߲�?<#�sdcXJ�+�0p��t��͔�J��,x�U��F��H�{j����q�փ�<�!�yڎ�7N[�.Z�� ���r� Q�4���yHP3������
�g�,��(`ʥaA��t�Ɏ�!�z��!X>���h��n#�omv�I�7�6 ͘ۄ��Bdx��㷠 <c���S�pm�'�F���~�I_OzI���������o�����Y>/L3fL>��`�u�$H�����S؉N�CI�9 �_'����)O��#��7DsW�Y�o7�����L�dᶁ�ͦ���q�R*^ik�	#3�p���)͖vo���M���>Wo��G�I~��,�~e�6��:�A溓0nۃF�Tr+. ,�	3���a�$C1� /n`DM)�	�/�=,��"�4$�AE�H��-	���h���``ڑQ��� �*� �`[�Bc���Ox��L���܌��8_�������;��,Ν���r��V�62ޱ���`|^�p��(���� ��"j�V��h��wp���(n�IC܇h�Ak���\4��w����϶��E�2�o_lkF!�	���$���4�@�	���L��K�o��� �4��h�p��lH�:k0�!����ڔU	�
��-̢�z����wP��ZW�P�h�ӵ�>�Z��ʼ�ӏH�Oe� �wr+|���R�������la��o�k��ʼ.����
��`U譂���_;������}`�|�#|�#m�����P[�-��M�f�	��R����� #�L�a��R-���bN��
iJz���fN�?��qpOd�X��-�#6pMV���z�p��������-�	�x$������@���#b��(f�����8n�A�1q���׳�+K�$o�)��N��ի-����r��b #{����M��-�6�9fPAڰ�*?��c�3��~���!�Kh�_'��Zl�d�kۭ^���-���lW`�a� �/]U�4Z������k�2�$Fex����#�4B	�Ӷ�0b�>�`+ZN�転}��?Fr#Z�izl���	Df�s�i���HB�^YC	dL�m�����kw��j�����%�,�0#��23"0Ɂdj�N��)��V^?[w�8�7�_@|�q����~�P����"-��[c�9Ҳ���p�_�H���b�x�P>N��	n����\���"�װ*�cf]���ú����6�"�����R	��/'m�zC���[�36�0��
�?��_����� �1���w`窻�A+7�S5ox�]ة8m��S���\i���]\�����,�if}��6/7�:��N�XU]����w&��&B3���f�s5���E��#���$��zé�����������_Ѽe�u�x�T���8u-NI�����Ph�N@:U� �^�`T����Ӵɱ�q���|Lr>wj��k�&�ǂ��1)�8j���ۘǜ�������+؏��N���X��^�a��\Տ��*�rk�pL���Tm	V�d���]��i��.��>��4¢���\��'���.u�;Dr�Ff� �T��0]!�[����/���}��v�עy{Ej�;�5{Gl�>�bi��+4��*WZM�lu�a��'Sv�n
�Hi͹��
�o7���^߬�����/vK4l�[(kc��Ói&��H ɳ� �V�d���i�_7��>��T�S&8�Hs���^���_X�v���L_Ƞ2��7����ic��єQhH@��ʴ���`[ÇL��+@p���q sS8�L|lr�
�D7��m6X�[Ir�܁�����E�
�z䭴�B2
)�q3���앰^�]1�	/�H����@F���H0���hC6��#w {���f^���D�c�	6Vi��1�Q>�(�d���0�S1	��W����pД3#;k�	a��->'����vƥp�Ո�t a#]��    P�i2��ꊞ���������fX��d��X��&SOEK0���~��ҽT��7��7��Hf�+�6�����L�d�3u��2*f��R��W&�iF';����I� Z����/k��C�^{�z%Z�G�Ѱ%5�h�����H����5[�oى�R!��AK�(��u|�&D�:B� 5��D4c��;�l�xC�wH�J�Y��`:�b#��9�G�Ar �i\?� aڑ2/�ឱC�A��n�.�@��@j��r8�Vo���&�܏�Q��q�Ϗ���g�/����en�<��b�l.>�ct��/6�n�o��#���F|�zeD ۷@<���+=��φ3��P�hƫg敭��hb�� DƯH������5&���Ğ��/��W���ް��{�7~g`��	80I <l����Q��nqFW�gn����1u^��+0)K�˵A��$w� :��9���	��O��s��[��7x����_�vd�g�v���e,�����fG
� c9����ϔ�W[��iۭ^���=�`�
Kl������d�~
T\n�m�a3�s��J�T�K『�@ı+����$�6�����k|��}��mut�a�C���C[�2�h�~n�XJ�R�-��\@ ��-;�&X���d?�7D�~�F��6W���9T;C��oF�\��a;�eհ��(�[&��6)�hy�r܎��=�:�Ĉv��G� ���!x��:��D�#L�+����k�J3�6g��B'߻��#�I,�3����e��4<�>��͙	y���e5������p�]s�֨�[Yh����=-+Ź�{Ѯ����!��Rl��@gжQK8�v�9����F�j̭�d{��e��������d{UXVT�@�YH�ܰ- �󦏞��6�2�˴f vD�N6�/ŗ B^���&��z���l��z��1��1	�@'}P���
/����"��0&�v�X:�
����@`����W���˯ya�V��E{���Y��/75;Ѣ�!�����8h"�v=���B�!�^���&P�0�ҬZ��-�[�K�O˅��h�K���=W�#dm�VP�]���׵�����1@&ʋG�8�s�s�TsU�y��`فAɞ��Ib��T4��?�|7�fGW�wP+�h���*#�!�?Q-7@#��l�,���M�ӧƜ���ġyg�y��� uƨMr�%���N�
��iHV�|c�V�"!�����K�ċ����f�7�����P���k3%���p�%�L�Yq�Z@�MM�/h���R���Ƀ�nes���I+�ظ�h�E�5��_�|7���EaXy�j�E�A|���}^1�Z��g�Nd��8��AÝ��)&�%����U��z��a۬Bk�6��k?EW����FR�upC��Xv@F����s5��\�����w���D���g�e1�уh|���b�͚�\��?x
&����)�w�}R!��[(Ȉ-7���x:�Ii�eMM��I����[�ť|�d	�Q˩h&Dz{G�h�~�Ϥ�M<K�M��e�u����5�4�?.P\�� �{V4��������~��[OJx{�W�v\���x�6��et��4��a���#%��]ƜkmTH�����$e�� ��j��ϴ��8�2iX�p�5
�01���|J�nH��iu�����`�A�]�ǈ�0��ZW�x��R��@V̖���C�,��fc�g'�3���=ͿD�_�)Z�Mv������\��D����G������R��%f*��fWx�iY(����¸��.��G�E>��ܺ�Y�_<������Gcg�t^R�ό�� ��a����N�M���w�dlZW��69����� 
����Z���Z��/����_�v&�r�j��\V�k"���T*�F�C��t�aq:XH�O㊔�����lM>՚s�L������7��ng��j �ް�³~:���[JK��VgΞ,�����Z!?T��!$�2۬�>���C2Չ��\�����(Kk�	��5��1�ю���C�Ϯ�d�-=4�!k�_��7<`Cp�B�Lk8�66?���P&�|�2���o�5�K�>�8A�[�t:�V��\ �_q�Z�F$�5 6d��|[�m.���M��^h!��V�mW	��V���Sk�\��Z�ju��_���֕k�Qk 	u����h��l��� +f_@�Lahvw��~y>h�C��֪����z�v�#��f$i7`1��Ć���J�(�# � Qº (��y��[�D�3.�|�}��ǯ�˛eF@D��ec�-|�t�w���YZ�f2�٬�8���2)(F@�W�'��yje
���� �2X|�{��ӯ-�8ƽ��6�ً�l��/�q��C� M.Ց� n��ѮB���f*��a�jإ��\-k8�����p����u~8z�sɬ�ة��] ȸ.a��߂�y�/ ]�d@VFR���];4H� ю�evVr��h c���2;����*�]�p�4�z�Q��榁Ldm�����C�
���`��
� 9'a.ns�P�7�'Y��,�GL�L4����	�y�&Qn��>%� Ǒ��l`��$�X�xp�;к(�uk����2�>����Z�ֲ5���*R�q?�AЇS��X���+����E� ��Ц��?��v�ٹ���0x@*	vHR��S�`��]�_�bph&3����#[[]sA���T����}!�j"�ِ��U3$���/���v]f�|q Ų�s'=��r����b������l+22��َ�X�!��Z��md$k�u
��h��Y�����"0��* �� RW���0^2�J��5�S٬�ϯ]�}��l���i��q�t���� ����g�,�ds�#��d29sߙ\�=��P@��4��#Ҳd��+���l��Ș�7=[�f#���]r]p{6�u����?�U�Ps�{5���fa��^�ʽ�.X=AL؊�(���2w&�{��:�r�o��)��E�.���apѓ��0�&�I1e��|`7"�z��fωjx��|��i�A����>FN|6�F"�S�o��M��l�f:+eby�[�8_Kt��-�R�.�+ 5����l�a�nE�/w��|Pd�j��r�j˼�M*���J4/��F�Ё Y�� ��!����w��h�:߲eS�F�>'��G��,4��(�G�O'\�g6��K�_�?d�v��-��h' [s�i�^&����		�|4��S�T�#�uz�
PslGb�O��A�|��h��.�a����,�9b0><zxd �,:��G4��$:RgH-�o�����R�q��b�����z\>DG�j�+nT�dKWj�k�f�����z�u���(;\�N���[�N�VH����՝�m¯�?���V��l��g�j"�w��y��~ݒ��7 ��]�_M�e�9�(4לj���l
9��ۙ�̄�Ry�i@Pۙ��#@9'F�s��l�l�`d���VWN8�bUc+�Ԡ5��@��@M� �C>®*��=&^�x*[��DN�����.]���v@����'�h������
���Ki��:���W%�­x?���Fp.YJQ���ޑM_jM@�7W�D��~)�8��d�0U1γb�SR!���I�@d0�������H>(<B�i��HX�|#S�%�e���t��0��fN@�J+����[��Ns��xw�G�Uv�uM� ��j��XR�R� ���l�+������?�Z1ͷ��zJI��O�f@Ů�ٖ�ؕ�q=м�E����W�ͣ�tL��?�M�me	��nI󍷽e�vժhNÛ�@��2�d�8���;�cT�V����밪�G5x���gFh�G$)+����}�*�e����%���.q�KM���ʬ҃Hȋñղ˼8�0s�i\4��A�r�gǁ=���    �l�yB��j�#�y�H�v���K�����ԫ�Hc�Ѐ+��]V�\~503D��TS���̾��;{)��p0%|P|���� �s5�wy��.Lɳ���T��l���4`&a������]��|���J��;V�$ h.;;>d��A����\l�U��A���%ۅ{[�m�6�Y�׆-3U� VgT3��m������K������+@�*��#0������6�9��W��vAݞ�m���� �8o�iO���g�yO��%�]�/��-�Z��26�M-�pe�|*�yX�k�eۮޑ���u�Co������-�r ��fo��r�8C��o�����s����8�7aW0`I����-�7ޕ�[\�-۶�qKk@k^Z���,�P�~$c�h�,J��
?��&#ٞ50����:�������.�r�/�5��,�u���M�pBP�T�\w�fI_��?��G��
�yZ����?|�z{�����p�S6qw� ����-��6�:�EY�lm�n����r���;���+��?ľ���$ρ���ɹ��k@�dl:��l��㮝�{��{�u��=<�������	��y(c��Ղ�N�`JF�����qr	�� z�c�{�������H���+1�_�M:<��P@\��ZƖE��)��������1���A=0�^Á����ۯ�$�g[2>�5㫻kJ~�G����]G4`����L�`#S��N�`G�x�f�D%	sL`NV�O�6��0�W&X������њ�e�{�:�p�؋d��|�m����A
��_=/e{�qG�ы��TO���F�G��h|3}~� �~�.�'.�i��sה��XI��"�Ѷ�Ȝ,f�Tfwf`.|���!���L߁���̄�w��aI��>�I��F�g��0Z���Uۅ�f)ʾ-x�p�S)��a�j,]�8���ٿ�n͎��Yh2�R��\���S���ZMA,��źx��t����v����a�&3\rbo����0�V���M`鬊���t-X5�ϲ5���43��ak�۬L�hf9�M�&Y�t��]"e��-3���XSW��fƱ�Cdʌ�.��D Vj �p��oZ�)I�b��>9s�M�%�h&����.=��l����\B��d��_Acr�ժd2�;� ��� m�2�&�(�_�;����lI{ֻ�]\�-ٶ�qt�zJ�*v6�|�Z�P��6%M�y��ÜN� �U̄�Y��LK{�=��7�v�ĸ|7E��G��ecǷ��lU�[��E�j�Qp�T�b\�d7;KS��=�ɽe=b �n,��aR9�I>h�I�O��9�M�D��풽1�{��h:��Asa�L�~ [��$	[.�+R<߀]zp֚7�A�;�R+��Lmi%J��o��x��"���6u�f�ȃǭ��6&V�ic��.��9骭)v��9+����-�τ��y�A�Cm�7:Q�d��~�t�}���ҙ��<{:�fj�����r�Rřd7PϜ���M,����2�� ��G�e�+�� ���)���:m��a0�5[;�nv�La�J1�9�II	�Ie�F�� ZJw����eDK1��1�x�]����ޖ��J�l=@�Y�9�Aj�,�u9S��Y���b8��r��g����`��2
���"���X��*����qWw��x��M)�R�N�=�Q ��ɁI��f�%�`i�b_>�J^}�+�'{O	(�����)����|O�j|Hf��]����W� dk@�l�P�4Y_�[���Me�`A���5C�m�3���&��̻������3�V�)܃�}��n��E6�Tn�[3E�W;EG+Q�	���Ӱ�5Vz7 ʲߛgr�N�4⚫��#�v�L��ܱno�z�F���n���dO�*�}V�c�z��`�	*�/��ڀ&�XX��d��@J�nZ��'�;�*��pO�zER��]�/��߷���lFs\!{���2����n���9[�����X6`&�v��C^�_J� �O��u}�ā�%R�~�S.�$m�d�pNV)��ڗi ���sS�.L��<� �8s�%�e[o��-�\�#�%��l�W��Ұ�^jdhf3��}i�Eu�k���
(���u ��+��_�#6���l��&b�]B.o�wo�53*��d4y�����T����T���d���
æ��}�{��*�qg�DhKp��}�]� ���;X�J^C`�"X� &4�9B��:f83�3�JZFL�dg�O��Rk�q�#���#��ةh���o���u3�b����'1�8P'�`�h[o+f5�t��A{����
�0I�����#,�h����Y��)[4In�~�v	��K7��Z���0��ZYj�h z$p���fk���¦�~�@PN`rp��)��'M8�z�. �%ݭ(5�2X�_����@ʅ�Հ��{Ocd�3��:��j��1�YY�8ޑ#��d��O�dX����~�V6]`y�]�.]7~�6�Z�M�Z�V���A{&�u�(���:7�nT^�+TN��U�����N�3= ������ξ6�"�dɶ���~�7�����Ʉ\ٚ{�U6V]w�K���dI�ߕL�)�dO�^4 w����T�]�-��>����i>ex.6&1@ɥ��K�&cTM	��D����a�����u��'.`U�F�G�ɖVv���ߥory����͞t�"MNO�8_,��G(��"�@�,Y�6h5����,����&�4���T�,	X���!�x	�\�!\�p��G�c/Nl�\,��ИdF�ff�Jj؊�9�Ʊ�3��BE�E~��S8YO�ؕ8Ňw\���k��M챱dJ�����5�itN��gp�̪�զ0k��UѶ��r��1�������9A��h�d%�v�r�e��ٌ�]*T&���*��ѳR�V�4������El��Y*-��FR��K����>��M�$%��5��츻�|�5h��U؜��5�pJW����^��|mвW�7����g�P�l4��M��l��ޑ�wobvA�X�e��s�U/��g2�uc�* @[2���$�	�6T�_����D4<�y��"�X5��俻� L��y7ؖ��	[���~p��ٔ6v�D=�	Mq� �+�
c��$�Kn��l)�k|Y��KQ���k�����E�\�I�}e�UXz�ad��\��j�_v�Ι-׽ϪL�X�W�3�?��z��{'�|����#�|�\\,>��o\ ,	@0�\��PPj�cd�|Z�J�uV(�v f�}v\�L
M�>/d=�ḱA�H�`��F�}�.�\��^����}��_��9�L��iO�CD��w��aVLE�'�JCV�d 5!?=r>�>4�W��7��|��1l�%�E=�:w)AN���݋�V��2`a
HjG��0�CT��Z�+hmV������D��:K�r���j��u_�˛��d�ߌn0u��2U���=��.wq�a��ѱ!�T������V����N�����3���C��0�7����Y�i�܉�Y�ΦG�{؈b<G��V�=;<y����O�h�i���Ӗ����s�S�;�'å`����s�R`34�4����O@�<�`?j֋�l�r���V4&�6�B���рЎ���rJ����Ze&��۩%�"��?���t���y�K��mV؟%1�W2c˰�dR:��N��f�0l�Z�;$��	:P��[�&�g���D �i�;�$c@�)��b��3`��ib�]U�j`nam&���q)50���\ _�j���<DK���ǝWw��l�A�a����V		����㰭b�n��:�׳��M|eV�o���g����10���cˋ�*���;S7��]�r�l����g�T�U�a�7_WQp��∁�R��fL�LB�G���>�P���CG8a���`��S�kw�v����H�r��V�ʆ�.f5�cf	�    Ϫ �3�jx]v���n�~���Ȏ��8��qQI쉍����I����(���@^��z�UxB[v��up,v���
(�V�Gw�
�Ȫq0���N%�ҵOv�J5#U7����,kvYNN�K�F��|�.�{�]����洙�#!͆��L�Ks�>�8����UXzs��Rл�_��{�1L�gã�p���ȓ-i�6h�og(�H¶��&|�����_�I����F��A�p��@��c��r�1|�fw`i8��ln����	�	>�f���=y� ��gOZ������F��!l2 ol��%����F3��E0[
�V�6�PR^�OAl��RvΈ���n�'��}
w3����h���p���P۫�,I�$`@��ҡ��캽�ؽ�q�\S9x7>H� ��S�s�]�cr���E����ϷƤ�h+3X,&��)�*p�Q������z06i'@�y���a9��7���sv���=������l�k����U"��6�7mUl�Ȱ#+A\*aE��cQ��9؀�^����#�D[>/:�]�/ �'���(����K�ۇpM��,���1ղPPҁ}���y*��	:�G��:��ahlgV��>@B[Y��K��lz����,%V9�H��}������ĥ݄{��i�:�Q JʪN����dخH
�5!p27��j��wz�4�ݷ_$��IHy��o�L�~�vѲ*��)���]���9꥓�q�ej�-�L+���S�jP���A�h|hX����±�2������u�j��7����hZ������D�Bf��e(:,�ͮ$]sc�>�}��!0d	�
!B��-��@�Y��p,{8��A�߁Ѳ݅��׼s�\_�c�E)؈a��U=���j�u����t �R��]i��X���>�GXz`���ޙG�l4yW��~���.�pL�p �j��X�_��X@���c�ˮ����CGx6�b�^tx�Ȳ����1+�ת0G/�x��^�c�li翻x8��d�g�-syS�M���Ps)�c������TV��:<���W8^	��Z�� ������&�������5����<Ǥ�D
'�N�XV/eTX{�InEUKpV���B���X��F�t߫M?<���5d�
'���$noL��)u�����`��������D�h\��9Np�;Fȶ���H�8�H��8�d���~��I�v��a���9�%�C��+é8w��)����Ta����Q�a5lҫ�:絅�hHJe�IS4���'�Ss�?[�����^�X�h�1x�V�~���P���G(1��nl��XT���Ā9��R�]Yc�qr�`�a'G�9t���+�D9w�j�m�Yd�.k��1>:T�W��ο��d��P�����' #��l�Rxe��U��?0���xҵ�#�#�'�g�lL�;#'S���cGb�ɻ�V��J'r7����E�p\fnl���c�gK�]�t\S`�شu#�WЙ�9�L4���薠$��`�/O�xɏ�^���;�=�K_4�vWk��>s�4�,�#�¯�l�r˜ ���D�ȑ�@��N��j�'g�y�l�;�ȮUk�1��g���[c۴1/���z�؆dk`�0=:L�p��*���WYWRخV�����::��y��y��HN��k̚�̯1�M0���~�IV"��̩�z�օ �Tg��3�r��=�H�/��L���$.�*{v���}�_����yx+v�i���J,�9Z#�mi˦�P�i�
P���*���ft��2N�����A+Rl�Q��*'Y�žﮦ>Y��!���4l�12�]�2@���l�����>����S�N9R0M_�V��p�9|G=Ԏ�e��#�䊬5ϑ))|?�!ٷ��u�d?U61����Ȋ� S��k���� �fFS���j8q@�d5��x76���p�փ_�>9aX�G�������o�2K6�:+�?j�l�Sq�C�����k��l��a%�c�[�H�;�au��� �z�#��yy�\e8��4�ܭ�Q�]
�v2A��e9�D��}�\ã��} lIǖd�$T��h|da�H	}��q�1�1b���c�/�?(۷���k�lJ�-�Xpb��|�z���Y��5���pϾŰ���X(�]M�
�-eOY���ws���ދ&?�M?m���{�7�'��\��9��3_��Ʀ[tF@ɔf6����A��+��|� �A'l�~r�2ї�F����ھ]�?��v�h�#3�W+��t��3'1k�I;2�B�s���@La?y��J^G�ʃf��Gt�q��@��b�����[o��l�Kl���~R��A���)�-�ڦ힝�4\sfP5�o�2B g����)p���%� Xy�lO.�lC�W��-�-?��%�.��_\�uu
f�m�)�2zn=v����0�f�/�סrJ8��P���w���5�$ q��$/�;�[ ��]�3��[�$6ae�ժ�(�H�>�(l�9�/�Pw|��%��jf��̬?ٚ�&�,KYu����
ȟ���-�%�v�ބ	*���p�`��C$���25.:{2����2nӪe|�-���`3W)l�mwg�󖝭�9�n��9��	�z��{�7��w����5<�_�Fqv4^�ks�[�B��b5Ts-�\���C��S}��đ0�R*S!m-g�����H�C�U\p#Sq�lϰ���d��EA״�r����Ņ�*�+��5��̛����mLBi�[e�3�Fߚ�cp(�A����^����?h�jv�����tU�C`�����spF��0��Y%��î��_��=�7\�&x�>A+p��z҃ g��^��a@���������&��.��p���mr�ā�Ig�Sy6�����MG�콫6���ؼUK���間!K�:����!����� ��0c0�h�M����E�����[B�W�<\����y���� �օ���J��=V�bN�"Ǒ�+��_����yk��x<�)y�P���6��ס��m�Tx�&#���q��	 �-�j�F��5�	}��i ' � �Z��ƃh�Ap �݉h�����K��l_���E!�Ҝ��c��0i����q0��̱�%ÖF�-�*�'���+��Qpdu?nI>�a8m�lK��}�uS���!�{���/��<�mw��8�ū�y����ai��8��{0�w&�M�6�!�Pn���جn����U�~��C��l�>���M.}@������ڤ	a8�,�2��-��zۼ�Q���Nc�:�����А�I%q�
�����3������9]�#��ܔ���jm%���m���)�����9C��� W��28�mu9�C�m��+nc	s��*��+��^�1esW����۪ߜtm$,a�P�
k�`=���Yw	��9�9.\�&���Ϙ]׀�^>��������w�zG���au�ٶ[��	�P�d���-��������2�p�8�+���s�e����x	Ù]w����J1����Ye�(���3�!�ERd`����k�o��fq���Sr��-��,�Aq:�sǀ3� E�͒g����(�]3C,`��f�7�I�k�����!��F�i�j-�_��:)(*�;;�.(͂����wa�ʑ/�[�y�1�z{���� ��^V�}��x�%�E�oX�x�� $^���TN˪�Q�l�6X�Faq�^�[��,Hc ��C}�-��&g#�Loa�ɍ���7d{� F��#���3�ݾ����@�vUs%�Uaܮs�Hn9����p�l���+�?����4')L����C6���f?�#���ٝ��� �%��"�~ɶ��	ܸ��$0C�r�Tk��14TB����=c�u��5�+{-�93����׀��4�\6V��˯^��j����Oށ6�zR�|wf*�#�hH ���_[0�h�J�p*OH�x_�{sv�3��'�g+��x4":|Ʌ�{�^�&����A��?a|�0    ?&�#�w�(���:�� ��ҽ�ÁyW������������l����דV�������;z�W�q:�6f�Jg;�3�����Mn�0��=H��m��q�\3!2j��KH�u�ͯO�� ��	����+{��	�.�ޑ.^��y}X$G���$zj0 $��'uº��6g��4mf�&�'�lfA���B�F�1ռS�%���#������W����r�m���˿m'fY�7�ys����s�p=Lzso��8k�#�X�FH�Bf�gZ�½\���i����}���S��+�)D?xu��(�cM�Xvb�""̀�)�a���`-���"'���֍^N���Y���Ss'�w�KW��	oW\�Г����`zF�F4�ia��(sfsZ�1���т�B�ڧpk�����9|@���;½��v��4�|}����c��ʷeg�ƙ!M��r��-�0[�F�%�M��kHS�ODB�~�>�x��]�s���a�4�l��}��v�:;Y��jtN�MWj]�!03`��`3Yf�V�|f6��k���;�9v�q��p�\V�������)q��XJ�q�mH�Zdk������a����r�[�.k@���q����y�+�>�%���=9���:y;�m�Lр�i�&ޛC� hq��Q�اd��D�
�357�)��T��{O�^>���K�|�z%��p��D��Bg���4s����m��_��4c��L� (S��R��$�WۭX]G�֓�3�7�<_�#���۳�I�X��zOti�a4[��0�(@&�agdC�*�������S��+�(y�N�Oz�����W�'ߍ�$��ʅ��p�=�؃�Թ�
�88q��6
#`��X���1Ԩ B;
�'�<���n���.|���]e;����`U
�ő��L���!6�k��6O���>N�_�Ѱ[5�D��D8Y�r�Z�����0����da��p�.�oT�mA; J�|s�R�d%���'�[1���]*�n^��� +���]�����W������g��M��y���q��ge[� 쇝�f��G鍵۝��++.4@��^��p"�sLz�������.�ܚ����Ł��F�!�]\�NwÀ�w��������E���~U�7�N�]C�I��������p�}����p��ƛ�}�I8n��Z�V�r�z���2k�l�
������>�jr��a��d&`L���:kD���e����\	'{�e`�zi�ˋ�W�0(0�*�)���͠� 
���r@�wA��8� ̔�p|Rxd�Ùp��w�����g�r[%�37�cF��[���:m��=fʑ#�8S�����2 k5s�Q���i������	z��˟���^c6{/6D���+[�w���Ò�&�/���H�(�'��$�������sleZ-Hp)�1���q(�Xc0����"����Il2oL8
�n��8	�NM�3�|l�b��6��L��x�$f�pĆ�b�Ή�d�V��sɲ~��t�qt2r�O2���#�浚�ǉ���_�]�J�m����Y@ςc|�SY��	�: ��ӄM�,'l]��u�L���z��_w�/լ��I�8Qc(�d���/����������Ǟ |H �Nby����@8�i+�G�ï=<S���0��Zym^Q΄��n��­,�զ��)��t��,ne�Y��j�L��u�sNd�e7�upi��`9�#v�oP�,*�0��RZ�0'�� q�}��*'�x�o5�\�����'.���Ow�p�����3pW;�b���&p�`�Hy�EV9�y���d�p<s|0�`--}��k��B��3�.U�vݜR��px�$o�}�� �=��Pbt�ʘ����K��abb����Xw#>��k�5����gU"�^����z��w�J[�`�\�����/��ZKnj��Ɋ��
�UX�5V��:;��= �>FrlWف���۠-q�A��R��ү��A�d���ʟFqhXQ�Y�2�L"�}:���S�'����4����H�G��k�-*Sy+�m�f/e�g��f6�U�ށ�5�/�&=�1i `�g�����j��9]��:��J��!%}pqkj�&�[m�l~ 85���G��"6+1�t0��ȴ�ӞC������W�18��
���Q[���ؒ����LK�\�p�pk,ߒ��}�nf7I���V�龱9�y���>R�8�y��-����V��+Ptt���=�	����*�;��e���z�V��@m�ѳ����ʚj�᝭���~���"���/��y��4�IlG��N�$kQ���(��d)��Y[��kzaIÛFNn�E�ۇΪ���kc6��tëT�����ez7O���>gx:P�Zuf�6C����S6�������tp��	Q؂����b-,<k�9��5z�W�8�ބF�u��#�G�Ȁ[�B�OJ_.S?P�;�䯗l�����#���4��<+�R����r���ڳ0�-s�C��0" �:s��A�g'a����m�V�m��y�K?"A�a!���s��*'B��N\,֩� �������u�h��yb&�5�RjC'���+���̰-��S�~V��閥���ET(�C��P�	z�.@�qe�2��{:��F1�h[X!PJ/L��������]Ƅ�W�М>�S�����Sji$��9�}_����W�ٖ1��Wt�e�8^�y���tؐ�`z���+����	~#O���̶,5�n5\�λ�?s�5���.��ew���p)�cS�G%Ô���$�����w�y�V#�ؘ(�2;�g΂��'���A����<�DqBkɑ���B���=�����;�˰_f:Y�H�����ճ�)�2�Iqb���Ŷ�8A~�6b<�'̑��t������E9@���m��$�LsO��$U|ONO�R��u�l�T�M�> &�_�=�	M�9V��<�J��L6���gG.�1�r3�����Ai�OK�<�� ��
y�	`�W�;�9�pn�C@��ө�eZ�	X7����S�L�c�k�$�o3��J�Wc����g���&��a���	]�P�S9�Y�S_��bba{&<'�D6WcXPvG�_�� 7����Yep�������ċ s&h�]�b�YM��c`y238}�$�a���u%����r�df]�])�N�8����|���}@��*��r��-kBK���� ��a�8�H�O�w7���Zs���,�2������j6���ySؒ0J�	{+�1?|}�'Y!�����U����S���_�[����ws;P4[Je�I��p�T�X-&�07��Y@̄���S)�5)9��O�Mɷ_!�`�'��Ye���7�gm�wH(0�7�?<��5�!̗���e�<SLg�G��9����D�CG���`E]���z+[\o/+��M��Z��a٪�VH�+��dg�mH�2�
�697lMoȬ�2�l��Wy/gY؞Yj�'3㱰/-0�&�#.�dЄ���DL����kO���M�����տ���-p�M�eUcFK���~0�h�G�}c"��P��B���u�z8p|����c#_���}��͗���������1&��|��,��`�Mt$l}���" {v�Y@&@�E�Ì²��l�A��򠸵ʶH�I|kS��]N�j�m�Ջñ��[΋��E�I��u�qa	˪�����V���2T��r=�Ap�8�#r8�m'�Ρa/�wb��Â˜���?%Ҭz �u��@��Pf��6L�Ud��/�5�F���@��5|)�8p��I�ش�=�WUc�rQRo߃yl�ǲ�M����Y}�9���u��C�9��5g��
!k����F� [b��!&j�X��p���GYO�=W����K�l礪6�)�k�~6wq/�o���^dm@&��.�S �  Ğ�,���)�O�m�CaK�Yy��x��-�2CF`'�{��G�9ݚ�b��ڔi췊@9����}��؊�Kac?�i��XeU8m
~o���#���»z�so�q�u���q=�̓�w�z��U��2۽lI^+Eǀ
�\Vq�Kgk��.i��l� ���� �`�u��ۆ�,me ��%Ց�c���x�W�i���\]s���e��{���jo;��yi�*�-dޱ�mc�O��J����' d�vu�dY�[M��8��A?��O\W6��|Ҏ����a��=�tS�)Ӯ��WV���~�ۉVmz�	 ���kJ!����z��$VÞ�=w�w�a>�>�����;Nb�y��Y�K��}����2�u��s�=Z-n�^[�M���o�-u;Jq�:'{dsSf��p��3NS�±QF\�kLͧp\]�u� ��@%�3W�[�.7%�lT�`�#���lxN�7�#�ط��Ѓ�vF�m~��Q3+�[���q=4���ģ��4o N��-dB���-K)a7��X6������a���`��=:6��C4� 6�^�yRd_b�lɼ��� ��٦�g�fs�����_�]�����;��A�`2hP��C�>� ��(5	sڽꍽ�9x�`�Ì
H�L��^�g��Cr.�Þ\���!�[T �������~!�      �     x���ݎ�0�k�)������<Ko�VTi����񋶄ۤՌ���O(��!�����|��t��y��)�T%]��֮VQX�~�W#�ةi��ܞ���(�){ۈk6����<��E�>�5��<�n�W��"x(Jۈ[��c�-u�Wv���.���i7����G�"�2���g��}�z�� �)2�	��[/�.	��o��2.����~�	��v�i ��@�����v�l�O]Ge��˥��u���e]�^�dg��v<��[�ϑA;aM�qb�5��5a���~ĕ<8D� ��hP�)�һ��H�5=d�>�̹{�Ȓd�l��x�RL�i�&�o.u��H��m�5dI"�*K��$-����)�%��$ID�?�D��>ID+>�D��ܒD���I*]5x!c���#n�^���ћ=,�ܣ-�u�rI'�!_�$4�NBK1�$�ee�Ih	�NBC��I��jY(�-��nĭ>(%�hZ	/ڼ����+�-�^
�f�{1�&4�d�Mx�r�S*i'��Sp�� =C��      �   6  x�}�Ao1���_�84���=vN��\z�RU��$�*-
����P�®���w��ތQg���͕zS��Z��o6�,��֖_�W�����~!�j�5h�yV��8��]�P#��`|o�\�9��̴��T��l-��/._��^,�b١��v�r��c{�Aw@�G�0����r<����&�v;��Ł4�a{V��$n��:��c�*�0Y���s@[Z����c�������|)��Ϋ�t�ߗ����y��S5k�)u$A�5ω�̓��!��sG�a?I�b�95�7�*#H��H1�Q�<�Yk���Q@ls]q����w��_ov�{Y��k��z��0��3���am�G��(�,b�A]!�R`��K��@��.9B�Ԍ�� �̠��5��s�l�\��r-���v���<��Y��[l���I~,�Ĥ!;W�\��L	bAϒ*�@��t8pm��Ѐf=��բs��c̓�G�,��d][�G��)5�z4t��0I����4��5[���lm�2U �b"���q5`0p���@���$��������u�o|�R      �   �   x�}�=
�0��99Evi�b7����K$k)]�e\o��)x/��Bp~���h���$D���.xđ`BT�T�njek���Z���@;��<Øb�R�:�EkY�D��ǩ�8*��e�۰B�|�i|��J�6TH�*Zˊ5j�@N�'x�b��nj�����>N]�,�k�*��(��g�]n      �   �   x�}��
�0F��)�KCn~��ͮ����EBc-�K}�7p�|/7����mz�2\�v�:�R�,�2�Z�Zin�Y	���J�C�]H3�1,]-yU�3_T��w㔑*����?�&�t�"k\����)�Te��E@i��N�G|�B둹nj������/V���6S�E@�R�P�Xb      �   �   x�3�t?�-%5[A#=��R�8�X!)3'5O!�𞢜ԣ��=��H�Ӑ����H��L��\��������B���P� ��ghIb^V��lF��b5.�e�Y���X�tV3́
M�������� �99=      �   �   x�u�;�0Dk��QV��g�P� �"E0
D\��� %����xɔG?]_e2��-��BC�1dV :!'�ͭ��Я4��0�dT���˘�D���k7�m�'���Z��W�3c鎾�<p��B�Yo�%���Д)�:�s���o���{8/)�w�����Q�      �   s  x���KS#G���O�;�S-�����8�R<k/��v�m �؟>� &�*�TwͨG:�7I�AX��e�0L�Ӧ��>����)��j���ՠD�	ľ4��qzO¿qI�b6mq(�@ "� ��M�ꨌ���E���p��"�qV(�2�.+|ζ�o0�O�f�OH��azˤZ$����ٸ@m���-&����lT�Fo�P�k� q%�L��E�ʩ"LqQ(e��0�@B,=��G�q��a�?	�p7_���B�J��01�Բx��f��I�-�f�Hh�{��5""Z]�ΐ�</%l�����X@�t@�Z���kO5'�p]f�5�>�]`�P�^�(0�iZNg_Mߘ�-z��B������D�T���U	p��d�H>:�
Uቂ kSHUو�B?AL��a�Z�e�eƩ����j�yO-YDd4��G}������{.?L)��8��9g@�(����+N��ޤ�l56��� e��D��������e����N�o�O���Fh���g�pּOF%f�[ ��]���*TQ��V��Fj�-��Аu3>��+�s?�TTt>1��?��N�$�V��� }��O�Z�R�e�[&�e9���Ȯ�U*&Y!s�B�; Yk��2�n��\�ᆧ�����b���܅��w����*��Q<H��G�麃ḻ�f�t�ԙ���٧#�r$<[u���fg�b����jt3��:���
�����������/��b8MS���8�&�q���t�/#u�z���}�������:-��������y:8?����r}��/?}<^����a��_ϻ�q:����ᙀ�$�q����� 6]�n�iF�r�]��#��#B�I��m����w�d     