PGDMP      7                }            antipin    17.4    17.4 (    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16387    antipin    DATABASE     m   CREATE DATABASE antipin WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'ru-RU';
    DROP DATABASE antipin;
                     postgres    false            �            1259    16388    clients    TABLE     �   CREATE TABLE public.clients (
    id_client integer NOT NULL,
    fio character varying(255),
    phone_number character varying(15),
    email character varying(255),
    date_registry date
);
    DROP TABLE public.clients;
       public         heap r       postgres    false            �            1259    16393    clients_id_client_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_id_client_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.clients_id_client_seq;
       public               postgres    false    217            �           0    0    clients_id_client_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.clients_id_client_seq OWNED BY public.clients.id_client;
          public               postgres    false    218            �            1259    16394    product    TABLE     �   CREATE TABLE public.product (
    product_id integer NOT NULL,
    name character varying(255),
    count integer,
    price numeric(10,2)
);
    DROP TABLE public.product;
       public         heap r       postgres    false            �            1259    16397    product_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public               postgres    false    219            �           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;
          public               postgres    false    220            �            1259    16398 
   sotrudniki    TABLE     �   CREATE TABLE public.sotrudniki (
    sotrudnik_id integer NOT NULL,
    fio character varying(255),
    doljnost character varying(255),
    phone_number character varying(15),
    job_date date
);
    DROP TABLE public.sotrudniki;
       public         heap r       postgres    false            �            1259    16403    sotrudniki_sotrudnik_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sotrudniki_sotrudnik_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.sotrudniki_sotrudnik_id_seq;
       public               postgres    false    221            �           0    0    sotrudniki_sotrudnik_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.sotrudniki_sotrudnik_id_seq OWNED BY public.sotrudniki.sotrudnik_id;
          public               postgres    false    222            �            1259    16404    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    fio character varying(255),
    role character varying(50),
    login character varying(100),
    password character varying(255)
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16409    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    223            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    224            �            1259    16410    uslugi    TABLE     y   CREATE TABLE public.uslugi (
    usluga_id integer NOT NULL,
    name character varying(255),
    price numeric(10,2)
);
    DROP TABLE public.uslugi;
       public         heap r       postgres    false            �            1259    16413    uslugi_usluga_id_seq    SEQUENCE     �   CREATE SEQUENCE public.uslugi_usluga_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.uslugi_usluga_id_seq;
       public               postgres    false    225            �           0    0    uslugi_usluga_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.uslugi_usluga_id_seq OWNED BY public.uslugi.usluga_id;
          public               postgres    false    226            �            1259    16414    zakaz    TABLE     �   CREATE TABLE public.zakaz (
    zakaz_id integer NOT NULL,
    id_klient integer,
    sotrudnik_id integer,
    usluga_id integer,
    zakaz_date date,
    status character varying(50) DEFAULT 'waiting'::character varying
);
    DROP TABLE public.zakaz;
       public         heap r       postgres    false            �            1259    16418    zakaz_zakaz_id_seq    SEQUENCE     �   CREATE SEQUENCE public.zakaz_zakaz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.zakaz_zakaz_id_seq;
       public               postgres    false    227            �           0    0    zakaz_zakaz_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.zakaz_zakaz_id_seq OWNED BY public.zakaz.zakaz_id;
          public               postgres    false    228            4           2604    16419    clients id_client    DEFAULT     v   ALTER TABLE ONLY public.clients ALTER COLUMN id_client SET DEFAULT nextval('public.clients_id_client_seq'::regclass);
 @   ALTER TABLE public.clients ALTER COLUMN id_client DROP DEFAULT;
       public               postgres    false    218    217            5           2604    16420    product product_id    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN product_id DROP DEFAULT;
       public               postgres    false    220    219            6           2604    16421    sotrudniki sotrudnik_id    DEFAULT     �   ALTER TABLE ONLY public.sotrudniki ALTER COLUMN sotrudnik_id SET DEFAULT nextval('public.sotrudniki_sotrudnik_id_seq'::regclass);
 F   ALTER TABLE public.sotrudniki ALTER COLUMN sotrudnik_id DROP DEFAULT;
       public               postgres    false    222    221            7           2604    16422    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223            8           2604    16423    uslugi usluga_id    DEFAULT     t   ALTER TABLE ONLY public.uslugi ALTER COLUMN usluga_id SET DEFAULT nextval('public.uslugi_usluga_id_seq'::regclass);
 ?   ALTER TABLE public.uslugi ALTER COLUMN usluga_id DROP DEFAULT;
       public               postgres    false    226    225            9           2604    16424    zakaz zakaz_id    DEFAULT     p   ALTER TABLE ONLY public.zakaz ALTER COLUMN zakaz_id SET DEFAULT nextval('public.zakaz_zakaz_id_seq'::regclass);
 =   ALTER TABLE public.zakaz ALTER COLUMN zakaz_id DROP DEFAULT;
       public               postgres    false    228    227            �          0    16388    clients 
   TABLE DATA           U   COPY public.clients (id_client, fio, phone_number, email, date_registry) FROM stdin;
    public               postgres    false    217   #+       �          0    16394    product 
   TABLE DATA           A   COPY public.product (product_id, name, count, price) FROM stdin;
    public               postgres    false    219   �+       �          0    16398 
   sotrudniki 
   TABLE DATA           Y   COPY public.sotrudniki (sotrudnik_id, fio, doljnost, phone_number, job_date) FROM stdin;
    public               postgres    false    221   Y,       �          0    16404    users 
   TABLE DATA           ?   COPY public.users (id, fio, role, login, password) FROM stdin;
    public               postgres    false    223   �-       �          0    16410    uslugi 
   TABLE DATA           8   COPY public.uslugi (usluga_id, name, price) FROM stdin;
    public               postgres    false    225   �-       �          0    16414    zakaz 
   TABLE DATA           a   COPY public.zakaz (zakaz_id, id_klient, sotrudnik_id, usluga_id, zakaz_date, status) FROM stdin;
    public               postgres    false    227   f.       �           0    0    clients_id_client_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.clients_id_client_seq', 1, false);
          public               postgres    false    218            �           0    0    product_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_product_id_seq', 1, false);
          public               postgres    false    220            �           0    0    sotrudniki_sotrudnik_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.sotrudniki_sotrudnik_id_seq', 1, false);
          public               postgres    false    222            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public               postgres    false    224            �           0    0    uslugi_usluga_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.uslugi_usluga_id_seq', 1, false);
          public               postgres    false    226            �           0    0    zakaz_zakaz_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.zakaz_zakaz_id_seq', 1, false);
          public               postgres    false    228            �   �   x�3�|Դ��C�=���<8OE�B���斖��F&@dșY���_搞��������id`d�k`�kh�e�y��҄�.l �	�( ��M4�437153513�,H-)6��j�����1磆-9�j"_M�Rc#�,�L��\����Z�0�dv� F�w      �   i   x�%�1� ����� /�����(Ƌ����h;;��0�/UDB rD�cв�#ZRm>~<`d�6�}����QXN{�)��."�v�Pg�i�/�U��7���x��      �     x�eP�J�@>�>E��nJ�ŇiCQ�(�%����дT/�0O0��$~�I튰����|?cԘ7����N�s�-�q�8���b(�_�)~�
���Au��ZdYfl���H���adB�j8 ޟ����௪����{jd�:��*|j3S��D:Vp�+����v��5�CI;��B5�zW�@��Hj�����N�x�#�R���s�{���)���K�����-�����`]:E�g8���i0���nm�����eR�u�_,��Zk����      �   Q   x�3�t�+�,���LL����,.)J,�/�� $��gYb^~Y��c^^�BpjQzjjY^"�GbfQJQjqqjg)������� ^k�      �   s   x�3�|�0�¦.4Zv���N=.#�����C-KAd�9/t�^h��ra߅�fq���& �ġ&���_�2D�ВC�/�W ���5�(����� ��A�      �   =   x�3�4C##S]c]CN���T.#N#$q]CN�ļ��.cNc�8\���#F��� 9��     