toc.dat                                                                                             0000600 0004000 0002000 00000040124 14125626336 0014450 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           ,            	    y            mundomejormodaDB    10.16    13.1 @    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         N           1262    65878    mundomejormodaDB    DATABASE     r   CREATE DATABASE "mundomejormodaDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Argentina.1252';
 "   DROP DATABASE "mundomejormodaDB";
                postgres    false         �            1259    74116    Talles    TABLE     W   CREATE TABLE public."Talles" (
    id integer NOT NULL,
    number integer NOT NULL
);
    DROP TABLE public."Talles";
       public            postgres    false         �            1259    74114    Talles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Talles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Talles_id_seq";
       public          postgres    false    208         O           0    0    Talles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Talles_id_seq" OWNED BY public."Talles".id;
          public          postgres    false    207         �            1259    74105 
   categories    TABLE     X   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.categories;
       public            postgres    false         �            1259    74103    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    206         P           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    205         �            1259    74094    colors    TABLE     ]   CREATE TABLE public.colors (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.colors;
       public            postgres    false         �            1259    74092    colors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.colors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.colors_id_seq;
       public          postgres    false    204         Q           0    0    colors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.colors_id_seq OWNED BY public.colors.id;
          public          postgres    false    203         �            1259    74072    genres    TABLE     ]   CREATE TABLE public.genres (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.genres;
       public            postgres    false         �            1259    74070    genres_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genres_id_seq;
       public          postgres    false    200         R           0    0    genres_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;
          public          postgres    false    199         �            1259    74135    images    TABLE     �   CREATE TABLE public.images (
    id integer NOT NULL,
    name character varying NOT NULL,
    "idProducts" integer NOT NULL
);
    DROP TABLE public.images;
       public            postgres    false         �            1259    74133    images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public          postgres    false    212         S           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
          public          postgres    false    211         �            1259    74124    marcs    TABLE     S   CREATE TABLE public.marcs (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.marcs;
       public            postgres    false         �            1259    74122    marcs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marcs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.marcs_id_seq;
       public          postgres    false    210         T           0    0    marcs_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.marcs_id_seq OWNED BY public.marcs.id;
          public          postgres    false    209         �            1259    74083    products    TABLE     O  CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    "idColor" integer NOT NULL,
    "idCategory" integer NOT NULL,
    "idTalle" integer NOT NULL,
    "idMarca" integer NOT NULL,
    description character varying,
    price numeric(4,2) NOT NULL,
    linkpago character varying NOT NULL
);
    DROP TABLE public.products;
       public            postgres    false         �            1259    74081    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    202         U           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    201         �            1259    65890    rol    TABLE     \   CREATE TABLE public.rol (
    id integer NOT NULL,
    nombre character varying NOT NULL
);
    DROP TABLE public.rol;
       public            postgres    false         �            1259    65881    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL,
    mail character varying NOT NULL,
    password character varying NOT NULL,
    "rolId" integer NOT NULL,
    "genreID" integer
);
    DROP TABLE public.users;
       public            postgres    false         �            1259    65879    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    197         V           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    196         �
           2604    74119 	   Talles id    DEFAULT     j   ALTER TABLE ONLY public."Talles" ALTER COLUMN id SET DEFAULT nextval('public."Talles_id_seq"'::regclass);
 :   ALTER TABLE public."Talles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208         �
           2604    74108    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    206    206         �
           2604    74097 	   colors id    DEFAULT     f   ALTER TABLE ONLY public.colors ALTER COLUMN id SET DEFAULT nextval('public.colors_id_seq'::regclass);
 8   ALTER TABLE public.colors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    204    204         �
           2604    74075 	   genres id    DEFAULT     f   ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);
 8   ALTER TABLE public.genres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    199    200    200         �
           2604    74138 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212         �
           2604    74127    marcs id    DEFAULT     d   ALTER TABLE ONLY public.marcs ALTER COLUMN id SET DEFAULT nextval('public.marcs_id_seq'::regclass);
 7   ALTER TABLE public.marcs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210         �
           2604    74086    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    202    202         �
           2604    65928    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    197    196    197         D          0    74116    Talles 
   TABLE DATA           .   COPY public."Talles" (id, number) FROM stdin;
    public          postgres    false    208       2884.dat B          0    74105 
   categories 
   TABLE DATA           .   COPY public.categories (id, name) FROM stdin;
    public          postgres    false    206       2882.dat @          0    74094    colors 
   TABLE DATA           *   COPY public.colors (id, name) FROM stdin;
    public          postgres    false    204       2880.dat <          0    74072    genres 
   TABLE DATA           *   COPY public.genres (id, name) FROM stdin;
    public          postgres    false    200       2876.dat H          0    74135    images 
   TABLE DATA           8   COPY public.images (id, name, "idProducts") FROM stdin;
    public          postgres    false    212       2888.dat F          0    74124    marcs 
   TABLE DATA           )   COPY public.marcs (id, name) FROM stdin;
    public          postgres    false    210       2886.dat >          0    74083    products 
   TABLE DATA           y   COPY public.products (id, name, "idColor", "idCategory", "idTalle", "idMarca", description, price, linkpago) FROM stdin;
    public          postgres    false    202       2878.dat :          0    65890    rol 
   TABLE DATA           )   COPY public.rol (id, nombre) FROM stdin;
    public          postgres    false    198       2874.dat 9          0    65881    users 
   TABLE DATA           M   COPY public.users (id, name, mail, password, "rolId", "genreID") FROM stdin;
    public          postgres    false    197       2873.dat W           0    0    Talles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Talles_id_seq"', 1, false);
          public          postgres    false    207         X           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    205         Y           0    0    colors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.colors_id_seq', 1, false);
          public          postgres    false    203         Z           0    0    genres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.genres_id_seq', 1, false);
          public          postgres    false    199         [           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 1, false);
          public          postgres    false    211         \           0    0    marcs_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.marcs_id_seq', 1, false);
          public          postgres    false    209         ]           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 1, false);
          public          postgres    false    201         ^           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    196         �
           2606    74121    Talles Talles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Talles"
    ADD CONSTRAINT "Talles_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Talles" DROP CONSTRAINT "Talles_pkey";
       public            postgres    false    208         �
           2606    74113    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    206         �
           2606    74102    colors colors_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.colors DROP CONSTRAINT colors_pkey;
       public            postgres    false    204         �
           2606    74080    genres genres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    200         �
           2606    74143    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    212         �
           2606    74132    marcs marcs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.marcs
    ADD CONSTRAINT marcs_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.marcs DROP CONSTRAINT marcs_pkey;
       public            postgres    false    210         �
           2606    74091    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    202         �
           2606    65897    rol rol_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    198         �
           2606    65889    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    197         �
           2606    65898    users users_id_rol_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_rol_fkey FOREIGN KEY ("rolId") REFERENCES public.rol(id) NOT VALID;
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_id_rol_fkey;
       public          postgres    false    2735    198    197                                                                                                                                                                                                                                                                                                                                                                                                                                                    2884.dat                                                                                            0000600 0004000 0002000 00000000005 14125626336 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2882.dat                                                                                            0000600 0004000 0002000 00000000005 14125626336 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2880.dat                                                                                            0000600 0004000 0002000 00000000005 14125626336 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2876.dat                                                                                            0000600 0004000 0002000 00000000044 14125626336 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Femenino
