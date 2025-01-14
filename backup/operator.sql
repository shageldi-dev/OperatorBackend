PGDMP                         z            operator    14.4    14.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    209   �       �          0    16442    courier 
   TABLE DATA           �   COPY public.courier (id, fullname, username, password, phone_number, status, created_at, updated_at, date_of_birthday, work_start_date, sell_point_id, unique_id, user_role, token) FROM stdin;
    public          postgres    false    211   1�       �          0    16448    customer 
   TABLE DATA           �   COPY public.customer (id, fullname, phone_number, question_mode, address_home, address_work, information, created_at, updated_at, unique_id, operator_unique_id, speak_mode, status, speak_tone, speak_accent, focus_word, find_us) FROM stdin;
    public          postgres    false    213   N�       �          0    16454    customer_interested_product 
   TABLE DATA           �   COPY public.customer_interested_product (id, interested_product_name, interested_product_size, interested_product_color, status, created_at, updated_at, unique_id, customer_unique_id, operator_unique_id) FROM stdin;
    public          postgres    false    215   k�       �          0    16460    customer_order 
   TABLE DATA           �   COPY public.customer_order (id, unique_id, is_express, created_at, updated_at, additional_information, customer_unique_id, operator_unique_id) FROM stdin;
    public          postgres    false    217   ��       �          0    16466    customer_order_address_history 
   TABLE DATA           �   COPY public.customer_order_address_history (id, customer_order_unique_id, address, user_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    218   ��       �          0    16472    customer_order_courier_history 
   TABLE DATA           �   COPY public.customer_order_courier_history (id, customer_order_unique_id, courier_unique_id, operator_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    220   ��       �          0    16478    customer_order_date_history 
   TABLE DATA           �   COPY public.customer_order_date_history (id, customer_order_unique_id, order_date, order_time, user_unique_id, reason, unique_id, created_at, updated_at) FROM stdin;
    public          postgres    false    222   ��       �          0    16484    customer_order_delivery_price 
   TABLE DATA           �   COPY public.customer_order_delivery_price (id, customer_order_unique_id, user_unique_id, delivery_price, reason, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    224   ��       �          0    16492    customer_order_location_history 
   TABLE DATA           �   COPY public.customer_order_location_history (id, customer_order_unique_id, user_unique_id, latitude, longitude, reason, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    227   �       �          0    16498    customer_order_product 
   TABLE DATA           5  COPY public.customer_order_product (id, customer_order_unique_id, product_name, product_brand, product_model, product_artikul_code, product_debt_price, product_cash_price, product_discount, product_size, product_color, product_count, unique_id, created_at, updated_at, reason, operator_unique_id) FROM stdin;
    public          postgres    false    229   6�       �          0    16508 %   customer_order_product_status_history 
   TABLE DATA           �   COPY public.customer_order_product_status_history (id, customer_order_product_unique_id, status, user_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    231   S�       �          0    16514    customer_order_status_history 
   TABLE DATA           �   COPY public.customer_order_status_history (id, customer_order_unique_id, status, reason, user_unique_id, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    233   p�       �          0    16520    customer_status 
   TABLE DATA           T   COPY public.customer_status (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    235   ��       �          0    16526 	   fcm_token 
   TABLE DATA           a   COPY public.fcm_token (id, token, user_role, created_at, updated_at, user_unique_id) FROM stdin;
    public          postgres    false    237   ��       �          0    16532    find_us 
   TABLE DATA           L   COPY public.find_us (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    239   ��       �          0    16538 
   focus_word 
   TABLE DATA           O   COPY public.focus_word (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    241   ��       �          0    16544    inbox 
   TABLE DATA           �   COPY public.inbox (id, title, message, link_to_goal, is_read, is_delete, created_at, updated_at, unique_id, from_unique_id, to_unique_id) FROM stdin;
    public          postgres    false    243   �       �          0    16552    login_history 
   TABLE DATA           q   COPY public.login_history (id, created_at, updated_at, unique_id, user_unique_id, type, device_name) FROM stdin;
    public          postgres    false    245   �       �          0    16559 
   phone_call 
   TABLE DATA           �   COPY public.phone_call (id, phone_number, contact_name, call_direction, call_time, call_duration, unique_id, status, created_at, updated_at, user_unique_id, call_state, call_date) FROM stdin;
    public          postgres    false    247   ;�       �          0    16566    role_permission 
   TABLE DATA           �   COPY public.role_permission (id, permission, can_read, can_write, can_edit, can_delete, user_role, created_at, updated_at) FROM stdin;
    public          postgres    false    249   X�       �          0    16572 
   sell_point 
   TABLE DATA           }   COPY public.sell_point (id, name, address, phone_number, latitude, longitude, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    251   ��       �          0    16578    speak_accent 
   TABLE DATA           Q   COPY public.speak_accent (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    253   ��       �          0    16584 
   speak_mode 
   TABLE DATA           O   COPY public.speak_mode (id, value, created_at, updated_at, status) FROM stdin;
    public          postgres    false    255   ��       �          0    16590 
   speak_tone 
   TABLE DATA           O   COPY public.speak_tone (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    257          �          0    16603 	   user_role 
   TABLE DATA           E   COPY public.user_role (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    261   2       �          0    16596    users 
   TABLE DATA           �   COPY public.users (id, fullname, username, password, phone_number, status, user_role, sell_point_id, token, created_at, updated_at, work_start_date, date_of_birthday, unique_id, user_number) FROM stdin;
    public          postgres    false    259   �       )           0    0    cancel_reason_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cancel_reason_id_seq', 1, false);
          public          postgres    false    210            *           0    0    courier_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.courier_id_seq', 1, false);
          public          postgres    false    212            +           0    0    customer_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."customer_ID_seq"', 1, false);
          public          postgres    false    214            ,           0    0 "   customer_interested_product_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.customer_interested_product_id_seq', 1, false);
          public          postgres    false    216            -           0    0 %   customer_order_address_history_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.customer_order_address_history_id_seq', 1, false);
          public          postgres    false    219            .           0    0 %   customer_order_courier_history_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.customer_order_courier_history_id_seq', 1, false);
          public          postgres    false    221            /           0    0 "   customer_order_date_history_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.customer_order_date_history_id_seq', 1, false);
          public          postgres    false    223            0           0    0 $   customer_order_delivery_price_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_delivery_price_id_seq', 1, false);
          public          postgres    false    225            1           0    0    customer_order_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.customer_order_id_seq', 1, false);
          public          postgres    false    226            2           0    0 &   customer_order_location_history_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.customer_order_location_history_id_seq', 1, false);
          public          postgres    false    228            3           0    0    customer_order_product_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.customer_order_product_id_seq', 1, false);
          public          postgres    false    230            4           0    0 ,   customer_order_product_status_history_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.customer_order_product_status_history_id_seq', 1, false);
          public          postgres    false    232            5           0    0 $   customer_order_status_history_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_status_history_id_seq', 1, false);
          public          postgres    false    234            6           0    0    customer_status_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.customer_status_id_seq', 1, false);
          public          postgres    false    236            7           0    0    fcm_token_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.fcm_token_id_seq', 1, false);
          public          postgres    false    238            8           0    0    find_us_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.find_us_id_seq', 1, false);
          public          postgres    false    240            9           0    0    focus_word_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.focus_word_id_seq', 1, false);
          public          postgres    false    242            :           0    0    inbox_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.inbox_id_seq', 1, false);
          public          postgres    false    244            ;           0    0    login_history_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.login_history_id_seq', 1, false);
          public          postgres    false    246            <           0    0    phone_call_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.phone_call_id_seq', 1, false);
          public          postgres    false    248            =           0    0    role_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.role_permission_id_seq', 73, true);
          public          postgres    false    250            >           0    0    sell_point_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.sell_point_id_seq', 1, false);
          public          postgres    false    252            ?           0    0    speak_accent_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.speak_accent_id_seq', 1, false);
          public          postgres    false    254            @           0    0    speak_mode_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.speak_mode_id_seq', 1, false);
          public          postgres    false    256            A           0    0    speak_tone_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.speak_tone_id_seq', 1, false);
          public          postgres    false    258            B           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 1, true);
          public          postgres    false    260            C           0    0    user_role_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_role_id_seq', 7, true);
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
       public            postgres    false    261            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   V  x���ݎ�0�k�)r_ay�o��7)��*��>~іb�������������S5����LI�*�*p'�Z�ZEa��&ߍ�b�i�s{����0��m#����j���J�Ǆ�|L���AV��(m#nY3|����}]��}v�z�v#��0^�q:�%_�(�-Cۈ{��~���3E�1��uCt�e�%�R�$M-�J����0�1�4d��<�QR�n B�M�먌aS{�V����������,�ގ�y ���kd�NXC��X~��d��0`rn?�J<D� <EѠ��hKDʬ�!C�%?d�=D��3Cd+�Ń�b�<XH�4Is��EF� ��m#�!KTY����'�h��M�-ID�%I"r��$��I"Z�$�d�$"�NR�"���qs�b�����`��m٬�ДK:	�b'���vZ�y'a-+�NBK�tR�N�T�B�l��v#n�A)�Es�Jx�浄�\�[m����R(6ދi5�)'�n�c���RI;�%]U�iy[Sk-�{/qg������Q�L]~؀�|v܀�Br���b���y�:�%ȏЖzd�,���}��?�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�u�;�0Dk��QV��g�P� �"E0
D\��� %����xɔG?]_e2��-��BC�1dV :!'�ͭ��Я4��0�dT���˘�D���k7�m�'���Z��W�3c鎾�<p��B�Yo�%���Д)�:�s���o���{8/)�w�����Q�      �   �   x�����0Dg�+ثTv��G01v�QHP�����8=��tGp��I�MZI��v�?%��0��'�	&X. ������٣2z��i@���E=��Yb���]r��S.Jnq�5��֒W�i�\�E�
�YFc���1
     