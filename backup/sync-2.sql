PGDMP                          z            operator    14.4    14.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
       public          postgres    false    209                       0    0    cancel_reason_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cancel_reason_id_seq OWNED BY public.cancel_reason.id;
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
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
       public          postgres    false    215                       0    0 "   customer_interested_product_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.customer_interested_product_id_seq OWNED BY public.customer_interested_product.id;
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
       public         heap    postgres    false            �            1259    16466    customer_order_address_history    TABLE       CREATE TABLE public.customer_order_address_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    address text,
    user_unique_id text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
          public          postgres    false    219            �            1259    16472    customer_order_courier_history    TABLE     (  CREATE TABLE public.customer_order_courier_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    courier_unique_id text,
    operator_unique_id text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
          public          postgres    false    221            �            1259    16478    customer_order_date_history    TABLE       CREATE TABLE public.customer_order_date_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    order_date text,
    order_time text,
    user_unique_id text,
    created_at text,
    updated_at text,
    reason text,
    unique_id text
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
          public          postgres    false    223            �            1259    16484    customer_order_delivery_price    TABLE     6  CREATE TABLE public.customer_order_delivery_price (
    id bigint NOT NULL,
    customer_order_unique_id text,
    user_unique_id text,
    delivery_price double precision DEFAULT 0,
    reason text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
          public          postgres    false    226            �            1259    16492    customer_order_location_history    TABLE     0  CREATE TABLE public.customer_order_location_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    user_unique_id text,
    latitude text,
    longitude text,
    reason text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
       public          postgres    false    229                       0    0    customer_order_product_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.customer_order_product_id_seq OWNED BY public.customer_order_product.id;
          public          postgres    false    230            �            1259    16508 %   customer_order_product_status_history    TABLE     (  CREATE TABLE public.customer_order_product_status_history (
    id bigint NOT NULL,
    customer_order_product_unique_id text,
    status text,
    user_unique_id text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
          public          postgres    false    232            �            1259    16514    customer_order_status_history    TABLE       CREATE TABLE public.customer_order_status_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    status text,
    reason text,
    user_unique_id text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
    created_at timestamp without time zone,
    updated_at timestamp without time zone
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
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
    created_at timestamp without time zone,
    updated_at timestamp without time zone
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
    created_at timestamp without time zone,
    updated_at timestamp without time zone
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
       public          postgres    false    243                       0    0    inbox_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.inbox_id_seq OWNED BY public.inbox.id;
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
       public          postgres    false    245                       0    0    login_history_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.login_history_id_seq OWNED BY public.login_history.id;
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
       public          postgres    false    247                       0    0    phone_call_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.phone_call_id_seq OWNED BY public.phone_call.id;
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
       public          postgres    false    249                       0    0    role_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.role_permission_id_seq OWNED BY public.role_permission.id;
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
    created_at timestamp without time zone,
    updated_at timestamp without time zone
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
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
    created_at timestamp without time zone,
    updated_at timestamp without time zone
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
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
    public          postgres    false    209   ��       �          0    16442    courier 
   TABLE DATA           �   COPY public.courier (id, fullname, username, password, phone_number, status, created_at, updated_at, date_of_birthday, work_start_date, sell_point_id, unique_id, user_role, token) FROM stdin;
    public          postgres    false    211   ��       �          0    16448    customer 
   TABLE DATA           �   COPY public.customer (id, fullname, phone_number, question_mode, address_home, address_work, information, created_at, updated_at, unique_id, operator_unique_id, speak_mode, status, speak_tone, speak_accent, focus_word, find_us) FROM stdin;
    public          postgres    false    213   <�       �          0    16454    customer_interested_product 
   TABLE DATA           �   COPY public.customer_interested_product (id, interested_product_name, interested_product_size, interested_product_color, status, created_at, updated_at, unique_id, customer_unique_id, operator_unique_id) FROM stdin;
    public          postgres    false    215         �          0    16460    customer_order 
   TABLE DATA           �   COPY public.customer_order (id, unique_id, is_express, created_at, updated_at, additional_information, customer_unique_id, operator_unique_id) FROM stdin;
    public          postgres    false    217   �      �          0    16466    customer_order_address_history 
   TABLE DATA           �   COPY public.customer_order_address_history (id, customer_order_unique_id, address, user_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    218         �          0    16472    customer_order_courier_history 
   TABLE DATA           �   COPY public.customer_order_courier_history (id, customer_order_unique_id, courier_unique_id, operator_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    220   +      �          0    16478    customer_order_date_history 
   TABLE DATA           �   COPY public.customer_order_date_history (id, customer_order_unique_id, order_date, order_time, user_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    222   H      �          0    16484    customer_order_delivery_price 
   TABLE DATA           �   COPY public.customer_order_delivery_price (id, customer_order_unique_id, user_unique_id, delivery_price, reason, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    224   e      �          0    16492    customer_order_location_history 
   TABLE DATA           �   COPY public.customer_order_location_history (id, customer_order_unique_id, user_unique_id, latitude, longitude, reason, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    227   �      �          0    16498    customer_order_product 
   TABLE DATA           5  COPY public.customer_order_product (id, customer_order_unique_id, product_name, product_brand, product_model, product_artikul_code, product_debt_price, product_cash_price, product_discount, product_size, product_color, product_count, unique_id, created_at, updated_at, reason, operator_unique_id) FROM stdin;
    public          postgres    false    229   �      �          0    16508 %   customer_order_product_status_history 
   TABLE DATA           �   COPY public.customer_order_product_status_history (id, customer_order_product_unique_id, status, user_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    231   �      �          0    16514    customer_order_status_history 
   TABLE DATA           �   COPY public.customer_order_status_history (id, customer_order_unique_id, status, reason, user_unique_id, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    233   �      �          0    16520    customer_status 
   TABLE DATA           T   COPY public.customer_status (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    235   �      �          0    16526 	   fcm_token 
   TABLE DATA           a   COPY public.fcm_token (id, token, user_role, created_at, updated_at, user_unique_id) FROM stdin;
    public          postgres    false    237   �      �          0    16532    find_us 
   TABLE DATA           L   COPY public.find_us (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    239   �      �          0    16538 
   focus_word 
   TABLE DATA           O   COPY public.focus_word (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    241   �      �          0    16544    inbox 
   TABLE DATA           �   COPY public.inbox (id, title, message, link_to_goal, is_read, is_delete, created_at, updated_at, unique_id, from_unique_id, to_unique_id) FROM stdin;
    public          postgres    false    243   �      �          0    16552    login_history 
   TABLE DATA           q   COPY public.login_history (id, created_at, updated_at, unique_id, user_unique_id, type, device_name) FROM stdin;
    public          postgres    false    245   �1      �          0    16559 
   phone_call 
   TABLE DATA           �   COPY public.phone_call (id, phone_number, contact_name, call_direction, call_time, call_duration, unique_id, status, created_at, updated_at, user_unique_id, call_state, call_date) FROM stdin;
    public          postgres    false    247   �e      �          0    16566    role_permission 
   TABLE DATA           �   COPY public.role_permission (id, permission, can_read, can_write, can_edit, can_delete, user_role, created_at, updated_at) FROM stdin;
    public          postgres    false    249   &�      �          0    16572 
   sell_point 
   TABLE DATA           }   COPY public.sell_point (id, name, address, phone_number, latitude, longitude, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    251   �      �          0    16578    speak_accent 
   TABLE DATA           Q   COPY public.speak_accent (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    253   1�      �          0    16584 
   speak_mode 
   TABLE DATA           O   COPY public.speak_mode (id, value, created_at, updated_at, status) FROM stdin;
    public          postgres    false    255   �      �          0    16590 
   speak_tone 
   TABLE DATA           O   COPY public.speak_tone (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    257   ��      �          0    16603 	   user_role 
   TABLE DATA           E   COPY public.user_role (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    261   �      �          0    16596    users 
   TABLE DATA           �   COPY public.users (id, fullname, username, password, phone_number, status, user_role, sell_point_id, token, created_at, updated_at, work_start_date, date_of_birthday, unique_id, user_number) FROM stdin;
    public          postgres    false    259   ��      )           0    0    cancel_reason_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cancel_reason_id_seq', 1, true);
          public          postgres    false    210            *           0    0    courier_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.courier_id_seq', 12, true);
          public          postgres    false    212            +           0    0    customer_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."customer_ID_seq"', 3, true);
          public          postgres    false    214            ,           0    0 "   customer_interested_product_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.customer_interested_product_id_seq', 8, true);
          public          postgres    false    216            -           0    0 %   customer_order_address_history_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.customer_order_address_history_id_seq', 1, false);
          public          postgres    false    219            .           0    0 %   customer_order_courier_history_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.customer_order_courier_history_id_seq', 1, false);
          public          postgres    false    221            /           0    0 "   customer_order_date_history_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.customer_order_date_history_id_seq', 1, false);
          public          postgres    false    223            0           0    0 $   customer_order_delivery_price_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_delivery_price_id_seq', 1, false);
          public          postgres    false    225            1           0    0    customer_order_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.customer_order_id_seq', 1, false);
          public          postgres    false    226            2           0    0 &   customer_order_location_history_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.customer_order_location_history_id_seq', 1, false);
          public          postgres    false    228            3           0    0    customer_order_product_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.customer_order_product_id_seq', 1, false);
          public          postgres    false    230            4           0    0 ,   customer_order_product_status_history_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.customer_order_product_status_history_id_seq', 1, false);
          public          postgres    false    232            5           0    0 $   customer_order_status_history_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_status_history_id_seq', 1, false);
          public          postgres    false    234            6           0    0    customer_status_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.customer_status_id_seq', 6, true);
          public          postgres    false    236            7           0    0    fcm_token_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.fcm_token_id_seq', 230, true);
          public          postgres    false    238            8           0    0    find_us_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.find_us_id_seq', 1, true);
          public          postgres    false    240            9           0    0    focus_word_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.focus_word_id_seq', 5, true);
          public          postgres    false    242            :           0    0    inbox_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.inbox_id_seq', 73, true);
          public          postgres    false    244            ;           0    0    login_history_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.login_history_id_seq', 228, true);
          public          postgres    false    246            <           0    0    phone_call_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.phone_call_id_seq', 266, true);
          public          postgres    false    248            =           0    0    role_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.role_permission_id_seq', 40, true);
          public          postgres    false    250            >           0    0    sell_point_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.sell_point_id_seq', 11, true);
          public          postgres    false    252            ?           0    0    speak_accent_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.speak_accent_id_seq', 5, true);
          public          postgres    false    254            @           0    0    speak_mode_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.speak_mode_id_seq', 3, true);
          public          postgres    false    256            A           0    0    speak_tone_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.speak_tone_id_seq', 3, true);
          public          postgres    false    258            B           0    0    user_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_id_seq', 44, true);
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
       public            postgres    false    261            �   ]   x�3��H+-NMI3�HMJ��26��H+K*7��06*�4��--NI-�TH����TH�I����4202�5��50V04�!#=ssc<R\1z\\\ ]��      �   <  x���[o[7ǟ�?�����o]�:��9��^t�%�5^�:�~t�&]��0�>�@B�O����8Ӳ�����~_n�g�6\on���{'������D�`C���}T�ZR�ϻ� D@w�l�[�1K��
�&޺�[�B�
)BI�x2�5	T�b�)��T2&��覇͸\���N��[~�� �>�',}�	�5Ϲ�l�����y��(�z5-7�����Noʢ:�H�h��Φ���ի��.s�e2��4?���>ߎ�l>ڍ�t:����rrt�[�D��h�����k�|���o�CЪ��]�U���ԭ�˼��u�ʲ�خ��\��b��6�[�Va��t�g�n��Ø�����3.��q����"��>\�k������?�J�O#���h�.���r��63����[�n����|S���/q"�нγ�p�S�0����M�8,��'��w��"���,����%[�,*�>*R���l��TM	�HB�6	CR�ڐ3�Ȭ����brMޖ;��gYb�lH� q2-����#�ld#R�F{�T�B���1'�$� KF� *Z%��k&�4E�*g�3�K7P}ā:Xk�P�<��I7�r�#�[�3/%t���2��\��w���#H����w/d�+���t���T�Za�$�7��S߆r��k6" f[8����P �+Z�$k� ���w9o,(��	����\�EU�}ħ(f�T�Vje��8�a#������b��J.ܥ+߾|�����V��*YaeM��� ��u#e�9��'�e��om���F�t      �   �  x���ϫ�0�s��ȞuJ2��IoO��E�2I�?�����c�o����2�0�o�;޶�|��y'�*F�ɑ!
��|}���~�6^ԇ�:����׉O�>M��2f=̫L�̓z֬o2��$�x<*4�`j@�m��W�����* m]k�E��k���.��܀k|Nu_��Α_CH��>#�����)q�]Ͷ�b]VÓ����D����Iٗ:X�8p/S�ômr�� 6� �$�y���O'Y~�����5Uљ�;�l�Ũ�J� t�{p�	L!*]�B��.;�3�,8v���]0�"q���vRe)|֏|�e��}D�So�?I{�Ez9��w�Y����-랉��ȹl�/Ѻ�$���ip���}�������y;k��:�轶�ElMS�����k0���w�trt;<s�SW(��JY S p$�@p>t��}P��	)��=|�����N      �   �  x�����GE�ޯ����*r29Q`@p�P	Y�]i� [���(0x=X���nvW󐗗x����qo��xP!�Ҁ���Y������n�hQ���-�⣏«�i>�l0B�� �x��9����t�$إV�A�=�L���A�=d�a� .w���,1v]�x���?><>��G&��wt�������_>�x�`�y��Н��2&��y$��fmu�=���fG���ŘR�PȌ[C�������&�s�s�5�Ү�p�:WC�-ӑ|
�u�����a�Q:��8y79��ۚ�et�~T��1z*!�����e;k�jl�5_2w�p����N��2��}��/v���ԣZ�v����+��
3f��F���	B;%p��u�+�zk�z��>���?�y$4o�<��/n�3���R�k��Ơ�î)3T�E`IpO������A>�ߙ�ܗ�-G����2��Z���ܬ���/`���3f�b	TuB�se���1�#��e��I��Դ Q�Yш��r%5�O�P�+�̷H�Tv`:�qic�1���ȅK�6�J9�\��?�b/���6��rkj�iQ=��a
T�/�,�DR鵐��$⎑v�Z���<����E%�N�s+���"�kn�A5�Lr�GM�<Q�Ӌj�����_�ɑgSLӱ�r����L�ܐ�
ۑV�b�L��tww�7�@��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�}�1n� Dk80�o�{�4l��_0�X[+�2i,�Ie�^q�"+��4�4�����md����1��D �Ѝ4L����QJ��@|y�m*�����r)��j��d}����/lƀ9��36��.������[ɍ��"x��cBv�8��{�[}^�P�h�=nؖ}�?�m(�A����&�8�����d�1Fd~���t �П�^�� m*��rJ�/�DnT      �      x�՜ג���{?ż �r�;0�ə�NE0�sx�#7�����;SSs���e����d�6���q��A`2�{gw2u���tr=N��|C �`1�~A�N�;q*�҆<ߝ���7b$��F�?�_6'�1<N !ِ�9���#���8� 1lC����xW[ﶻV}R�ztV��,�OT��q>�8t�)^:m��)~T����m���A6� '��[�Ѯ�O���Ji_�e^V�l�z~���;ܞ��\����]15��Kْ���(w��uR/��!��0q]�d��a�r�I���e�|'<�) ې���������S���
@lH�e�6����Zk�o�	p��2hL������~��WD{@�b >v�V�Ʃ,_7i�����^V�-$�a��ӛ˱R����]N�9q�mD{��������秃Q�D2V9:��,Ej  L�˭��|��v�7�-�8n_���},N9��ڐ�����>�~Mf;w8ػ�빻��;7�)�K�h�oa-��w$��Dy�6E�VO��W��\I�ֹ�D�#��ܬ��M��$[c��yKۗ��Yy�Sy�K�U�Ϊ]�N���bJ�Ng����:��\)wL7 9�Ⱦ[an���Y���^��t����2��s0�����A�L:��C�O�I�?|f�K��;R�ā�Y�����!���j>K�mD/�\��խ�h6����H�n�!��&����g�+�!�vX���(��	����&>��W��D��s��miS�����M't=!�c���gYe����P/?ډQ!9�g��f��`byY�|�d�j��q.�=j��2�c#��JZ+��Y�P��,ê�~���f��#����>�殑BxIڇ���zs��������93ܕ��(��ɼۭ�7���6�j�E����I��l�eW���z�����d����E�}}�O��㢳��Nn��Y��*���L��3
V^�7 �1ę���o�I$����2.!%Ҋ�푿n�ǀn�Z�	�C& e6�o�����z��	�K�"}{�m4=��5;37��ɯ���{�H��N�K1�ڡ��@e��*Q5��!6��o��L�X�lPMt�~f��tz,b��a�ar��U���`�;�$�T�6���s'y��X��c0�m/`��*Ф�N�¾���ru��蟎� A��i��MT�'s5jj�SϟO�gןI��O&�ě��7�?�ݏ���ރ?�b��;$qα�І~v=��\��ְ��0fC?��6g����[��"��B�Џ������/|��hlr�����^��!��&ɱ�[��x�����X������휪��x��^�Y���3�|Μn��5�j�2l�k�y��%�3r���>�~����*d�Kj����3]]91���}�zZl�^�y>�J��c"b 		 ���q��lL�_��ߍ�w�����VG~v5�-ڜZ��~� ~so��b�5����|�[�0�{L�t��H�Z�SLX�j�yy[�ĎX�����c�L�n�t#�w;�멵�Y�?w9�����NS�<���^b�'?���&�~t�z�
>�O�bU1�t�IQT�9��v�&�e�L�c"���;�� g6��1!o�B���_�v�+�Y����U�:T9[!�����@J�ʽ2��4J�D�tج���w^����i�;O�C:���\Kn����3��U�8�ᩌ�j��: W��ѡ}����W�����J�mf��lS܊CP���*��Av���[�u�.�[kթWˏ}���d:=뾌?y���ɏR�m�g������Ae>�hc��Dc�٘��q�dʩz��;����^?3�۴0c幏���9��j�
$���'J�v}D_t�E�wk��\I&{'IF�ܵw�kz��캄\\J�me���Ɔ=^+Y���S��[66g������V�ѽ�. �2&���� �D6��1�o���R��І~� o�L���x�ڪq�u��$��������oY��N�3M�ٻn�[�<=k6�|L͚��r{,mp�MMf�A��<�W�y���\�W?r���e����z��S���ݖ_M� ����g=��;�`5��+�뮄/�1�8�XsB�+��lL�X��AG�Z��������O�ܸ�H-�Z�cy��ѹ+�i�����0�Mv�~6f�A�!�iR\�q��8Ev�Z�R gܼ�W���٦����[|�箓����D��:Gpj^(oK�E����,��n?�?9��1Aj&�B��6��1Ao#�<�ǝ�h\/�^�O8��^��:#�qkv�e
�b]�m��	����=�?�'?v~��|�*����/�elT�������j>+m�M>���S����âS�OпB�\)[���/��N�%`mڼ:��p�2&88'�2����������T)>�Oh��l��f�n�����<)��,[���X��p��yW�� �9�쎕�6Y��|(�����L���]}$����4s��v<5��~=��ie\�Ȣ$r[�=��ʧEN]�n��Ky�����E�p��|�$��fdL�B�`�٘���
�H�"	 ���5H�Fl�^��b�nc�-��W��}O�Qr�K��b��ʉA�\[�5�ZMr9��y6#�>���c75wct���5k��'���Ǯ�]��]-�(M�����ezyP��4�e��nV-.G�TeT�z�E���ey�Ș���V�a!��lL����7�e/���N��q*�����ʺw���i�ٸ���y���0�L9�R�������E���>v�Bi�۽J$��L�>X����._�~�<�W�~�D���*1nL�_X-e��q���0��z��>a��2&�ko�J
ɉ������$��R�Hh!?kND�Si��8&��S1-�Y���?�P	QP��~ ��mH�d<��+��w*�aĭ�G} �8X�U�-�� 4܇(��i%�YN`�,D/���wM�NU��0����#��`��cHE6���/�4���,@�9�6��d/��W`!�:�� ��(�K�@�9N�<����XF�7�)�{Ӊ瞽���ٛ�_w˟��8�&��kC��8�#hCن4��  �灼�]�?�����
G"\F��1|�l؃~��I��<�բ���Ws�\����eH�_6�J��X�K�("�a��|q`�T
~��8Ŝ�N�4H/I��48  *lH/��E^
2)Qeku�Lb�mH����8�c��������x?��ZsT&Q�_U=JbC��^�� � ƥ�0ҿf L�*%K5ŬH/	�*�#�@)�!�$2IR�F����^�%Uő��_-�lCz�W#?�qN��%_]�������d6IZ.�D/(,�� h�;�K���){��ϝ��U1�F�I ��!���74�z0Hޑ^��	)B�	�@zI�oT�!��%-�\��+�#��ŌAE/t9�7�KZ��ʆH?��D/h����1�4 ���9�If�9w���8Gmn��N�o`ٜ�9D��}GzI�s$Ȋ��Z� ���U��^'��Kj��c��xM�OH/�u�#�#`��#���9�81��OH/�u�#NRcyGzI�w�q0H�����z� ���	�%��y�a�B�ҿo�u�w�ZT_�����Z�<�T�ᆫ�#���=�Ѩǟ�^���*�������I`d�yBzI�{$ [�^��	1Ư���KZ�#!CX��KZ�#�������Hd��_��ڪ�:��*�����HebC~ ���<�Q_���#���=�@U@��$
#���>�@5l��#���?�@D5�-��z=%���FM���X�#�#��z=U�b��4���J*2�����=�U�ِAS�{ S��p�wdд�H�����	4->� c���4->�q���4->����4->R�>E��ߑA��#N!�$�1(Z\ĩ��w�4-.��5̆_ X\ę��#�f4-.R5���pad�ԻH��*��4�.�
��h�FM������#���E�@�R��:�Ƞ�w� �  =�@*#�=��z�)�d�02h�}�d"��
#���G�@�=O��U�~�?%Vd��{�("�fabP��H�mO$υ�A��!I$5��4m���7i~!���CRRY��Ƞi�TKmt�#���CHd��2hZ<$!��p�wdдxH"������w��c��#��ŗ�apt-
#���E����Y��Wc>!���G�@�r��u>!���G�@y]���AS�G��PE�?��AS��@��abPԺ�� ��;2hj]�T�ed%zBM���BDJ�01|����#N�'�Qd��z��FL}�Ƞi��w�6dдx���'�\�	4-b���c�'dдx�!���4-b881�!���EL%	�1Ƞiq#�D��'dд����Z��V��e���'dд��������z�w��"���g4�>zrٵ?!���G�@5c�}#���G�@��ܣ02h�}tT�p��2h�}t�LF�<!���G�Gq �%"~#���G�@�����FzM�
�@���2h�}t$�F�䟐A��#HEt����F�8��4�>
	�#��F}2���&E��T\��+���@M��T R	&R���A��"5)4��4-.R�P(����������� =!���Ej�hNl>Wѿ��Q�S8�A��lȠ���#��Cad��{�(��]��AS�{�ڝ�uޑAS@%#)D�z���id�#���C�@��a4Ƞ���=�`y-�	�5��,<��<�k#���C�@F!7hޑA��"�10��2hZ\$�Z�Ƞiq���FN<��A��"@F�<!���E*AM�#���G*�m�4�>_��Pݜ���F�,����j"��߁����F	U��\��@M����c&�n<� ���GA g(z`FM���@���<s~BM��T 	�K��4M>�
$�ӕ02h�|BĐ���A�� i��d�4�(Tk�n~�AzM���@u-����A�� ��׏=^�A��#0�1(Z\D��<hV�?Ƞiq�誐?Ƞiq4�v�2hZ\D������QD �ߢ2hZ\D1��	CĠh���p��D��w�G������Q��E��Ƞir�Ut�AS�!�H����
$���m2A�Caqh�f�Դ��$1�j'���7^7�I��[�p!�㐤��jg:���kw��.���>��6��r]�d��Ԅ�S'�W�s��&���w�����e*ə[��Ҵq=��ő7H�oK�)�cw� �*��K!��]-U�9o�S��p�'��嫡����7����>D%0(Nb<�!��p^3n"�)A<��!��k��үǒT�ߑ�"��k�`�׬��9"�ڐA�5G�E�+ń���!�f�-�����{VE)؊�������?�bq�d      �   1   x�3�����4�4202�5��54V04�20�21ӳ4332�'����� ��      �   �   x�}̽�0@��):�@m�폲���.$4� �M&^L'����Ū�2�P"����qe}/��X���U>�Z$a���cbe�ąO�4��pN���	4+'���Q���V��Om�%:0�l��rm}��g��m���m�����}�z�FwB� �fiUy      �      x��\M��Gn]�N��+�I$�Ld/��<^8�%)���M�}�ǰW�����K3���"!~������{ ����u{s��zxw�f=<��ry��RL)�ݑ��z/�HR�|����$U�RcoYf	Jsٻ+�-�)N]c����)� �94�")�9Ӣ\//�[/����������8}w�/�)8�����������ݫ���z�������]o/����?�ϟ��݋5_������\����]�x�w��ޟ��Wo�^�����?����e��;����8Ě"���靣�Y.�f[J;,���B�5C̹k�4f���Daa1� y�P�!�H�ĭP�@�g��QsѿDħ@���/u�a����u��MB�����6�k�J�,Z�1�tnۡϮ���r�k���A����~���O��C��� �,�t�1�g�K��|�tP�������˥K߭�D�7D2���W��������F��߽�Z��[�Bs�$;����ל���C�G7NgG���<,J!����?�ч�8Ҳ��8OΡ���-�9Űd�� 8��\�?\��C([���G�\j�(/'#P�f|�cr�B) &���������b��r)��b���5�Wt���KN�������-���t��7y�8+�Z���M���`}iI;v$\�9��]��Q��P�@mS����!���|�}�<N4I��]{�3X��K�{u���m?��a�>��k��[��O��_��|8� �(w��9I�=k�� �����s���R�EsX�$)��fj��y�8��������/��~����n[��/�w�_�/��/�����p;.���+N������_������P���o���GDU�tٹ"&��65"pz[��[��6�W�5��D�*�HY������L��L�� ��QK&�F�`V�7���n�eK�Z�!��L"wK��E�.(�3b�P�K��u�Egb�n�ۓ$[J^,��5o�TIB�ZT�
8Up:q&AI�Fԡ�4��[�)h�NL`��6!�lP�s��g�Ŀ��+����_�T����@J	X�@�CFU�\���A��ط	�r,�Q5K�H�qT'�PP�R��ѦUV��DJ��tQ��At#���X�SEWI��EpIDfي���h��a@foMW�r�t"��Ŭ�v*��gE����F��!K@H5�J#LeT���s��"�l�WǛ�x�
$5�ZU�S}@�-���L��3#���G7��)j%_@�����  �F���o�86�!��/"H)�\�sH�Ӆb9){V�Tu���x�� "��ã�^&#n!��D�+���R`�֕7-�SG��82Tf��@
Z�bzʙH�gE
"
���n ���	-�!\�4�9B��{�65EE�m�X��Wp�	!8<����G��'"��s"E��H��T�/������a~S���h
��1&�#Y숢3�|�rW�Л�����M�&=So&z-uE	���w�J�Ȣ��ԦJ�M�?�����Y�DP\O�l�\���NP�zFP� ۏ�c=�����Bd����q�tÿ��dS��H���ܿ7W�xp�{J�kH@@�>҂�\x�h��Pz�Y��,g���OI��$�^�H-�h�p=j�Y�&���6ͥ9�ڵ�p�Ԉs�P�F�&��@f�֜�7�0�kNmg�$φRq��:��F�I<j)P����ň;T���R�zd
�w-����Zϥ���z�l�"�b�tKc��LM��Q�����$y'IwQ�,���[��p��Rfu�^��.H��SƋ�wW� ���Y�;әz �gDI@Д2݊%>T����6�!fB���.�+\Nq�G���Dth����mMK��⤖�D�<J�>"�T o��#]RAM����K��%�ݺODhJA%����`�8�h�ж@��,i�"]��d�Q� ��e,���ӱ7[�mV�eoU_{�N˩��ӨH1�%B:M�;�R*�U���=�	UYv�$q�u"FoD��m�8�������#^b���c�!��m� ��m���Z�b]�P�K��H��(v���n�d��2n4!{"N��{D�^#�^��a���*d�Gp��A-�T`3����1�^�|��!��)�JZ)0*P�D��bjI�ۻǫ�~��-_�6D>�#I�O���#�������'XY7(K#WȈ� ��S�2}��P	K͡�愕ʜ:���t�D��F�N��_��g�v��#�
q�)(v��p�d�*��C�&��a�w�S����X��I;Ӟȳ�z����r�4�e.��P*1�be�=`wU ��}���d��s�IVw�?<����a��V�Δ�rK2�D�#�ҝ��<�����LY�`�(�6T��"u��>�JVhy_�ɇ�>��3dIP��g�dψ��k9,i��y���%�倚�1���+	3 �C�����C�,�Qt�Bt�=Ze�%q"N*O�N�>�9�'�>�%+�e�5.�At�g@f��P�3��d��]B� $J�M�-ci�Wyٲ�y�k%H�3�IoM�NWMaJ�Z�.|��CA��P���Z(��v��wV@�i�n;�o��\+AkA(����Xa6d��]��g��O��?�����o�����.J{�$7��O>��A����黄^V%[�2�z���V�s�EI���<}��c��$)բ70���rM��7LY�q��H�:���np�B�;�<���H#�6�oS�#�8�������>�K'眔��T�^H�)�ġ3�\u��!MT:��Cz��M0X@V�'ސxw˒�8ST*=�`r��P'�*�H.���{Ow��Y�3( �PO�$��`�	�ڵ#+{�͵@��;R`+�HH�zf��8ޏ��#w�7p���.#�{V�p�U��3�J��6�-q�cY�+B�Q_��:�����b?�{�`�:�u��qB��1�"��P�Ap]>�y��J�Y��$p�ps-��`��d>O�j�{�p�g�u�ִ�q�"�f)싞�_d��N���?od���RVE�C`�8k����<�)�Z+��EDr�L�g�7�=]����2�u����E��4 }@���wB�}�9�P�^�p��-�p����_�"ݬf�Om��˥_ J.�-�>ţV��El��p�]~�"��%T��i�9���ŷ�;|��W摓_8�g���#Q�*ˣ}���qX4��ؙ�=u�#����Lk����t�P��'��n����%�ud�	���=~�y��D	�O$s��^�����>چ���T�f��0�#¶q�:H�����r+lE6��Z�gn	��ܮ��jS~�XB��}DF��G�y��Z��إ�Cj�#۶!�*�(���KA���x^�{���˥�2�����3���8���=�JށCJU/�P�|x����@A<��3!��r��#"f��2��}�������ޯ���F���ҳ�z���������%y�b�\r�rA�fx� 
Q��o��0�V(�� �C*�؂����EcT6�����my$:���e��/H��Ǘ
��j�����ZD��΁�+���"<Z��Q���]�³C�� 19��S7��V�;ES~�y}�$���R�:k)�V<N��G__�T-2�+�ߣYŒ6KaN_1l���`���R� &=�wrk~N_K���P��@�d�KtZ�/ȩ{^�R��07�� K�2�=dW�b�\p�P�~n��ӓy��������_��@�iPֱ{w$��*����g{���kf��\�=���^��&M��ROgZ��5���ۻ�q��p����	�^�Lp�~�+���)`(�G�ª�buڇ�	�ii9��7S�̄��u(_�b7}V��p�4���<s�"?�T�3�ؑ��T>@?�Sj�>�kW�j�	Ŏ���l���f?U��ȱQ"��D�~+�}�;ֆ�	�v�u��r��[��	!S���։GS9b�j�С1����n�C$.K�/��r$H�)���l�� �  ΅Č}ș���d��;]Wt�|� ���ɭG:tpF�7����C� �a�
W_�QPƲ��+��+(r����D���b?����~]E�;�Q���eS��!������4�}�F��0(Uy1i^�#���V�9�z��ϡN_���l�Q�n_&�G�My����H%�6b��˜q�ʡZ��e!䇏��j�L	�K�(�Є��u��I�Cӛk <Cb��*oR`�j=u��,�p>�h{d7��a_�`��^?$��2��$N0.G|�&��}E����]`�C������Z��r��s��&����@S�Kc�ou��� �:������@.C U���jɺ���c9e'��e��j���/sϯ
�^��#���*�� �zƂ-���_��;��(¿.h�+[7��U�ݰ���kֶΜ���5����Kw����_:_���������&����઄(�hj]�Z�.��M.H��+!�����L����6���ě�R*��Se�|�����߮����/?v�nKC9H�1��Gd�7�>���ȆP��~��\�ҝE0�8���!�/�qd�����������I��?s��H�
R���N?8��7(�OB��@�pYf����+Ju����P�M�a�kJ�^�`9�!���m/T@�37G�L�~�b@�A�݈#��>2EN�ladB��;G*a�<k�h�Rk�AaP���z�pd6�ݧ�י���5���ۻ~�z������Q)}�rp�	D��@�6Q�5�?D��!�PʳC ����$���e%���L��$��4=s�/ǯ%�����/�ڜo���]�[�4߿�{���<���7���������m>�F���1�v(C�m�Ȫy#�|Q����SFn�i�����A����J�S����b�y̽���T�5�
�!�oT�m�#�T�ns��-HP�+����_y����Z�#��⮶�">FRߖd�4S8�A���H�ԏ�'l��R�"�\�tJ/0��a��ʍ�;@��ˣ��\f��{X[���¾)�>�%�չ�Z�S��g�43�u-�[�N}k��tAm�����UB�_@�'�kUH�F�Zأ��K�.���1cn1���L,��0&�|��D�����ߥBږ������G��ʊ*_��f���#Vϲh9�m@�����A���<u��<�E��z@�'����+&�a�~��G�_�m)3�|0`�$���V��>S�*0��~fZ����7��?�_      �      x���[�$ɍe��Up��G.�W�?����ȌH��?�GUy���%�R�G"2�� �P�7g�;L:l��-?���G
��t'����8�-�͵��Z��z�ŅV�=Z�5�ُPK8BH騎?r�:��i������ۿ~����]�?�����ٿ�k���g��a쏐?r�9�;��n�����s�3G��9�ޢI+�u$��2�>�u��]�<Zl͕>����r����?�k��I��QAKT�3�މr�a���f:
n~���R�61��?ܪ����
��\9j�)�]�z(�h�~��ä��J5�NTV��[s�==+������hޤ0��G�&o��z7�b�G��n�|������ߴp�����lҝ��0��ث����(ƭ��������6�ܚ��ȖCXba��nfr��=������/
����8W�D�[W;Kf�
ZUȍ��[+3eڱ�� ����|���m`-co֭�È�u3�m�4(�����?\�0&�Z�D9�ȇ��u��$��WvG���<;��jR
v�#q�0R�J:F��֙¬o��kg�-��3����E-횦=�؜��Ѳ�^kV.���/�R*�b˸�Ȳg�=�5��w
�oZ���c����D�d���Xع��.19�����ytV�U�����
b���-]����������3�!�2�>�M��;Q��:�Q�du�G��L/ݦ��>Lm)�^�Uq�s8jd�ݘ2�����Vÿ��s��������܉��U�g�1�+�����67;���UÖ^<6Zw�jU�1��y�|����l��!�j+��G���[���(��0a�#��.kY��G�u���YF���#E-t�hx�c֡cM�o5��?�1�h=Q�|��d$/E�7C��L8�Ps8p-� ں�S5�[�E���CCVqA+U|z�3�H���6����B ����C�m�h`r����\'�xo>����c�������篂,�ܤ�*X���n�����i��)t�%<+`u���^��ʹ;�jl��40�p@�P�ė���9
�%����6��������o?����_��]X��������������������"z�(�"��:�}�u_����h� �s����ؾ�r=�Ė�ұ��)a��yn��O�~��/j��X��5�p'b�l,���^���Ui��״{t жK�)�&@'��C�دB���o�����x��1X��.���;�����L�q�ս|�~�G��?b`aG�{s��9�π��������� ��s~)J��`|˿m|I忏jϹ��k�Td��G�v	�M���u9r �8�]M<�� $�?��K�lfop.�@ D�)�����gg/@�ሶ�e�	�4a�F�q3��7xZ��Sx�#�g�A�N0O3��p�2p&�G(氵Yu19�y;@+��q��Y�@�!�`0�6���7p�jZ��������oE)B��O�6!	���a�ݩ��𮽏�&v0�i� ��A������}U�k����c�����kD�������B,.�	��ɀ�7��)��dϟ�Sr/;�[4w��E���sʇE'���5�8f���w�E�X `$���F��ꊘ���CۂO>r�~y}�jZ�9����?b�&�H*v�`��KR���̆|̕82r~R'�d��%Џ%�:o��q�_�?}�Ҟ	�2èݝȦ�V�\����Y}V�Fk>ؖ��X|iC>�A��� ����0�_�����ToP3f_�D�����vF ��A 0�T� }PA^���m�T�vǾ�����^�|S3z�>t��V4]b�]T2�N�p�ަ�����2�Xe;ekU,�q�fkv�����}]h�*���vw"�f��^\��O�8E8�H,�����ڂ��G��p�o!��x4�g)�����~o������Õ ��Q�t���$�����v��4+.	&	��qD����+�l?���o�]MaK��a^���>�U��z<Q�x����4@��VHV0t�$^"��Q�L���K���v��7-����Gt�v'��T�c���P���Qz�{��\�X��g��$�F�u������7���Bf9�o^��0cs�-e3�^J?�4�t��$Dp��#U�����r̹�j�)~q��+����U�/�NT���~Do����x�ؙ�Dfk�6����e�X1𹜲��N�����w5��5�܉R�z1Pe���AE�U.ģLLf�s/N�c�)+v�k#�3���`�雚x��?���[4�&j*��������0��� a����V�����\�:��@���������8�s怫q�N2���!恢:Hς���\���A�|�<EmA��!{1y[��y{7���w_�)ݏX>J�)�;�Z~���^p�ʻȅ,�8����y��c(���'�<gϜ�����@�|����P��`#[{'J	��V;PD��
)L�A��!;T�������ݰ
���F�P*FW �7��<����0���*�Q�k(�^��"�c�poB~��`ɸ��r��R��������̷�*R�~� ���A�Q��1݉B3�vn+�e0���[Ûh��!���\�W��^�?�r�9���ۤ��Pp�U`�܇�>]�sZM��� ��b�e[�v�k�\�z�5��֌2��˿،�}��Ýل��BCR��Fp���1�d�e�"����"�ܶ�l$`t�9ؽ sH�ly����H�f`y��;垂V���zf��v��r�0Rc�F�R	�V�M��s�p��o�+<`eE6V�(�k��5k�V��E���$]&z�c�m�c�@��/����!T��%��r��M�+�0�hn6x&�D0������������o�������s�����������8��ܟڦo*��.~:���p�����#�Zt���^i-8`�у�6�׭�ս��2j���$n�Ot�W�B�����BٿD;�X�~P!����F^c/7��t�xU��+��S7�o������S��RI6L�N!�|+���7�[�}?��v찎�C�D:�tDf�F9�q4yFB�����CZ�5�7�3��?�1܉ �ϭk>ct���,GT��Y]�-[���@ ?T0t��ew©�e���RF�E��՚�󝨮z]
-  l?���M��GX�"�y�XBa��6P���}��Y�g����+��KuO��"Hh �#� ��ԻA��֨)א��Z��-�������Qv�x��}�r�ݍ�S���I�"�q��|����m�aϴ����!\p��`ꅓG��0S	w1�A��T�1���_D�~[�n<s�G��Q
+��%L}m]�]u�Ya��G7Wy��_f�;[4 ʱ<Pߚ�D��剱QV�јj�4�4P�d�rp��w�f�u�	!=��ٌoWN�!�*$�'A�Ds�a6|\�˅Q��?m���j�6�*��o{��
��*���3���r��Մa��\|r�/D��]uuD���!��Qq�2iŁ{^.��Y��{P�ytqJ����1�]��*X]��Q��WI)|@�-���|,�
���缂k������FL��h��ğ���wW^( �マ7�*jD> U��Ae]&�N��q[dPK���XMU:aV�7�@�Ve	ݾ����I�uɤ;���T-�܄Hୁ�)�v������*��k���c�|�]�rɼ� ~d�@x�ܟ�=����.�Y�L����:�r�xV�0�^g���m�}�A1����}�V��C�P 2���2�8���[��(+�w9� ���A_+ZY�m�)�^k�]4������f�q����1S%��=te�W��S��ViP_�y���)��h�;�;<6U6�q�V�� a�:��������R�+ǈU5�]�J�p��f������q��Mp���Jf�����O��[~h��ufV���ە{�/N�K/�_    �d0[��z�.�Z�4 
D�����yT�YP� j�Y�k��m/�ʽ9��?�F�ȴ�a&4R�|�Z'�`+����7F�Xsp���t�6��J)�fy���^����J�z����\�R�e&��2��E���j`xH��2��S�ͩg���E}������������@%=)���߀���t����[Zޥ���y����~z!��P��z[?E˄�&@�,�����Y�����2>P�H0 v�=*�"1Ρa�40�;'�_G,�ݙ�bdRɪ�^Y4eS�`tOXD�X!]{F��b+�k'|��6Q�K�5���#�_;�OQR
~�PG"��Q�µ�Wc�p����`�Y��_����*'soUR����.�ST�;��Jh�$gm	��\� SY��#5��91`�z�c�~�v�^G�zf��Da��q6[��"�7\�&p#��W���$�Q�ţ�'��̏�p����	�e�Y?{
n�L/����?|�~C�Ccr�m^�i������& �h}ȷʽ9�!����}��!���Q�
��*�A�~��خ��ۚ�iS>�ϤJ�̴�p����ڙ��s��a��c��A W��r���QEgES�D\9��K�j��v�n����"ě0 s��|��*�/�����(���3l]�V�(�(��La�Rg懧9��}Wɝr�#Dͦ�7�=D{_YݒA8]�vyي����tm�e`4zt�Q�����_}#N߮������C�,DtL�7�%��?Jسkg���2|Pϭ�4	��̨���n�!�U�v&�\��hs��j�}��2Y5�$�h�����aA�u�Ybت��\ő���KԻ�s�{��Ԁ����Q�,����D�\P��Ld��pԋ
�\GL��Y&���lw�k�l!�wg�|7�?4(WW�UD�����>U��
�	n�&�jW��є�vM��8�����6�ϿQ�{�Ԡ�tq�_D��6Uh���u����bp�j���/up�
�����ՅU�d0��ʽѠBS���Q��x��2�B��QY����u⠷�E���>�o��0�8��]�:��-+�r�#�C�b����kLy�wT�ۗ3��鰦�����!�L��d�U�#}���\�ẗ́�y)����b}m���im��x��|9�w�r��n�)��kr�mc��e�. ����M`��Z_�z�l�P�/���L]I���f��K(�2q�*w�~F��͢�5���t���i�~[�,���!���J���)k=��� J�v�I�{��B9�z)p��U��k@�|k�O}��ߋ,��5�}y�����`MjE�*n~�����"�3$QC!,��3}���ݙ��#6�.��/��T5�㊺vb�l[��v���Zo�]�eo%mpQ��'������,��7���0#'����������ſ�d��M���I�<c�ޣ�>���[����\}����ާ�)\)'�S�(��;�i��u��L�[���*H�7��������1���%y�E��ʮne� ܣ���
�LhT�����a�]�̵��w-�Y�b=4��S+��,#ǡV��^��o�6ۺ��!]���By0%r� ���K�5����`�D�O\9��橤��B%�9�5㿒1:�����o@](*qX��Z��3�t��뽫��Kꋨ5��,!C�����G�foI��u�Xծ�U\h�:J� htYW��%8�u� 6d�fQ�� ��c��r(01��p�H�RPˁ�	U�C�Ł��,i�!j��	�	��h�l�C�ۭN,9e6�E�\<��u'�́��ciy�2E��g�E]�������7��e/)�/"@����+C)�.*��Wsk5�N�ìҭo�XT�0j�Qk�PXx���嬹��=}$���������a�K[�Щ.ŴJ� � `�I��u)���}މ��0y�9:{ݽO���)i0곭|��3o�Y�=�,�
NIR6���R�m�P�A�*g?����6|j`K�Z�(�bf)|ŭ�éR�Y_�"��p{`�? �zV��C��W]��:{I&}���]�Գ(eV�ϭ�L�D�p���d	���n���+���_L���}��]>ݚK$�T��8�g�Ⳓ����U˦�(gkSƤ�*k�N��s�=T���v��"��}�jwqhTG|+�S���n�݉�2zʻ�`J!|l�����UC�J�*l�u9��iޚ�۽vo�/W�$��D��ʕW����k̈nQ=�pI	TD]�ڷƃ�-G�n���o��G�f�"�h�W�cm`d�Z�ij*u �|<�qC�V"o6�%����\ݑ�Ρ���V�1�b��%_0�AQv�%fJ��K;��qD�2�2��� ���y�����K��T�X��\�և�cX$������	r1F����Ye=ϛ������Ե�t ��
Fk��	����.�Û�r��N�4�Hy;�5)�`0p��Z�`Ҟ�=Z���5g��;k_ǉl ﯵ�C��Jw�)j���1�bRָ�,�m��%b�T�J]R�\��͡�k_G����%���4J#�Z i����*�F\�#���;��jj��U��Vg��E�[��ܤ�U�z�B=IZ�4`$HD�sTwh���,��j�}�eۑ���rU���vr���{?g_�B���/�ȡ��-�M�%�X���� �X��ss�
v���9��4e/�m���o�U4�r��E�҆��]c�t�Xtw�Z��"x6�Ѕ�)j�<���Ƽս��� �[�h/e���ꋨ����}��2�	k��>��3_��k�2`��"���7,�t�`Z,p[��v���(�7�=D=a�[U'�
�H�V�=�?cb�FMzg�:x��];���`㸽=��u(Ȫ�x����-wW���ȉ��w=rW�QV5������jW�=�=`Sڅ���o�����S����fL����},�#8�d��e2T��xDg�9��p����=e�[�w�պK��j_����U�љ�t�k�
�Bş��1��zX�ga:PX?�הcY�&l�?n���lOp�&^�ɳ(�phЇ���?��/M�b1��j�[ �E���.	���n$r]J��[O�ީ����gфŬ<�qs�>Tpx��F����R���O �`K���/])�;�.f�P���J��jMo3�{E�"-�y��h�q���n�9R���2���v�nos��D��
����}���������|�2h��*tY����ӂq�bdT���Y{�Q��@�[_|�ˇ
Ѹk{�!�MU�u�b�� �kƒ�A]P�%t�ؚ�j�?44�VƬk��tjw��*�|�_?�lZ�>Շ���zK�����Z��g+k<�i#����;v����Q�J?U����gI���Ԇ��\(jkN�����(f������)ah.�	*~�BM��Q�J��ߜ�S2�ţ�#�+x�.���i�c�TY|�M�i��r�u���D}66�jinܥ9���Ij���U���mrK���o�d�&@ �LU��Jկ�<���9�����m�ɿ���A�Y4TQ݈c��Qݖ]Hڛ��}ؽ�������>�.0u�a����
U9�;g+��Ồ]U�Mw]���<bp4B	�WU�)Ӛ���p�EV���K5�*$%A_D��xb��+�kWK02�-M�)])ڸ�YUS�����'�o�AM�RT�E���왇���DE�,�ƹ�e��/b�kd�6�3�It�)�y\�mr��NW}��B�K��Q.�D@�	�p1���R<|�����쭺�Bԕ�y 
�mzʹ��f���TX��I�l���B��Ӛ'�U�4}U���.+W���cc��	�k�$��x����ի�HU?T�)]����t�؜u$�[�ѭ�MԤ'�a����,�ͺPΚ��C�x�|[f��8Q�����/�=b^���Td�k|�RcN�/���#$,5��ał6�P�с`,P��z�7nC�ׄٳhb    |�wus%��y�O�� ��9�|j�����c��N�fC����W���������"h�&ar̻�n�(�T|Z���4���F9>�Dc��l��<8�Z%1��"|��>���R�E4Z0�;��l�Q�1�\��Ob?����u:e	BY���$��*���˥�
p��%�竹�KL6s��N���h���T�=4+*c�"�]�v~�a�.��켍������B�ĸg�����yN�Ѩ��0�f��)�v���I<9�g���Z�@�nE�Q�w�ۛ��^J������XUsz�fh�U�&��0w��n���ф�*W�����j�^o�{s�d����Q��ح��>�ǭ�i�ᑷ�`]˨����UݦQ� 5��1�0�텢�����Vd��}�Z�4ބ���I����B���C����(3�C���S�����S��å��hW�����YK��'H+���go�Y?x�+�S�)6��$�������N�7��d�Q|O*��Vt�
�����@��N�c�c5��m���)̩�N�@�z�eo��y� _D*n�|Ji��G�/ƪR��v����Q޻�g��Ys�����%�ۤ;Q0�(.Fw ɨ�v�#*qĸq,�.}>V��n��'��r���vo�A��]Zd���9���5�%����j�|J�`�\U!V�  [��$*���U�}K��|�3o��4��OEW�g� n��Ş%eُ�P_V�R}�-�HYj�[!��s_G�dR}cΟ��i��Õ�hg������S��Ve1��G�X5�%P����;�ow.�OؗK��Q�~.>�SKt���mh����J��,����c�h�^����S�m���u$KιK�����E�/d|LO�o;�mGp'�t ��pg~G���}���]�=�k�:�'{��~���%@a���
�M��9P0����8��iлQ�z���nXqO^o���G�����;��ۮ���hQT8O�8
��9P|R���&�l����+Ȳ�;����I=N�ڽ9��w[���Ԩ"(EW��W�SRe'Hx�\K z?T���Hb���qF��[����%_�E�`X=�5?�V�pT[.m�^�J%�Ic�R['T�K +��.����ξS��KG�W�t�&݇T�&�Y���I�mT���)`O���ET�)KY��f!�q��O��koD�F+sIt���uX��Ak� ������m��OR����^O������}��^�[�.���fN݉l�c��g9�a�sͫGX�^��U�X�d��X�e�����0�=�o����
 �k{�	���ԞG|���_k:� ��x��*�.�H�zo�h�z���
ep�[��l_��'9|��; � #�=7�!�\yGe��}1�	�Rg�.	�ҏ���StHx�6�f/��O
��F��h�d��`���B m*����b����3&��{�0���L��A�C���˵��
��wk�)���S�%��
נ�?��d��&^����x)�]����Y`� ����
X��?tCw�_D $�ScW�[Y�Z7��dU�cKW����d5X��4��Q�UF3,��ڽZ T X^� �"L��x�HjVb�p��1vл�� Z8]�S)Uh��~�z ƈ��ޢ\]�Co⥌��t�u0�c.d��:	�]��s!��S���׍w��OX�U�ѭv�H�P�q�b�"�eϪaI���j��Rn.��U#��Ҕse�Fq�*h))ώ`M�Nwn=ʥ�S���Ks�Sd�FY����B/������M"���Z��J%�P=�������),��;�>�Oj���=K���5�N�����`]V0�atwpV�#�`��R�S)�m���������r��9�J$Ѯß!3��p�|�&�߱� c%gU^���6հR�
8��S\�`�P���j�"�}���)� �C�s�Pg��Ɂ�UL�"�\DO�E�����r�4x�v�Q%E0�9s�B�l'�Mtkt]�j�N���3�2�h	1j��vȉ�&�>U ^�6�O�.���g<O�A)w"�w�������T8ﶅPb�v,[t�v���H�
�R(�E�q`�.e)�a��Պ˂'�	���"z��t43a8;�Xz?�6R\z�?U `^������S6Y�7֮������PeG!N̳��|����,<��b�n��/W�ڽv�j��t�$�\���U�8X�/H����'M����d�XA2z ���g�)�x�z�ۛ��ӵx�h�f�xd��t�c@dr������)�i�����&��ǩ�Rp'�Su_�ui��N/ޕ�?��볈�4v��0��e]���W���Z�]+�gD�8��MS����|�5<T�\�_E�-3M��zJ� ���,L�ZMb�������R�ўS	�D���u��e�*�(_��Y�F��(9O7�*�(~8��p�W-��g��f;��-Fk�����R	��B����E�A  ���\j.Rz�M[��0b���.6��C��z+Ʒ���zi㾪�J�N���>�/��T�I��$�b� �Yu�I��,���@�T�2<Z`��`����Z��c���O����e�%B@��0®륬�۱5�ACE4�X�s�٥�L U�%n3��ɳҷڽY ��8�gф���?�}г�]��#X�~h�H�X��;%���Д6Hn���ƍۛ�K7ǧ
��k�x�8�h���V�J*'ั֌1t�9�I��c��*Y�N��w�NW�-@�{�x�@��k��YD4 ^mM���߭�zVs��,)�[%&x�b�J��ٱ�Ymz�*�Y�x_q)]�T!��n���3�6�.��$8��1�z�g�*�^�V��,����\94#>���Lh/mٟ*dw��y�43�2]�MO�)oج�T���R��p��<�e�R��РN�VhηQ��0��c�V	�z�,R+J�`�l�� �<T�d�	�e� �� �Q61�l���ʭ�hA6�6R\��*TM��M��P�2�^�q��o���zi�5�眶]��G4��(쭷�R}T(F�敛�Sl��{h�Q�k2{U����ۜ����h�k�UzD�P�+�b��,��1�S�L��(��zp�t��<C%��b�{���C��@N��1rD����lHc�W�]�t>U��W����d�AS��'z��CQE�4ƐXA/����W���kC��~�u;�Ⱦ<�EO�K���bǪcg������l��� ��e=��\�Q�s���hD"��,����h��%�D�*]��ZΉ�D����'�ݷh�(�=��?r��h�{[��by��i�M��Ҝ��
1\���E+�e��t���b��b�,.Co�j+������/�l��8��|we_B8=u�_d�E� `��8iW�*=D�{ې|����-��8�w��X�9�6��iY7ڹKw6*���S�Ԕ=K
ȷڸ���г��1*��͒���py���{>4����䋓���.�{���+���Y>K`�gN�����.H)�u�%��
�Ona�����b,�	�ymlb��ܓ��fjP�]eϒ�C���~z]V���Y�< �+E���U!��ug��ƞ^�N���W�+C~�D �4\Χ��2O���Z��Y%���I��sf9�ڲ��S��o��Ľrg�
�|'�g� �#���k��Dۭ�:�n����yp�V,�b6�m5���~�^8�`�n����N�!X�����	!��#��l�0\c8�	�\-f��b=��>�|�� ��ǾDoR���*��%��uF�3ƪ�����<z �.�z���	��NiϦ�r�M��6
�j��p�P/��_D��b����I��!�:��l�Ⱦs���yh!deD5�A2r(&�۵�t,>T ��K3�W��{�s>���s�L����w �!�5mT��r ��0�&2�Z�K��u�+��
1�k1�Q+��sn*�X��Դ:x���᎔��98�ߠ�ey;�Zۜ��no:>�O�r��ه�B ��#�ڃ@w�c�;¬� N  .��ݒ�I��t��5�M�ׅ���m����g��{��UOg���7]Lh���)��x�� &�js�>�|d-��c�� ܥg�.qؒ6��h�	��؝�P�[
���Q~֡W/J.#��p-
(F9�n4&u-�4x���R�K���%<�o���V�S�'E�]c�8a�ؤԮ�
��z�U���>��7�/�[����]N>U��7��S4��|K���k��&��:�1��h�k���n��5�U��9B��N���O`����Cd��V��[�����[�d���:���
]w��0z<��WР�jg��h�]F�]:�?݆	���J*��O��b5���=+GM�@ ���d��a�0�RV>�����U�/~����F�Y��HN���T�֭x���J0H�v]������ɪ��D`�mou�j���:��݉�pUa�^�8������4`bdb�^a)e�&���h��ښFږ^�C�ܵ������Kd暀߭)�zmy�RFe(��Vv�V�u7�!���gMA��_��}Q���b}���W���3�Q�GQM[�8��M!Y]7�*�P��_��Y�
}�p��kÍ��({M�Du�����(�,2��
$���/ry�%�V�Xya���X�9+�L��O&&0{)���}�d:��t��Y�p/���Q=e�Az�L=F���x�[₍<jd:CI����q�
�=�����|u,X1ڤ�z'������ST�����8a�K1g!mg�� *5�U!�M�s�&�����?/c�&����-��y�X�R���-XqJ�����z9t�4���u$�I��pu��*D�������ܚ�P!b#*�O��$�D �?��l����g_���4|>b�����iB�ꕯ��a]��>溵�竞�7�l|$?����;�TI�-w��ʱ�K�q� F<i4p^�����-b�k�T��a����.�
�GHЋm�ePh����(�^l���h�֎9[��f}[�����Q��� �я{^��N��+J4�k�E�ڰ��u���
�����&���U���E���,�"`�k�h����ywW�����/���d      �      x���I�#��,8�XE�K@AghB�vR��՟��*H���A���d&'������`f��+g��I{�0�L�c���_���������?zp59�J�[�*�Еe�b��Ϊj�+5u��⇢*�j��C�豏��_V[�tP���~�#���;�?:>��:�_������������Φ�?�:��m��o�/��$�5����0%צ�1QUqF�CK#?�*��rV%W5=~���=�2B):ǁ_yxs>��M�l���%�a�yZ��Υ���x<�v���m��ǐ�Qb�V^���`�lR�qc�8g��b6%T��*��t��Y76����I����󀋏lur�Iv�7~���s)��e�As���q�i�i��S�����MU΅͚V���Q3�Jj�ɵ0s�N�����2�/�Y|�����c���\M����O~��c7&�Lɫf޶�R��Z�a`�d���a��T3y�ުJ�9�z��h�ە��{=(>�6ֺ��c�CKH7���m��&�c�~aC��iF�I�Xp�#��zV�-V��؈mc��:`]��smDU�Ò�R{���\NF�'=lN�ڏF٘�3W��F�+������h1�Y4���ʻTq�@m+�u�6d��i)5���c�rv�.�dˈ'�XzdcS��!��"��5F��������IZ.V��\��ZT�aj��1��a���a�0Iբ����4��i���pLd��yH�#��S�1Q��1�ltz������Ŀ�[����_�M�ks����*z;&
���q:U4������H�͟O
���m�zK�;Fm`"ˊm�5�*�p��x5\��^gK�y<	+4	�?4��J�}8S?�O)}2�g�ڨxi�'��rYOU#=T�S��E�Q\��8��ʜ)����v�1�PHA�2r�݃u�F���?�]��$m�D
�v`�1�`���h]im�Ĕ��E�j '�C@JX�����pN
/�3���zR|`�1߆��2�����y��Rث�A����)r��,L[z�Xèd��9Ú7NL�F�'=�#�oC�F�7���
��O�E�-��*UפT[��aa�r���=����5@x�<)��ez�.9斴�Ye_���DLv߆n�>s�*0��P�o�6���P��
:�bԳ�$]�t�$�T�az�p����k�[��h�7�x���;tê� =Kƙ���U�|��i�M;�@��i(-���N�atL�V�!z�;+?鸜�X� ���*>���>~�a���J�|?1[�3�2c�k,��r���lV� G��d18:�F�dѺ�U|�ј�oC7��w���z�R��HP��:�>StGL�j���!NY�1W@Q,�" Ś�4��U�N'�d������I��?��P�x�׊:B�~��i�q?���I9
d!�����Ti�ڗ�`�50��Mp�ͳ&ă��:�x��/�\��`��� ����/�HV}VP@ȐN��!��5�����k�[�8���$xZ�e��:��xq$���qP�Sxˈp2�옷�1k�U�#"Xh�Ѫ����-��@����쑸���W+��*[�3�=�����L@>�xk�Ǔ�����.�g�b�1���~v+=F1���
�]y�L�9�#HN�T�x(u�
>��KX_���xs����o`���a�gL�l''� �g���Z�� ��g�e~<'��K.������Iv{hT��>�D��|C�ۗ�1X/ф�H	͆��i���\��<�i�q �&�Ys���	کt�`� ��`;\v ���}���̔��� � o��oCWF����jp���� ���=P~cT6�� �ʤ� �. �H�}����7�G 3(�Z�v�/R���c�#F٭?���I��qV�ݰ�߱*��j@�wA'`����7����8�u*�6|�N�4�3��&��B*����U��ݰ��,V�[������Z�bHH�+�0���&��ɔ�J��*x�U�	E�GE{j���z�U�AF�P�ס�*}7*�@�l�§�5D�>a�5	j&j�SY���`� 6LP��Z��
M���փ�o�m�6t#zg��_����(�p�Й�� ����X?��e�f��W2rN'\��N��6�ڳǈ��I� )��m�U��Un�b�c�9�&B���IP��u'�����U���:�u��c(I;���Q.=��S6߆n完�v<nx�9z�d 2���u'�M��J3bÁ��T<�:��eR�Z��S�-�<~=��,��T�nX�2D�I~��,��b3UP	u�G��7�C��Tr+.�#ȅ	��D�+Ȝd(�y�c�4� ��c=�a����"*4�xXn�Q��(��mX+�b�a��J�
,B��1�O_���
�t��ɥ�?��ޥ�X�a�`���� �T���٨�`St���_����`�[���m(�۩����"j�V�����;�{�>*
/iP��A�F��s�`�}�䌻>8�Qr�Sm�o�:��ڗ���<�aI`��1j�=/M5�]F$@���S)�:�����Q`$�~0��=���_��~�)�z�?\]j�6eU�s��0x�s]aT@xmwZ�ru�����@]y�S��o�{S9��$��l������8�z&M
���O��..wW�]�y��K����`T�U�fT�H�����S�*_����|�#m��Ѝ�ʗF�?�	��<�i!(J��z`S�ږ�i# ��*�"�*��SHC0���_�����I���еU�3���:�?���3AE{�sv�����HtCу�OY8A��rG�jkt"@�V&�"�Ub�rL�����Κ�����#e���6t� �o�.��v����$FP򤸀� ��4X|���B�`�l/��ե'py��&@/����u��*K�~pU��������iW ��>3H�KW�J��=�+�����L@�����r�y�F(ᴫփF������}˨o�� 7Fu���qH��'8,�.��9�"�'P	E{e��,���?��j�ݕ�q�\������7x�� �x���=Omc���U[yLk��a����J��涫�Ge�Z�G�d��yk�?���L�������c�� �eF�e}�;�1��ޖ"�_��2e�' �F1���_�\,p��ӎ�;tè��N�6�$��
 ���O� ]��M�ߘ���;�n��Ġ��\�����.�K�*��G�w���D���0��ӯ��%� N3�h�>/�����/�;��JUu��k�*�0Л��L�����$��_<��m膓z�Ȉ�������NE�
���맒�����8%�f�{0�c�u9��e�ҊJ>J���T|@2I�߆����w	��4^���������������TX}�N@w��'�c/�P�SE��T��gM���}���0�}Z~?C��$�ߍ2��]�p���0&�<	 ���<�0����.�|������W����F�����]����/\H���j�Q�4���_�ʕV4U��L����ɴh�"�Xs��b������o���~�)�b�[]��w�#m]:<�f�J�$~�S��pSko�*0r[�&<o��3�I5��2�G��,����}�9~R�?C7�/}	�BphH�?�x<]��U���L�PY�U��l$�>d*a���+������Vcb_c��Y�!A�Z�
p{�����O�T�XO�G�޺.���o7��:C�`N	��ۥ�'�?1��%�2�I&�I� ��Î�U��D��{��me^�
���q3��*������1�i���I��j�+nÄ���YL��\Ň`��X�&3.�;�C�%���se8B���i�dܯ�u=��ߙ�Tn�Ͱ"�<����M,�~4*��~�ҍcv�����ۉ��6Y�    >�M��}�22�aS�L_�lT�����A��Z�57p���6�h`���v2�m�����};Y��}���ЕQ鷄/Faj�d#s��cI��c������B,�S�(�����u� !U1����Q�<$E�����&��IVB̲��L�y�h�p��qn����7���g0C;R��6-�^��P3ڳ��Z�q� =��r� ���0*�1J~��Q�X�������O���S���Mn�<0�b�U.>S�ct���5��]O���#ƼK�=]�����Ǻ?~�K�㩰�a�J�XC��8�5�M�@�Z���@�5y9 hbR�]O��l�a�I0��z�@?�=u�00{Ԅ��
�"��5�zF`iUqJ�8���3�4hx��՗:H��LF�rm�O]��O��Т9[��Äx����;��;�m���`;t�����*�7S�<ƨ̨�Սg>fs���;�d��4����i���Б�v�ߡ�]�zkV�`C�{����`F"��S�d�fj��&l*S G�̩g̽2���kL���El3�O#׌6|�<M��Sб[�t`��汛�`
v4�=
�^,%p(��T�a�X:<����2)��0���
L����3D{���B���s�S: a��HO&Q�g-�H�>P�S� ����_"ng0���M�&a���
F�K���6<k�`�Za�26�T�T���9+d>l�o�Z��`�1C����jO]�����9���(�t#k;*�0
N�����F��ʻ�K�pҲ�R�k<K�z�0o�ed��b�U�7CV�Z�'�  �ٝ�_&���0�Q
X���	����J�����YN�-�
O	̫hT��Ѐ 9o��IA��^|��y�țzM���%@$ײ?�H�����
!D�6tc��w��Q̆��$=�sy9��C^p ��Pt���S�����9(��1U���Sb�+^���׃���P�ޅzAOY���z쌊�Q[B+`0��D*�:����B�!�\�@@&��0F�̯���[�B�Fˁ��'�0�KΟ��#dm�:��.���[ڜzt��ͩyT@�e{.�Za��j1�\��U0xh(�� `���$����(윤w������e�;�]���A�.9 *�OD�<=ޗ,���5b�&�ЧƼ���ġy��y��Mט���ູ��Ǿ	��?�`�b���q�0��j{qg��w��`����ƪ0�>��� xa&�����D@`�������w�1�V*�|�!:y(ʭU�?02>i��w����ҍQ�w���V6�6o�a^"0�x]��5�p����g�0d�-�8!������[�'�ܺ����M��LeB̅�}����Q�R���(�kP=�|V����<������`6��@� B�3�����(>�?D�p�̀����R�O���$�É�|��'�L<��E,�Q����s���U�I����[�ť|�'>�<�����?o/(�2*�/F=3��ǰ�%I��IQ@G^�M�AkxO ������,���*�WQ�����8���>_ݭ'%�:�v�ݘ�x9Un���3�iVë�s�R���Nts��Q��T�RǓ̗	T����)Շ�p���@�p1�ab��c|ڔnش�5�Z�`��`Qa�:t:o� �T�� n0�R���E��X�ax�bu�1�O;�3ƛ�==����cT�4Jv���Og�Ը�Y���ꭏt���f)O�3n�h����:������� ��u�}�sn^��Wyd�=�����C�o�}��
���_���yoUІ��0%��$��526衿J�X��Ƒmr�m��r�A@^X��w��<'�ڨ�/g
:gs�I3�L@h:]��/V^=o�5L��)��4"`>�Pw����~���)��C?�gk�yȹG&_�?g��}_��z)�YoxY�y7���[�{�Μ=�Fρ�!��rL��K�e�Y�����!��~��3uQ,c͔lB�Fboi�g�!bO�P@��}k�p�Fa��w����x4�VŐ��G�4SX����e��1����ϙ����3ev	�ª;evˠJg�(���=2P�q����X���"���a��sS�`;D���~m�Hg�#/H�s��9�Eҵ��mCl�~�_¨ZWv�����)TLh���x>+�$`Ny��������|����<d!|����IO�.�ld��(�v� �&����7@��:�.	� ��6��c*�2�|ga��=~7o
 ( u8�E
��֞�k��y<y6��@g�x���$x��Aa���\�Z�B:;`>�c��[�=���Z��X��X�ިdӽ�w�g#��b�҄�Iy�	aO�J�/઼��"$�0g�aM��Nh���Цo#���	�׋��p�|l��O Cw��`~qYnI����T'7%IO�b$�-^
��N�Ta��eU�j5�*���)�b�y��>|K6��PZ[
֚;��.��2j��+�u2�6�� ���
|���&afis�ή0�7@�,�Շ�l�z��QP�����x%Q���>m������l(���.��,�QT�Z��E�(%��4ǔy5�R ���w����*R�y��A ���oL$8������T����������<�̀< �LT���:T�`RF����;uq���V�Gм��m�｠~qU�,���tp��J��+�v���2�������@��\1����MA��V�E��ҧ���a�MZV�m�"kHx��E�󂥖ZJ��/�� �1|\U5�f�sɼ�Rr.X����z�t��ݰ��?y��m��%U�
J�K�r���*J��L&B3c�)tX���[!#D�8�$K)����b�F�ң���7�{�v�d�E�4�_�Le��+��&ftV�i�<M��2}�L�{!��zBA����(�7�L�d�{޶t��w��橞F���O��,Ƨ�y�2�`'q�`�)#�c��h��q
�;'��S3�ug����T���/|6�*��i�7TK_#[T�L���X^�Ζ;���Av�g1�T���z���3�%(�hS�Ψ�E�������F�Hd���(/�ƨ���xŨ��r�A�NB�`h�5���|˖u}���^���g�#���� N�}:zf�Y~������`շ��Ui��A2ͭ5�x�q��U�>�q�����1�K�uCZ�O.P�yF��#O?N$���b����� �.��j_� � �I��o�΢�zD��H9"u��2�;ԡ�ᄅU2ö5n�l^��/���a����{a/���T�ٕ�2vDx�u���@:U ���i�� o˪)~�0;��bb��Ё�ǩZ!�(��GOšD��o�_��2�� ��Zo66�
=+�5`[M�e�9�7��X+�Y�o0�3ٖ����<�@:�Os�� S9�n�U�U��_���VW>3&DªƋ�a��ǂ	�Ri��
��p���cb�}ďVE̕ȑ*mG��t骼�ԯ+�9�F�x� ��KG�V��-`H2(�����yHP2���3;ͻ�mJ)���n�U�r�zzsH0|{ NV���S�&+7���q���R��"D���@=���O<;�Rk-��|Px��]�	�����2�^V]�4��G���n����"�S5VXt��iΘ�A�h<�m<���V�[�� A��� yh��æ��d��eD��)�����fC�p$
�F���S��C�s�2�����a��b]�|���g tLQ?Z%Ϫ��������Vm�(�"��f b�L�aЯv���X~1;������F�u��u��� eEY��|�u���\$�cK�-�h���&U�[�����J�XX�e��b����%�9��zg��2D�ٱ1�Vy��24%0��}D�����U�l	�qT�M��O4�e �YÈ��W���8)!M5�J�˼��@`�[�	,����H���s(�us�U`�K��W3�    5KgǱN�/x���&-bM:�}]�~��O�w(�f+;;V�� ��N�G~�ҋ�_UT{YuᮖU[��C�[�L<5���Ռ�l�A��ʼ�����~��1}*�������~���*_��Xu!��Vm�*{�!�������.7ϫ�=�o����P��x�����L7�LR��G����_�m�U��]�N8�z똏�C���J�,��{Y6�uZ3�����Y�y� ������� ��*ާ�eշ8�۪m�ٖ�
h�0<��+�Bay���	�T0k�vPz\w����1~1��Y��}�+� !�����.�m�o�];������ޑ���>(m�m��� .�����JX���!�\��;��LV�d_�d�>XE"�Vlݘ��ٲJo3�]�5�ֆ�e
�ؠ:�
�&�XO
�#F�k1f��<�����Q�W� L��?Z�na��X�<���U��Yw1�N/\����m0����e윽Zh�	�dt��\}n� 7OV�APP���C��,�y'm�aJ�T�})�7���@6�hM�yʨ9u��� ]��PQ̔c=G�����C��Q��������� �l���D�U�r[�]�+�����L(`�If�N;G�x�f�B%	sLpE�%�9\�3�V&���$������஼�����H,KL����Q{l(�ָ���ñ�,�;��8���)I^�``[6���v��w�瑲�� H(V�<;S5�٠�X���E�X�Uy�Ѷ�x�,���e�\0&|��[�}7J����6��yX��®{���p���VW�� �?a�Y�Iݚ�̋��Pt�.8��NR��X��q@��ʲ��z���x��X`��q3��3��1_i����G�҇���d'wo[]r[�
ذ��X'�F�2�L��(Ù�&�r�����4%�oh�J=���K43��&'lVZH�w��,�Wc�m�Kn�_�ՌQ�df��6�r8
�L�Xs�����n��*����C� 	_I�޳���*a`ģ�ɪ���.}��*���V�O>�Յ�.���1��g]�1а��~��Ph�0/�&�l�_J8���dUҞ��;V][-���R惷��zX�լ+�p���l�L�Ԭ��3@��ax�W- ѳv}L�z�:4��J)�!��q�Vb�O�[�z^lU�[����*�P��T�d���*e�0����� �}�ärf�|Ђ@��s����J�n�ե�b
��	��t���º�*4X-`�*u�# �"\�W��`�����5��N0p�@ޟd�I+Х|�<�5U�E���5K�X`�V}hެb�A�6��� ���f�밖��YͺmPV�S��c�Y�UESȿ�?�����}�Y��f�Kg.��h_U b35b�M��`�a�bﱂ�g�L��Kb�}�
�.t���C��j{�4�]ė֮�֓���}�XdwU)�,7	`+�$C�4��$�&��?c)^)݁&��/��� ���0Ut	��޳�AU���f���V �T���:��\Ru@�!Y��Y6:򼪞��0��:���D�(5d��g3��
�Ƚ���K<{�&�i)F'��c3�Ɂ�۝�f!VH��Xi0�#b`=~����ȷ`~^�y�m��GGơ���+���+p���������-��住,X�z\(;(�V��ޯ�a,k�A�6�b���y[�A��@��2�����w��/V�o#���)Zב�9�@�6C��j��V(/ʲ��g�gPwv�3⚫��v�g��f�~5��筎���
�;f��`�(����
l�R_G���b��]PFx�� ��^
�p�����3O}aRGu��
g8,�[��/1��˕yh*�ٖ�w�!1xo��3��󤛵��Fóp��� (ڙ�Ny~=(=hH>�@���{7�/����|hI&i� �8���8�0��2�RPb��bn
���=��8s�%�a��Z����ס;V]�@Z��/%;!����1uQ �Iٗ֠2Tw���Fn�,yO���A�B(��~�!~�X��U��?�E��$L��Ϯ*=fTv�N����MbJ-�p����_�f�Zttj��o��&�/;��u��w�B��F�7���������H�r2^�cg:��#T�rc�sZ��d��Kf��mK)�FG?�>(?2�E�G��a]ߛ�K'̜�mJx�"�5�"1���qt�<,�I��ը��8a�ZV�*D��
,���3��Q�Y�)���*�$W�]_V]&�ƍU����e��V�4
�+ՖW��xfPX\s �kud��q���A4Є�ѕv8�t���A���!��-�yeuq2�#K\�%U���Txǀa����vl�R'��� �a�@Us$�Ct�wNnYu�����̱�[_��qD�0Y+�G��Lֹ��_�2�N^_�-�ǋ#g?���CX��j��+0��uHr/���T�e�6�>�l�碒��J�@ֳ02V��,����.�^������5+)��)��
�M5P�d�i��R���[JX.O|�%{�)�|��D,\a�kK	��TMƨ���	ć�Y7�-=���k�M? ��L-}�*��b�%���<9`��f�z �{�x�#^�Η���u�C^��6h5�֔ϼ�!�M�i:�|S�¾ޝ=8C0����0+\@;{#���ءU��������dF^>�-N9�԰�D��c^��I�B����Y��d��[�;�uMo��T=��L��=��^��s��8�Ή���u�yn���Ze�EU��Џ��}���cuu}���&�HV�=7,�nXV��M{�٥b�${y�$[��bV*o����y�O+bò��Cђ��q_�=�"��!���&v˪kƔYusx����˫�$Q5�gȐ�bS��V=���e-o؍�&�W�s}��V�����*+˳+1��� ��f��l�3ԙxf���P��ˀ�y+�@AP�a'���`ĤF��'��0��V/�=����+��M�rݱ�$�Y**_;
v�Xr��^���&1w�D�N�%[��[փ��R�������H�wt �<P��ޯ
/1�=�y��xU��9�bk����9�ȵ�Y�i��U׊5RNsŚ"pJ+��0�V���M`�8�{��� ;�������g0&5�V�؝V��r�a���HhUe��,���c�]փ�~ʐW6ʽ}ubZ�����Ep����L��M��(;�?����f�6�<�z1dJ�*ǳ��C�d�i_9^��٫c/�.��
�.-�ɘ Rx)��.倌)����m*��`I��km���u׶�V%^�� gw�V�Z0��V]��
}et�n$˔[lG���ŭ�GǲzcpB�oh �H[���Ȑ�#''\g��!A�G�\_M�wW��;h��*���63���G��x6�h���zV��5�åթ=�hh�yW�E����bC58�[��p��ݿQ�]�?Z
,xE�������>�[K� ]�wut��՚r����h�Wg�^%Dw�?|E�R-�E�,k��Et��4�<%�6+�ƒ�q����dX;0)Y�Z��A�t3L��pJ�x�g��r?m�D�xAl�3[j��5e�x' 2
Ә�36������p��L,Z�(5P�c���k����Ӑ<DK�9U.8��#��A�w����+�	���㰭� ѐ��*��f&_��\�[ҽ��E
YeE�r��Cy�5$�����O�.��X������e��#a�*^�����H���(P��q0ud0�Nt)��7�9�-��}	K���+�]��3Q�7���[��-Gx`�*�,����bV�5fZ�>�
�"�`ס�_U�&�$!Ml��_y<�� v�Ib��g�����U�>�ڋ��y[�M�׉��֡�XM['@��Z]ݱ既���j
+Y�JW�M*ՌT�8�:�Ny_�A���VYJk��m��u4[��7�����b6LWg�    Y��Bm���^ٸԹ
�� ^`��Z�V�1��ô�Kެ�|JL�;.@��1+�{��>\�
��7A3�=�76Ab�E^��\6�6������	�\(�c�̲]+|�f��_@��*�.h�NP��pH�x�0�k]�e�_�3��@KT��ޙ�E%�af2W,��%����F3'�I�l� ����U�#��AN��hö������c�_�_�8>͊�>c�Ue�Q =ؙ��u�׫�,I�$��ǖ�fJ�����hb�x�arM��� �����D�!�P��݃��RRy�1o��h+�2�H�^3�Zj��g���#�����^�<,��\'���.7��H��ٝҨ檐c^׬1o?_�-�M[K�1��[� �.�0អ�J����>,�]������;�і�с�/t��11�"EY�������rRy�f�~3�jY&(��u��e�<x�u�#�i8G��ۙ�(�����V�����l�^y�6�
b�\��{�W_k�>wV�uږ	�U�S���11YU�Z�^t�
��I�3�=v������\Z��Ύ�/�A`��]%������/�.
�u��mw~(Sd-[6��N�ؗ�c6�
�,�PcQ�'��׬��E���t��Y'�x�/@_����!�5�_]�uQ�f���Q�V���
:��fW���1�o˲�P�!0t���1����D�u��ᐠ��o��&�[�1`��<�aO_�b�<)Xva�2U=��Wf䱰���=�R�r4��5����# �(��d��B������Jvytc2W�mrWa��K�Չ��'��W�=�o�m`+�ؘ�)^�5a�N�:֫�,p����5$LFK.�ҍE�hU�y�.Ψa�f
w���Ԁwy�	_!�G<�uLRV(ޑ�OeŎ1��c��"��|� 5�G<�佩�^���D��X�b5Vd$���!��|�K��ɪ�jI�
��:Stm��f#�*��ecd��<�x����=\����h��Q���	��+�����пl�6YI!dۇ����(���E����a�Oas/���$��d�8Y�S�V���7;�~�`����=�񜤿w� �3�ubX�z�*h�~U�'BE��h��q��{3g+A�7˚�u�r^y|����N�0����l͵�[%1���l/��Gg� 1�G�7te�a��aL��&��\�%{+�49w�j�m�Sd��.�֠
ۺD�!0���ʊ�Y�_f%�o���%��Ծŗ"X�e�`zց��r�c~��������T(,��yV��g��|b'�­8R��X�=�̰-s#n4��o���
3P�KM�(\m�F ߙ��~L�����-�E�e��?�>��۝���U������R�M�����I����~ug�Ɩ[f�u80V�X��E6�S�v:h�V���w�����9��+��̿xO?�o��Y�&�`+	ԃ}����3��( ���I��Z�
<��U�Ū ,(�eo?S����<DFMx�4g)�{����?�� �K�������5�1wxy�B w�3��K\YR�9	��%6����G�d�u?��ag���;���a=�Ʈ̯ĸҙ�4"Ԑ����0�Y�
aY����CW�"���1oXZ�Xs�1�!�$p��Zӿ�y�U�������"6��.�(]g�d}a�<k�,��
��^'�%%���J�	�.�9|�z<�Q��#s'� ;�&yݲ�[��I�����)0�*�6i ��2�bZbz@�2�'���5�,pՁ?��Q<��T}�I�A��Aw��[!�:�I��ǲ���t�ߩ�H�,�R�
��o�| ��Vs*G�@@hw�RӅ'!A��oxwB�t2k=�t�<��~$�u�O�f�K�ܮ�!�i���;�o�g����pK9�@dZt,@&bZ�팏�����y�V9�3#F��
�C̢eI�k
A����<��b���2�SMb*�' pg)\cK�ŰN ;�XL(<�� �
,e/,���x�]C����G}��گ�ʞ�J��A',�ôs6�� if��l,�d!:�Ii�xv����N�Ұ����׃NX8�8�I���Fn:�����s�ܮ`���[�U�U�'3)�boI�hGtx��8��^�d6�(Ε��p}�	���K�?�]X�A߈BЪo�R�V1>���]`�I�� �����lj��{�f�p���0հ϶�J����}�)p��� � ����<a��u�����m�\�y���..ֺ�2�4��洌�[��U̬fC�y����P9%l=� F%�;> �j@�im��<��&~�꺫�>��I,I�X,��F�6��A`����L��-�a?���yG��3oGl�8��+"o7���y���W7��U	V]�+a�ƦI.�,���0�
7𚔇J�=�`z��`Ӫe��*���`�M)�Rmw�&�[V_��U��J���E���׾2s�.q���`��L����Za���P���x3��S.��� ]c�R}{b#|��~��O���GH۫,�!nd��j9Y�Uϐ��X`��%W�2ބ���e��*o��9kN��27�p-�������>�y��4++�`��m�Y/n�e�}��4��:���+�M�*�ѳNw����X�߁LY�_lV	0qؕj[��`��׬ɠM�OL
l޹�� I���z�_;k����]ސy���;�=9�&�r~2���O!og��lz8�Z�]��0&�!�T���L��}W��a��4q�]3B̻��!a^\��讓[}q,���o����u�+Ahd���C���s�H�s��iLf[���,.�z��He�n׫���Ǯo�2�	�^svuq*ϒ��ͽ`0�۲ųlr\UQ�]˅w��Qc�e͜9�)r�Xk��x2j=����;�)�r#�V���~Y�f�c<H�M��3\��g��� z+���KNF�-s �X��+�����n?/@>�a��� �ڄ���i�B������c�Չk[+e8v��*x�05�v ��a�;�?{g2�d�\3l�	��2K���p��!s�n^���?9���d�Ur������ڤ	3ػ)�H���,�fzۼ�QaǏΚR���Lbd�^X�$�8�3f��y�7SkX��d�m�Y�r	���P�	�A,,�����5 �# �=��U����R���طjչ�7�c��O��r��8�(�:���GK����	��FiN�6ʊ��kp�jf31���y���o�\m\L�Mb�ek]� �^������'��m�YU�*U�-�gYӏ���Pk!��6�`���23`���)�6�g���)���3�[�V���-���y��#h��+�[s��x�z{��k�į�$�'��rme�-LG*�!g:&��A]V�a#n�EZ����l�]�,����0W��j����"�>P��ڌi8]l!6�^�:�!�<�6�_`e�JL���F���.`K�v�A�zuǂ�<.�'��,�E_b����JiX"u3WĹz]���T��,|��m��7�ŁY��*l��2%�pd���=[x��{����|�����Uﲍ��?;�}�
?!��i��S�tV�Ѳ�>��̪��ݲ���{�l'	`iNR�.���*��}e����VGB|՗DpY��X�_Vm��6A�6�f&Y���P�?��4И�$dψ�b���cjY��؜�z�.~^]��s��V�F��e��1U�����k�8J��6�<�!�w� �G��k噸����9���ޜ���\�x�gѨ�w�CD�e�ؽY/���������W��sF��Bё8���H���GJ �Q��ya �����#m�&K3�����n�ݯ'��y�|�3W��(vp�F�S�,O�Ĥ���8��-���F|��~8�a`�a&�E�~ �Zw��:����ջCs��e�sY��2���E��Ò"v��%q�hvCyHĨ�m՜mX   ��Ҵ��{XV�E72��\��T�n�,y��9%��m�a��,����Xv�A��ն����bP�g�l�-�,�(pb��ä_������T���H�C[�J �Lk�`��+i0A���m�Y$L��?<͊�-5���A4�`v�);L6D�f�A��pFԫ�cQ,�YqV�F/̊L��1+߆�`��]�UV���$����z�`F4Ϯa��Hnf�h��]�d#5(i�h��#	)�s[*x�c֛^h��O��ׇ�N��66�ۮ|OVAh��4����{e����-	,�1 ���ja���ĵ�˲�Ɗ�� 37�k�C,_+˚9��r׎�q7�)ב����{�씙$�4���<�cG�Q�dܳ�k!�׀���y��d=��an�|�c�;?�2�ԅy}x�EڼBi1�_�EV�,#�yi^�>R7��3V������טμ� �W[��� ��0[	�>|�c�7��v�������,����xc6f�P�M:[jcU�)vc`��Ϝ��28i`m�:���{9\��mg�a��,�.�����&��hf��#�� �loJ�&VK��YW�<�f�@���2K��4�f�'=�2�)
�a�Y��a�2y�a�>�=u��ʇ%�5��1 kTϖ��y�t��YFl|�Ofև��	��f��I��������;��;>���6�f(s�?08S1!�ܢ���`IrPa�Y=5�u��og��$y@J�M��Cw�
߽qf�J�����6X��$���u*f#OP���id�Ky�3'�/WgX4��z��,Y�S����uI2��Q�R�𮑰�'�T��`�LlA;0A�rlNQ����O�Ua���EҮ���d+M��6��?]��[wA2³��&6�<��Yث��fUbda���'oK�ƻ����+���]��Q�P����g���VA�����j����Ł�оF!��,+򀤻a@����zN�eez�ˍ�Ă<Ul��ߙ%����Ơ�~Sj��ЕY�۾�ˬW����7ۚ$l�V���U���Ї��'W�#f+�u�͂��gXY5�	*Rf�du����|�c��2K��� �zi�A���t�����[k%3�!��{��l�]Pn6���2�l���p2k7t�,�n��D�*�<�Y�l��O�*���i�f��1S�lP�^;����VV3�U���i�)Y���ڻ|��p6̼��Uo�����ò�	�/��UH촣�N���e ���[3VyZ
;��kl/9V�?Pb`�=||��zz���a(�D6��1�����+��}c̲Mr���g����.ت��,P�]�G(ٲ�5�V��3�G��ح69��'�Gβ�,y%��������rWk�G/�u�aȧ�}fI�'BD'�(aq3����m�^��%p��=���.I�5#�5f��C�[J7�o/���\�_���b�@H�"N��Ќ�I#�hB_�b�����ߙ�ܠ����x��^� �Yxw�"�ah�í�s���o𾜱�ݽ�6��c0���Nxu�������E�R�e׃��120��YTƦ���\�= �}>�����0�(��벇k��1���Jkg��s-�e�p��񅞖��F1?mi|O��Nn;ǒ�����ق��2z8�->�oor>�X��Z�ϫ/���.���*����a;!�@�o���Wo�m Z�U�d��5�+�U�l�>b�5.�yu�)������!y��ׂ�Uߨ��*��}V�`��i�#���Y2L����Ԍ7R��& P�@��h��N:�:[�=@ö��C,�u-J��6CK�Я��-��Fe���	��ɧ�����.&�E�7���D��C��G�	x�c�G��=@�w�_CnI-��u�ֲ�^Z��D*�U���Պ,�&=�vªX�O��f�Lne1=;׭-���t���_}e�鐒�0���&��bz˪t�L�l��,��J �)	�72�l �s(x�6�1$�S�b��d��]�%��a����1}��p݊lYu�y�cׅ�,��k鈱��bv��>R�"Xg���`(;�H��rF��+xotGz�b��hNV�K��w݅bY����j{{/�xČ��,౺��.�~��j_�G
*,���ۅ��4�M/b;[�:�8�l���6��uAy�n���-U�����;W�"��À%U��1+wYn�d}b�����ez7?,��9�pt�!ǖIF�iG�`<��w�6�[�؏F�8#ja-p�w�<����b�W���yoB#�j����?����a�7Xx]&�� ����9�<N`�U`��p�<Rj��J3=��.Y*`M�����l�U���]�%��L�"�̎�'��%^YPT���خ���'����FZ�����]����d�#��t��F1�h[��]J/:�P>��R
��]��Co���G�oM:�,��
�#��w�
��|��I���<J��c%�i�V�U�	�yv�T#�ؘO�2�*g�W��']�D�d�z��FR��ps�{�=��.h �һ���ó��(~��*^%�U7���ճ�!8Vqb�IZŶ��"y�a �5̑�u��n����24߆�̖�2[O���D|ONO�)2���H��c����Z4@�dȖ(�9^��y s��U���Nk0�Nr'�F�Fa���ZmyN-5����,��$����s�1����ꎍ`��WI	y�gߍ���z4ް�a(2	�Pߓ#ᐧpLZ��`��٩���J��m|��#X�lu
�� �!���b�Mo�&�8�db��_�/����� ��ܦ���գa����
��]��"�=����ڑ7�ߛ��u&vjͺݎ�N�J"�bf���q�D��[�̘I�� @ě�[�u��������)�����}��x��M�eV�b�RY� �&�Y4�e�u�'�Jc��p�:�`��ȓT�h�:嚔� ��O��⫯ `�q�~�x����F�����߿����      �   �   x����
�0��s�{K۴i���j7NGU��Od��؍����@�n����M���Zj]I���ĵ�Z&����sN��a�1B���)��3Nh�!����L��H���$�S�Z�㒻�s�f�q���o��B�1�)O����-9U"t���U�X/�H�~�"� ?s�      �   9  x�}�Ao1���_�8���3{�=Q8 �r�KUivm'��ViQ�'���m�3~��1�s���͵yU6_Z���n�Y���-?V/zןW�B��iJɱb��h���JC�l =�Ѧ�h��"��T��mE	WϮ���\,�b�9����������Cw@
G�8����-9�e8���� <2�>lE8=%Y�Y'i��y��
�����;���sU WZ���ARNYH���b���Ϋ�l�ە����y��Ssڜ{6�HB�#��c�)�c�GIF�J@�:�.O�@��kBͪȒl�,�EȌ8$u�I�Żm��vb��nw{����z����;�w�F�q�'�c���<Hb�&�6���I���V�j)0GME�O3&`Γ-9A��|�2�4��e�s��&/�9/��������f{D{�/?���,ގ������\rI���}��J3O�
ѩR��j��mG���+0yB�b�:�Zl.?�<yX��1��η��(Pܧ�a�9�ߒ���%�!I1�jj9:v�%*\�EbL���Hh���)�mS��fc�.���~q�      �   �   x�}λ�0��ڞ�Ċ���#-���1��bB�	�� �]*��` '��s�rȟ�F�O�Ms<j��6��L�F�F*���.��1/8�X:Q��ӵ���샟���qi�:PEN��@���$?�>�� �3j��&m����g�2��]����͇B�kj����;6��9���+W�      �   �   x�}�A
�0@�u�s��L2mҜ�̀!-� Z)�2.=��⽤�S���?��)eV�Xۘ�!��Er�Y���Ո�~{\�����Q~#��i
�7\#��^R���.�t.��8���y�A����:�	�kDp� �r�<�      �   �   x�3�t?�-%5[A#=��R�8�X!)3'5O!�𞢜ԣ��=��H�Ӑ����H��L��\��������B��������ghIb^V��lF����2�,I�I,���~s�2Sc3<R\1z\\\ �8�      �   �   x�}�1�0��>E/P+���YX*ڡC	
���J����?C��m~�D�`#��V�qbQs�P`^���Q#u��t���돉�<'�Fx��#����Ʌa�k=ڶ~'�4p*�%8)��w/��/,F6      �   �	  x��X�r�}~��]=�@�|sb[��R�Ȋ*U�^E�Z�D����&eK�Jus�,rH����f�?��=��BzAa��T�)ɑ|P�7�VG�EU��n�]��q�b*!CA	N�Qb+�683�(�a'�Kҩ*%��M���٩���T�L���ϬJ�"E�$Er.
U��%�6����"yD�I�Ќp�d�,�d�;��Iϴɴ��e�ީ�ʌ�� BTȡ�c�D%���E-�uV�JN$饈)�Zrk����97�vT� �M����y�c��GR*��S��"����QDW-[#�5���K"�d��кs�)�5*,?���iuq%���MXT���U B�J���e�҈l�qUI�2Ԝ1���ʔT������|�wf4(z��]���&��M$7t�z�Yh�[N��$Y��4y���erSBYm�F�%������r#[���wM7��)�8#{�.�R�u��v	�h�t&c��$�UH"5�5�F�Ȇ��?�;�f�:l2�4, ӱ� <(��"�R��������$2"C��"�N,�D���_z���x}}q~��S<Y�<檑S�#{���d����̢��E�E
� Q�DԘՎD�)���eJ��<��n��V��Ζ����D�2����0�3����{N�Qa��mE�Y״�kUMx4D��
�%N*J�����v�Y�*��w�q�����0�&��Ѵ�(�z��&D4�>C�Jh%$�*�0b�j��k�rv��RW�=>5���B�Lx�"�L_�гm-��{W[�eL@�����QaXh���l+�G!N�JQ|�l$��skE�z%�ٳ�9�|����7Ԛ��_���l2��'�p�P%����2��XP�
^�ȵ���C�n�Y#�
&Ō�`�V0r��d��<�'�.7�a���y�]��Cq�u�E�K�'�9ӵ��<4-����-l�8����Ȁ`SN�b&�
��.ξ�
�_����<m��ϋ���_f���}���f�3;{wq���Nqe޿�_�����x�����a?�t~z�}x~x��.n�Ӹ�����K�_���ӏ����:|{�>n��x���~j���{����6]��N��⏃_?����j�K���R�x�n��	���I���M�I|����E:z�●rV>��>>��6�vK��4S�`��,+`�P0�)�0o��ۇ2?j�z5w<��W�v�n~U�zUq�����`H�2񡤻g��]���F����H�ea�!��J��K|�0]UrPp��iI)k�f2i)����oBw���dZ]��A�I�%X!t ��+�P��>��bC%��~��[p3H��G���;;��ǣzR[�O������ِZ�sxf�2��<�Aݺ��Qd4�����wM�a�:�)�Y�o&y���PkTl��P[�4X�1�#�O&Aɷ�0W�3DVř>�(��)g�~���2/�h>a^c�M���G4�ް���ٷS� ���]�'����Y`��WE�:dQ,�(.���#��(2e��A��,sB1(��\�Z�:CM�:/�|�h���AI�N�x�s��d�F�MN=�$�) gW=v����`L)�@`/0I�Y	Q_�Т]*YU{�!�1t+�,r7�N�܈�ע�1�,j=(٧�dTV�p���vZ�:ɓ���J-�Io1z-p�ރ@ޥʎ��%a";֬���V�zeB`CW�ذ7q
V�����ĳ�7�"�?���˷P�<�|/BS�F���	l�� ����J���B z��-1;S���B�$
xh�D-� f �<t�
Fb���t���K=�[������~L�k�	�{r~���e@����2<��&�m*H�m�/h��z�c!��UI*�t�H�X!�[@= !H"S3t���<�d���f���w��&����)�1Hsw[�X�-�g�^�ܲ�`kq���Uv>�������4�ABx�l�R�|�M�RYpX�����^g譽����"n,�]%Yl1��̽����7���8Ŗ7�C�h�N��{K2&�xA���bԄ6�uE�}If�� s���Hd�(�@�Σr� 'Prk����;8��Lwc2}L��7*���)�;���QwX�`�59�m^]h��\ ��c��?PjB+���X*���-��"���h��c�k��
&�-L�`H=4)������c�*�8��Nu�wE����$�1'!ơ���e����ؤ 08�媓�cG��,�w�R҈]AI���e�k�5��ܠ�\չ��E�@ �xЅe�M4;!K΄б b'1Ɨ��.�IR��S��_@�7�u~Q�Ǐ��o�������<|[����!Ͼ���b�z����lq�({'�$\'�|2;>_$��I>}%��-ڛ�E|�J���{�|�����_<��~�_����_�W�����z�?.��%�^Űo_&q���/�ֹ�N�G�8(���*��]͏�GI�wsŊ�!��'���Y6     