PGDMP     4                
    v           nodejs_admin    10.5    10.5 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    40960    nodejs_admin    DATABASE     �   CREATE DATABASE nodejs_admin WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE nodejs_admin;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    41063    address_id_seq    SEQUENCE     w   CREATE SEQUENCE public.address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.address_id_seq;
       public       postgres    false    3            �            1259    41065    address    TABLE     �   CREATE TABLE public.address (
    id integer DEFAULT nextval('public.address_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    street character varying(45) NOT NULL
);
    DROP TABLE public.address;
       public         postgres    false    212    3            �            1259    41089 
   car_id_seq    SEQUENCE     s   CREATE SEQUENCE public.car_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.car_id_seq;
       public       postgres    false    3            �            1259    41091    car    TABLE     �   CREATE TABLE public.car (
    id integer DEFAULT nextval('public.car_id_seq'::regclass) NOT NULL,
    model character varying(45) NOT NULL
);
    DROP TABLE public.car;
       public         postgres    false    216    3            �            1259    41139    controls_id_seq    SEQUENCE     x   CREATE SEQUENCE public.controls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.controls_id_seq;
       public       postgres    false    3            �            1259    41141    controls    TABLE     �  CREATE TABLE public.controls (
    id integer DEFAULT nextval('public.controls_id_seq'::regclass) NOT NULL,
    controls_otm_single_id integer,
    controls_otm_multiple_id integer,
    static character varying(45),
    text character varying(45),
    "boolean" boolean,
    "bigint" bigint,
    double double precision,
    upload character varying(45),
    "binary" bytea,
    date date,
    "time" time without time zone,
    datetime timestamp without time zone,
    textarea text
);
    DROP TABLE public.controls;
       public         postgres    false    226    3            �            1259    41191 "   controls_has_controls_mtm_multiple    TABLE     �   CREATE TABLE public.controls_has_controls_mtm_multiple (
    controls_id integer NOT NULL,
    controls_mtm_multiple_id integer NOT NULL
);
 6   DROP TABLE public.controls_has_controls_mtm_multiple;
       public         postgres    false    3            �            1259    41176     controls_has_controls_mtm_single    TABLE     �   CREATE TABLE public.controls_has_controls_mtm_single (
    controls_id integer NOT NULL,
    controls_mtm_single_id integer NOT NULL
);
 4   DROP TABLE public.controls_has_controls_mtm_single;
       public         postgres    false    3            �            1259    41222    controls_inline_id_seq    SEQUENCE        CREATE SEQUENCE public.controls_inline_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.controls_inline_id_seq;
       public       postgres    false    3            �            1259    41224    controls_inline    TABLE     �  CREATE TABLE public.controls_inline (
    id integer DEFAULT nextval('public.controls_inline_id_seq'::regclass) NOT NULL,
    controls_id integer NOT NULL,
    controls_inline_otm_single_id integer NOT NULL,
    controls_inline_otm_multiple_id integer NOT NULL,
    static character varying(45) NOT NULL,
    text character varying(45) NOT NULL,
    "boolean" boolean NOT NULL,
    "bigint" bigint NOT NULL,
    double double precision NOT NULL,
    upload character varying(45) NOT NULL,
    "binary" bytea NOT NULL,
    date date NOT NULL,
    "time" time without time zone NOT NULL,
    datetime timestamp without time zone NOT NULL,
    textarea text NOT NULL
);
 #   DROP TABLE public.controls_inline;
       public         postgres    false    238    3            �            1259    41279 0   controls_inline_has_controls_inline_mtm_multiple    TABLE     �   CREATE TABLE public.controls_inline_has_controls_inline_mtm_multiple (
    controls_inline_id integer NOT NULL,
    controls_inline_mtm_multiple_id integer NOT NULL
);
 D   DROP TABLE public.controls_inline_has_controls_inline_mtm_multiple;
       public         postgres    false    3            �            1259    41264 .   controls_inline_has_controls_inline_mtm_single    TABLE     �   CREATE TABLE public.controls_inline_has_controls_inline_mtm_single (
    controls_inline_id integer NOT NULL,
    controls_inline_mtm_single_id integer NOT NULL
);
 B   DROP TABLE public.controls_inline_has_controls_inline_mtm_single;
       public         postgres    false    3            �            1259    41256 #   controls_inline_mtm_multiple_id_seq    SEQUENCE     �   CREATE SEQUENCE public.controls_inline_mtm_multiple_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.controls_inline_mtm_multiple_id_seq;
       public       postgres    false    3            �            1259    41258    controls_inline_mtm_multiple    TABLE     �   CREATE TABLE public.controls_inline_mtm_multiple (
    id integer DEFAULT nextval('public.controls_inline_mtm_multiple_id_seq'::regclass) NOT NULL,
    first character varying(45) NOT NULL,
    last character varying(45)
);
 0   DROP TABLE public.controls_inline_mtm_multiple;
       public         postgres    false    242    3            �            1259    41248 !   controls_inline_mtm_single_id_seq    SEQUENCE     �   CREATE SEQUENCE public.controls_inline_mtm_single_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.controls_inline_mtm_single_id_seq;
       public       postgres    false    3            �            1259    41250    controls_inline_mtm_single    TABLE     �   CREATE TABLE public.controls_inline_mtm_single (
    id integer DEFAULT nextval('public.controls_inline_mtm_single_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL
);
 .   DROP TABLE public.controls_inline_mtm_single;
       public         postgres    false    240    3            �            1259    41214 #   controls_inline_otm_multiple_id_seq    SEQUENCE     �   CREATE SEQUENCE public.controls_inline_otm_multiple_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.controls_inline_otm_multiple_id_seq;
       public       postgres    false    3            �            1259    41216    controls_inline_otm_multiple    TABLE     �   CREATE TABLE public.controls_inline_otm_multiple (
    id integer DEFAULT nextval('public.controls_inline_otm_multiple_id_seq'::regclass) NOT NULL,
    first character varying(45) NOT NULL,
    last character varying(45)
);
 0   DROP TABLE public.controls_inline_otm_multiple;
       public         postgres    false    236    3            �            1259    41206 !   controls_inline_otm_single_id_seq    SEQUENCE     �   CREATE SEQUENCE public.controls_inline_otm_single_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.controls_inline_otm_single_id_seq;
       public       postgres    false    3            �            1259    41208    controls_inline_otm_single    TABLE     �   CREATE TABLE public.controls_inline_otm_single (
    id integer DEFAULT nextval('public.controls_inline_otm_single_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL
);
 .   DROP TABLE public.controls_inline_otm_single;
       public         postgres    false    234    3            �            1259    41168    controls_mtm_multiple_id_seq    SEQUENCE     �   CREATE SEQUENCE public.controls_mtm_multiple_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.controls_mtm_multiple_id_seq;
       public       postgres    false    3            �            1259    41170    controls_mtm_multiple    TABLE     �   CREATE TABLE public.controls_mtm_multiple (
    id integer DEFAULT nextval('public.controls_mtm_multiple_id_seq'::regclass) NOT NULL,
    first character varying(45) NOT NULL,
    last character varying(45)
);
 )   DROP TABLE public.controls_mtm_multiple;
       public         postgres    false    230    3            �            1259    41160    controls_mtm_single_id_seq    SEQUENCE     �   CREATE SEQUENCE public.controls_mtm_single_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.controls_mtm_single_id_seq;
       public       postgres    false    3            �            1259    41162    controls_mtm_single    TABLE     �   CREATE TABLE public.controls_mtm_single (
    id integer DEFAULT nextval('public.controls_mtm_single_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL
);
 '   DROP TABLE public.controls_mtm_single;
       public         postgres    false    228    3            �            1259    41131    controls_otm_multiple_id_seq    SEQUENCE     �   CREATE SEQUENCE public.controls_otm_multiple_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.controls_otm_multiple_id_seq;
       public       postgres    false    3            �            1259    41133    controls_otm_multiple    TABLE     �   CREATE TABLE public.controls_otm_multiple (
    id integer DEFAULT nextval('public.controls_otm_multiple_id_seq'::regclass) NOT NULL,
    first character varying(45) NOT NULL,
    last character varying(45)
);
 )   DROP TABLE public.controls_otm_multiple;
       public         postgres    false    224    3            �            1259    41123    controls_otm_single_id_seq    SEQUENCE     �   CREATE SEQUENCE public.controls_otm_single_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.controls_otm_single_id_seq;
       public       postgres    false    3            �            1259    41125    controls_otm_single    TABLE     �   CREATE TABLE public.controls_otm_single (
    id integer DEFAULT nextval('public.controls_otm_single_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL
);
 '   DROP TABLE public.controls_otm_single;
       public         postgres    false    222    3            �            1259    41110    driver_id_seq    SEQUENCE     v   CREATE SEQUENCE public.driver_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.driver_id_seq;
       public       postgres    false    3            �            1259    41112    driver    TABLE     �   CREATE TABLE public.driver (
    id integer DEFAULT nextval('public.driver_id_seq'::regclass) NOT NULL,
    car_id integer NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.driver;
       public         postgres    false    220    3            �            1259    40972    item_id_seq    SEQUENCE     t   CREATE SEQUENCE public.item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.item_id_seq;
       public       postgres    false    3            �            1259    40974    item    TABLE     �   CREATE TABLE public.item (
    id integer DEFAULT nextval('public.item_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL,
    description text,
    image character varying(255)
);
    DROP TABLE public.item;
       public         postgres    false    198    3            �            1259    40961    notes_id_seq    SEQUENCE     u   CREATE SEQUENCE public.notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.notes_id_seq;
       public       postgres    false    3            �            1259    40963    notes    TABLE     �   CREATE TABLE public.notes (
    id integer DEFAULT nextval('public.notes_id_seq'::regclass) NOT NULL,
    notes1 text,
    notes2 text NOT NULL,
    notes3 text,
    notes4 text NOT NULL
);
    DROP TABLE public.notes;
       public         postgres    false    196    3            �            1259    41076    phone_id_seq    SEQUENCE     u   CREATE SEQUENCE public.phone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.phone_id_seq;
       public       postgres    false    3            �            1259    41078    phone    TABLE     �   CREATE TABLE public.phone (
    id integer DEFAULT nextval('public.phone_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    mobile character varying(45) NOT NULL
);
    DROP TABLE public.phone;
       public         postgres    false    214    3            �            1259    40991    purchase_id_seq    SEQUENCE     x   CREATE SEQUENCE public.purchase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.purchase_id_seq;
       public       postgres    false    3            �            1259    40993    purchase    TABLE       CREATE TABLE public.purchase (
    id integer DEFAULT nextval('public.purchase_id_seq'::regclass) NOT NULL,
    item_id integer NOT NULL,
    user_id integer,
    cache numeric(6,2) NOT NULL,
    date date,
    deleted boolean,
    deleted_at timestamp without time zone
);
    DROP TABLE public.purchase;
       public         postgres    false    202    3            �            1259    41009    recipe_id_seq    SEQUENCE     v   CREATE SEQUENCE public.recipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.recipe_id_seq;
       public       postgres    false    3            �            1259    41011    recipe    TABLE     �   CREATE TABLE public.recipe (
    id integer DEFAULT nextval('public.recipe_id_seq'::regclass) NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.recipe;
       public         postgres    false    204    3            �            1259    41048    recipe_has_recipe_methods    TABLE     y   CREATE TABLE public.recipe_has_recipe_methods (
    recipe_id integer NOT NULL,
    recipe_method_id integer NOT NULL
);
 -   DROP TABLE public.recipe_has_recipe_methods;
       public         postgres    false    3            �            1259    41033    recipe_has_recipe_types    TABLE     u   CREATE TABLE public.recipe_has_recipe_types (
    recipe_id integer NOT NULL,
    recipe_type_id integer NOT NULL
);
 +   DROP TABLE public.recipe_has_recipe_types;
       public         postgres    false    3            �            1259    41025    recipe_method_id_seq    SEQUENCE     }   CREATE SEQUENCE public.recipe_method_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.recipe_method_id_seq;
       public       postgres    false    3            �            1259    41027    recipe_method    TABLE     �   CREATE TABLE public.recipe_method (
    id integer DEFAULT nextval('public.recipe_method_id_seq'::regclass) NOT NULL,
    title character varying(45) NOT NULL
);
 !   DROP TABLE public.recipe_method;
       public         postgres    false    208    3            �            1259    41017    recipe_type_id_seq    SEQUENCE     {   CREATE SEQUENCE public.recipe_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.recipe_type_id_seq;
       public       postgres    false    3            �            1259    41019    recipe_type    TABLE     �   CREATE TABLE public.recipe_type (
    id integer DEFAULT nextval('public.recipe_type_id_seq'::regclass) NOT NULL,
    title character varying(45) NOT NULL
);
    DROP TABLE public.recipe_type;
       public         postgres    false    206    3            �            1259    41097    repair_id_seq    SEQUENCE     v   CREATE SEQUENCE public.repair_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.repair_id_seq;
       public       postgres    false    3            �            1259    41099    repair    TABLE     �   CREATE TABLE public.repair (
    id integer DEFAULT nextval('public.repair_id_seq'::regclass) NOT NULL,
    car_id integer NOT NULL,
    date date NOT NULL
);
    DROP TABLE public.repair;
       public         postgres    false    218    3            �            1259    40983    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public       postgres    false    3            �            1259    40985    user    TABLE     $  CREATE TABLE public."user" (
    id integer DEFAULT nextval('public.user_id_seq'::regclass) NOT NULL,
    firstname character varying(45) NOT NULL,
    lastname character varying(45),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public."user";
       public         postgres    false    200    3            �          0    41065    address 
   TABLE DATA                     public       postgres    false    213   t�       �          0    41091    car 
   TABLE DATA                     public       postgres    false    217   ��       �          0    41141    controls 
   TABLE DATA                     public       postgres    false    227   ��       �          0    41191 "   controls_has_controls_mtm_multiple 
   TABLE DATA                     public       postgres    false    233   �       �          0    41176     controls_has_controls_mtm_single 
   TABLE DATA                     public       postgres    false    232   ��       �          0    41224    controls_inline 
   TABLE DATA                     public       postgres    false    239   b�                  0    41279 0   controls_inline_has_controls_inline_mtm_multiple 
   TABLE DATA                     public       postgres    false    245   q�       �          0    41264 .   controls_inline_has_controls_inline_mtm_single 
   TABLE DATA                     public       postgres    false    244   ��       �          0    41258    controls_inline_mtm_multiple 
   TABLE DATA                     public       postgres    false    243   f�       �          0    41250    controls_inline_mtm_single 
   TABLE DATA                     public       postgres    false    241   ��       �          0    41216    controls_inline_otm_multiple 
   TABLE DATA                     public       postgres    false    237   u�       �          0    41208    controls_inline_otm_single 
   TABLE DATA                     public       postgres    false    235   
�       �          0    41170    controls_mtm_multiple 
   TABLE DATA                     public       postgres    false    231   ��       �          0    41162    controls_mtm_single 
   TABLE DATA                     public       postgres    false    229   �       �          0    41133    controls_otm_multiple 
   TABLE DATA                     public       postgres    false    225   ��       �          0    41125    controls_otm_single 
   TABLE DATA                     public       postgres    false    223   �       �          0    41112    driver 
   TABLE DATA                     public       postgres    false    221   ��       �          0    40974    item 
   TABLE DATA                     public       postgres    false    199   �       �          0    40963    notes 
   TABLE DATA                     public       postgres    false    197   �       �          0    41078    phone 
   TABLE DATA                     public       postgres    false    215   �       �          0    40993    purchase 
   TABLE DATA                     public       postgres    false    203   ��       �          0    41011    recipe 
   TABLE DATA                     public       postgres    false    205   ,�       �          0    41048    recipe_has_recipe_methods 
   TABLE DATA                     public       postgres    false    211   ��       �          0    41033    recipe_has_recipe_types 
   TABLE DATA                     public       postgres    false    210   W�       �          0    41027    recipe_method 
   TABLE DATA                     public       postgres    false    209   ��       �          0    41019    recipe_type 
   TABLE DATA                     public       postgres    false    207   k�       �          0    41099    repair 
   TABLE DATA                     public       postgres    false    219   ߥ       �          0    40985    user 
   TABLE DATA                     public       postgres    false    201   x�       	           0    0    address_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.address_id_seq', 3, true);
            public       postgres    false    212            
           0    0 
   car_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.car_id_seq', 3, true);
            public       postgres    false    216                       0    0    controls_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.controls_id_seq', 2, true);
            public       postgres    false    226                       0    0    controls_inline_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.controls_inline_id_seq', 2, true);
            public       postgres    false    238                       0    0 #   controls_inline_mtm_multiple_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.controls_inline_mtm_multiple_id_seq', 3, true);
            public       postgres    false    242                       0    0 !   controls_inline_mtm_single_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.controls_inline_mtm_single_id_seq', 3, true);
            public       postgres    false    240                       0    0 #   controls_inline_otm_multiple_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.controls_inline_otm_multiple_id_seq', 3, true);
            public       postgres    false    236                       0    0 !   controls_inline_otm_single_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.controls_inline_otm_single_id_seq', 3, true);
            public       postgres    false    234                       0    0    controls_mtm_multiple_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.controls_mtm_multiple_id_seq', 3, true);
            public       postgres    false    230                       0    0    controls_mtm_single_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.controls_mtm_single_id_seq', 3, true);
            public       postgres    false    228                       0    0    controls_otm_multiple_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.controls_otm_multiple_id_seq', 3, true);
            public       postgres    false    224                       0    0    controls_otm_single_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.controls_otm_single_id_seq', 3, true);
            public       postgres    false    222                       0    0    driver_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.driver_id_seq', 6, true);
            public       postgres    false    220                       0    0    item_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.item_id_seq', 5, true);
            public       postgres    false    198                       0    0    notes_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.notes_id_seq', 1, false);
            public       postgres    false    196                       0    0    phone_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.phone_id_seq', 2, true);
            public       postgres    false    214                       0    0    purchase_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.purchase_id_seq', 24, true);
            public       postgres    false    202                       0    0    recipe_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.recipe_id_seq', 9, true);
            public       postgres    false    204                       0    0    recipe_method_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.recipe_method_id_seq', 5, true);
            public       postgres    false    208                       0    0    recipe_type_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.recipe_type_id_seq', 5, true);
            public       postgres    false    206                       0    0    repair_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.repair_id_seq', 6, true);
            public       postgres    false    218                       0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 3, true);
            public       postgres    false    200            1           2606    41070    address address_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public         postgres    false    213            5           2606    41096    car car_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public         postgres    false    217            G           2606    41195 J   controls_has_controls_mtm_multiple controls_has_controls_mtm_multiple_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.controls_has_controls_mtm_multiple
    ADD CONSTRAINT controls_has_controls_mtm_multiple_pkey PRIMARY KEY (controls_id, controls_mtm_multiple_id);
 t   ALTER TABLE ONLY public.controls_has_controls_mtm_multiple DROP CONSTRAINT controls_has_controls_mtm_multiple_pkey;
       public         postgres    false    233    233            E           2606    41180 F   controls_has_controls_mtm_single controls_has_controls_mtm_single_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.controls_has_controls_mtm_single
    ADD CONSTRAINT controls_has_controls_mtm_single_pkey PRIMARY KEY (controls_id, controls_mtm_single_id);
 p   ALTER TABLE ONLY public.controls_has_controls_mtm_single DROP CONSTRAINT controls_has_controls_mtm_single_pkey;
       public         postgres    false    232    232            U           2606    41283 f   controls_inline_has_controls_inline_mtm_multiple controls_inline_has_controls_inline_mtm_multiple_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.controls_inline_has_controls_inline_mtm_multiple
    ADD CONSTRAINT controls_inline_has_controls_inline_mtm_multiple_pkey PRIMARY KEY (controls_inline_id, controls_inline_mtm_multiple_id);
 �   ALTER TABLE ONLY public.controls_inline_has_controls_inline_mtm_multiple DROP CONSTRAINT controls_inline_has_controls_inline_mtm_multiple_pkey;
       public         postgres    false    245    245            S           2606    41268 b   controls_inline_has_controls_inline_mtm_single controls_inline_has_controls_inline_mtm_single_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.controls_inline_has_controls_inline_mtm_single
    ADD CONSTRAINT controls_inline_has_controls_inline_mtm_single_pkey PRIMARY KEY (controls_inline_id, controls_inline_mtm_single_id);
 �   ALTER TABLE ONLY public.controls_inline_has_controls_inline_mtm_single DROP CONSTRAINT controls_inline_has_controls_inline_mtm_single_pkey;
       public         postgres    false    244    244            Q           2606    41263 >   controls_inline_mtm_multiple controls_inline_mtm_multiple_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.controls_inline_mtm_multiple
    ADD CONSTRAINT controls_inline_mtm_multiple_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.controls_inline_mtm_multiple DROP CONSTRAINT controls_inline_mtm_multiple_pkey;
       public         postgres    false    243            O           2606    41255 :   controls_inline_mtm_single controls_inline_mtm_single_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.controls_inline_mtm_single
    ADD CONSTRAINT controls_inline_mtm_single_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.controls_inline_mtm_single DROP CONSTRAINT controls_inline_mtm_single_pkey;
       public         postgres    false    241            K           2606    41221 >   controls_inline_otm_multiple controls_inline_otm_multiple_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.controls_inline_otm_multiple
    ADD CONSTRAINT controls_inline_otm_multiple_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.controls_inline_otm_multiple DROP CONSTRAINT controls_inline_otm_multiple_pkey;
       public         postgres    false    237            I           2606    41213 :   controls_inline_otm_single controls_inline_otm_single_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.controls_inline_otm_single
    ADD CONSTRAINT controls_inline_otm_single_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.controls_inline_otm_single DROP CONSTRAINT controls_inline_otm_single_pkey;
       public         postgres    false    235            M           2606    41232 $   controls_inline controls_inline_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.controls_inline
    ADD CONSTRAINT controls_inline_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.controls_inline DROP CONSTRAINT controls_inline_pkey;
       public         postgres    false    239            C           2606    41175 0   controls_mtm_multiple controls_mtm_multiple_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.controls_mtm_multiple
    ADD CONSTRAINT controls_mtm_multiple_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.controls_mtm_multiple DROP CONSTRAINT controls_mtm_multiple_pkey;
       public         postgres    false    231            A           2606    41167 ,   controls_mtm_single controls_mtm_single_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.controls_mtm_single
    ADD CONSTRAINT controls_mtm_single_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.controls_mtm_single DROP CONSTRAINT controls_mtm_single_pkey;
       public         postgres    false    229            =           2606    41138 0   controls_otm_multiple controls_otm_multiple_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.controls_otm_multiple
    ADD CONSTRAINT controls_otm_multiple_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.controls_otm_multiple DROP CONSTRAINT controls_otm_multiple_pkey;
       public         postgres    false    225            ;           2606    41130 ,   controls_otm_single controls_otm_single_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.controls_otm_single
    ADD CONSTRAINT controls_otm_single_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.controls_otm_single DROP CONSTRAINT controls_otm_single_pkey;
       public         postgres    false    223            ?           2606    41149    controls controls_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.controls
    ADD CONSTRAINT controls_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.controls DROP CONSTRAINT controls_pkey;
       public         postgres    false    227            9           2606    41117    driver driver_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.driver
    ADD CONSTRAINT driver_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.driver DROP CONSTRAINT driver_pkey;
       public         postgres    false    221            !           2606    40982    item item_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.item DROP CONSTRAINT item_pkey;
       public         postgres    false    199                       2606    40971    notes notes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.notes DROP CONSTRAINT notes_pkey;
       public         postgres    false    197            3           2606    41083    phone phone_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.phone
    ADD CONSTRAINT phone_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.phone DROP CONSTRAINT phone_pkey;
       public         postgres    false    215            %           2606    40998    purchase purchase_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT purchase_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.purchase DROP CONSTRAINT purchase_pkey;
       public         postgres    false    203            /           2606    41052 8   recipe_has_recipe_methods recipe_has_recipe_methods_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.recipe_has_recipe_methods
    ADD CONSTRAINT recipe_has_recipe_methods_pkey PRIMARY KEY (recipe_id, recipe_method_id);
 b   ALTER TABLE ONLY public.recipe_has_recipe_methods DROP CONSTRAINT recipe_has_recipe_methods_pkey;
       public         postgres    false    211    211            -           2606    41037 4   recipe_has_recipe_types recipe_has_recipe_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.recipe_has_recipe_types
    ADD CONSTRAINT recipe_has_recipe_types_pkey PRIMARY KEY (recipe_id, recipe_type_id);
 ^   ALTER TABLE ONLY public.recipe_has_recipe_types DROP CONSTRAINT recipe_has_recipe_types_pkey;
       public         postgres    false    210    210            +           2606    41032     recipe_method recipe_method_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.recipe_method
    ADD CONSTRAINT recipe_method_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.recipe_method DROP CONSTRAINT recipe_method_pkey;
       public         postgres    false    209            '           2606    41016    recipe recipe_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.recipe DROP CONSTRAINT recipe_pkey;
       public         postgres    false    205            )           2606    41024    recipe_type recipe_type_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.recipe_type
    ADD CONSTRAINT recipe_type_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.recipe_type DROP CONSTRAINT recipe_type_pkey;
       public         postgres    false    207            7           2606    41104    repair repair_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.repair
    ADD CONSTRAINT repair_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.repair DROP CONSTRAINT repair_pkey;
       public         postgres    false    219            #           2606    40990    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public         postgres    false    201            �   {   x���v
Q���W((M��L�KLI)J-.V��L�Q(-N-�1�K�RSK4�}B]�4u�H=8��$C�'1;U]Ӛ˓\ӌt�@����(xd��Pd����d�*����L�� �NG�      �   r   x���v
Q���W((M��L�KN,R��L�Q��OI��Ts�	uV�0�QP�I�M�/J����Tp�LL��W״��$�c�!!E�I�y%$�4�.MJ,*U��-(J�J�� l)9�      �   �   x��P�j�0��+_��R$�pO=�`0.4IO��j� KF^���+�ʡ��sA���+���n^vPֻg���������#,�cpU�����j~��I�I�H��Az�V+i�@�<��J1�mewq�t��H����WQ:�N�%�>U�����2��Y>�'����}U]1{G�B��0�b��J�Y���G.ng�Cq���rx�������{!��5X�PT?�9�-�7�b��X���      �   j   x���v
Q���W((M��L�K��+)��)��H,��srKr�sKsJ2rR4�):
X� e4�}B]�4u5��<�e�=-3��eF�F#z�$�� E��      �   Y   x���v
Q���W((M��L�K��+)��)��H,��srKr�3��sR4���):
XT �5�}B]�4u5��<in��".. ��J�      �   �   x��P�j�0��+D.i!v��,;��C`t�v;��������@��s����n;M�I�I�W���#T��3��Ia�4F�5j�Q+�V���=��xEm���%��Q��` A��@�J1�'c�:� ^P�C�q��1��2����sb�yH�ɥ��|LX)������;����2�ч�2��ӹJvtK��p OrG�Qy��uzSƳO7��]�%[0��`�2g���^?�?vu�3�}��Y����{C��ز�H��� �����          t   x���v
Q���W((M��L�K��+)��)������K��H,�G�-ɍ�-�)�,�IU�@��L�Q���@S!��'�5XA�PG�PӚ�s08�h�8�xP8�h�D��`�#H�pq $�/�      �   a   x���v
Q���W((M��L�K��+)��)������K��H,�G�-ɍ/��K�IU�@��L�Q��(�������a��`�i��9��0�8�� �@a�      �   �   x��ν
�0@�=Oq��utr�l��&x�&)��׷y�Ng�8R��}����E��J���`�/��JW���[�Ô� z�����a��(��`��򋼿0��}j�'٦�Y�]��XS;w��m��?�V[�      �   j   x���v
Q���W((M��L�K��+)��)������K��-ɍ/��K�IU��L�Q�K�M�Ts�	uV�0�QP��KU״���,#�Y%��T1�dVFQ*�e\\ %9K4      �   �   x��ν
�0@�=Oq��utr�l���x�6��G_��:���h�w��n���t�8�Ȕ����-�2�����c�
�r��������-�ǲ���}��'���ј]���\b=������[�      �   j   x���v
Q���W((M��L�K��+)��)������K��/ɍ/��K�IU��L�Q�K�M�Ts�	uV�0�QP��KU״���,#�Y%��T1�dVFQ*�e\\ (K:      �      x���v
Q���W((M��L�K��+)��)��-ɍ�-�)�,�IU��L�QH�,*.�Q�I,.�Ts�	uV�0�QP��KUR%����\��j2-�(d�_��uL5���_ZrkZfY*ȱ\\ |�S      �   c   x���v
Q���W((M��L�K��+)��)��-ɍ/��K�IU��L�Q�K�M�Ts�	uV�0�QP��KU״��$�#�!%���b2$�(�.. WIB�      �      x���v
Q���W((M��L�K��+)��)��/ɍ�-�)�,�IU��L�QH�,*.�Q�I,.�Ts�	uV�0�QP��KUR%����\��j2-�(d�_��uL5���_ZrkZfY*ȱ\\ �KS      �   c   x���v
Q���W((M��L�K��+)��)��/ɍ/��K�IU��L�Q�K�M�Ts�	uV�0�QP��KU״��$�#�!%���b2$�(�.. Y�B�      �   �   x���v
Q���W((M��L�K)�,K-R��L�QHN,��y����
a�>���
�:
@����i��I�F3���6�XGh��c��0��XR���M�1�:
@Ǩ�$�e��m��P�d��L�� �Uy�      �   �   x���=�0���Z-�-:U(R�-�E�-��zb����oo��������pqZDy	qZf���7>Y�0������C�%���-zp�**`2e�
�4�.��J�a_��VA@>��n|�e����ɿv�뭝�7t6 �Wq��F��?��A��}|Ew��Y�'t1�����ov��������-~��	\7�      �   
   x���          �   k   x���v
Q���W((M��L�+���KU��L�Q(-N-�1r�2sR5�}B]�4u�t���uMMMA�T]Ӛ˓<ӀFM315��i@�L��YB � .. 2]@3      �   �  x���O��0��~��ThKf����AVݫtk@����7M�6ٽ:B�K�7�.כ��-��v��Omq�_�cs�lv:d��ٟ}����ڦ=ڌ�����v��8�nξ�W�ņ� cn	��B�M��ܚfl�[��>�,_ɁÀ�p �r�P�.xġH9d�d�E�hGw��GM�2�P��9��LAYTO0��@zh�|��P����)L8��r�^ǡ"�%)G��7H���ܷ�פJ8h� ��d9��)�ף7&D�D���3A�Ǒckd���<C��4�]�d ke(�B��d:n$�f3佌�M��a�)� �/�����A������� ���@�����"MZMn�x\b�4W\�0njYQ�
��äd����/2���      �   w   x��˻
�  �ݯ�[�Њ�!��{8��w���hcU?�6C׳�~�o���A�7�|�����0���Q�4%��Sr�0g�c��Y`�,1Kr.0�\b.ɹ�\}��-"��      �   �   x���v
Q���W((M��L�+JM�,H��H,��2sSK2�S�4���)���B��O�k��������5�'ML6���F:
��1�DG��6&��(��dڹ�F�lF37��,ՙ��d����n�Š%�BÒf�aI��a	Ƀ\\ �=      �   �   x���v
Q���W((M��L�+JM�,H��H,��2K*R�4���$	 _S!��'�5XA�PG�HӚ˓ꦚ��TS�j��`LSi�@S�o�1�L�A��$e��$e��$�i�4I�4�[4	WKZ�
�-.. ���      �   g   x���v
Q���W((M��L�+JM�,H��M-��OQ��L�Q(�,�I�Ts�	uV�0�QP�H�kZsy�c��#��0��aL�&p3L�6�n�)�.. i�      �   d   x���v
Q���W((M��L�+JM�,H�/�,HU��L�Q(�,�I�Ts�	uV�0�QPI�kZsy����߈L��P��d�7��7!S�)T�)H? "-bb      �   �   x���v
Q���W((M��L�+J-H�,R��L�QHN,��)�%��
a�>���
�:
@�nd`h�k`�kh��i��I�IF�&����m�����$#]CS�M2A6�T�Ђl�Lu��&��m��I�@�L�� Ry+      �   �   x���M�@E����4��(´�2� �mL:�d����(��KW�r7�p�4�O9$i~�v�5u�2�^v&�u�BUw���C�Јo+:)Y^���ؖ���%:��lt��˪���<_:(A�#�!J9���쬍d):�"�4u'�� �<9!s�BRL?%���n�P�xJ� G���'+�x^�{     