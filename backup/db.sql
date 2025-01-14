PGDMP         8        	        z            operator    14.4    14.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16435    operator    DATABASE     m   CREATE DATABASE operator WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE operator;
                postgres    false            �            1259    16436    cancel_reason    TABLE     �   CREATE TABLE public.cancel_reason (
    id bigint NOT NULL,
    unique_id text,
    sell_point_id text,
    reason text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 !   DROP TABLE public.cancel_reason;
       public         heap    postgres    false            �            1259    16441    cancel_reason_id_seq    SEQUENCE     }   CREATE SEQUENCE public.cancel_reason_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cancel_reason_id_seq;
       public          postgres    false    209                       0    0    cancel_reason_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cancel_reason_id_seq OWNED BY public.cancel_reason.id;
          public          postgres    false    210            �            1259    16442    courier    TABLE     |  CREATE TABLE public.courier (
    id bigint NOT NULL,
    fullname text,
    username text,
    password text,
    phone_number text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    date_of_birthday text,
    work_start_date text,
    sell_point_id bigint,
    unique_id text,
    user_role bigint,
    token text
);
    DROP TABLE public.courier;
       public         heap    postgres    false                       0    0    TABLE courier    COMMENT     6   COMMENT ON TABLE public.courier IS 'Eltip berijiler';
          public          postgres    false    211            �            1259    16447    courier_id_seq    SEQUENCE     w   CREATE SEQUENCE public.courier_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courier_id_seq;
       public          postgres    false    211                       0    0    courier_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courier_id_seq OWNED BY public.courier.id;
          public          postgres    false    212            �            1259    16448    customer    TABLE     �  CREATE TABLE public.customer (
    id bigint NOT NULL,
    fullname text,
    phone_number text,
    question_mode text,
    find_us text,
    address_home text,
    address_work text,
    information text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    unique_id text,
    operator_unique_id text,
    speak_mode bigint,
    status bigint,
    speak_tone bigint,
    speak_accent bigint,
    focus_word bigint
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16453    customer_ID_seq    SEQUENCE     z   CREATE SEQUENCE public."customer_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."customer_ID_seq";
       public          postgres    false    213                       0    0    customer_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."customer_ID_seq" OWNED BY public.customer.id;
          public          postgres    false    214            �            1259    16454    customer_interested_product    TABLE     l  CREATE TABLE public.customer_interested_product (
    id bigint NOT NULL,
    interested_product_name text,
    interested_product_size text,
    interested_product_color text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
       public          postgres    false    215                       0    0 "   customer_interested_product_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.customer_interested_product_id_seq OWNED BY public.customer_interested_product.id;
          public          postgres    false    216            �            1259    16460    customer_order    TABLE     ,  CREATE TABLE public.customer_order (
    id bigint NOT NULL,
    unique_id text,
    is_express boolean DEFAULT false,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    additional_information text,
    customer_unique_id text,
    operator_unique_id text
);
 "   DROP TABLE public.customer_order;
       public         heap    postgres    false            �            1259    16466    customer_order_address_history    TABLE       CREATE TABLE public.customer_order_address_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    address text,
    user_unique_id text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    reason text
);
 2   DROP TABLE public.customer_order_address_history;
       public         heap    postgres    false            �            1259    16471 %   customer_order_address_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_address_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.customer_order_address_history_id_seq;
       public          postgres    false    218                       0    0 %   customer_order_address_history_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.customer_order_address_history_id_seq OWNED BY public.customer_order_address_history.id;
          public          postgres    false    219            �            1259    16472    customer_order_courier_history    TABLE       CREATE TABLE public.customer_order_courier_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    courier_unique_id text,
    operator_unique_id text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    reason text
);
 2   DROP TABLE public.customer_order_courier_history;
       public         heap    postgres    false            �            1259    16477 %   customer_order_courier_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_courier_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.customer_order_courier_history_id_seq;
       public          postgres    false    220                       0    0 %   customer_order_courier_history_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.customer_order_courier_history_id_seq OWNED BY public.customer_order_courier_history.id;
          public          postgres    false    221            �            1259    16478    customer_order_date_history    TABLE     �   CREATE TABLE public.customer_order_date_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    order_date text,
    order_time text,
    user_unique_id text,
    created_at text,
    updated_at text,
    reason text
);
 /   DROP TABLE public.customer_order_date_history;
       public         heap    postgres    false            �            1259    16483 "   customer_order_date_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_date_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.customer_order_date_history_id_seq;
       public          postgres    false    222                       0    0 "   customer_order_date_history_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.customer_order_date_history_id_seq OWNED BY public.customer_order_date_history.id;
          public          postgres    false    223            �            1259    16484    customer_order_delivery_price    TABLE     "  CREATE TABLE public.customer_order_delivery_price (
    id bigint NOT NULL,
    customer_order_unique_id text,
    user_unique_id text,
    delivery_price double precision DEFAULT 0,
    reason text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 1   DROP TABLE public.customer_order_delivery_price;
       public         heap    postgres    false            	           0    0 #   TABLE customer_order_delivery_price    COMMENT     R   COMMENT ON TABLE public.customer_order_delivery_price IS 'Eltip bermek bahalary';
          public          postgres    false    224            �            1259    16490 $   customer_order_delivery_price_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_delivery_price_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.customer_order_delivery_price_id_seq;
       public          postgres    false    224            
           0    0 $   customer_order_delivery_price_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.customer_order_delivery_price_id_seq OWNED BY public.customer_order_delivery_price.id;
          public          postgres    false    225            �            1259    16491    customer_order_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.customer_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.customer_order_id_seq;
       public          postgres    false    217                       0    0    customer_order_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.customer_order_id_seq OWNED BY public.customer_order.id;
          public          postgres    false    226            �            1259    16492    customer_order_location_history    TABLE       CREATE TABLE public.customer_order_location_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    user_unique_id text,
    latitude text,
    longitude text,
    reason text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 3   DROP TABLE public.customer_order_location_history;
       public         heap    postgres    false                       0    0 %   TABLE customer_order_location_history    COMMENT     b   COMMENT ON TABLE public.customer_order_location_history IS 'Eltip berilmeli yerin kordinatalary';
          public          postgres    false    227            �            1259    16497 &   customer_order_location_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_location_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.customer_order_location_history_id_seq;
       public          postgres    false    227                       0    0 &   customer_order_location_history_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.customer_order_location_history_id_seq OWNED BY public.customer_order_location_history.id;
          public          postgres    false    228            �            1259    16498    customer_order_product    TABLE     T  CREATE TABLE public.customer_order_product (
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
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
       public          postgres    false    229                       0    0    customer_order_product_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.customer_order_product_id_seq OWNED BY public.customer_order_product.id;
          public          postgres    false    230            �            1259    16508 %   customer_order_product_status_history    TABLE       CREATE TABLE public.customer_order_product_status_history (
    id bigint NOT NULL,
    customer_order_product_unique_id text,
    status text,
    user_unique_id text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    reason text
);
 9   DROP TABLE public.customer_order_product_status_history;
       public         heap    postgres    false            �            1259    16513 ,   customer_order_product_status_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_product_status_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.customer_order_product_status_history_id_seq;
       public          postgres    false    231                       0    0 ,   customer_order_product_status_history_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.customer_order_product_status_history_id_seq OWNED BY public.customer_order_product_status_history.id;
          public          postgres    false    232            �            1259    16514    customer_order_status_history    TABLE       CREATE TABLE public.customer_order_status_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    status text,
    reason text,
    user_unique_id text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 1   DROP TABLE public.customer_order_status_history;
       public         heap    postgres    false            �            1259    16519 $   customer_order_status_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_order_status_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.customer_order_status_history_id_seq;
       public          postgres    false    233                       0    0 $   customer_order_status_history_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.customer_order_status_history_id_seq OWNED BY public.customer_order_status_history.id;
          public          postgres    false    234            �            1259    16520    customer_status    TABLE     �   CREATE TABLE public.customer_status (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 #   DROP TABLE public.customer_status;
       public         heap    postgres    false                       0    0    TABLE customer_status    COMMENT     D   COMMENT ON TABLE public.customer_status IS 'Müşderiniň statusy';
          public          postgres    false    235            �            1259    16525    customer_status_id_seq    SEQUENCE        CREATE SEQUENCE public.customer_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.customer_status_id_seq;
       public          postgres    false    235                       0    0    customer_status_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.customer_status_id_seq OWNED BY public.customer_status.id;
          public          postgres    false    236            �            1259    16526 	   fcm_token    TABLE     �   CREATE TABLE public.fcm_token (
    id bigint NOT NULL,
    token text,
    user_role bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_unique_id text
);
    DROP TABLE public.fcm_token;
       public         heap    postgres    false                       0    0    TABLE fcm_token    COMMENT     H   COMMENT ON TABLE public.fcm_token IS 'Firebase cloud messaging tokens';
          public          postgres    false    237            �            1259    16531    fcm_token_id_seq    SEQUENCE     y   CREATE SEQUENCE public.fcm_token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.fcm_token_id_seq;
       public          postgres    false    237                       0    0    fcm_token_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.fcm_token_id_seq OWNED BY public.fcm_token.id;
          public          postgres    false    238            �            1259    16532    find_us    TABLE     �   CREATE TABLE public.find_us (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.find_us;
       public         heap    postgres    false                       0    0    TABLE find_us    COMMENT     9   COMMENT ON TABLE public.find_us IS 'Bizi nireden tapdy';
          public          postgres    false    239            �            1259    16537    find_us_id_seq    SEQUENCE     w   CREATE SEQUENCE public.find_us_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.find_us_id_seq;
       public          postgres    false    239                       0    0    find_us_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.find_us_id_seq OWNED BY public.find_us.id;
          public          postgres    false    240            �            1259    16538 
   focus_word    TABLE     �   CREATE TABLE public.focus_word (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.focus_word;
       public         heap    postgres    false                       0    0    TABLE focus_word    COMMENT     M   COMMENT ON TABLE public.focus_word IS 'Nähili ýüzlenilse gowy görýär';
          public          postgres    false    241            �            1259    16543    focus_word_id_seq    SEQUENCE     z   CREATE SEQUENCE public.focus_word_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.focus_word_id_seq;
       public          postgres    false    241                       0    0    focus_word_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.focus_word_id_seq OWNED BY public.focus_word.id;
          public          postgres    false    242            �            1259    16544    inbox    TABLE     S  CREATE TABLE public.inbox (
    id bigint NOT NULL,
    title text,
    message text,
    link_to_goal text,
    is_read boolean DEFAULT false,
    is_delete boolean DEFAULT false,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
       public          postgres    false    243                       0    0    inbox_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.inbox_id_seq OWNED BY public.inbox.id;
          public          postgres    false    244            �            1259    16552    login_history    TABLE     �   CREATE TABLE public.login_history (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
       public          postgres    false    245                       0    0    login_history_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.login_history_id_seq OWNED BY public.login_history.id;
          public          postgres    false    246            �            1259    16559 
   phone_call    TABLE     w  CREATE TABLE public.phone_call (
    id bigint NOT NULL,
    phone_number text,
    contact_name text,
    call_direction text,
    call_time text,
    call_duration text,
    unique_id text,
    status text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
       public          postgres    false    247                       0    0    phone_call_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.phone_call_id_seq OWNED BY public.phone_call.id;
          public          postgres    false    248            �            1259    16566    role_permission    TABLE       CREATE TABLE public.role_permission (
    id bigint NOT NULL,
    permission text,
    can_read boolean,
    can_write boolean,
    can_edit boolean,
    can_delete boolean,
    user_role bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 #   DROP TABLE public.role_permission;
       public         heap    postgres    false            �            1259    16571    role_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.role_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.role_permission_id_seq;
       public          postgres    false    249                       0    0    role_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.role_permission_id_seq OWNED BY public.role_permission.id;
          public          postgres    false    250            �            1259    16572 
   sell_point    TABLE       CREATE TABLE public.sell_point (
    id bigint NOT NULL,
    name text,
    address text,
    phone_number text,
    latitude text,
    longitude text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    unique_id text
);
    DROP TABLE public.sell_point;
       public         heap    postgres    false                       0    0    TABLE sell_point    COMMENT     9   COMMENT ON TABLE public.sell_point IS 'Satuw nokatlary';
          public          postgres    false    251            �            1259    16577    sell_point_id_seq    SEQUENCE     z   CREATE SEQUENCE public.sell_point_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sell_point_id_seq;
       public          postgres    false    251                       0    0    sell_point_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sell_point_id_seq OWNED BY public.sell_point.id;
          public          postgres    false    252            �            1259    16578    speak_accent    TABLE     �   CREATE TABLE public.speak_accent (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
     DROP TABLE public.speak_accent;
       public         heap    postgres    false                       0    0    TABLE speak_accent    COMMENT     J   COMMENT ON TABLE public.speak_accent IS 'Nähili äheňde gürleşýär';
          public          postgres    false    253            �            1259    16583    speak_accent_id_seq    SEQUENCE     |   CREATE SEQUENCE public.speak_accent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.speak_accent_id_seq;
       public          postgres    false    253                        0    0    speak_accent_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.speak_accent_id_seq OWNED BY public.speak_accent.id;
          public          postgres    false    254            �            1259    16584 
   speak_mode    TABLE     �   CREATE TABLE public.speak_mode (
    id bigint NOT NULL,
    value text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    status bigint
);
    DROP TABLE public.speak_mode;
       public         heap    postgres    false            !           0    0    TABLE speak_mode    COMMENT     <   COMMENT ON TABLE public.speak_mode IS 'Gepleýiş şekili';
          public          postgres    false    255                        1259    16589    speak_mode_id_seq    SEQUENCE     z   CREATE SEQUENCE public.speak_mode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.speak_mode_id_seq;
       public          postgres    false    255            "           0    0    speak_mode_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.speak_mode_id_seq OWNED BY public.speak_mode.id;
          public          postgres    false    256                       1259    16590 
   speak_tone    TABLE     �   CREATE TABLE public.speak_tone (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.speak_tone;
       public         heap    postgres    false            #           0    0    TABLE speak_tone    COMMENT     :   COMMENT ON TABLE public.speak_tone IS 'Gürleýiş tony';
          public          postgres    false    257                       1259    16595    speak_tone_id_seq    SEQUENCE     z   CREATE SEQUENCE public.speak_tone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.speak_tone_id_seq;
       public          postgres    false    257            $           0    0    speak_tone_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.speak_tone_id_seq OWNED BY public.speak_tone.id;
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
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    work_start_date text,
    date_of_birthday text,
    unique_id text,
    user_number text DEFAULT 0
);
    DROP TABLE public.users;
       public         heap    postgres    false            %           0    0    TABLE users    COMMENT     ?   COMMENT ON TABLE public.users IS 'Admin, moderator, operator';
          public          postgres    false    259                       1259    16602    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    259            &           0    0    user_id_seq    SEQUENCE OWNED BY     <   ALTER SEQUENCE public.user_id_seq OWNED BY public.users.id;
          public          postgres    false    260                       1259    16603 	   user_role    TABLE     �   CREATE TABLE public.user_role (
    id bigint NOT NULL,
    name text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.user_role;
       public         heap    postgres    false                       1259    16608    user_role_id_seq    SEQUENCE     y   CREATE SEQUENCE public.user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_role_id_seq;
       public          postgres    false    261            '           0    0    user_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_role_id_seq OWNED BY public.user_role.id;
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
       public          postgres    false    254    253            �           2604    16632    speak_mode id    DEFAULT     n   ALTER TABLE ONLY public.speak_mode ALTER COLUMN id SET DEFAULT nextval('public.speak_mode_id_seq'::regclass);
 <   ALTER TABLE public.speak_mode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255                        2604    16633    speak_tone id    DEFAULT     n   ALTER TABLE ONLY public.speak_tone ALTER COLUMN id SET DEFAULT nextval('public.speak_tone_id_seq'::regclass);
 <   ALTER TABLE public.speak_tone ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257                       2604    16634    user_role id    DEFAULT     l   ALTER TABLE ONLY public.user_role ALTER COLUMN id SET DEFAULT nextval('public.user_role_id_seq'::regclass);
 ;   ALTER TABLE public.user_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261                       2604    16635    users id    DEFAULT     c   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259            �          0    16436    cancel_reason 
   TABLE DATA           e   COPY public.cancel_reason (id, unique_id, sell_point_id, reason, created_at, updated_at) FROM stdin;
    public          postgres    false    209   ��       �          0    16442    courier 
   TABLE DATA           �   COPY public.courier (id, fullname, username, password, phone_number, status, created_at, updated_at, date_of_birthday, work_start_date, sell_point_id, unique_id, user_role, token) FROM stdin;
    public          postgres    false    211   �       �          0    16448    customer 
   TABLE DATA           �   COPY public.customer (id, fullname, phone_number, question_mode, find_us, address_home, address_work, information, created_at, updated_at, unique_id, operator_unique_id, speak_mode, status, speak_tone, speak_accent, focus_word) FROM stdin;
    public          postgres    false    213   T�       �          0    16454    customer_interested_product 
   TABLE DATA           �   COPY public.customer_interested_product (id, interested_product_name, interested_product_size, interested_product_color, status, created_at, updated_at, unique_id, customer_unique_id, operator_unique_id) FROM stdin;
    public          postgres    false    215   ��       �          0    16460    customer_order 
   TABLE DATA           �   COPY public.customer_order (id, unique_id, is_express, created_at, updated_at, additional_information, customer_unique_id, operator_unique_id) FROM stdin;
    public          postgres    false    217          �          0    16466    customer_order_address_history 
   TABLE DATA           �   COPY public.customer_order_address_history (id, customer_order_unique_id, address, user_unique_id, created_at, updated_at, reason) FROM stdin;
    public          postgres    false    218   c      �          0    16472    customer_order_courier_history 
   TABLE DATA           �   COPY public.customer_order_courier_history (id, customer_order_unique_id, courier_unique_id, operator_unique_id, created_at, updated_at, reason) FROM stdin;
    public          postgres    false    220   �      �          0    16478    customer_order_date_history 
   TABLE DATA           �   COPY public.customer_order_date_history (id, customer_order_unique_id, order_date, order_time, user_unique_id, created_at, updated_at, reason) FROM stdin;
    public          postgres    false    222   ;      �          0    16484    customer_order_delivery_price 
   TABLE DATA           �   COPY public.customer_order_delivery_price (id, customer_order_unique_id, user_unique_id, delivery_price, reason, created_at, updated_at) FROM stdin;
    public          postgres    false    224   f	      �          0    16492    customer_order_location_history 
   TABLE DATA           �   COPY public.customer_order_location_history (id, customer_order_unique_id, user_unique_id, latitude, longitude, reason, created_at, updated_at) FROM stdin;
    public          postgres    false    227          �          0    16498    customer_order_product 
   TABLE DATA           5  COPY public.customer_order_product (id, customer_order_unique_id, product_name, product_brand, product_model, product_artikul_code, product_debt_price, product_cash_price, product_discount, product_size, product_color, product_count, unique_id, created_at, updated_at, reason, operator_unique_id) FROM stdin;
    public          postgres    false    229   �      �          0    16508 %   customer_order_product_status_history 
   TABLE DATA           �   COPY public.customer_order_product_status_history (id, customer_order_product_unique_id, status, user_unique_id, created_at, updated_at, reason) FROM stdin;
    public          postgres    false    231   �      �          0    16514    customer_order_status_history 
   TABLE DATA           �   COPY public.customer_order_status_history (id, customer_order_unique_id, status, reason, user_unique_id, created_at, updated_at) FROM stdin;
    public          postgres    false    233   P      �          0    16520    customer_status 
   TABLE DATA           T   COPY public.customer_status (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    235   �#      �          0    16526 	   fcm_token 
   TABLE DATA           a   COPY public.fcm_token (id, token, user_role, created_at, updated_at, user_unique_id) FROM stdin;
    public          postgres    false    237   k$      �          0    16532    find_us 
   TABLE DATA           L   COPY public.find_us (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    239   e+      �          0    16538 
   focus_word 
   TABLE DATA           O   COPY public.focus_word (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    241   �+      �          0    16544    inbox 
   TABLE DATA           �   COPY public.inbox (id, title, message, link_to_goal, is_read, is_delete, created_at, updated_at, unique_id, from_unique_id, to_unique_id) FROM stdin;
    public          postgres    false    243   7,      �          0    16552    login_history 
   TABLE DATA           q   COPY public.login_history (id, created_at, updated_at, unique_id, user_unique_id, type, device_name) FROM stdin;
    public          postgres    false    245   �7      �          0    16559 
   phone_call 
   TABLE DATA           �   COPY public.phone_call (id, phone_number, contact_name, call_direction, call_time, call_duration, unique_id, status, created_at, updated_at, user_unique_id, call_state, call_date) FROM stdin;
    public          postgres    false    247   �=      �          0    16566    role_permission 
   TABLE DATA           �   COPY public.role_permission (id, permission, can_read, can_write, can_edit, can_delete, user_role, created_at, updated_at) FROM stdin;
    public          postgres    false    249   R      �          0    16572 
   sell_point 
   TABLE DATA           }   COPY public.sell_point (id, name, address, phone_number, latitude, longitude, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    251   �R      �          0    16578    speak_accent 
   TABLE DATA           Q   COPY public.speak_accent (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    253   tS      �          0    16584 
   speak_mode 
   TABLE DATA           O   COPY public.speak_mode (id, value, created_at, updated_at, status) FROM stdin;
    public          postgres    false    255   4T      �          0    16590 
   speak_tone 
   TABLE DATA           O   COPY public.speak_tone (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    257   �T      �          0    16603 	   user_role 
   TABLE DATA           E   COPY public.user_role (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    261   ^U      �          0    16596    users 
   TABLE DATA           �   COPY public.users (id, fullname, username, password, phone_number, status, user_role, sell_point_id, token, created_at, updated_at, work_start_date, date_of_birthday, unique_id, user_number) FROM stdin;
    public          postgres    false    259   �U      (           0    0    cancel_reason_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cancel_reason_id_seq', 1, true);
          public          postgres    false    210            )           0    0    courier_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courier_id_seq', 1, true);
          public          postgres    false    212            *           0    0    customer_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."customer_ID_seq"', 2, true);
          public          postgres    false    214            +           0    0 "   customer_interested_product_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.customer_interested_product_id_seq', 7, true);
          public          postgres    false    216            ,           0    0 %   customer_order_address_history_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_address_history_id_seq', 8, true);
          public          postgres    false    219            -           0    0 %   customer_order_courier_history_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.customer_order_courier_history_id_seq', 16, true);
          public          postgres    false    221            .           0    0 "   customer_order_date_history_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.customer_order_date_history_id_seq', 9, true);
          public          postgres    false    223            /           0    0 $   customer_order_delivery_price_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_delivery_price_id_seq', 15, true);
          public          postgres    false    225            0           0    0    customer_order_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.customer_order_id_seq', 7, true);
          public          postgres    false    226            1           0    0 &   customer_order_location_history_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.customer_order_location_history_id_seq', 2, true);
          public          postgres    false    228            2           0    0    customer_order_product_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.customer_order_product_id_seq', 18, true);
          public          postgres    false    230            3           0    0 ,   customer_order_product_status_history_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.customer_order_product_status_history_id_seq', 188, true);
          public          postgres    false    232            4           0    0 $   customer_order_status_history_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_status_history_id_seq', 53, true);
          public          postgres    false    234            5           0    0    customer_status_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.customer_status_id_seq', 4, true);
          public          postgres    false    236            6           0    0    fcm_token_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.fcm_token_id_seq', 26, true);
          public          postgres    false    238            7           0    0    find_us_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.find_us_id_seq', 1, false);
          public          postgres    false    240            8           0    0    focus_word_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.focus_word_id_seq', 5, true);
          public          postgres    false    242            9           0    0    inbox_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.inbox_id_seq', 43, true);
          public          postgres    false    244            :           0    0    login_history_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.login_history_id_seq', 24, true);
          public          postgres    false    246            ;           0    0    phone_call_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.phone_call_id_seq', 71, true);
          public          postgres    false    248            <           0    0    role_permission_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.role_permission_id_seq', 7, true);
          public          postgres    false    250            =           0    0    sell_point_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sell_point_id_seq', 1, true);
          public          postgres    false    252            >           0    0    speak_accent_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.speak_accent_id_seq', 5, true);
          public          postgres    false    254            ?           0    0    speak_mode_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.speak_mode_id_seq', 3, true);
          public          postgres    false    256            @           0    0    speak_tone_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.speak_tone_id_seq', 3, true);
          public          postgres    false    258            A           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 1, true);
          public          postgres    false    260            B           0    0    user_role_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_role_id_seq', 5, true);
          public          postgres    false    262                       2606    16637     cancel_reason cancel_reason_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cancel_reason
    ADD CONSTRAINT cancel_reason_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cancel_reason DROP CONSTRAINT cancel_reason_pkey;
       public            postgres    false    209                       2606    16639    courier courier_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courier
    ADD CONSTRAINT courier_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courier DROP CONSTRAINT courier_pkey;
       public            postgres    false    211                       2606    16641 <   customer_interested_product customer_interested_product_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.customer_interested_product
    ADD CONSTRAINT customer_interested_product_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.customer_interested_product DROP CONSTRAINT customer_interested_product_pkey;
       public            postgres    false    215                       2606    16643 B   customer_order_address_history customer_order_address_history_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_address_history
    ADD CONSTRAINT customer_order_address_history_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.customer_order_address_history DROP CONSTRAINT customer_order_address_history_pkey;
       public            postgres    false    218                       2606    16645 B   customer_order_courier_history customer_order_courier_history_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_courier_history
    ADD CONSTRAINT customer_order_courier_history_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.customer_order_courier_history DROP CONSTRAINT customer_order_courier_history_pkey;
       public            postgres    false    220                       2606    16647 <   customer_order_date_history customer_order_date_history_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.customer_order_date_history
    ADD CONSTRAINT customer_order_date_history_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.customer_order_date_history DROP CONSTRAINT customer_order_date_history_pkey;
       public            postgres    false    222                       2606    16649 @   customer_order_delivery_price customer_order_delivery_price_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.customer_order_delivery_price
    ADD CONSTRAINT customer_order_delivery_price_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.customer_order_delivery_price DROP CONSTRAINT customer_order_delivery_price_pkey;
       public            postgres    false    224                       2606    16651 D   customer_order_location_history customer_order_location_history_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_location_history
    ADD CONSTRAINT customer_order_location_history_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.customer_order_location_history DROP CONSTRAINT customer_order_location_history_pkey;
       public            postgres    false    227                       2606    16653 "   customer_order customer_order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.customer_order
    ADD CONSTRAINT customer_order_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.customer_order DROP CONSTRAINT customer_order_pkey;
       public            postgres    false    217                       2606    16655 2   customer_order_product customer_order_product_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.customer_order_product
    ADD CONSTRAINT customer_order_product_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.customer_order_product DROP CONSTRAINT customer_order_product_pkey;
       public            postgres    false    229                       2606    16657 P   customer_order_product_status_history customer_order_product_status_history_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_order_product_status_history
    ADD CONSTRAINT customer_order_product_status_history_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.customer_order_product_status_history DROP CONSTRAINT customer_order_product_status_history_pkey;
       public            postgres    false    231                       2606    16659 @   customer_order_status_history customer_order_status_history_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.customer_order_status_history
    ADD CONSTRAINT customer_order_status_history_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.customer_order_status_history DROP CONSTRAINT customer_order_status_history_pkey;
       public            postgres    false    233            	           2606    16661    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    213                       2606    16663 $   customer_status customer_status_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.customer_status
    ADD CONSTRAINT customer_status_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.customer_status DROP CONSTRAINT customer_status_pkey;
       public            postgres    false    235            !           2606    16665    fcm_token fcm_token_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.fcm_token
    ADD CONSTRAINT fcm_token_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.fcm_token DROP CONSTRAINT fcm_token_pkey;
       public            postgres    false    237            #           2606    16667    find_us find_us_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.find_us
    ADD CONSTRAINT find_us_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.find_us DROP CONSTRAINT find_us_pkey;
       public            postgres    false    239            %           2606    16669    focus_word focus_word_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.focus_word
    ADD CONSTRAINT focus_word_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.focus_word DROP CONSTRAINT focus_word_pkey;
       public            postgres    false    241            '           2606    16671    inbox inbox_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.inbox
    ADD CONSTRAINT inbox_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.inbox DROP CONSTRAINT inbox_pkey;
       public            postgres    false    243            )           2606    16673     login_history login_history_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.login_history
    ADD CONSTRAINT login_history_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.login_history DROP CONSTRAINT login_history_pkey;
       public            postgres    false    245            +           2606    16675    phone_call phone_call_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.phone_call
    ADD CONSTRAINT phone_call_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.phone_call DROP CONSTRAINT phone_call_pkey;
       public            postgres    false    247            -           2606    16677 $   role_permission role_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.role_permission
    ADD CONSTRAINT role_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.role_permission DROP CONSTRAINT role_permission_pkey;
       public            postgres    false    249            /           2606    16679    sell_point sell_point_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sell_point
    ADD CONSTRAINT sell_point_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sell_point DROP CONSTRAINT sell_point_pkey;
       public            postgres    false    251            1           2606    16681    speak_accent speak_accent_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.speak_accent
    ADD CONSTRAINT speak_accent_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.speak_accent DROP CONSTRAINT speak_accent_pkey;
       public            postgres    false    253            3           2606    16683    speak_mode speak_mode_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.speak_mode
    ADD CONSTRAINT speak_mode_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.speak_mode DROP CONSTRAINT speak_mode_pkey;
       public            postgres    false    255            5           2606    16685    speak_tone speak_tone_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.speak_tone
    ADD CONSTRAINT speak_tone_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.speak_tone DROP CONSTRAINT speak_tone_pkey;
       public            postgres    false    257            7           2606    16687    users user_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.users DROP CONSTRAINT user_pkey;
       public            postgres    false    259            9           2606    16689    user_role user_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    261            �   ]   x�3��H+-NMI3�HMJ��26��H+K*7��06*�4��--NI-�TH����TH�I����4202�5��50V04�!#=ssc<R\1z\\\ ]��      �   B  x�}�Ms�0���+�wd��h����qD�Z3�B�` A�ǯ/��ؙ�}wg��g��ŕy{%JQg�|���@)�A���� ��u���3���6��{���� ����FN�b�\S:NT��g�d��L%�X�G�'�U�J-�Te?���c��YN��r7c�Ë�Y��D.뱬|wF�Ƅ#�L�}��'�1�i��&�|#� ���s�\LʊI��4�Q�<��)7�y��E���O#x���oF@f�d}H�Ŀ�M��Q��>��{ۂ7bO{d9E6��nյ������J
R���jN.�=M���®�x0l�ۭV����L      �   8  x���=O�@��z�)���vgf�ܑH'��t�x�k�8r"E����NW��)�O���� }��Q�L�Z.�*%�( �z�E��E����Uu8��_d���0^볜&ًz���q�z��eһ����}YD0�j��[��M�*�-�R�P�s�D�LG�՘
Q�@5s��-����� �FS8��R��R���}K�@H����mP�ʺ狾�i���!��E�,��M�_�'�1�1�E�ܿĿ7�)O��)���pp��	\gK�L\���Z�]FHٽ����$�T��.v��w��������      �   U  x����n\G�룧�p��\��Ӹ0�p�Ù�d�2�����pcEls�9���oHǛ�0��C�x�_������-�s���SU�#�]g	��,е'x]l��e�u�����m�.d��9����[&��R@�t�8E��D���U�uu-0h7��q�������������!�۽���>�yz����O��7���qqĘPc(I$t70*��B�� {���'�M�͘��<t�kC�������!�3���U�K�(sU�]�Ϳ�{�`��mF�A0w`�Հ�$�f���X��7��
5X-MHq|T�2i��ޮR��Q����%s�1�࢚��4�������龞��(�r��<S鹲��a�Y�z����|�	�;�|Ԛ̕��ڴ�x�>���o�	M��/O߿���|&<�u.�R�j��5쒚Qg��i	X:"lF����ڹ/u[>e�VG��˵����~j���_�lf"����	#7W�,c̤�%D1l�\pZt%5/H!�2�>���r{%���N�\�$�E��f�1.cLS|ʍ���m����s�?��^#��R��뵩?�nnn~ �㭩      �   R  x�ՔKjA���S�>h(=�$�r�l�9��1�����Y�+�,Bp`�MSݿ��>�������t@��� Ϝ�q��ԔZ������5$�m�l�+V��F�R�ˑ��~Ȗ��5�������|��e�>>=�?��m~:�<��ܹJV�������>�Ǉ���i?}�ŏ�맧�q��A�R� ���i0�e1;(�.�thn1I��B_��8W�k;������|jL�g&��;��RKu��2{��V��lE�9jBٓC�� �ܵ���F}^�/� �;�Q<�C�bJפA�[gT�*�t��@�}�����8J�-7`�qe���`�i�Rmy�*1�fƜ�I7�J���bA,�b3ǩ����$��w4c8�K�h=�-nc���V5�303f�&���q7
��#�ȠU��ʚ)�f�R����/��)A�i��x��6��Q��eD�I!C�kҍ�*���\�{�:.Ye�Ta�R&�Z&%	���"�%�h<F��[TrL��D=�5�FP���Cz���X���M(,l���Q`e[��F
T�#ڨA�M'v�+����1����tE�Pwww���N      �     x���M�A��U��E�eFd]A\�s���3�� ��h���B�d�����V��fbϠ	�$�)��B���;`G%!h�R>��J�l￼ޞ.���K�\���~�]o�&�v~��3�_(�L'�#�[�G������o�wB�<��x0��)�d9ȍPI|��1_�>_��e<���e�u�Z:��A۽B��Y���)���7UIP�5P�ո�,+���a�\HN-��,�e׭�LSh6�S0R����w�
����t��17��5W_C�O_/�w�t��G�g'{$�i�-�`�,�f�]vȓf�����y�WVR�R��c���ڪN���?�љ��II{ޤ;���Z"��P����&������X%n�bA��p��t�f���M�-�)2G[���v�\��ޒ��'УA\a�e��X���]����1��Q����fB=1�"F3�I�o���ޣjѓ����,*N��+�ZM&�50(�Dd�A�c���Jo��|&;P���H�?���oG?      �   �  x���K��6��}��EVQ��n6�HJ�NV��ۧ<$Hh#݆,��!���,�neҶ�Q��3h�%	��!��B�k%w�	���5bH��h�*�r���Ϸ}|�x���m��>�(���:�y���~̷���~;⦏c?�&�v�o�̀��RZ�����I�*���������^��k����3�u4@��&�c�R0�Ut�'��_Y��㹊N8��8�W�5�Jy��(���K_�pa%U��N��pe�8��n'�}X�E\�*:����tE\��|��h���0-Ě�߶D'�-Os���в��-,�W��g�^8�#,X {P��X5����e��\����z�JL=����F���c�!.)	�_Eg�6!�a
��z
mf�b#o�\�[K�◵�C�tw�4W�]���-�HK*RЯ��Nn]�E<M�Hq���Qb��*I1�R�R����{)��Y�����C.Y,i���:�������DOa���@:�90��n^�,�<� BM8az��6$�3t屶XV�ŉ��Ut֥�K<�]q���Σcr�Y�	���X�3s�:#Gc0�ʖf�~����eQ�%���Ut���K�m���]�N��> ��Sj�=�L>g�}v]�X�ܠF�c�nVgz����Kt5�r�tߖ���?���      �     x����j�@е�އ��j�Gv��s쐬��ԬL�v�gcB�q(�meQ�k ��p@I�q;�xbC(q��ؑ@IZ#�Ԇ�f�R-�#�F����˯���	�=
ݮ9`��'�I�0,�|���p��`x҉��Ò;ɳ����9揧���m<���|��1�W��/���e�u�Z:���^!c���ܔS�ٛ��$(���j�g���ŏA�ɩ%����3��tO[2���l2���R����w�
���Żt���w뚫��wp�Ix
%��r_�{ކp�A1xZܙ�*;�I�O�Y�<c�c6�
Z����i�RVk�:�ǥ3���	��M��&�Iu�]f���@�51��n^�*�T��D�	�I��)��-����#�rx̏��(�u�V���]���
�,f19�<5ʰF�A��d�*=-�{�zb>Ed4ʷܗ�^��eh�Ej�juT�	YT�R3V�Lk`p�DչA�/��VW����Lv�^��%�6ݿ����r�      �   �  x�͕M��6���)�%�~�*�YȆI��ěL��o����7�a�� ��G�{O����>G$� )v(��?Vc�P�^���5$H��h�*ֲ\o�x�ף1�^��nK\�D3�]0o��U�&�)��&���>�u�>^�>^��G��(mT6��X�щ�`]��,ka�1�HA~:m:���߰�Z0���үB˴����)�_�V��Kƾ%]�T�utRv��;�nrL��ۅrjB����'(E��l���3'��R� oR�X���H���Qy�@�A ����Jё��@�ݴ�����N�t3�%W�]"K��K�<��ҙ�/���T'��A8�e,���ӈ�rc�K���f5|���^5	O���Ѧ���c�N?���y��6���t�y����_������/�|>]��םO_Y�iܼŌ�k��%�w��.�|}ᕍq�Ț���E�B�y�A��i�1�Sm�`j���o����PS�0ޛ����f)�y��D�YN���ʽ�f���}�
�Le"�n�<|*�˳7GSD��ʽW��$yM��7��_��)����t�woQ��:�� 'g��4�3ٜ��٣�%v�P��;�޵�� �-�SL��0�#�9�#�fռV��)�H��5��n�v�      �   �   x�͏;n�0k���
��~�{�scJeéb ��#_@��7�f��Ѳl�q��
�Ź;bC��.� A!!h���ћ�n5�>~���&�?��T�M̓�$�M������}�?��������0.d��L>�`;Q�?��;u�:Yh%?Q�:��)�^�      �   �  x��W�j���>z�}�>�Lw�t�;C���@n}3?=+�$����;!��= $�r��ԟ�����k��w�s�S.VI4-r�_�[���H��Y���2I�Lc�B:��h�s��_�a�{����q�j}���.�a��/_��o���O_����\�%]�M�����~�K���)���
����X����9���.�n�
�8��:��-]�ù�P�T�C���oٯꚭ�+]���??~|�8�X{������N�P��?��|�f0'�h-n$U7Y�A�Ì���N�E��B�퉇�R�H�x�L������������m���9�u[�GX�֩y[��$�鰦)Y݊v}̘Q'��@�����jK��+]��˃|P8�>�P�v��z���Ј��u��M�B^���*�5������t��jM��^�@�_Ikt���6�[*� p�ì��Z�O�	�F�v�9��2�8����^Պ��ҁ�~!P̙�J����N=SϻW�h��$�j�C��a�hnD��Q<�gF�rkڞj�����.u7K=,�aX1ńVkR�R�Ku*C�zr�6�D������G9���5�p�f^Mg�G��z	�P��RJ���v�E�q��� h��R�8����b��!�M_�&��+=��8/�9s+��+�EN4L��ֲ1��yv�@�5����D<��M���dT�	8	� &��voQ��B�ֆBs�0	��X����.���kw�%�wa6�vъ�+(R�?�:���,aZe��ȧ�-�B�n��Jσ��;����{�i#��}h�*�#�,^��f�)�N�NH�w��X�=���E&_ �m2�F��V��g��$��m	H��Z�HT��=�WX�}������&���҈�����f*�cV�
NI�!�t;�`2��0�赪���|S�fu�r��t�;���x��}P�Ǉ�#�v.T���dG���TKcIŶ:�BLc@`��0��������eA��-C�?*�\�n��>$�!yo?s={�SB�v䳽GpM����+m���t '���Y\2gP��>x��d��^��f�s(�]�?�[
��U�M�^�3��;��޸.�4S���'�X\�UK�{Up�vE�լ�e�!n�*��X)�������`qr��g6h���!5 gbY�%	�x�QO��,�r�l���]䕼�k��,��k�Y�P�X֭��i2�agn#��~�e��=��R��r�[�{�ϠS�	���� ;�����,K��e��~	���Qo`�(�_�N A~ث1��"�.^|A��t� \�fP7[������i��^�HF*S�
a���W�)������	�c���mX��)p (�]h��5�1�7tf1l򑛧'�z�z���^�3��;���D[ݿ^N�b�s�[���Ʊ�a{�o&�u$;#��5ʸ}�6�E�)9^�̷ׇ��_ t�       �   �  x�͝�r7�ϣ����A��VmmU�{��$%َ���M���o%q����t��P�U�![�� �ǌ�)7ϣg�H��`���[���D=Y[���=;cg�;�L��L�MzM���O?=����~�����m�$�Γ��'�D�FC���3�3��%Jѭ�nH�s�D��͛,n���z6���C��n:����e�l�.6VR,�!9��������G'\:s�lt����_~�������m���o�������fz�o8��O�}���4���p��u{��ø��������q7�n߷�w��?��^{�����Ô<��L?�����O�������w�cy���M<U�m��|2�0�K5�w?2�P{b)�LLc�'�`
wk�o~���ؚ"�t*!����ӎ�J�ԁ�+���.6J1)��m�MvY�����s��ܣgRD%�� �yn�U@�F2%��t��X{.����H&�YL����(RQD�O��{�F
�"�������i�"Ʉ�n����C2�FG���3̓�WD��)̳K����c���,�%rH	Y��A ����gH�]�*ek�&,�2���s�)�j\3��E*��n,�2��b��p7VP�	wcE��p7VҚ	�R�f8�fzK�f�}XYk&܅EVk&܇�f�}X�5��:���`��'�}�/�S�+X�7��
z3���7��Jz3�,ћ	�`e��P��O)q�	����X�j̈́����L���f�}X^k&܇�Z3�>,�jɣ��'OHg�fzK�\�K�^�K�`�K�b��u*&���*&r�~rHfɯ�^�R����R����R����R����R����R���9Єm�^�R����R����
j�}Xj�}Xj�}Xj�|vnJ��{��?5���V1ه�V1ه�V1ه�V1ه�V1ه�U1q�LiJ	Ym���T�V�d'�V�d'�V�d'�V�d'�V�d'�V��?Irb��,���N,���N,���N,���>��U1ىu�b2�����ɔy�?�'g�	���e����
ޑʉB�#�xG*)
�TT���(�;Ra�
^>[�X"��˂g�W��TZ����Ó#��xG*0
�Tb���\���x�L�]J��L�������j�����#=TG�1z���c�P���:R��Cu��'UC��o�tV<[����&�К.Lϰ�N-f+�5.G�^$�)E��Lϱt��n��F5q�"��GI�^r�_7=��9߱��H��Z��v]��_��X:��4׸�8v��l�d%zGk��X:gF���/<~N8N#ɚ���j+�m8�K��g/�ej��R[;l��_<02������&zj��R[=l��_>ș��	G�k�.���6��K��:(�K�g�.��F�k��ݨ<�N	�[�L�Lϱܑ�"�#�@a9���9PEXG΁*ºF]q���9ԭv����^{�#��|GN�j�;rDT#ߑ��
��ȡQ�|Z�G���x�0Y�l��	(Z'E7�h�
݀�ut��i�(Z';7�h����oZ��h9��f�։�(Z�3�>��:��E�����P�NS>��ɔ#|Lk&�h�܀�unr��a�(Z'$7�h�܀�U�x�/��٥,k��Z5�(Zu�(Z��(Z��(Z5�(j��:���������7M`��f�V,��ފ�Z�[�\����X�5��ߊŝ�HbKo�Uۺ�HV3�H�A"G������m6Q�7�[%',cJ�Ҳ_F���t���N��H��3�#�����>I����#۸ٙB]�Xc�W�	�
�Kr}q/7dD��|��Q���"
����|Jk&��ia��D�4����k6H�dSr��7���;���ԥxE�P/=3>�]�$�[(��U9bx�w?߱����oa�M��~���/M��"��}�rvk�W����چ%�W.���h�6V��Wk#�;�8�}O����K���ӡ��s�uLgbI5T6T��.�'����lF�/��w���A���~"��f�{�۽垽u�FA�-���}Q("~̈e�m�e���"�!({Ө�:s�����;{��s��]�0�Où�8h=�X�;��CW�k��	�}xv�-��QlYQ��b,K��G�t�����N�!�	�XP�K�����u��3�$uh�M��k���tk9�ZG��A��U��z�<➙�^��^:Y<[J�{���g(4�΍zD���jǄ����m%Q0�(bW������Xݦ��	(rٕ9�j�X�������P
��>!kpf��8�[�`f��Z�[GB0'4��F�W�4v�p؟-M1��~�t㒽B�y+w���V,t���V,�gq��+[�l���L���-�$IR����	�[kJ@\�� Eu�=
��H�y�����&����5�c��S-���Y^o��[S}�x��7UF41���o(qʮPv�德�)�5��Q�n~��WnN�gf^3��|�Ҿ��C��ci_@�֍��q�/�>ȟ�!P��Eĭ1�\0�g$&��	QC�ڬ��4���N�t$J�՚Q�Τϲ\�3�H����;YF�<Z��3b-���9�G�P�k&�'����ц �Cm83}�F�`��KeTtr��yq�GA�AL�Ħ�JX���t�q�d�{����������׆Np�V�s&�o����-��6(Y�+�Ѓ#M����x<�0���`�:T�8����5��	<������O�r�A�Md�6\�M���^\��6�� cq۴��rH�\@25����{cS<���^�+8ǚ�'z�>X���k�8h�ތ/R	U�\�3��� 3�r��#�|G�$(�+��=�/��]9{7��(Q�L@���Zez��[��8���3�Ciey��.�i�1�\��.gM�
ѝd`��%]aU-�[ꀘ��r�>3�E��,o���������      �   F  x�ݚ�n7��ŧ�p1'���@Q����������I�}GJ⨒�qa*�
؂����v8��.R�i�%Y��8�69}Y8P	 #ؤ�c�0ZAF;�H֍9�1����=��b�ޖէ�j��bX31mD���D��z	�g����ޗ]��V�}v�Q��(=���ctD<�7T�/�2}(y����u.�Ͳ�ov��p?��UU׻U�T�w����է��1	�5m���z�͏�z���1�,�A�@/��ā�2r[��pC��A�ݚ+�B�>� �o���:��!� n��.�O�b]� oȕ�z'��)87�L�-W�c�J�4�­�rڿ��2��e+�ȝw�pa�l~��c���.��	2xK�⨝��p���q����f��[J�=����a����z��] ��e�"���1��w����d�eȘ>�7eo�i*�kO�^�b��5v��L?�^�A:�1���<A�Z��{��ؼ_�e�7�Z�"�Q:��r�AN�����ʮ�f��|���Y��'2�2s\����D�(<������Z8ߋt�c|^T/!C-��u��\�R�D3�P˄q-'��ҷ>�2�2T�\'-sĵ�H脴��2t�萵�U����fy��g����5DJ�E�d�L*|����?l�䓥Q�� YG�"�lJa�Bi*��������?9�ꞑah���������������rU����¥�m2��+0�WݰΏb9v��<U��SC'���
��q����X�A��&]�3Ȱ�/]�t�G7��f\��1����)�:H
�O�~�1�n�P��H2\��fMk��!�,�m��闹#F�?�Sd84T������<y �A���7l�G�L���כA��"3�Z�d��A���|��`�
HI�+�h��� ��l�9�TǱ�C���x�;Fw�@O�h��I���:/�B�	2��o[ �t��%�"�I����	T�r�y�П7�Sd���j�Y�Q$�@����C����nc�1�!פ��ax` ;8��<�ca�Z�鐘�z�.R�g��P���gu���Ctn��^��
�u�?��Zs��!?��`�_}�w�sa	�Ȃr�8�C��:H�`k���b�%j�/��_������y��U�W�Q�a���� #�������u�Bp8����S�oîMV�,8�;p3�8X$JY�IíM�CE;�X�g�n���.�:r��fP/����h]0��0T��!߻�u(�d�>�SעD�x�Dzq�d]Ax�(�Yn�Y�m�*��'�8���f��Q/���Ex�?;c��o�I�      �   �   x�}�A
� D�z
/ѯ�4g���_�6���t�%ڕ�^;%0�3��d��.]�F6���1��D �hi�l�-��Fk-��˽�hS9��Ӄ�R���CT��n�Y?�	��N,�l3;m~�?��W��aQM��Ǆ�qt�]����0�<Zo�ֹ���oC��P;�9���RYb      �   �  x�՘ٲ������X/�QT�2K�p�a�2�2(���ӫw�n7�{��Û/���̬���w^u����?+��ǵ
��5�� �
o��x�à�3�؆���0�F��a}A(�z�� �H����K9��r��x�܆^ʑ�!���,_L����G�G��I�$��@=�S����NT^F�V�Jr�Uՠg����P�f��R����5.��!�ub/��D-r�n_��h�|��cu<�Z)K��p���]���d���)"��R�}��G����2= {�v)����K����2}�|c�J�xHziY�����'�l~Ȧ�E��3������s\R1����b�.�e@�s~���f���*$�n:���~���X�^�:{����6�߃�����>g]��qT�� B�﵉�t/�Ve�x!���O���{@����oC/-���|���c����{+ϱ���^������R6��3x��:?>��A�Cb�.@<�1M����;���M�&I�ꂍ���[���L���x�>��4tof���{+�Sg�^ٹE9w�ޑ9�%�:R�Q6��������.n=K��)>����\V���[vw�kC��y��4wY���1F���|;*���e�CM:@����e~�!�ړ�z�F^?v<��
im��3�-H�'eR�v�����z�+Kac�<R�@��q��:vQd�h���#_��/�|ԏ�@�P��g�����{7����m��H�a�-��m�mnTJ���c�^,�{\�9ӓ#���� j�¬���L��}�L��4��C����?<�|� ���.%����V�K]ݭ�J��f���"oeU�������5�0�3�ʹ-�n8H�L[��i<h���|��to����K�����9� ��U�-�=���m��K���І^{��1��g�<g��!O�V�Z���� {&��t�� /���z��!��� �� ܊^�	�}PV�aS���
W���#���I%��j&�g�I��B`��Q�4������g8�H�F&\[Z%�v��2W��Jy�1M�v�nݽ^�>�lIqxnU�~�����hd�	Je���hx���"5F�i�P���~6h�{��RBkE~�ُ��5!��0����"���!���a�Џ���/����%����Dz�t)�L�m�s�ar�5��a]�� ��ϝG�����x�7k1�"�(cm�S1A����v4���iv�k���Z|�pZ�7����h�Wr�s���${Mݩ+e��C��|��&�G��룼�Ùټ��sr��0��	�
���j+�ַ��to������֪����,)���%�1�n��=&��ِ hzR"J�؆>��u�]� �b���+�Ӡίr�hf,(dm�s������Tp���67���C)�V��&�$=�� �_����}�.��笈"n�A��7�L1����-2<@E��4^E:?OyE�v��4�H���dϓP����o�d�f�re���ٱ�-�UO����S�?�D|b��wR�}.&��wA{����M\Ġ}N�����D�u6=�YBD�����&(�MC�੊�Mo�%͒�G_�(�u��U`�x7ӳ����Ǚ�U�a/�%/�5D�C>]}��}�TA����뇨�/�nb�m��{��n=��>F�*�I� u\oTk�kxw�E��Z��X�+M[n��)�����>���}*���~����"�      �      x������ � �      �   �   x�}̽�0@��):�@m�폲���.$4� �M&^L'����Ū�2�P"����qe}/��X���U>�Z$a���cbe�ąO�4��pN���	4+'���Q���V��Om�%:0�l��rm}��g��m���m�����}�z�FwB� �fiUy      �   �  x��Z[nɕ�f���w�>�|�m��1��䓔Z�i�4�
f!����}9��d=8�Q�E�̨8q"2Kn�4�<�w�z><Իys�����������ˉ����o>�D� |���t�xJ�Eʥ��(Z���RV���SCnӓ,j9S1���p�`�f(�G��M�q�%�ܿ�w�����5���UT^>��$��G}s���v�z|��m�o^�/�����?����>����G�|q�X��_��<�Ϸ�����?�����~��7c���HoYϖ�y�,��R�j������KCCIQBZs�V�(�C�<'Y�Pe@ax�6<&��Un�~���.����Ӻ�u�\������u���^����ӿ�>��Qb����7����qR9���J����Ag+f7�Z�6Rp3�Zu/(�:����/�_=k�e�^��@�*c��X��A�;���ƒP9�\����r�(�P<�f,!<1M-u�#�+O�%p�%��
F]��r�e�?��Wg߾:<#;1�~|�4�g��C���n�t���޺-�2sp������
�L�璁�8��yv�-��[�gճ�|��/K�ڪ��YA:�)��-8��<͹��%�\j�e�t�Ji�<��V���ŏ��#z=_��m��Bz>H�n�����u����[����~������ۻ	�R�RPګ��JL�ϔ��=��¢�Ћ�������`��8�#X�R�y�6�NE*-�Js�W ���B����,��+L�|�9��s������(p3���0U���c(c� ����&�����F0���K�Q���
�L�U��Lh�̠�,+�����T�HR�O��(r ���X)��4~yf8����g�"�ۉ8D�-G�T��t䦡��Ƙc	Z�g	�V?��אҾh�
��`j�Ԕ�8r<�{����۟^՟���fA��ʊ�⟇��g��_0�褠s��@�$����Э�����|$B|%�ʙ�%[���K����Bd�f71cZU�/,�v5+Ac�"�Ɛ�D� _�<�H��{[��P�lCa��(}Rʤpl!�2��P��v���ʹ�B\�NХ:�I�sj���G���QzƧ����MH�3ag r��)��u=x4�$F4�[M�<W*�V��e`RK��,�{)����fUYG"eWF�蔍�K��ZK&�17]6�[�	j��p�a�h�'�L���fh@��f�3J�ґH�U��3�0�e�K��3�#s���AyR�F���h�4�ፖA����(�@�>*2y���I�����D�O.��W��=W��
�آ�0	�}�L�l���c���;Z8��:R�4�ՏD*])�ў�\.�@ �^��C���@���~`.G��\	���ct�q�0}h��"eУbD�/���<#x������0�L�@8�-���'u2SP(�-�k+cҰ#�*WE
�N>/��xj��Ɗ�Z�d�Q�9� b n�B^P�ov-�%���DJ�Hq��I	��J*I�:��u�^b��O�5��	c/�Z��'ͽ�p���i���ŏt���q�OP�@s�gP�wɫ;w�ie��I��Fg��cM���bI9�%�/Rv$��C�{mT�DI�o~y����a3��� �Pod��8��/�x��������;���0 �5��$F�ң�7E�7�>��ǳ�I�2�Œ'���#���v��..�5�G���2p����@�yü�1���]���$漗g<�]XtZ�X�;ʞ��Cm��¼����b*l	֜p�,�	.���w���	į���~��ϖ�-�a��r�d��9b��F+�x4T�qQ߹����1+ڔ�����R9�p�-�X�������5j�m���4��6�P�7.Z�2��}�4�d�G�I��v�;�Y󉘉�Ri������i�]
ȓW"��!G�IZQB){k�ڀ_J����<#�g�t�N�;0|R��:�(z��hKĀ`Ɗ�˭��rT��*c���9B�g�n�ږ1*�i���8=疾3N��|��(��>��3���7�f�3d0�"�{v���r���-s�m9��U������3{�K%�������{e�>���e;��)5�	��}��b6�'(e,���:��^	#��oHj�z�0�y�B��Z(�`���X�g�'��h�Gq��;�0�E�G�/
�ϕ���#HN�@2>W�OJ��1c��:f�w���?ʒ�{�h��C�Ĩ�=ͼ9Ñ�M��~?J�T��?2#�\�U�zT�����Bw$��So��}���K��qr���/��
_*-4X�^���A܀u��!/>�E�f�zYzz!����W�̪��뷼��x�����/Og��y�r�U��N%#�ڥ�ޤm�� Uw4��(\b�=��jC�5L�Գ*�{S��
p"&�Y��ґ}�[����
;+��:�K%K��&��h%��O=��R4rh1�m�V���������[�'��#Q�ʞ�;8`��.�)E⏓�%x�G�Ra�l����CO^�Ii�dARKy}���R �ykJq�؅�T&�ʞ�8�Y�	N&엞)�]_	�? �.�c%Y=�� �A��JO���ឤJI����T�U�t?�Q�ި�HQ/�f��vg��XR�6��;�5{��|�]��Z۶�дP���ᩗ(F�:K�o�(��'���^"��b����Ş���$������/�}h�sn����`	2ߨ��Ic�A;2���(�@
Q�d����*C��l�ISa��:C2ׂ%��(�N���~kE�x�u�|b�Gnz�U^�x��R#�i�T�	#�S��HV�"�
��c>f�����͵��:<y��hƖ瑛��u���	قqR      �      x��WYN$I��Sp����0�4#u���EuKM| %�"#_��[��D�������f��&���䵗��H��N֤�hQ��=kk!�Zh�={����rN!���1���5���y=~z|z�*�<��<�������-����Q�Kѫ��u����;�R����ԛS^6V�Rb�J�<W2m��L�[��G��k����������g�j"�*��h�Ԩ��Uͻ�����.�dE�-��oIդ��ː-����h�P�����իR]}�2������S�s��0�l�OOeRي�LJ��S�i��6������B�F����U���Q�^ wϩ���u��s��Ki�K����+:,x�f���G�G ������x.U$�J]Y��e���}�RYiX/m��\�ZZ���mc�Q�q�������jۆ���FyEPXo7)�k�U��r|YO����W_ER	m�̎�Z
��xϔ���F�x��4��m��^'[ߡ��`���ץ�w�ɩ����^R+:��2�R)*Z��$�?�X�V ?�e��K/��� �/(��-ٯJ����WL�4��g��ς9�YFG���(��8�AмV\�@)�{T>��C��lˑ9��U�i�3R]ݙ�S����9w՝(Z��#��x���g�$��L�)�W�y�r�Ä W%UH5t6A�Aߓ�Q1�Υ��[�./��%v�d�n�Uv�.�L��O�̯"q��t�8*��.KS\�A6G2ʘ�`F�|����i�Q����g��ijP�4c�Ô�O��1�D���%�`C�ߖJo��9�!�(� -��R5���� :4N;$h倦Ǟy9���~�^ �	��fv�|U��i`b��� sL8���N��_Ӱ�����+�/�ZN�H +�v��_ (� ��؎�W��@��(;�T1�&o�A\#M����ʄ�8&�sT|�,�r��n{\�7~�������yW4ߟ����~z|�=�o���k����&*�.bp=BH5�J]�$$���4�K߈;K�־�*���C���cE���j�	vS�D'��?Ay��1�B��îJh{%�/f��Z�gIP$_���@���S�MHh���`k�*���O�f5��4#��]��m����_�I-@���^Z;���f�-�`ۡ_�M����O���?~E)7.����oK�xn_��Է-	���E/���ñU0Y������ԐF��R��'�&�X�$~��ߖf�m�q.Ç+� 1��g�=�e�,��-9W�̂��3�3S4��L���it<P�To��A��d�'M� .��L���8�.T�oAhE�h�&h�� Ӂǀ0�6)���&�M��KԢ���8����LHذ$��VM��[��~�w�\&x0���"u2��u%��0z���q�W%r�i��:�/�ż�#������	�}c<�"�t��~%q�����Y{�n�M�� �^�pd�k�H���v�wӆ&N0aI�q�*�躐�,����Ǳ�4�cݾ��?�����o�&      �      x��[ێc9�|���z_�E���싮�3���:ә�e�mL�0��e�0�`����?��$�s�}��3ə�G����5���,S��Ѥ�<z�d��ڞ�&EN��ȭ��$����Na�UhM�k֏��bJ!JH��u�S���.�9ꉓFK�{��߿�������oN���q��R|	J��~@5�����G�Dza
��[*y��lX�ZC��v�6�2ڒ�bՅ����}��X2�ǔ�Trd+o`�O�92��C���mΑ?�\1m�*6)�1�H5�i!ۣ�M�vнu�h� ^{h�}�b�.���ﯝ�)K���SM�XCJ��+}����r�=L����h{�V;�F��T��XAĸ��؞{�������sj[�#�/���t��z��*L�?>+��R�BsY#5�m��cfY(�e���9VvؖQSs�`�9�I�+ս��m�'����Dg��X��H��+=��rN���u��ք N$g�	=�bB����eC�K_@73jn,m1R��>gܩ�v��)U���Jj��*���Ϝ1Te��z�)dn�c�x�=�*+L�4�F@
8�'2�3pe���;��lt�����RI�̊�~��e�1>��S����1��B��@$��ͼ�Z֜2��Ez�=h���\�n8�+|�
*�9��R���M��Wh�XR�����\�'N:�2IB�cj�v����RМt"P`�� �͡E �ແp�	�$��;ɉ�J�gK�KJ�u��
.kiDtV#��ZW��`@4ވ[��{x;!C����C+-db���?�'ԓ�#P�K�A�KP��"��w����ڈ%�j��=n&d�6�S-l���~HLBm��:3T�= ���	'E�-�e�A酒�R�d�	�&��C���cZE�
�F'�	jL	�n����ME��E��v�b/Dϖ^��_�	���yD=v)���<A=t.#$�C� ,�������G��4"��F&.����N'F8$?[z�����W�}��)��xd��K��B��A�'oXZ�Zp�8 0P[�w�3�b^zY\��В���U�jFxu+�*?[zC�����~��OG��<y�F�C�j�sZ��lnd��t���&��~��!s�LQe:U�k~��g�T_��̈���UF;?d`�Q25��VoC���l9M���BCLE;k?�޸8Vd0�=B�;��ޚ���������~fJ�(�#/��еҬ*T�a����H�.h$����@�Cj���ݣ��JDD�-��*�����u��^-lA2!ӣu��P�)�Y�C8$��UQ��Z�$�#:=F����#T�Ko�g[��?>=a9��/���^���`���Il!�\D����)p�`�&�� �I�ƾ��؈O�K�?=����ќ �܁��?��57k���;$��b(j^�7r*Pi�6^[��D�$E:m����:6�;_�)Z��g+�[ ��(Ƅ,���
��)����� �le,AЁ�\�6_����uA���H�F'���;{N	�'ַJ_�@�s:�2/��XM}Ā>#�,i�T�@�j4-���CF�D��)�Щ�e8�p
��$���d�5��x���;J<k��'�N�� �GBPp3h<UX���Y��jp�C[m�c����vgxT���K��X߰����EIn J\�A��M����=�2�i�0qѤm�����ڤ ��u^���в�_���!R��s�d'�7�г�W��W�j5t'װ] 
�=���l%�ưmm����/��I�s��C�L	ڧ�f�-�	�(��zԺ�j��?���N��T�-��*��J~P-��0t��'#��d�^�,���q�<"�e��=۠�����Ǩ� ϖ�@��s	ٜ�����ܽ�*	��-��[P�>?٥�6�j��\vH҃LX(�AP|�hu�����?���S�Q�ӥ7�ʞ�� ؒUd�3���;����U$ls����dK�ܰ!�k�G %#�ii�?@]6B�!������;z�v�t�T4��r�E�tmC�x�
��(��d������=�hU�+�kn/�9����$ń�������Ыt���*aA�����=ܪϺ�y6�(R��
V��y���*�"3���Pl'T�Uz��(~*�������5',�K!���m�Ҁ���(8�6��a����_u�ڻR�e�6��_;y�Y�3T7Ko��Rj*���]P��C�����ؗ)?M4��W��Ѹ
����¢�ː��
n�я	I���?���e�SBIU�:UD�!�m�P�%�|�ju�Xm%p�k�FA�$���s��KM������RH�փ�{8&���o�Zja�uq���z� ��w��0CY>���j˧z��
P��/IK	��6#��H�A�ֳ
_l��'���ҹ> �NbL�����;���[�bZu^��V��$(rTL��^.#�]�H@�{��n���u��� ��@A�pz ��=�@���_5R���ϔ��&>�K�!'Pϸʒ�A���c�ˍ?4k�V�h���S�=ǵ�8��űޣ*�����X���I2�W��>|�����Z�����*}��X԰b����ǀ)���\9�򂆬�L���b*O��U}	J��0@Yu���P�����BQT���i��z+�J��)�!��eJ�--�"y@���@�-�F%י	ZM�v��o,��	.:��[T{6��eކ4C��[�!��r�"�Ƃ��y��v���2_��3�ss�d���OV���ҫ�_�_����,bՌVc>A���H!�P��
�֡��W���e����6H/Q����NJ�2���U�,�U�����i�"n fp-��m���
2f���G@���������Bm���lI����lt��r~��Z���g��� �f�4u��}�n���2U�IS������u�K�geX�}r�#�hU����D!o�$:E�9���
���֠VS�c�T��Q�'�k ��y���4�)mQo�N">qND����{�"��f0�[���(rTT�rg��X�5�&��#xb�.��t�Z4�į�Z,x��QE�,���Qg�\T8(Z���:�|��>���O7a~�ʪ%O��'�����2�y�w`VA^��r�A��5�@}����Ag�*)J�� (B��>�G��ߨ*�0K�����*D���2Rf�Vܲ?|q���l�&u=�)9�5�����g�JWT ���ߡԁ&UT�b�r�B9#�=q����U�e-���`���X�a��,S�����&U�:CB��&������@}��v
҉מ�*�}�6��O���8["7��"�A��~��-��@>���2�U~�~�K��I%=E�͝=�4�����ǘxs+���6}x>�oR�
b��W��m.�諡�����B'?����נrze=�������c�EA����')p����09��ۯ���4)��^�d��>����	o��4=�Lq�[���{K#�Lt��W����B�G�jȽTP�0��6:�(��+�I'pJ�p���j���ͳ��������gO��0��������)���jN��x�@cV*U�x�����=d8dZ�������S��bu1T���� �ޑ~��|ߞ҈|��S���gq�|�x���!A9�[NG�����X�e����l��d'��T�I�Z�EU��}���j�u-�pK��<AeCɤC#&p����{�QW^���
L�rJB"�a��T�,rGr����=J|I�r#����F��~Z�}�7�u������߅��Zh�c�e��'�0a���Gڨ?e`���]����1;X�����(�� L�?/�O��������g���h�[�ץ�O��h���ۢO'��Nۯ�m��r�n�M6F8�,U�-�e��<��>�*�XgY�|����rL��U�d�m��   �,곳�֭&�D�aEE8a=��(�S1���Wހt'�"Z���R�73���6îK�`�G011B��Y�Ӳ���h��=QTEDge]]��a�`=�Ъ<0�?Ko��w@��&?тƊ�b����?��:�"���ћx���>�;*��+���3��H�s׻W�zR�7�a�^�P=��m��/�%(}w*T1`�b�>+�ѳ�8J��V�����G`A��y�_ ���:�FW�X�&B�a}-��~���e|���Q�O]!�u��'���q�C�r��o�JD��>�~@���H%p�����<	;A; є�Q�x"�׌n��7۞��A�ӆڙ��M�!ِ�ۯ�#=��~��uc���>��L|�/)�h�]�:��>�QU�,��*yn�]&�>�"��7�z����5�����w�}����/
��9�~Ov�죈��廕׊V�^>!�$Qgr���R�~�:�BZ�!�W����ė$7�\��7�tt֍��I��-������88 oW�v�>����_�M� `���ٕDw=��	��GX��>��y�B�ܷ^�ir/�a� �_��:�Y4�_^k>����F�-<������,y��`]O@j�'����ޱ�����ӗ�H�0�qk�o�B��o9;y��]��˽+�;�_8�Ri���g\K��ۻ�2*�GK3�	�[a�Vo�� b��]�UW�=������� �ۇ˵+��r<�i�[.����@g�kZ����zS�>�\꿩7���&���c���b%"Z�-���\�]�Q�� 	F/K`��������/@��.�s-�g�t�����%#T���S��׼���/��6��߅�.�O%��:�������-2�(�R����V=H�R�\��@̣l#E�_�!=zNP����,�G�˥�GKz���(ԋ���-N=&�a�{s��~T����fm�Z�/����k�
��+>�us������P9oH���5���N�~��'�K�      �   �   x����
�0��s�{K۴i���j7NGU��Od��؍����@�n����M���Zj]I���ĵ�Z&����sN��a�1B���)��3Nh�!����L��H���$�S�Z�㒻�s�f�q���o��B�1�)O����-9U"t���U�X/�H�~�"� ?s�      �   �   x�}��
�0 ϛ��EjBv�M��Ļ ��Ib�R���Y���p9����o�f���k��5�?HV���6̰����(�v�`�e�S C��Uh%����HB���Ji��gf��m6�vwl��v⢅O'~      �   �   x�}λ�0��ڞ�Ċ���#-���1��bB�	�� �]*��` '��s�rȟ�F�O�Ms<j��6��L�F�F*���.��1/8�X:Q��ӵ���샟���qi�:PEN��@���$?�>�� �3j��&m����g�2��]����͇B�kj����;6��9���+W�      �   �   x�}�A
�0@�u�s��L2mҜ�̀!-� Z)�2.=��⽤�S���?��)eV�Xۘ�!��Er�Y���Ո�~{\�����Q~#��i
�7\#��^R���.�t.��8���y�A����:�	�kDp� �r�<�      �   �   x�3�t?�-%5[A#=��R�8�X!)3'5O!�𞢜ԣ��=��H�Ӑ����H��L��\��������B��������ghIb^V��lF����2�,I�I,���~s�2Sc3<R\1z\\\ �8�      �   �   x�}�1�0��>E/P+���YX*ڡC	
���J����?C��m~�D�`#��V�qbQs�P`^���Q#u��t���돉�<'�Fx��#����Ʌa�k=ڶ~'�4p*�%8)��w/��/,F6      �     x�}�Ko�@��˧��H��+�z��Z0ZEKLX�]��"|�j{譙If2����EYw����J��ڟ�ky�+/�QӰ���?�7���B͕��-O�/����ɏ�ַ�? �oxZY�����U���)��4��e@x�	Gn�Ή�Z�[/k"r�xZ��3�OpD�:��*�L�c�{�G��k�����UU���̰/Wy[��&G(���꘯�o$�}����&���.�0 Bt��gf������a�1F2�'�LdQҷ$%��h�i;]ӴoH�i�     