2	Masculino
3	Otros
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            2888.dat                                                                                            0000600 0004000 0002000 00000000005 14125626336 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2886.dat                                                                                            0000600 0004000 0002000 00000000005 14125626336 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2878.dat                                                                                            0000600 0004000 0002000 00000000005 14125626336 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2874.dat                                                                                            0000600 0004000 0002000 00000000055 14125626336 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	usuario
2	administrador
3	colaborador
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   2873.dat                                                                                            0000600 0004000 0002000 00000000134 14125626336 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Eric Mena	eric@mail.com	123123	2	\N
2	Robert Veintemilla	robert@mail.com	321321	3	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                    restore.sql                                                                                         0000600 0004000 0002000 00000031745 14125626336 0015406 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.16
-- Dumped by pg_dump version 13.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "mundomejormodaDB";
--
-- Name: mundomejormodaDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "mundomejormodaDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Argentina.1252';


ALTER DATABASE "mundomejormodaDB" OWNER TO postgres;

\connect "mundomejormodaDB"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- Name: Talles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Talles" (
    id integer NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public."Talles" OWNER TO postgres;

--
-- Name: Talles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Talles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Talles_id_seq" OWNER TO postgres;

--
-- Name: Talles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Talles_id_seq" OWNED BY public."Talles".id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: colors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colors (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.colors OWNER TO postgres;

