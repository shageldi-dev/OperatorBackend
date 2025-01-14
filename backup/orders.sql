PGDMP     4                    z            operator    14.4    14.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    213   ��       �          0    16454    customer_interested_product 
   TABLE DATA           �   COPY public.customer_interested_product (id, interested_product_name, interested_product_size, interested_product_color, status, created_at, updated_at, unique_id, customer_unique_id, operator_unique_id) FROM stdin;
    public          postgres    false    215   �       �          0    16460    customer_order 
   TABLE DATA           �   COPY public.customer_order (id, unique_id, is_express, created_at, updated_at, additional_information, customer_unique_id, operator_unique_id) FROM stdin;
    public          postgres    false    217   7      �          0    16466    customer_order_address_history 
   TABLE DATA           �   COPY public.customer_order_address_history (id, customer_order_unique_id, address, user_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    218   T      �          0    16472    customer_order_courier_history 
   TABLE DATA           �   COPY public.customer_order_courier_history (id, customer_order_unique_id, courier_unique_id, operator_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    220   q      �          0    16478    customer_order_date_history 
   TABLE DATA           �   COPY public.customer_order_date_history (id, customer_order_unique_id, order_date, order_time, user_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    222   �      �          0    16484    customer_order_delivery_price 
   TABLE DATA           �   COPY public.customer_order_delivery_price (id, customer_order_unique_id, user_unique_id, delivery_price, reason, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    224   �      �          0    16492    customer_order_location_history 
   TABLE DATA           �   COPY public.customer_order_location_history (id, customer_order_unique_id, user_unique_id, latitude, longitude, reason, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    227   �      �          0    16498    customer_order_product 
   TABLE DATA           5  COPY public.customer_order_product (id, customer_order_unique_id, product_name, product_brand, product_model, product_artikul_code, product_debt_price, product_cash_price, product_discount, product_size, product_color, product_count, unique_id, created_at, updated_at, reason, operator_unique_id) FROM stdin;
    public          postgres    false    229   �      �          0    16508 %   customer_order_product_status_history 
   TABLE DATA           �   COPY public.customer_order_product_status_history (id, customer_order_product_unique_id, status, user_unique_id, created_at, updated_at, reason, unique_id) FROM stdin;
    public          postgres    false    231         �          0    16514    customer_order_status_history 
   TABLE DATA           �   COPY public.customer_order_status_history (id, customer_order_unique_id, status, reason, user_unique_id, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    233         �          0    16520    customer_status 
   TABLE DATA           T   COPY public.customer_status (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    235   <      �          0    16526 	   fcm_token 
   TABLE DATA           a   COPY public.fcm_token (id, token, user_role, created_at, updated_at, user_unique_id) FROM stdin;
    public          postgres    false    237   %      �          0    16532    find_us 
   TABLE DATA           L   COPY public.find_us (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    239         �          0    16538 
   focus_word 
   TABLE DATA           O   COPY public.focus_word (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    241   Y      �          0    16544    inbox 
   TABLE DATA           �   COPY public.inbox (id, title, message, link_to_goal, is_read, is_delete, created_at, updated_at, unique_id, from_unique_id, to_unique_id) FROM stdin;
    public          postgres    false    243         �          0    16552    login_history 
   TABLE DATA           q   COPY public.login_history (id, created_at, updated_at, unique_id, user_unique_id, type, device_name) FROM stdin;
    public          postgres    false    245   V"      �          0    16559 
   phone_call 
   TABLE DATA           �   COPY public.phone_call (id, phone_number, contact_name, call_direction, call_time, call_duration, unique_id, status, created_at, updated_at, user_unique_id, call_state, call_date) FROM stdin;
    public          postgres    false    247   \Y      �          0    16566    role_permission 
   TABLE DATA           �   COPY public.role_permission (id, permission, can_read, can_write, can_edit, can_delete, user_role, created_at, updated_at) FROM stdin;
    public          postgres    false    249   1�      �          0    16572 
   sell_point 
   TABLE DATA           }   COPY public.sell_point (id, name, address, phone_number, latitude, longitude, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    251   �      �          0    16578    speak_accent 
   TABLE DATA           Q   COPY public.speak_accent (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    253   �      �          0    16584 
   speak_mode 
   TABLE DATA           O   COPY public.speak_mode (id, value, created_at, updated_at, status) FROM stdin;
    public          postgres    false    255   ݬ      �          0    16590 
   speak_tone 
   TABLE DATA           O   COPY public.speak_tone (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    257   ��      �          0    16603 	   user_role 
   TABLE DATA           E   COPY public.user_role (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    261   "�      �          0    16596    users 
   TABLE DATA           �   COPY public.users (id, fullname, username, password, phone_number, status, user_role, sell_point_id, token, created_at, updated_at, work_start_date, date_of_birthday, unique_id, user_number) FROM stdin;
    public          postgres    false    259   ��      )           0    0    cancel_reason_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cancel_reason_id_seq', 1, true);
          public          postgres    false    210            *           0    0    courier_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courier_id_seq', 5, true);
          public          postgres    false    212            +           0    0    customer_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."customer_ID_seq"', 4, true);
          public          postgres    false    214            ,           0    0 "   customer_interested_product_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.customer_interested_product_id_seq', 10, true);
          public          postgres    false    216            -           0    0 %   customer_order_address_history_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.customer_order_address_history_id_seq', 1, false);
          public          postgres    false    219            .           0    0 %   customer_order_courier_history_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.customer_order_courier_history_id_seq', 1, false);
          public          postgres    false    221            /           0    0 "   customer_order_date_history_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.customer_order_date_history_id_seq', 1, false);
          public          postgres    false    223            0           0    0 $   customer_order_delivery_price_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_delivery_price_id_seq', 1, false);
          public          postgres    false    225            1           0    0    customer_order_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.customer_order_id_seq', 1, false);
          public          postgres    false    226            2           0    0 &   customer_order_location_history_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.customer_order_location_history_id_seq', 1, false);
          public          postgres    false    228            3           0    0    customer_order_product_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.customer_order_product_id_seq', 1, false);
          public          postgres    false    230            4           0    0 ,   customer_order_product_status_history_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.customer_order_product_status_history_id_seq', 1, false);
          public          postgres    false    232            5           0    0 $   customer_order_status_history_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_status_history_id_seq', 1, false);
          public          postgres    false    234            6           0    0    customer_status_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.customer_status_id_seq', 5, true);
          public          postgres    false    236            7           0    0    fcm_token_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.fcm_token_id_seq', 241, true);
          public          postgres    false    238            8           0    0    find_us_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.find_us_id_seq', 1, true);
          public          postgres    false    240            9           0    0    focus_word_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.focus_word_id_seq', 5, true);
          public          postgres    false    242            :           0    0    inbox_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.inbox_id_seq', 14, true);
          public          postgres    false    244            ;           0    0    login_history_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.login_history_id_seq', 239, true);
          public          postgres    false    246            <           0    0    phone_call_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.phone_call_id_seq', 278, true);
          public          postgres    false    248            =           0    0    role_permission_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.role_permission_id_seq', 7, true);
          public          postgres    false    250            >           0    0    sell_point_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sell_point_id_seq', 6, true);
          public          postgres    false    252            ?           0    0    speak_accent_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.speak_accent_id_seq', 5, true);
          public          postgres    false    254            @           0    0    speak_mode_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.speak_mode_id_seq', 5, true);
          public          postgres    false    256            A           0    0    speak_tone_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.speak_tone_id_seq', 3, true);
          public          postgres    false    258            B           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 8, true);
          public          postgres    false    260            C           0    0    user_role_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_role_id_seq', 5, true);
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
       public            postgres    false    261            �   Z   x�3��H+-NMI3�HMJ��26��H+K*7��06*�4��--NI-�TH����TH�I����4202�5��50V04�!#=ss\�\1z\\\ �1�      �   �  x��RMs�F=S�B�8�n��Ht*gZǲ��e��(Q��:
��r�$M�:�� ��=,�[��۰���x_���~Z�����s��Z�HsMDĈ� >F1A6�$��g�����q�	\JE6��^��&��M$��!�-)F+"�M�>��W�aM!�S7��i<s����*��K�P� .����h�D��|��>�O)��E�A�4gD�,�\��3E���"�@2g8� MQ�䭎�,����#N�9J-�o?��K��1�9��`0�ғGc]ím��
H�ʪ8�8�h��7�|��ÿTH�����0S2%���	g�
=�(���b0��ָ^�1�֎�s�*c�y�*��*lCe$	qf$�y�n7�v�3��,�9�+I�Mv�����mi��>�2ǙH�T2�S�g�uq�6�xJ�Z��&�N�K�
�-u"��]u�ئ��=�]q�l��_�Y_V7+�ZW�j�����6����Җy=-��;�j�xp�WX/�>��]}zGa���˰s��}�^��7/7l�-��~����4�ճ�}��������׋�w,���fzs�5|1�ۼwǎU�mC�7���ooļ{'�3V^X�_���a/����?3<TǗ3v2�\��⡻k�0��f�G9���>JQ      �   !  x���_��0şs?E�Y�$�$M���� ₾��Ϥ���^z�,��f��"zd 	�!�7�D��a�O��qb��G��c_�#���}+{����5��y
s`�q>���F��e�<�'��2���aJ(�\�N�N�F{�(���v
�[ft��J�ݚ!Z&K�E�&c�Ei�I
|2�ɇ 1�dvY�ĆꟆ~�#*��P=0�R�>��)��v�wz�ɮZl�R��~�.���߰Mg|���z�'6���P�+�a�Zp!D1�	�C�%i�	�wt��,-��i��Q�76���p��)�˅�xe����3�'�����R�q��4p��8�畎y_���m�6��S�p��Mu��f~���#������RvJu�m�WuSa�r�����.y]�S�6��Q�W1{�Tt)@p��i�J̱6��g�L]J4�� ;���$A�����8�\Gqm�E`�p�����H{U/�4PZ��ߒ��l����%��dc���9�:!�G�Y'k�"S�B&��.nm��wal<      �   d  x����n\7���O��@�D�.�dQ���nDJ�;�6(���ha� -0���ѽWyxX�w�i�_����2�z`A�� �}��ؙ��_���6%��,�'���ʈ��8�i#o0��oWR�5x��̫T�n��� v�1�$�[mt����i,�uw��e��е�Ǐ���Ǉ�'��HH����?���q��e��������(����bp�H\5�*��*�:���}5hc'.�
cW�4L.����[������R�v.�\��������U�-/�U�`̨6��W�;J��C]���ʭ$x����q���VD��X�7�u�f�%�k	�C6����F�:+ǷI�����͊~'v�Y�`�)�2�Ca�����a�FYv� h"�β_~�:͕ip�5�?�O������[��_�~�1⹖�^������[RTUt��N=�DK��e8��R��{�}��e���Z�ʭ5ܾ�����z|�fD��Ft��;e�]���$�E��ۂ���Xx%1.H�2+�~���IL�ZO���x޵p�e��S~)_�/�^�q��oSf�R����{x�6i,6����f=�u*��Z/U,��,W�j��p�#�6�k;�6ڎ�t�b���yZ����*9��;O$�$DA�|��y���0N��Ğ��n�i0gX~.�94g�����m4_�f�������9���|���ϥ�rz\���xkIѰ�Q��*���g�PM�lP�yK)�I�+����Le�K/����+g6 s��8�F �E ]I$���� �^ڐ�,��w�}����)�7����.ӝA%+�k�*z�0e��[���m�N�r:����13�%;ze��������ݟ&\�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�u�An� E�p
.`cl"/s�nH���-b+"���R.ѮP�UK]tQ[�Փ���#�4�6��6����&$�� �D[I�d�m'N\+u�)����-���j.�>�&��x�0nfzL�F��7�$vٜn;V��%��8U��:��.[����������6z��Z^{�
8�;���6�ƫ��a���C@������S�$tMݩ�� G��qJ�:�h;      �      x�՜ǒ�:��}��/ r�rαUS�R�DQ9��PR۔`|{7.�7���p R���s�'�&��{v&S�z<O'���9�� ��䟔b�B@.m����ٝ��!F��a����es��O��i����9>	�2
�6�m�|�w��n�k�'��Gg���r��jL�a&5�e��7��D�;l���~K���9s�<�����m��b�S�s�R��9���5�;�'�����x*[���`WL��R�$n��!��y��Co�]Hk7�]Y&�)X�ܼk��v�O ?	�rJ�6��2��2���+���v�}L������6��z��ذ��.�i$�_���������j��`���u�־�׫���`��B��8��+8;̝夜��F���n�{�~n:�`M�#�cb{�%I� ���{��Q��b���s�%��[��'���E)��P�v�\��ݯ�l�{��a=wV�\g��A�7�r	6m�#�%~A���'�Q�(ަ0����
v�+)�:W��S-Q�κ�۔=L25V?���})�+wp*O�b	V��2�j�v�}�v��7��D�����<��l){�7 >�ȾSaN������n��L��.?��e���eaj]KӃΙt�i��(���w�ʠ�.�O�n�)�"m�!xCr��j>K�mD/?��խ�h6����H�n�!L�&	S���[:Cp��^5EQ*�&(�����W9��5ډ�oK�ڮ��@�h:��	���H>�a��*���^�۱Q!>ؓĶ�O����� ��u�J�j������)��@����'D*i!,�H�g�B]��4����R���B�|���̚�F�%i*�������#��j��+��pW^:��~'sN�r��f_\�\�i�'78�7$�:���Y�F�����Z&��fM��Q.�k�[����M%�Ld�������9^Kw��>#�U}2JC�ِ���f�Dҟ;�Z(�R"�H����x�Ʃ���(dPfC���hA�蓐�� a+ҷ�>F�ù_P�c1s�l?�����W�x�(�cy)&bV;tb.�,ŭJT���|��ɵK^�R,C6�ƺK/���]*5�c�I3�ZΪ�A0ʞI�T��d�Fz޹�uq�U�1�۶0sHh��
�Xa�Z�N�:D�Oǰ��	��4�	&�ϓ�55����'ӳ�M�$���#w�N��ޝ̟����@�?���F1��'�	I�s,$���]��7�� ��T�l�g�#����qU��XDB\�ј �1��ł�h.��-�pA~�Z�K8?�{��$>�^w�p0+z�~�}�};'k+8��<��^&�[��L�f�n��6�j�2l�k�y��%�3r���>�~����E���%���h�������}�zZl�n�y>�J��c"" �		 ���q��lL�_��ߍ�Oȣ���VG~v5�#ܜZ��~� �pn��b�5����\�[�0�{N�T���d�8������b�򶺉�N�۽�E
i���z�F2�t��Sk�3h�r>���W�u�&�y��-���M�C�ѥ�6*�4?D�UŴ��&EQ�g�N>��8�M�����D���OB}/@�l�gcB>^����H��%V���~=}4��u�r�*B$7����v��e��)�����Ym���XK&*�M�<-�`��Oxp-9�r�;OcgW�9�����2����l�G��yz@$9|]e�k#x/#U����Myp+A�RB����U{�o��ѽ�o�U�^i,��Nwz$�}�Ս�������Ɵ���	T��|j��j���6��1�nb�.'��&Z$�y�?������ަ�+�=�<�(۫�H��1\-N�6N�����8���2�Q��,L��8����iD���U2�rp)����ft���x�0d��ON�bo���X��x�:���v��1���&� ����D~���#:������A>���ayq۵U���!�Ir#��Q-3��t9����4V�g��o��Ԭ�l�19kz{\������)'9���R�_��͒�tp�_^�g�Y�,/���|��J�Ż-��0Fŭ;<�z��K���$������Ƅbc�		�X��1Qc���l՛GoL�7rBG�=1���"�tk���T�sW��b��O�a
қ���j���lClS�� ���'���̥@�q�6_u��6I�fow��c�9w鯮�ND)��'��TX��`ѹ���x��s�Sb�6&H���B�ۆ~6&�c���K4�˪W��c�I�}��xR��Ƹ5;��2	{�.�6�˘��R�^�?���;�[`�lz��F���22*V���:��&�����&�g��i�����b�؟�w�,v�R<�Z���_Ll��cy��ڴyM���ۘ`���(cnC?�1R���?���ه�M��JԾ��Ia�b�Ⱥ��x��X"ޝw%Z��#��X�o�%L·�:s*x���_HT2�|��^��Eӗ�mǓ�~jQ��3�јVƕ|őӪ��>?+�Yu�}�r^ww9m���l������И��>�� &6��1!�	L��(E dC?k�~��¹���&�F�[�K���!���������j��-�*��rm1N�I�j��1Rα����� ��|�܍хw���۬53g�v��]3���3�Z�/Mヌ���{�P���e��nV-.G�deT�z�E���r{�1!~i���B+�٘���Wo<�\Hs}�t��d��5��u��_7�9pf�������/�d<�ȕ�ǘ���V��S��_�,�;Jc���P,^��Ӆ�`ݎ�f�\z��^�ze8H@&��VY�qc28׼�j)�G�+律�8?o�ŒS����ۘ���F��i!?�>-��ۥ8
��B~֜7��0�QL���bZ����ʁ"�FS�@"*!ې��x��=��O*��aĭ�G} ��_�U�-�� 4؇0��i%YN`�,D/���M�IU���0����#�P��bHE6���o�ԯ��,@�9�6��do��o!�:�� ��0�Kr_�5N~�?����X��;�)��Ӊ�ݹ�:�ٝx�����\����е�z�h�B����lC��O ��@^���
ކ��B�LPI�#,�H���]6��A�ga��?�`��//�ݜ�����H]��!�ec�$��5�T�"$Dz�7�O��=F)�,p:�AzI�����` QaCzI�/���I�*[��dKlC���[~Ǳ��S��o���������}�Q�DmU�(���{[2�8�w��C�lH��0I��,��"�$4H�,�T�Ć���$I�����AzIl�TUG�|�H0D��%ߍ��9�6��|wA0�J����^��$y`����r��a$H/ir��졟?�W��&T�ц��F�P��� �@zI�o$��'��%-�QE�`V���Ls���4t����3�����H/i��*"�z��Ŋ�B��������H&���<�^����5d�ѿ�es����%mΑT +�Kj�����W%;{�@/H/�u�3��*�=Q� ���9�8��I���Z�<���}V� ���9�8I4���%��y�	� �K>�^R�g ������z���r4H����=�qjQ}���Kj��SɆ�����F�AzI�{��xBK��KZ�#$��u��%-� plEzI�{$��W�/H/iq��a�{�H/iq�D�R��KZ�#�aVށ�U�u�EU�3�4-ޑ�Ć�DM�y���(R�DM�{���d�IDM�}��j�B�DM���j�[4�zJ*C�=��z=���RG4�z�Z���2h�=�$R�T6dx_[�G %�N�!���G�@�n��:Ƞi�*'C��2hZ|��L��'2hZ|�1�H��'2hZ|�	P{o2hZ|��}�} ���G�BJ�bP���S�G��'2hZ\�Vk�~`qg����Adд�H��2���AS�"�?n�Vd�Ի�( ��#��z=!F��DM���X��u>�AS� �  G �T��{4�.zR���Ad�����Dx�DM����z^��W%�9��X�AS��g����A��"��=�< E��$��0�dдyH��ߤyGM����8�
�A��!����DM��$��p�OdдxHB���:Ƞi�D@�	2�R�2ߥʏ��3��_����(��Z�o
�/dAJލ���Z=�ʹ�����Z=	@�}-zAM����jC:�xAM���ihz�AQ�g$Ƞ�u�3PU����4�.z
*�����?���q�<�#���C�@5b�{�DM����kCM����xBϥ_�A��!9=V|AM��R>1h>�A��!��32hZ\�T�0��1�IhmAM���*��~�j��,|����6Q^�^�AS�#�I�Z����"���G�@�B��d�����fL��Ad����ȡ��{DM����=2xAM������#�d�����G@e��߃Ƞ���#a��￑^S���3�p=���z=	��3�d�4�HR޻� ���G8
�{�DM���@�ph�"���G�@����Ġht��󿼢�IOd�4�H"�`BUH4-.R�B�h>�A��"��B?;�H��Y�;���	�2hZ\�������s��
����|fCM����D��
"���C�@�`h����z=�����z�U�M� 1(�=�󷧡3��z=1���|"���C�@�Y����Կ��T��=��z=�ܠ�@M��$��0�Ƞiq�jU�"���ERr:�|AM��D ~��F�@5�.��F�@���Vd�4�H�WCus�72h}���ۂ/H����/|
d�2h}$TQ��r��4M>B2��ĺ����&������M4M>�ն"���4M>R��//��Od�4��H4�+Ad�4����!��� ���G~ "�pߟȠi��������������ZB�#� ���G~ �?�xCM��G�0�wbP����yЬp�A��""�U!�A��"
h��dд��"~%�4-.��@��EOdд��b��A��!���=�^Q���3�2z��4-�T]�>�=�A�� � ���� ���C��Q�H4��d�҇���X���i!NIl:�~j'���7n7�I�[�p!�㐤��jg:���kg��.�����6��r]������S'�W�s��&�w��w������+�S��Ҵq=��ő;��oK�)�cw�@lU���Bփ�Z��K|�N��o��,��_��~���|�	��J�_�0�x0C���.�g��>D�)A�?��!��{�x��Ǳ$��w$�Ƞ��!��kV��g~A���6d�|��@������6���Eq��Y�\`+2h�g	�~�*��iˠ��Ƞ��%����zs�4߳��NŲ(JlC����}�F�����!���J����w� 0X��AS�#��\L�)�5_�AS�#�����!�1F�w�_�ߗ jz3���>���/ͩJ��w��H�I��8~���.VO^�i���L�i|�u��T���ݒ����"{�Hk:��wus)>[�S9�w�ˌ�ۯ��V��7�b�\����^�y��+��)��c�қ�F��z4��jn�y�g�9'^/���Y�k9ʎ��y_9un�Vpux��_ApNl�_#|O��H����I
�G�a���D������g      �   1   x�3�����4�4202�5��54V04�20�21ӳ4332�'����� ��      �   �   x�}Ͻ
�0������XSs�G�\z�]��� ���:yc-tM�>��	h��"*+S
˄�խ�+mr����I�s��~�[�e�Rk)��YG��^�ݻ�����4'���s���x�.D�t�I?��8�{pч�����"�s|pD� �P      �   @  x���K�ED�5�h��"#2"?u6��L��vOK&d3-�5'� V2�7�6%3֝3����^�<�j��ݏߏC-��x�����7��q������xX.�\ĉ�K��u��1���ùD<�q؜�"��T�h��\	�A����9�-[��U�Y{��K&�9Pu���ޝJ�c��q�/������t~1�o�y��b'9�<����O���ߏ}9ᡷ���X��x���|'���.�k������R.o����r��P1���p)���U/��~z��o^��/�`1��6���#X�'�1�y˓��LʹP��������}�C1XH���*���j�Bt���z;��;��|��6�k���K+s^\i�Y��#i�B)�L���͘�<�Y�T�;R%�j�d�I��,��e7�V��B��W���!C+�X�u,�V
c ����s`+m�0�,l���X����c�A󡑤�*j�TB��q��g�����l� �3z*%p���,	�����*�yE7W���s��a����$^�/A�xJI.�(%ɝ��<�^:i�]�F��F�F[<SHZ氤���,��T?u�JN<��f'ͩQ��a��S��ή`~�B�K!W�on@PuOio��¦|���乍&ó�w�n�z�J/aHt�;|�{E�P�k�#��#Cpզ�,��"�!���Ջ��EF�l���2sG.8��GmK0��;�d�2	L�偒�,$2�vEB6�eO�`�3�Bġ\�U5-ʘ3�����(Ӕ���!��hZ3���V�n��:���.uDo�q*�'�<0�&~���I���).����+���UG�F�%Ҭ�Mk9Qɂ>�F���(#�N�2;��0�����v� yu��� aɖ���H�F{��ne*�Iw�w�pKG�f4K2X�
�`��%F�u��$��$�&L0�ç4�W���S�$j-�����0��ᅣV�h�&�G�hۊU�C�C�D���|a��˗=;\�����ح*d��,nM8��28���ʱ�hJ�B�YP/
��D(�6�����o="E�H��92�o�����ݯ��[�      �      x���[�dǭ��,�B�i~�� z�ů��2�6�����v$�����V�L�H"��� ւp�g�;L:l��-?���G
��t'����8�-�͵��Z��z�ŅV�=Z�5�ُPK8BH騎?r�:��i�������~����]�?������g��g��a쏐?r�9�;��n�����s�3G��9�ޢI+�u$��2�>�u��]�<Zl͕>����r���������'-�lD-Q)�{'ʽ�ev:��(����?J��ĴSt�p��v8vN(ط;Jp�=�<�v�����`��E�a��>b*Ք;QY}:o͑����G�s�5x���3y��=���4G�9}D{l���a���)�i���?��٤;Q�a7�WA���Q�[G�3��'k?mʹ5���-����
;����%_�������?�yQ��ߏ�s�NԽu��dv��u�P��8^��2S��+n`�l|�G�}��2�f�j;��Z7s�F�K��/�����c���N�Ê|X?X7�M�_}ew���ʳ���&�`�<��#u�UI�h3�:S���r�l��E��8b���X����]ӴG�S�c>Z�C�k�����R�e\J��aaCl��Y���g��6�`��E�?<Z}N�N�KƋ������������>��Gg�X��፭� f^
?n��u��0����O5���Y��l��߉����Y��&�3�=j��`z�6u��ajK��z�����Q#��ƔaŝL�[��r����hb�Gpgp'�W��=�Ƙ���v������gV[^x�p�h��IT�ǌ.���o7��C\�V*�Տ�����3Q�a�G0�]ֲZq�V�*#��R��G�Z�����ǬC1ƚ4�j(#�lc>L�6z������H^�ro&�n��pġ�p�Z�A�uŧj�W�E���CCVqA+U|z�3�H���6����B ����C�m�h`r����\'�xo>����c�������篂,�ܤ�*X���n�����i��)t�%<+`u���^��ʹ;�jl��40�p@�P�ė���9
��W�����[���﷟��{�����.,~��~���������������k�U	D�Q��މ��f�BB�W�����Ynl��X�DbK@��T䈔0�V�<7��]���5�L,x�k��|6��e��|��4�G�k�=: hہ�%�N���H��s�W!P��7����a���,�`�ҍ��JisW��E��ʸ���^�t\?�#��1���#���9\ۜ��g��~U��]K���H��9�%c�0���6����G
�����5r����#v��Ŧ�FKֺ9������&��} ����h6���8���  "��`�{ų���pD[�2� ׄp�0E#���<-t���?���3�r'
���vb�@8�#s�ڬ�����|�8M��M �c0N�T��g5����������oE)B��O�6!	���a�ݩ��𮽏�&v0�i� ��A������}U�k����c�����kD�������B,.�	��ɀ�7��)��dϟ�Sr/;�[4w��E���sʇE'���5�8f���w�E�X `$���F��ꊘ���CۂO>r�~y}�jZ�9����?b�&�H*v�`��KR���̆|̕82r~R'�d��%Џ%�:o��q�_�?}�Ҟ	�2èݝȦ�V�\����Y}V�Fk>ؖ��X|iC>�A��� ����0�_�����ToP3f_�D�����vF ��A 0�T� }PA^���m�T�vǾ�����^�|S3z�>t��V4]b�]T2�N�p�ަ�����2�Xe;ekU,�q�fkv�����}]h�*���vw"�f��^\��O�8E8�H,�����ڂ��G��p�o!��x4�g)�����~o������Õ ��Q�t���$�����v��4+.	&	��qD����+�l?���o�]MaK��a^���>�U��z<Q�x����4@��VHV0t�$^"��Q�L���K���v��7-����Gt�v'��T�c���P���Qz�{��\�X��g��$�F�u������7���Bf9�o^��0cs�-e3�^J?�4�t��$Dp��#U�����r̹�j�)~q��+����U�/�NT���~Do����x�ؙ�Dfk�6����e�X1𹜲��N�����w5��5�܉R�z1Pe���AE�U.ģLLf�s/N�c�)+v�k#�3������75��x�ͷh�M�T"���s���a�	�1�´�m���u����u���H7!�㗿��Qq�=��W�̝dfgG1B�Eu�*�?dMs)� '�����y��,�@_C�b��A��n���?}��@t?b�(�P�Dk�eTo{��*�"�p�PB"X<��ޏ��f�ʟ��=s2��������.B�>��l�(% �Z�@%g+�0)�z�x�P�z��w�*$C}W\@�]��_�`�k��3��gü�V��dH4G���z�'�x�!½	�Q�o�%�Vz��JK掃֛2�ުH9�E��#�G�2�t'
e�<۹����kno�)>��'ssMc<\�Jpp{����}�W�o��"B�}W�%r��tU�Y��i5����Ŗm�[�a�as�<�`�[3����.�b3v���wf��ZIi��NO�L�9�Qd�x��"�s�6���ё�`��!)���6�#ٚ��f�{
Z�_r��S>�=�U$�H�=aK%�[�6.Ή+±�r��	�����X��l��[�`���[����t��M��V��M�s�8t`��W�Pe���.�5�6ѯ�pģ������4~���?~����?�?�~��������ܿ����������6}S��t�Б���㽭/���FТ���ZhHk�#�l5�AȼnU��%W�_�Q#�>N�������Q��^(��hg� K��*⸻|��k���Нn0���R`e��}����&�?q\�ߴ}
<Y*Ɇ	�)�oE9{��x����G1â׎��s��H皎Ȭ�('?�&�HH׽�7vsH���x&t�'>�; "��u�g���@��c��*P3��e���
����N8����_�h��>w�Z�}��5C�K� ���g��R�)�B��X�?�K� � ���JZ_�o~)���|&*����T���z!2��0>b
2L�4�n��r�0�5~۲����1���a�����g)�W��ݨ=5��(럔{!��W0���܊n��v�N�L�o~���:�/ S/�<¤���J��1W���J�1\��"*^��t�+�8�'�RX���(�`�k�2u�b���
�$?�း�;��2�٢Q����|'�=-O�=��ʏ�$P{�y��Z$Ö����l  0;~��L�w�f|�r�1�P!�>	�x'�c����:^.�b^�hKvW����V�h �U~#أmUH�T���q�\����'�&+��!��쪫#B^W�1��*�S�I+��r	o��&O܃*̣�S:x�=����}U��"�؏Z�v�JJ�n����c�V�UL=�\S��6�>�5�`
=hF���($�����[��B`���WQ#b�� �:d�*�2�w����"�Z�T�j��	�z��:��*K��-��/VL�K&݉�n�j�m�&DoD.H)����<vV90-^�x����K��K��#�+���iw�u�͢�@e�`2蕀����h�cwų�iO�:�Pgnk��K��m�V�S�z�
��!lU�����g�,���z�Sa!�Z���%���Ɲr��Es+Jk�A�k6'|M�3U��c�qAWvy�8U?l�񕞛w�x\ѝr���3��c�Pe����ae_��3M?�~h9|QXM�Q��)%�r�XU�܅�^k ��ov�!* |Ϻ�'�� � �d�ެ��κ�tLQ\���Ygf5��]���� ���    �%J������b�EI�@d�: �L��G%�U�)\�V�U�L��r�ܛS�so�~�L�f�A#�˷�u
��+x>H�aps`��5���)N�h�����ro��X��E� J~�Ĩ'�<�ϵ-U]f��� #�=_�H�.�V����*��;�ޜz߿Yԇh����pi(�ϩ�Tғrh���k��I'ة(����]�q�wN�.�W,u���S�L�o��xH:�e[h{(.�U�bGۣ.�� !Oc�s��u���ޝ�O�!F&����EQ6eF���A�H�ҵgT٠.��v�|mu-��n[�kQ9R���%��u$BA �5/\np5q,+�
���,���ڡ���p2�6Q%��iPj}�?E��c������L2�Aq֖���52�Um>R:���9�)��oW�u��g��N�i�p`�U)(�U��a7R�@zU-��J�e[<z�J���
wx.�Y�`�Y������ʤ������7�90&�~�敛~�<l�և|�ܛSR	��ܧ�B<,�ը`���D�gݍ�ʁᠸ�I�6��S��L����L��]lͯ�YM��7��!�f�=�Y�r�w(W��Ut�Q4�Hĕ	�䬆?o��o�.B�	0�`߸����2M����Y��9�0��%n史��Z��.uf~x����wՐ�)�:B�l�{��Cı��`��-��e{`���hO\�@׶[F���A�������7���ʽр���=D��BAD�TyCX��P����=�v����m,�e��*J���͌������YUig��eQ��6����ا�,�U�L�ǎƬ^�fT[G�%��Z���U����D�;?W�G�O8|�>��9|H��8���D��
G����qĔڙel��v��v��}w��w��C�ru%_E��+���,�SU
�p��6n�v�[M�nה�ɀ��p*)�a� ��徇�O�I'�E{jS���L_�(�!���.���Y�R�ѪPIh�q?\]XKޮ�*4廭|Ύ�a**��eJ*��X'z�[�
>�C�&�
��Ci�%�3�۲r)�=B<4(&���8~��Ɣ�|GU�}9sh�k:�~��B�ĹMv\�9�з.���%L�Lx�Ǒr�O}�)����)���*@��ʗ�,ǭ���,�&_�6��;]����J�t�an��������"���ԕ�MA���w6Y��2(׬r�gT��,�ZM7�o����������L�4`?ܜ�ֳ��n��t�w`�y/�c�Q����yX���ʷ������r��[�ݗWY��֤VD����L���A�!�
a�ݝ�{%��\}!�9wI�}m��)WԵ�`����k�����٥\�V��w`_x��	o��ʽ1�;��3r�+ZX���Z��[�KNֹ���d�1�=�S	������w����>EH�J9Q�HF�ܱMs�$��m�`Z�p�r��VA*���44�78��IV/��/"�Tv�p�(k��_uW�fj@��0�$�w&���2�f���k��Z/�A���[Qe�8����wx+���uM�
��eeʃ)��Xh��~n_�A����&B|���!�n0O%-�*�������y��U%�}�BQ�Â�֊\�q���__�]�%^P_Dݨi�d	B���m�=�5{K���ƪvU��Bk�Q�� @�˺b�-���#�!�7���6  .��C��9^��7@İ��Z�L���-\�eI�Q�wN�M ��E�f["�nubɑ(+�	.���Y�̬;�f�>3H˫�):�?�.�2������E({I�}ڼ_l]J�mpQ1PU��[�Yu�f�n}SŢ"�Q#�Z�3���{u��(g�%D���#���eU�E 6}�S]�25�Nu)�Uʮ aؠ���z_��jO��!��ם�����T��wʝ��>�ʧN~9�5�c��Ҫ��D e�Ϛ)���і�rV��A��mç��%?��Y!f��W�jX0�� 5q���)r���`����ge�n@18���ݡ��dҧ
��O=�Rv`5}��*��$J��M�L�pI_`��&j:�Bk���Tj��n��ӭ�D�O����y->+iY�Y�lj�r�6eLz������X1��C�X�aG�.�?���v��PAuķ"<�X��vߝ�.���K	���&�M�- ^5�����VY�s��)��k��p�rE�O��O4����\yŋ�κƌ�գ���@�A�5��}k<�r��v���ּ�@}oV�!��F|�<�F�U���Rg �.���c�70tl%�f3�+ZZ�+L��ɱ���OoE(F�\�ea ��eG]b�DY��XGt*�+3�+�z|�w��{��ĉO��o��!j}�N;��@��O�x�� c$��)�eQ���/�m?�O]+M���`��M� J�7;��:��*��N�����[ð1���<Ϫ�&�)ڣ�Xs�y���u����Z�?D�L�tך��K�.S �/&e��ɲ��zY"�J��T�%U�ͥ���ѱ�u��޽Q[�1H�4����fL-P+�Rl�;��˻����(\�Xku6.\��%��M�_��,ԓ�%�@F�D_9Gu�v�+�2��v��7\�I�+-We
n'��Ϲ�s����!�+��"��,�ٲڔ�Q҉��+�Ќ��97'Ϋ`��.�s�JS��ޖ[��XE�/W�_D)m8(�5M�Ew���)�ga�]8���ʳn��j�[݋�R�%��R��
!_.����J�]�G*�ې�9�#��<����,�Z*�ȏ~ÂJG���%��j�:J��{��C��0λUu�A���|`��sٰ�3&�jԤwf��7Jݵ3K{6���Ck_���:�7;���rwU���|�#w5euQs����fp����6�]h����6J\.l>U༿Q�!ia�$<�����9�SJkY&CՎ�Gtf�S�g�;Q�S6��{�_��Ĉ���\|�\��I��JA�ƪ -T����M��e}�����|M9�u�`�fa��v_���Tgj�ş<�2��}��i�þ���,������BZ$�k꒰I	��F"ץ����
x�ˁ|MX��#'0��C� ����at�o��A�.���P����� �ҕ����b�\~�d!���6�W)�Ҝ��*�`�VmW~�p�͑������9�F�c�u{�c�%R<T�����S�f��nW�嫗AÝT�˂h�.��K�(#��g5����0M����]>T��]�س�v�m�������H\3����,���֜U������K��0f]����S�K��T��k��Yd�� ��>,�,�[���'����=[Y#�QNY���ܱ������W2��B��?K"�wئ6�u�@Q[s�,� �7tE1��p�t$�N	CsLP�3H�hb��bW��� ���<���,M�]�SwI]��L����Cm�NS����]%�ɰ�TKs�.�i߭NR���H����Ml��X*G���|�$�7g��T��~M�9��;�9�'G?nsN�u�(%�bϢ���F,K-����`@��l�p,�����/�Յ,����w��[{��?T���މ8[qx?ߕ�*�o��r]7����J@~x��BO��tG6��-:�­�^�I�P!�+	�"�'g��G]�@%X��XB���mi�N�J��-�Ȫ��2`��@��No=�j*���/��f�<<L�&*bf�4�%-�5|�\#���QN��HM��
�h��-v���S�]*���rI&��Lx�����0���������Leo�5����P`m��k���7�/h��
���N�Sd�_�ur���<��J��گ�w�X����L�\�&!Eś5�X�^�E����M�҆�E� ����#�@�ꠎn�m�&=i`�+f�Ugoօr�tj�3���0�_ǉꌽ�O|��*M��"]�#�s�|�ͤ!a1�QU�(D�����c�����qj��&̞E@    �;ȼ��;(�^��~b��q�̱`�S�^׶�C�t*5ʆ���-�~�}޾�^A�5	�c��u�|@�0���rH��Q��0��)%;Nf�����*����{��h��m��j�/�т��Vgk�J��!�,~��	�%Ϯk�)�H�Ҭ|$�P��^.?U��_.i�� X8_͕]b����vz\�D�T7���YQK�*�[���ua�f�m�߷��%�=KlV�0�sb�F�7��O���$�N��y=+�d�rBu+z�0x�[��,0�R��E4��ƪ�ӫ�0�@���6�7f���Tv�.g�&�V��B(�ET'7P�z�ݛ�%K��:G�nu��=nŀL#����ZF���V��6����������ao/��8��"[�������&$xN�t5T�ל��V?HF����h5ϜڽM|��*d.E'_D���t5\�Z"�<AZ1F�D�={���i��^ٝ�L��}'��4�o�wwڽ9\%�K��xRAx4�����U��l~��u�c#���l>MaNmt�z��,{x�@D��"PYp��SJ;5?�]�x���0V���@��lݬ����M?gΚS\�v�(�&݉���X@q1�HF}��Q�� ƥ؈ct�󱒦t�v?�����o�{_��"�ET��p���.���m8�U���S���
��J�&Q�����[�0�S�@�y���(�ᦘ~*�B�8�p+�.�,)�~�0�g���b���o9�D�R��
yܞ��:�&��s�-hL���E;���O���*���hd>�xŊ��.���7f���q�sI�}���\
�����si�i��X���.nCs4t��ߔ����,I0&h��&�5�\=���+_G�䜻$k���^)��B�'��D��c�v�q�KP�	w�w����g){��U�ýv�#}��[�g��_��K�`�4�����hO�N��5�K��ꆅ�����:�^z��0KM����qk��E��Ĉ��^��'5��lR���z
��,[��ܚ��t�ݛ��z����M�*�Rtuy�8%Uv����հd��7�Cu�xɬ�$FY�g4j����ъ�\��_D��3�_�#�`�G�����襪Tқ4�.�uBuK���a���B+�ov��
�^:���k6�>��5A��MeN�o�j�N{z�,�-���(MYʚ�6a���-~�4_{�#:5Z�K���H�^�����Z����彆�o����Մ���z�UnV������jw��O4s�Nd��~8�Y[�k^=º��u��*h�%�p��.;��-~���	$x���?T `^�س(M�G���<�c\M-�Z�Q~  l���T�wQF��{�D���/-V({��j�f�R�>������)�!���;*#���LP�:suI��~\�7��C�c��6�xI�~�P0�7�=Ds'�����hS/����,���1a��Ӈ9_���E`
g�r��?]��?U �[�OQt��.�%�V����%&��7�j5�K��"ݐ�0��� �}��T�J���+<�"!���r���Ժ|$�r[��Mm�� ����)�P�z�2��`���������xa��E�P�Æ�w������T������J�B�����1F�����r*x/e_D�C��	s!ce�5�I=�2�L�Am��4U��n��`�x�z�n��D��
�����/{VKZM�UCD�rsi�ٍ���s([7�CWAKIyv� k�v��s�Q.m؟*�^��"6ʪ݌Nwx)vl��nA�֪�?P*�H���^�Gͽ�Ma��߹�a�P���Y2UN�)��v�5��t(벂����s(��"Aw縗ZǜJ�o3w�&��ְ}�����U"�v��Q����5�$��+(9���f�����XT�Ao���R�
�U{�����fH��z�c�:� =N�b
1�0X�"z���-B���w��O����{�l�*)�i/�i�[�g;�m�[��V�w*�/�9��DK��pPcN�CN�5������1�t��p��>��x�J����ÄGε@ǅ��y�-��c٢K�[�^G
T(�B�/���v)K�{M�V\<�H@o�@��H��-���	�)�yH���!���ҋ�� ���E��f����B���vuM���^�*;
qb���<NO�e�y��vk������Uk���;%��z^g�*���J�xA�>i2�D%�
���`�D=K7L9�+�{��-���3_D;g53�#{]��"�;��Ņ]'M�M�- �W�6��?N��;������K3�wz�D��e_�E����̇瘐.���O̾j�0��F ��X�=#��I�n�b4Hf�泯��D����*�l�ij�kP��% @,�fa��j3lհ���`�ʎ��J�'R��[�.��PAD�b.Ϣ40��D��x���W�ظG�éW�#`�j)�T>�T5�i�l	0Z{�7�J�OJ�Wo�,�: 9 y���Rs��#m�R怅;|�v�����T�[�0�����K�UmW�u�PM�����JO�t%Y3�ͪ�H�`e�ߦ¥�����������m�L~����^/�(���v]/e�t؎��*�����+��.���`�
.q��L������y���>�&�Ul��E�*^hA�z�C3F�Ū��)�憦�ArU�6n��T\�9>U�._#ų�āG+�p�TR	8Ǎ�f��;��O���-V9��t���ku��o��[ś��_�?�"��jk�O��n�Գ�;�dI���*1���V��̎�j�{W	�������K�ڧ
��w��՝q���tq��&�i��Iփ>�W��R���gi�� �_�ʡ�q���`B{i��T!�Koϳ�����roz�Ly�f���}�R�C��a(S�z=�uj�Bs������m{w�J0��g�ZQ��e;�P4�
&�M�-+�͐@���Ae3�5Vn�G�����z��P�j
ܝh�\�b�y��Z�;P�P|�Ǆ��K����?��z�?=8���VFao�ݕ�B�0:7����"`c�=�C�/��^�٫�v`�f�6���4�OE^3ȭB��#��b_q��f.�ٟ*8e��DQ�ՃӦ���*���3����:p*�#Jd$��dC����Ҧ�缾2�?E $���B~>ѳ�h���+:�y0���
z�Ɵ�JgP_�|����E���/z�^-��;V;����FfS�A�.��������5D#�4e)�����D{�,y�P�� �P�R5��rNt&:���>���EG���I<���%G{�����O�7�Ks�*�p��z�`��CS�E���{���*���MJ��8�G��W���=���3w��m�}	��ԥ��{Ex����]����mC�A�V�/ ��s�߁�b������e�h�.�٨��O�RS�,) �j�:���B�z�ƨ4��6Kr#���S[��а����/N>;���n/�4��Rg�,�=p�9Iv�s� ��׍�4~*�w>��}���3���HT&�浱���rO�қ��A�v�=KZ%j���uY���ga��T4c�k�b�V� �c0Sԝ:{z�;�^k�_u��I��4k�p9��+�<��ju[g�['��Ι�pj�r~�CL5c����ʝ�*h�ȯ�� �4GG��m�b����v���	Z��c�E�4W�հ3�/���{�0��%��>��";M�`��J�&����ò��p��&�r�����7����j��[��I�˫��h�M��F�*����1 P�x�qfR�&�C;�=��6�f�(t�ݛ��C���.����'������o�"���g"���:�桅���<t�ȡ��n��ұ�P� �.�_E���4��E/0�Ƨށ���ִQ�c��6� >��j�.���]��*���x_D��>4�Ϲ��bQ�S����nh��;R�F��P�����v`hmsBf�������>���fg�
q �V�Tk�5���� �  λ(�?tK&&ic�}v�P6e�\�������Ǟ�kJ�Y�&V5<��2���t1��
�k�d�^����ԫ�����lv�y�p��ET��aK^��_��s$TcwRC�n)t'�F�Y�^�(��\�µ(���јԵ���1wwK�.]����o��C�Z Z�N)�5v���%c�zP�~����f')}��mQo _4�0�۵�4�|���_o�ݧhb��.�����5M�c�tbc>Ѫ��2?��likl�#ls�r��.]��*��߅���X�Z÷�]����ɺߩu$]����a�4x(���A��΂�[Ѷ����t��^eC��T8W�
�A�jz��{V&���@{��+¦a.��|,u�����{_�:X�)���(c��,5���[��`����2L;.��1�U/:����R���2����u���)��p�nq΍�
Goi������R<�DMD=:����5��-'��o�ڹk!�C8�+����5�[SX���P���Pda�4�έ>#�n�C�9�Κ�H`��;�� �3X��n�"�nW�g�^����b5pZ�B��n�Ub��I���������׆��Q���`wG{Q�Yd�:H��_��l3J�̱<�'$b鱤sVF�FC�LL`�R����v�t>m��Gճ��^���z�F�0���z�t�	��6�5x��t��,e��L�{�����su���X�b�I�/�N���9����
�G���q� �b�B���+�ATj|�B����M<4bѻ>Z^ƤMvAϩ[����_E����Q=[��p���7�r0��i,o�Hʓc��CU�`CK3n-��5��B�FT��.z?I|�@ =~���@O�������i�|�=�Mӄ �+_5{ú2v-}�uk��W=Io���H~FoE-v��&[����c!�:�A�x�2h�5�*+[�x�(��üǧ�]�ʏ��%�z'ʠ8Ѐ=t�@Q �������Վ9[��f}[�����Q��� �я{^��N��+J4�k�E�ڰ��u���
�����&���U���E���,�"`�k�h����ywW�ڥ�z��U�v�N���N��~N6r챞Sz��8MZ�3���9��z��8���u��n��s'�C�#��F��h�,�UA/V%E'>�A���ɏ8�l����"x=�v|?p�1�$�y��v��
�{�H.W�^p�+�\�����j��fqֳ��O�����q����uҨ�i �����z�]��W 9ܩ�;Q�I��
�򱓿eQV� ��U�sN�W�vω��\4�'�rA��m���z��(�,�ji�rc"�a�EZ�!�F;j]������7���!2�(�GJF~k�>|S���l˝h��k��9�\�W~,6XZ��:��G
jh�z�wme��d�������
^�G�����=K�\vc�ꝳJ�iHee'SixZ���%.��5Mu`ҀAH{�\���=s�=��_&��6�س>�t��ۊ-���X�������i�7�O�T9���.�9��ꁞ}[��{�O���gT��?�����՘��ˢ&��"�Wq�&�w��48�-��� ꡒ�P��a���<(��D<��e�"J;���f��(����"����sX]
�e��aʮ�2MU+?��߂�팿��������w`_W�H�xCw,E���ވ*	e��m��=5�ہ�1�|��=1�9�k���9�;�������Ĩ��      �      x���I�#��,8�XE�K@AghB�vR��՟��*H���A���d&'����*`�ɿ���]��'�e���2�	�������������|����T+A�o5�lBWv�ً�F;��ծ�ԕ��.��Q�1��>z�eYm��AY���A���K�8����p6�d����������?��:���8���������4*���רb��~\���DU�5j-������J�Y�\a���!������~�����GH6��M6<�k��M�i��N;���/��?��2�i�C�F��Zym�§��I�I�ƍ�✱{�ٔPax���J�y�g��d��'��o�.>��Ʌ�&����m_kϥh����i���m�I�9Z�N�Ҧ��6U96kZ1�F̘+e��&�^���:U�F�˘��f����Ozx���2r5M���>M�]��ݘ�g0}$��-x۪�JU�j݇��3���{�5&S�䱧z�*��!�^��snW������0�X�C��-!�Xz�������|�����-&�c�9O���Y��XevDc#���^�u�cϵUK2K�]O�s9����9k?ecJ�\->e�0��?�o0��f����*�JP���x��ڐ�z̦��V` F����%�X�-#�0b=葍Mɟ��>������/��o�e��&i�X�JrskQ�L��������{�b`x���$U��*����çF�f��1P����!	��N��D���H������G�?��Sl%:KJ0X|�6@{��a
Flƪ�m�(�Bv ��T�0���Hv �7>)<LH�㷡�-����,+�ix�d`�Ӫ��u���p��{�-��$��$@>�а+1��L�lT|`?��ɨ��k��Q��lf�Mld=U��P�NU�Gq��t+s�T{Lj�����C!���=w֑>����,H�6tmT�nT\���)ہ��̂�B��u��S&ժ�`)ay 6f���85L(���(���I��|�2���_�Z����Ka��Ty N�����l�-��0m	�iFx`���
3�k�81Q>���p���]eެO��+�?,?���^�T]�Pl}K��I�Y����� ��
���˗���[�zg�}9#�z1�}��������B��D�|wC�+�P�Q�ޓt%��\TR]�������5hn���U�<2�������^��,g��Vy���
���7������TpD6o;e��1�[����x��r:c�'����;��m�U��*���l�TlM �pˌ�U��r�M��s�Y���G��,����E��V�I�aDcF�ݰ�߱j��ydK��fl A�����L�1M�U�>B�8e]�\i E�؋�kj�ģ�VAz8��U?C7�f'm��xjB���_+�i������L�F�'�l(���r;GWP�i��h_�������6��6Ϛr�D�Q��p�s�r2�c�ξ�"Y�YA	 p4 C:aχ�&֔2Rj.�qo�,p�B�H0�iݖyV�x�{8�ő���A�L�-#���c��Ǭ-V���`��G�B��O�ز9J�c��G�Z"�^�t��l=��Xz��3��⭭OF�?v�n�8@���)�~&�s�sX����0��.T����eb��Ar����C!��T�I��]�z�2tmś|U�~��[8�`��`;9y?\�
!FH>�-3��9A�XriϏ��N��C�����a� ���ܾ|��z�&�?��@Jh6�O�%7�ʥ�AN����6�̚c�N�N��y^۩��]���f����� x�}�2���/W#��������Ұ!�V&('t� D��c�xc�}2���uh'�"�J�:�9b���ë?�$�g�������_�ywt�ɓ�FW2t'��NE݆oک�Fz��	�����x�`�lU�*�oC7�z�9����V�?<u9��_�x$��ex���&��)���G)�U��
�:���6��f�?*���փ�<�G_�n��ݨ  Y��
�r�9���=x�<$���!\O}dg2���0A
�ki�G0*4�{�c�Z��1����Ѝ�;���mvFI���6��͓�	`������lQ6�m���JF�鄫�܉5�&P{�x"�z�#H
&}�a��a������Xmj��Ps���$�U�u'�����U���:�u��c(I;���Q.=��S6߆n完�vwx��rs��@*d���N6�5�fĆiK�x�u��'�ˤ��Fc�4[�����$����S��a���V$�������TA%�	1�)��p�/��[q9�A.L�/$�]��I����?6 HS
���q>փ[z�*"�B����-�1�_���k%R�2,��\�B�E�3���K��^���;���GԻTk�<l�1���*Y�;�l���������e��[���x�P��S
l���E�,�tq�Pw��T}T4*^Ҡ�9����),���(��w}q�䎧��ߢuH\�/54#�`�	&��cǨ���4� vy"�N�ޘJ���?�|�#q��Q����_����kO�C���R��)�x<g+���<���F�w�v�*WW�P�\	�ѵ�>�Z�Vp�7�ӏHr�V�~��;�>�U�I������Ӫ�;�����.ʼtx��X�IJS0��B3��_��JM�©A��/p�|F
>葌��u��T�K�����<�i!(J��z`S�ږ�i# ��*�"�*��[HC0���_�����I���еU�}fWcu��7fy�����-v�O �#�EF>-d�����Љ 1X���V�Ǘcb�%�/fwה���)V����{wy�owg#{����<).�@4 �9_!���*�9f��gpu�	\�Gx ���؈���:�b�%c?���C�S���tzw�4�+ f`��ꥫ�u�B�w��^�{M��T&�T���r�y�F(ᴫփF������}˨o�� 7Fu���qH��'8,�.��9�"�'P	E{e��,���?��j�ݕ�q�\������7x�� �x���=om��K)`����
T��,C3��7l;�mWя�0��<ɸ��������=J�ɟ���b�x�9v��	���h.z[B� �k�ȔY��t�\4�h�}r��m8�O;����.�:�
T�0Z��2*�|?eto7!~c#��`�Uw�Vnr]jއ���.�����⹫�&�g�I�~nX��4� ���<������y�TU��6��	�� ����Y�\MB���ţ�p߆n8����x�+���k�����W4o� >�~*�NJ�Z�S�jv��=&�Z'��P�^��YZQ��Gi�c㣓�H&���е��>C�����l)���m�/'F�`9�1;UV����]{����؋5�T�~� 'Uy�Y���}l�*'Lv������y���FL�.f8���?r�1&�<	 ���yx�a_72#�\P��#�o!�+����?��<����6��+�_����m�>�bi�+�`�+�&h�:r��΋���a+� D
r���A�u�\o�����ߩ�4Sł��6
��G� �tx&���I������
�ހU`��>Mx�&0�g(�j�)eB�4GY��ӛ�`s��|�n�_�rH��!9�`��v�gW��g�(�
�Z��2�g#9���!S	���]y(dl�����>��4��%� ��a0�ܡ~���DOE����z����B���q3A.�;�0^�]�~�4���!R�<�D>)= �~�q�J��?`}oU����k[��xޒ>�a&�R%�{c@�|�<�4m�!�S1	��W�}�m����3#;k�	a~���,�p���ɌK��}	�aG�\�(�y[3y��麊�����X�7�fX'�����M,�~4*��~�ҍkv�����ۉ    ��6Y�>���}�22�aS�_�lT�����A��Z�57p���6���w=�d����w�v�ZC	��÷�+��o	_���<���H�]F<K�l]SՀՕ�� &b��DQ��^X�lR���	��:?e�CRtl��a��8�J�Y��I:��(��,{���f`Λ�����)�z�k/Dl�����Q���8O�`h9|��n��%����(p��Q������'���)xc�&7jo��*�!�1����]���Ww�cޅÞ��`V}�s�c���%���T��0{���Y��qdk�3�X� ��	f�2j>29 hbR�]O��l�a�I0��z�@?�=t�00zԄ��
�"��5�z��Ҫ�nqFW�gTi��v�/u^� ��$���0��$��<	Ow�B��l���5����ȶ��!�f��t���K|���������2����x��H�g�В!'�+�����{CG~�U��wU�.�Y'��{l��#^�'+7S��6aS�98ReL=��+~�!�!�����P��ϣ�m��i�ц�/O���t�"X��y�f+��́~�¥K	
�`Cb���:�@�L��oC7��~AE��7����;��Z![�ӹ�)��j`�'��䳖a$@���C�T�Q΋/�3����&�&a���
F�K���6�k�`�Z�)el ���4�ksV�|��{߰� �'�c�&�՞��;
�._s��Q��F�vT�a������57k���wz��pҲ�R�k�K�z�0x�^y���?��VuP�Y5j	����fwZ�����\�R����M���V���l�r
�\*<$0SѨh�Ar��ѓ�����&�y�9"3�����K�H�e��{=	sB��m��\���oݣ���Iz>(��r@����@��Pt���S�����9(��1U���Sb���ya�P��B����,��n=vFEsè-�0��P"�h��U[U�Ԑy/U  �c�<FҌ����[�B�Fˁ��'�0�KΟ��#dm��@	F]8�׷����
�Q�S#򪀄���\���\�j1�\�c*<4�o�!`���$����(윤w������e��@)�h��~%9 *�ω�xz�/Y#�k�TML�O�q-A��C��������1�1j��usI�}x���q��u4�C�q�Wۋ�I����"�000W�Ua`}$;�����5\q���0+6SKܵ�	�b��T��&Ct�P�[��`d|�
�5�<"����_����x��V4�6n�a^"0�x]��5L��Lig��`2��M����N�I�x�-�Mne1��gSm�0S�s��F�+����(R�up�A[�5�P>�A[M� ނ@[Y��n0��a !��NX~�d����f����]���Iri���Dq�{�
y&�� �"ب�Çn� ��|�*�I��qbr���R>�d	�N�kɟ��b�����܌c؜%I��IQ@G��& 5���pxc�q���9�\�BE3ū�̐)]�������zR«�j��Ѝ���S�v�< >��f�0L���Ġ�u�˘s���w���:�d�L�
8���x��>̇c$����I�e�Ӧtæm֤k]7���E�I���̶��\]�`��Nm���;����,��fc��v��1o��<�4
��Q��(�E�ާO��̩q��j��[�0���R��%F���fW�u�iW���� ��u�}�{n&��8���_|�3���`���B�w��hzϸ��h��a����K�y6衿J�X��Ƒmr�m��r�A@&,�yȻGr��xmTҗ3���Ɇ��v& 4����+��xS�p
r=����ԝ���\@?�F㊔[
ӡ�5�<��#��bӟ3������^
b�&�?�q3�+���a1QI�����Sk�R+,�t:��Yf����,�-�!{���1S�2�L��(�H���-��<u��S>�"h� �QX�C3��V�=����Ѫ���fJ�+�oQ�����M�ʮ~��7���)�xVŨ�)�[�t�E�p�G��9�T4"���X~+2kh`�� :7��A��'�k;D:yAҟ3���.���.��q�~	�j]�U��ZHD���P0��2#>1>+�$`Ny��������|����<d!|������F]���X�-P$�0,�M,?o3@��:�.	� ��6��k*�2�xga��=~73 ��:��"�I�xkO]�5S�8�<�uPy��v<��d��Ԡ����b.O�L!�0�1���{D���t8,�S�eoT����೑�o����4�����������v��pU��I/�YoX� �Z*k8�����pB���:?=�������.�_\W�[�n�� ��MIғ��Iu�W��h�闪!loYUǭZ��J�gjʬ�r���ÇoɆxJkK�Zs�҅�ZFmbt�N��fu@]��Q!��p�$�,maN��u��#�`�a;��^�db���<�FI���ѧMt6���E� 8҅U�;�J^뢘]T��R�_�@sL�W#�)��j�K�0�NW�jϫ� 8�ؗ�1������7���S��S+K8ƚ��7��T0P��S�PŃuhHAx��㙙̰S��jj�Py͜�oC7|������f�e���ȨD~�L9��h� q-c�A�ʺ�i�� ��Z��-����`�:�\����C7���I�*�=���::CF���L��RKI��et�6F ������v.�),%�ř�G��M�෡V}�'O��m�Ġ
AV�C) !�b	�@�X�@)r��@hFl3�+0���y+�b�(g�d)�9�=z_�ȳ�h�x����F�] Yp+��:C�!G���
���݃�g�mOS��L_/S�^H���P,�v6���4�;�ٖ<��Q�<��(���	Z�����a��L*�I�5X�b����|`=�zE�B�Ήj���|����A�4���h��>�|��4������-�g�0�#�W�����t���Y�)�"�lo�ƌg�J*�x�3��A�GF�n�l`�Q�#y�ya��?ncT�`nL1j �\~зӃ�;Zaf�:߲eA�F='�����,bĞT"�)�OG��3��3�ݺ��vC�*���!��Zs<ObG�YE��Y�-<�S�TY7�u��U�g,>���T�A/{>��Q<�`:��`���T��@�`|"���`�YtVC�h\)G�ΐZfu�:T=���Jf�m��j�Wp�q9�� �!�*/�eU��*1�2\Ǝ��vWH�
�C��:<mr�mYUCq ůFw&&�	x}q��u�� ����8���-�k�Q�_��A���Z�Gc��l�	�,5���� �k<��F�v��T�H��i��)�T� ��cU�c���/w��N�+�"aUc"yj�)��`B�T�jr��6{L<`�Us%r�Jۑ;6]�*/;��
h���Q'� ۘtdm��� ��$��O��L'�K��yaU���i��)�(r�껡;V�˙���%�l�� 8YI�O���� #*�y��KqJ���c��r
>��K��|>���#�O����|�����H��q{E?��fN�
������¢��Ms��x�G�o��G����j����)gXǃ�%����9����u^�lC�b,��( �O�f��j���x�O�K��.�uQ�&��1DIt�h�<�~���Z�曮z[���T3���w����2`�!@���1�b��� �:��7�Q��%���X��:eq�:�	�yK�{�t�-�K��;�]г��@TAn�lO�������˼r�0��Ks޽���e���cc���<�,�x������_V]�%������m�U~�1�e �kd�#�_�㤄4��+H.3+=V5�$�B	��X�A���OG0ϡ�V���.��Y�d    ��f*Nk�Ύc��3^.���MZĚt
��<�X���-s(�f+;;V�� ��N�W~e	���*����pW˪��~��­e����j�b�r��Ope��ek`]?���>Vu
@��G`�z`Y��Cw���VO�6s�����W�QO~��g�rO��%���/�*���i�t��Z&)���U�auį�6tǪK�.{'|�u���!wQmq�?�����,��:�ӈ��x�,�<�L�`��y_	K@�w �?Z��nY���mն�lKc4i^�b�&PX�"cu�9���W�~<9�_�d{֠s���>@���:tǪj��wi��<�"���)�Ҧ��+<������U	�{�!$���x�՚�
����Ձ�!����(C��:[7���lY���.�ek��2hlPS̏I�'�#��3	FI���]����׫k�dl��Z�	�0�^�@����K쬻}���W}0L`Go �C;g��q��y��W�>��K��'�� ((`���!hd���sm�aJ�T�})�7���@6�hM�yʨ9u5�����)�z�\сmA��'ԣ��A�aA%�i�g�\IW��/��嶊��W�����P����D�<�}���*I�c�+2s���p���2�5N7!�W��`�<w�u ��e�E`Yb��nn��cC���U���eYޡ��Ł=ENI��
���h�34��>��ݯAB�����)�%���]�Y$��]��m�<��c� ���Ƅorx��F)�w��F�3/�/�Jwz^�nu�	<D��!�8�8�[Suკ(�/
E'�S
�$u�Z����/�,+隡�wY=���f^7}?s��V��xt�.}�Lvr���%�e���p��u�jd�.���Y�2�)o�3U��v�)���ɔzQǗhf��MN>ج��hy�q�@����V���t��f��ԕm��p,<��j1쁙n��*����K� 	_I�޳���*a`ģ�ɪ���.}��*�� �V�o>�Յ�.�G1c���J�1<�a%n�0�G��ü<���U~)�X���UI{��߱���jY���20�ރ�a=W�R��v��j#���Y	��� i`��j����c ��ա�VJ�,�˷�j���*���@`�R�ت/W���-�&#�%MV)���Xv���-s�p3`���ʙ�A�>�k��+�_�5W��!�'<GӉy�ͅ��*4X-`�*u�# �"\�W��`�����5��N0p�@ޟd�I+Х|�<�5U'��nQk��!������̬b�A�6��� ���f�uXKY笌f�6(���!Ë���Y�UESȿ�?�����}�Y��F�Kg,��h_U b35b�M��`�a�bﱂ�g�L��Kb}�
�.t���CL���u�.Η֮�֓���}�XdwU)�,7	`+�$C�4��$�&��x~�R�R�M�?&��� ���0Ut	��޳�AU���f���V �T��ֺ��\Ru@�!Y��Y6:�LUO	�r[a�P�|�K��i���T�l��	���K�{��i)F'��c3������R3�+�`�S���1�?�{J`��0?�θׇ�^�#�P|Hf
�-���
�G���gk �lb�4����A/�e�ߪ�����7�em3��&2!j������P�Gt+����]]�˟~��|q��L�к��*����Vc��r@yQ�ռ<?���˞�\�.�u�[�?s�xj�!�W�{���>���c��
F�����Z��T����`�R,���3 [	`���@7-Q�>8��&�pT�^���p��%�}�2Me4۲1g�y�����3O�Y��i4�g���T A���t����A�@C�q�W�ݻ'1���z����d����c�Af�a����i@���sS��x��Y�ƙ�.�l�zu��ݱ�Ҫ��R��ϰ�^S�#
@b0)��T������-�%�)V�:hTŕ��:�/��˵|�Jr�g���U������U�ǌʮ֩LML�$��B
G�
���>hY��Nm�@yc�air���́_y|Έ���6��9W�����FS"�>�ɘf	��p=G�>@����2���Ʌ��cPַ-��u��C���Ȭu�^�u}o�.�0c�e(�e����:��d<G��B��xY�*���'�U��^��^Q����z�4ʰ#K>p>��&�UaחU����qcU��x�s���ղM��G��J��գ ��@�Z@ٟ��1�k�O���h����;�E���h��~���g�������8{��%������g���aejw`;�q���xk���� ���9�[�!����[V]:a���	ga�Xj��/��w�#L�J�Q "�un��ר<b'�����ő���}�!,�� �M�X�:$�?l�E�Ųj{�>�l������J�@ֳ02V��,����.�^������5+)��)��
d�({2�4Wq)N�-%,�7>킽�i>ex"�0൥��K�&cTM���C������\���㦎�}%�F�G��J+��g@�-�.ok�Y�.�@ǫ��2������RYz��vȄ
m�VkM��4��l�N�A�*��������ǳ�������7®���Z5��n�Lw�,��$32�p0�8�PR���6 �exi&Q4�?�f�z���n�߆���5��7S�XF2%r��g{=����itN<��O�P���p��\�*�/��m�~tϘ�㌰�����)�hr�d%�s�r�e�ٴG�]*�I���5O�%�-f�2������q>��Ee��\\�s?�[���#/b|b�I`b���fL��P7�W����
KU�zV��*65q�kՓ����Yֲ���(�a�{�����l�x���������;����,��<���u�Y7��f�b�e@��̊)PTCEz�Ia�>�1�Q��C�?�v����ȞW��m
7v��\w�,��A�J���Ǝ����)��sŶI��!Q��	�dK9]t�z�<\�r�=]Ct������=���Ua3�۳�wa?�Wu�0��*��+�,�3�\{�U��1}8��V��r�+��SZ��!��@d�o�ŕܳ��؁���w5>cR3l�i��i��(�y�")�� �����e�cw<d�� �m���2䕍ro_]1��i{��"�V��T�g�&�z���1��YgBH��
%�g	��Y��A��Y�贯�mp����˪�����b��	� ����R�������&�r�
�dQk`��f�~�\��?X��اA<��*��`L7���;X$6���+�H�!��<����[%���e������� .<"mպ�>` ��189�:O����p����.�X��f����=��Y��78(ƳAFk�׳���Q<\Z�ڣ���&�wU^�([p��!6T�#�u.q���%������W�QPO�1���y�����Zbtec���eL�Vkʅ��k��_��z5��y�9���Z��c�|��
ѱ�
���^�d�۬�Kǅ�c��a���td�k1���0a�2�)��ݞE�?\���Ms������h��Gpה�� �S�Ɛ�@�������'V?��_��-�db�Z�G����x�8�&�i?�C���Su��8��
��qm0��V��'��ö�TDC�O��G� |�+cXnI�ގ��ʊ ��#��kH�b.�<��(�cY>o���d��+a�*^�����a��V�p
(��8:2@'��M���N���%`�h����ܙ���W&��t�X��#�w�y��Ur������d�u)�WU��;IH[#�W/Cd=��t��#��g/�$�_���"==�kK���:1Cv�:4��`�h�Y�ˣ;��RT��SMa%�Y���I����gX��)�e$�yh����_��v?Y�fk��fW���T̆    ��3Ks%�&���ƥ�U��0��kU[aǸ�{�F,y�f�)1�� -kǬ�{���V����94Ӡ�Szc$�XdB}g���|6?�O��B�0s��f��Z�4k�����V����S:A��= ��ː�u)�Q~5���-iP�{g$T0D�H���@\��f��K�͘��Ep��Vm�P^9Al��Y<�u��W��
�Z��iV����*�����6��_�BL�$�,�[�5(�:]w@k����k*'o�if7�=�XC9&w..JI�uǼ��֣���4@C {��"h�Q �-�[��,0<xh'�������a������Q��u����W�����F5W��J�Ƽ�|5�7mU,��c>f����T{��(-�9`��x�t4�G�G[�W�N��#c�i�e�����Y��j���4f0ղLP���|���y*�	��Gf�.p�%�3�Q��	 HO���*��m�'�;����.���|}�-,�X���11YU�Z�^t�
�<,+�Bg�{�������\Z��Ύ�/�A`�xl�J�?����s_V]*�+��mw~(Sd-[6��N�ؗ�c6�
�,�PcQ�'��׬��E���t����Y���W$.ǡu	i��WE�_f]�*�Y���~T�U!� <�ٕ�kn<�e�m��xty3��!b.A=\�� �"= d�!@�0t��~�M�vw�d��^��=<}10�%�`مX�T�d�\������jP��J	����֘�W|���p��pZ�#޲�;��*��э�X	��]�����O W��{8�j��VZ $�1aSL�5a�N�:֫�,p�C���%o�Ƌ�z�*�<qg԰S#��edjj��<}���ʣ�&)�(ޑ�OeŎ1��c��"��|�5�G<�佩�^���D��X�b5Vd$�Lׁ�DH�ꥌ
��dUT��VsY��]����GG����c�م�4�%��"k�{.�ex���E���?�
{�j�&��/��MVR��a�y;�[�h�?L�)l�c�zXO�:KV���:�l%��x��M�W
�}�������I���螑��*֣WAk��
=*Je�@S4��`�ݛ9[	ھY�ԯ����ヘg�;Y�� �5ײ�jl�ăf��ݸ`�8�d�΂b&6<<�o��Ê�Ø�M6V[�<K�V���u�Ѷ�wL�G�v��U��%z���_��WVD�J�2+a��.#��T�B�_�`E��/�e�Y�Z�����3	3&�����PX����Ͼ��<�0N��[�H����j��`�m�q���}�,�W��\j
�-@�ZhC7� ��xn��c8�e6B�$Y��G���k��G�Knw�{�fVyp7��R�2Kiw5x��~搀<��x�¯�,��rˬ�������Ȇ�`��N-�j����8�v��3�/��O��u�{��"�J�`_����EG5!
H`+�aҨ��VR�gu��\�
����Zv��3к�-��Cd�Є7*As��gɚ]��1�M `pq����|�oe������[�CP�G|��ĕ%�������Yb��И�p�Hv���t�
;�/����5��4ve~ƕ�ؤ���e�HL�i�bW@˲�����r'��y�z�:�5�3�5�L'��5�˞[����>p~Xd�Ɲb��Ś�묐̢/���g�%�W�5���֢D��S	5�إ8��P��Ű`:>�1vb��y`��-�����$��������"�I �ɼ�a�=�y�x�_԰��U��j(G��V,DR�i'�=<�}�I�o��
7�T`'�ow�*Ǆ覿S��Y��+�����_Xͩ����JMބ�:�a���d�z�#谻x���4��u?��.�r�҆��2�w�f�g����pK9�@dZt,@bZ�팏�����y�V9�3#F��
�C��eI�k
A����<��b���2�SMb(�' pg)\cK�ŰN ;�XL(<�� �
,e/,���<�r��:�����ǵ_˕=���/�C�NX.�a�l[Ҍ>��Xd�Bt$�Ҍ��&Y;$��b�a�;�㫯=��p�q(�8	���tNշ���T�]�Pa���T�U�'3(�boI�hGtx��8��u��l�U�+5x��N�=�ۗ�����q
A��UJyZ�󁍾 �3O�(ﰶ�}�eS۴ݳ6�������}��T�u8/��{N������=��yse�[Կ�h��̻C���b��~+I#�9`N���8X��j�0��i�l�]��)a�a�T���������f^�ț�k�G���:�C��Ē��2n��9@,�� �g�e����l1���%��Y:�̎�BqZ-1VDf7���y���W7��U	V]�+a�ƦI.�,���0�
70M�C%ΞL0��{1-شjyn�wY�z����G�ݧ��Յ��vCv��g��H`����W&b�%n�VL~W�ɲ���Y+lx�����3s�k1��J�`�5f-��'6���Q�gk�4Y�ox��Mey9p �V�Ɋ_�zɎ���Y�pu`�+�Mx�\V��2���YsZ����@�kYu�$���U��Ϋw�YQ![��oCw�zq,�c����W���_X�o�T�G�:ݡ��&o`�2e�Y%��aW�m��)�Y�A�d�ؼs=�A���#�?�̿v��+
����!����v�{r�M��dD�34*�<����γ���j�w��R��X���Ri��2ݲ�]�[�����9v�1�
�?��qq9Ds��N�m�ŵ��C�=6���>��k8���=\��Z;*έ+m�u
�1mv˻��:�A�#��]��Ć��k�p'<x��i�ŭ<K��3�{�:` �e�g�个�����4]���˚1s>R� (����d�z�JEkw2$S>�F��zW�� ��ԏ�A�]hz���xf��l ����ʹd�dT�2� b��o�2ͱ�?�����}�Op�M��;J�V��!�,�� ���^����R�c'���Csj��������w�MF�5��ǘ��/�4����xd�W�%k����>�@vZ%�Ȟ	��=ͬM�0����d��βj��ͻv��)\�� F�酵��8cvȞ|3���iM6߆�e/������@��bدmP�\�8�ك�]�\�<\j�9�}�V��~?����dm�.�C<\��7�hi��Z����f��k������f6�늞Y~�}X~��j�b�m-[��A�r���,�<�8)�oCw̺��V��m�<˚~<��<ja-�<��2�1VFb6[ Ef�z��kz�2/a8�˪���ȯhYȍm���󎠱�#���m�E�_`�6��k�į<IbOa����Z�2
T��m�L�/�qi�2���Uv5^�l�w�\IL����˪���@��k3��t���P{����T,�v|Q�	L��*1ɯ���]��
��6����'y]O;F!X����e�EJiX"u3WĹz]���T�,|��m��7�ŁY��*l��2$�pd���=[x��{����|�����Uﲍ��?;�}�
?!��i��)J:��Ӳ�>��̪��ݲ��f�����4')L����`�[⾲۴���Ց_�%\V�/V�U�sv��W��J#�,[�tP�֋Cch�t���b���cjY��؜�z�.~^]��s��V1��F��2�ޘ*�p���a����M3N�u�D���;�ꑫ��Zy&�p��}��>�7g��4W,��Y4�8�]���_Q!vo��a�$�k}�?�U&�9#{]�	��H�g��$W���zT�w&@��^[`���di�0�V7ۭ�����U6ϛ/#w��_�.��T:˓�?1($/*krK���Q_l��mXd�Q���>�֝7��6�A�x����9Y��sY�>e��O��ׇ%E$츅K�07���Q'0�(�9� �  �01�i3+��,4�2�nd�Ϲ6b����TY�">�=rJ~S���ЕYf��c\be����W�B��fmYe�E�ì&���Xd�ƦBL�"	m�*�3���Y/�����÷�;f�d$a�e��iV�%�����d��1Sv,$�l�.�@�)��Q�VC<�b��Ⱥ��Z7z�`Vd����X�6tǬt���x���`]Of�Nb�y3�yv5c$��f�&
�ѕL6R�b�֎f�>���>簥��;f��v���<|}��$�m�a����d�ƮM3�o��-�+OFf�$�D�ޮ6�?IO\ۺ,�j��`�|�s��k�aY3�U��� �4�:RY�ݙ��N�I�
#�z�ϳ<��pd�M�=��x�,��G<O����6ɷ�;f��3�+�O]�ׇ�Y�� ����Pd��2I�����a������Uďվ�t�m�����-��J�������1��+ކ���ea�/k�٘@�6�l��UY �؍��~>s��ँ���ps����p-@\Ҷ�釡+�̺dv�#c�֣�K��j�A�����M��2��Ly.B��M]e�bui��ZOz0dvS������Þe.��Ê}�{�D�K�kb@֨(�-�m�3�v?�i�<��	?�Yl�W $\r8�%�'=br��oCw̒�@�2w|pq�)l�ͣ�	��P�\Lń8�cp�6
@ԃ%�A�$fd��j�������)e6u�>�1+|�ƙM*eۧ��`U��2�F�֩��<A�Cl����%~,��P��\�a�`�����dN�{Jx�c�%�������F����cPu�
�2���Y�˱9Eq�Y=�m�ث� =��]W]��$V��+�m
)�2����d�g}���`���fa�>�̪ēu ���f�̖荹���+���]��Q�P����g���VA�����j����Ł�оF!��.+򂤻a@����zN�eez���
bbA�*�� ��̒�VSb
cPb�)��a��,�m��e֫�����mM�U�D�ҪZ�WO��Pf���+������fADv�3������xA�:Lh�d��1�\�%{�d�f�4Ơ��K:@�Q��-���y�!��{��l�]Pn6���2�l���p2k7t�,�n��D�*�<�Q�l��o�*���i�f��1S�lP�^;L�f��+��s��]�v̴ϐ��?�k�]>yr�f�8��Uo�;}��aYł����*$v�щ]'V����2���|�����<-���C�5����(1��^>>�}=�����0W �
\fL,���-�(f���l�\�� �yJ��QlU�D����#�lY��~+Y���6v�MFNf�I摳l#K^C�5|x�}�Љf��5ȫ��u�aȧ�x�����O�� N�Q��f���*�
�*K��w{���]��kFVk�$<r8	��n�o/���\�_���b�@H�"N��Ќ�I#�hB_�b�������ܠ����x��^� �Yxw�"�ah�í�s�2ɏv�7x_���./��j�%���^�e7��:tpQ��`�� vr���i��imj)�d�a�bRp6����|]�p��7���Yi�,�~҂[�g_�i� ��a��Ɛ6��� {��s,�X��-�� �������&�a�%~���L}9�t9]nW�'��	��~�(�zcm� ђx�QeL��X�R����X5����#�]�W����oj.���������F��V���g%& ����>��K��!�4[k�M���p#��j %	T\�����U|�4l��`;�[ע�;k�0�������A�jT�_��:X�| ��@H��v1�."�q�Ϯ���'�a�Ya�>� ���:��ܒZ��됭e���j�T,	�L5�+n�YVMzX��U�@�2f��h��bzv��-���t���_}E�鐒�0���&��bz˪t�L�h��,��J �)	�72�l �s(x�6��H>;LA��B��GwqԖ ���z@���i�? ��u+�eՅ#f>Ǯ,��k鈱��bvŘ�>R�"Xg����Pv�	����f3�W�����=ľ�ќ�ZK��w݅bY����j�=�� �yČ�i�X�UV�F?ke���#�|d�va;9̓������ZCt�?�H~x㍃uA�{�SY֖���^X������jh�a��*{����,7l�>1_P�P�2������pt�!ǖIF�iG�8�xZ���m���a�!�`q��u0\@���m���ytqQ�Ŝ��)��ބF��h�k�G��3X�.��uy�L��^'��*0I~�`)5li���K�
XS:F #�{e7e�`hWf	�+��:���ɬg�W��"d���5��I��+�b�3Lx�G��T��k����DRY���%�*�(��Q���L�V>�ӆNC;�W+Waf�m��Y��o+�2imcФ����/��Gp�	Og �m3��������Eq�,��˘p\P�����G�O:xb�B%�#�~�fK_� ����~a���# Y�$�7h,Dg,-(1yT]A~C��v���k����4��a��Z���ǡ�1<�.�
�m�4˱��F=��,;�C�a\��>���:�6�j��?Sf��^Xq�$�x`�CЧ�Zz�H�u"![��;�yWu4���=s��v<�O�e�G�^C��<߶z���(N�0�����Y��/<���9���v�y����m��"�)��i��v����������yӑV�5&�8HH4^�3"��k�s�u�y�A�9�'�X@�+��VXm�N� �r7��D�����Zj 	��i�;#�
޶��ƀ�
lmhUw�����J��Ԭ1|7V�
R�x�v���Ȍ(x}O;�CP�1�Į���δ�ϝE���^�U��B;b]�/-��*�B!���´|�&�8������Y��)8�i��3D�oXl�r���� 7���. �Ԭ&aO�P_����,��bڤxчw�7*F6��̔��*E���� g�y�S���/����) +�M���Ҏ�]�&wh�[�5K�;vܝ+�U��4,��a�2-0h+	O� �0���k��w�|�'�)�b"HbP��d�eV�b�����Խh�,�^-��`��FC�0PV�X�39���\���O�kRr��>� _}�Aw��g����FC��߇2��y��9Y�FCC|RrY��Q��3�b��qԱ@��*�1\��ض�h�?������Y�[��zuY��Wڟ��X�e�>�o���$Yk{(̥�MM�PZ�3��1s�#�ƪ�ײL��L�tX��'�@��X�?ы��	�]2�0����g��n�V�;*� �����N�K~�]�V�A�-+�/2�pUj�������D�Z��l�ø�uGy�X|���mc��N:{����JWfA� �"w�nl"D�7�<���pW��o`���j��]���;��v��U�A�
(�C,��2��K��� #���m�^� m9#^������`�-�w�,V>qe���b�UL(��i	�=��Gh'K���{���M�� � ���Ep�^��
o�K(�#gҫ�#�̀4���VC�C7��[«�^��淹����O�}=�!9�C�#I\��_m��+0~?Bc�6�|m�j	��~���%^`�h��r��<��B��s)2��7X�X{y�ɠ�3m��z$��i�?�׍�HZu0������5�/t֭Qe��F$`ю �� �_��T�3�͊�Uڊ�¼�ױ�� ׫8�p[�qh�cg߿*��=�_d���\�FC�|�C�V���y�P�w4�gĬF�_�z��Q�U���Yn����bn�m6^r>�S�`񝞕�v�䪯{����������Y?Ug      �   �   x���M�0�����B��gq��RSJ��%�+(��՗ɗa��6�pM�C��/9/J]0}b�
myMJ�G�s��|��$j�rǴr�ݻL���4����H�U&�Q�S��u�fk,S�v���QC���c�����J�(V���^GU���gB�7E^j�      �   (  x�u�Oo1���O�8����=��( ������쎝BS�E!|z��F%��%ϼ��,[��ܘ7e�����n�S����^��=�|[��7�9{��Bd�y ��cB�[��`#�ػ8�<"ݳz�������8^��~y�z���e������Ň�m?�� �4i Z�&��P6�H�^��py ��ꖒ���� �r	,PE����ΪU }i]r�D�5slL1�Λ˥,�ZW��z�/;S�t�ͣ9o�s�@��Dc�w9��<G�<�שq���� �*�q��P�g�ց��@1�or(��dS��#�N���ͮ/���	\�;�w��ѹ��zJ��T�d�H��
��*��TK�9I.Ba�]"�l���,�2�43�%s����]0��V妿�[�nvG���������i�����\��ɂ�P�B��	r��2U��@�h�l5�;�Ёe;�9�b�t���q�sO"��>�I����=��?���l\����g _[�L�9�<����5arp>��Fdۂ��1�B.wWC�u �4��      �   �   x�}λ�0��ڞ�Ċ���#-���1��bB�	�� �]*��` '��s�rȟ�F�O�Ms<j��6��L�F�F*���.��1/8�X:Q��ӵ���샟���qi�:PEN��@���$?�>�� �3j��&m����g�2��]����͇B�kj����;6��9���+W�      �   �   x�u�=
�0��99E.��7�v���9�D�"���ҥ^�E�n���rqk����� 9�O~#�'즹��Z��6X�Q���k��T�#�c^pJq*����;PI��O�FḴ��@9��Y����.��B��դ�#�����]@���K~`�{���z��r�٢=sJ�[DS      �   z   x�3�t?�-%5[A#=��R�8�X!)3'5O!�𞢜ԣ��=��H�Ӑ����H��L��\��������B���8�ghIb^V��l���Lq�ss�$�$d�ƪ����8W� �6      �   v   x�u�1�0���>��mb����*-�GL�����1����_m I�Oֳul%Y'�Q`^���?���F�
{]��I�#�����9�����1ëm[﬌��Z���G�!�	�?�      �   i  x���MSG�ϫ_��k����so^%@ʗ�D���,~}Z!�X��*������C?�v�BsV��|9�f�Y��|�}n�)��j��߫A�(��C�t�5N����l$��P&�@(DA)*�j�Q-I��$�� CE8�P�e�\V��� � ~|�5�~�!���6���$����o�~Pk�aCc74�X�F�lD����GQ����QXT��*��R��� Ă�Ch����n�'a���g%��@����$�,؛~��[��:������9kDD���!�#x^J�h���!�h��䵬�)ˁjN��ܾ�×���I�e��v9��i9��г�S�E�83C����ȕjV\P�*�U�L�G'T�*<Q`m
�*�=��ӟ��pg�Z���(<�՘��������{2h�""C��h�)�)l��7���M)��8��9g@�(��Y�+N��ޤ�l56��� e�tD�������������΄[�����w�T�g?�Xּ�D%f�[ ��ݢ��*TQ��V��Fj�-���X�u= ���+�s��TTt>1��?:ы:Ih���'���s�
 �SK�� n��%�`o ��/�R1�
��
����Z���u=Vh����������<�E���wc�g��j4�ir<��=M�����v{�_/��vG�� Hx���ߞ������/.�A7㯗�3��<����pzEa�pu�0��O��|~4K3���}�O�H�g�f_F�'�d9	��%��M/��Y:]��۹ܷ��o�_�h�����O��{z?_;{1߇Q2�~����������t��$|����S� �h��4�i�Z���W���1!ᴁ��v0����     