--
-- Name: colors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colors_id_seq OWNER TO postgres;

--
-- Name: colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colors_id_seq OWNED BY public.colors.id;


--
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- Name: genres_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genres_id_seq OWNER TO postgres;

--
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    id integer NOT NULL,
    name character varying NOT NULL,
    "idProducts" integer NOT NULL
);


ALTER TABLE public.images OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- Name: marcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marcs (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.marcs OWNER TO postgres;

--
-- Name: marcs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marcs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marcs_id_seq OWNER TO postgres;

--
-- Name: marcs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marcs_id_seq OWNED BY public.marcs.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    "idColor" integer NOT NULL,
    "idCategory" integer NOT NULL,
    "idTalle" integer NOT NULL,
    "idMarca" integer NOT NULL,
    description character varying,
    price numeric(4,2) NOT NULL,
    linkpago character varying NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol (
    id integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL,
    mail character varying NOT NULL,
    password character varying NOT NULL,
    "rolId" integer NOT NULL,
    "genreID" integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: Talles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Talles" ALTER COLUMN id SET DEFAULT nextval('public."Talles_id_seq"'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: colors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors ALTER COLUMN id SET DEFAULT nextval('public.colors_id_seq'::regclass);


--
-- Name: genres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: marcs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcs ALTER COLUMN id SET DEFAULT nextval('public.marcs_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: Talles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Talles" (id, number) FROM stdin;
\.
COPY public."Talles" (id, number) FROM '$$PATH$$/2884.dat';

--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name) FROM stdin;
\.
COPY public.categories (id, name) FROM '$$PATH$$/2882.dat';

--
-- Data for Name: colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.colors (id, name) FROM stdin;
\.
COPY public.colors (id, name) FROM '$$PATH$$/2880.dat';

--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genres (id, name) FROM stdin;
\.
COPY public.genres (id, name) FROM '$$PATH$$/2876.dat';

--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.images (id, name, "idProducts") FROM stdin;
\.
COPY public.images (id, name, "idProducts") FROM '$$PATH$$/2888.dat';

--
-- Data for Name: marcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marcs (id, name) FROM stdin;
\.
COPY public.marcs (id, name) FROM '$$PATH$$/2886.dat';

--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, "idColor", "idCategory", "idTalle", "idMarca", description, price, linkpago) FROM stdin;
\.
COPY public.products (id, name, "idColor", "idCategory", "idTalle", "idMarca", description, price, linkpago) FROM '$$PATH$$/2878.dat';

--
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rol (id, nombre) FROM stdin;
\.
COPY public.rol (id, nombre) FROM '$$PATH$$/2874.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, mail, password, "rolId", "genreID") FROM stdin;
\.
COPY public.users (id, name, mail, password, "rolId", "genreID") FROM '$$PATH$$/2873.dat';

--
-- Name: Talles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Talles_id_seq"', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colors_id_seq', 1, false);


--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genres_id_seq', 1, false);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.images_id_seq', 1, false);


--
-- Name: marcs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marcs_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: Talles Talles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Talles"
    ADD CONSTRAINT "Talles_pkey" PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: colors colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);


--
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: marcs marcs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcs
    ADD CONSTRAINT marcs_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_id_rol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_rol_fkey FOREIGN KEY ("rolId") REFERENCES public.rol(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           