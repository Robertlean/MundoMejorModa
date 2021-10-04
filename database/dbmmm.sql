--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-10-04 07:44:19

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

SET default_table_access_method = heap;

--
-- TOC entry 200 (class 1259 OID 196839)
-- Name: talla; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.talla (
    id integer NOT NULL,
    name character varying NOT NULL,
    abrev character varying NOT NULL
);


ALTER TABLE public.talla OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 196845)
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
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 201
-- Name: Talles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Talles_id_seq" OWNED BY public.talla.id;


--
-- TOC entry 202 (class 1259 OID 196847)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 196853)
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
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 203
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 204 (class 1259 OID 196855)
-- Name: colors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colors (
    id integer NOT NULL,
    name character varying NOT NULL,
    hexa character varying
);


ALTER TABLE public.colors OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 196861)
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
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 205
-- Name: colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colors_id_seq OWNED BY public.colors.id;


--
-- TOC entry 206 (class 1259 OID 196863)
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 196869)
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
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 207
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;


--
-- TOC entry 208 (class 1259 OID 196871)
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    id integer NOT NULL,
    name character varying NOT NULL,
    "idProduct" integer NOT NULL
);


ALTER TABLE public.images OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 196877)
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
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 209
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- TOC entry 210 (class 1259 OID 196879)
-- Name: marcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marcs (
    id integer NOT NULL,
    name character varying NOT NULL,
    image character varying
);


ALTER TABLE public.marcs OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 196885)
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
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 211
-- Name: marcs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marcs_id_seq OWNED BY public.marcs.id;


--
-- TOC entry 212 (class 1259 OID 196887)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    idcolor integer NOT NULL,
    idcategory integer NOT NULL,
    idtalle integer NOT NULL,
    idmarca integer NOT NULL,
    description character varying,
    price numeric(4,2) NOT NULL,
    linkpago character varying NOT NULL,
    idgenre integer NOT NULL,
    discount integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 196893)
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
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 213
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 214 (class 1259 OID 196895)
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol (
    id integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 196901)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL,
    mail character varying NOT NULL,
    password character varying NOT NULL,
    "rolId" integer NOT NULL,
    phone integer,
    calle character varying,
    comuna character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 196907)
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
-- TOC entry 3097 (class 0 OID 0)
-- Dependencies: 216
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2906 (class 2604 OID 196909)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 2907 (class 2604 OID 196910)
-- Name: colors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors ALTER COLUMN id SET DEFAULT nextval('public.colors_id_seq'::regclass);


--
-- TOC entry 2908 (class 2604 OID 196911)
-- Name: genres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);


--
-- TOC entry 2909 (class 2604 OID 196912)
-- Name: images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- TOC entry 2910 (class 2604 OID 196913)
-- Name: marcs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcs ALTER COLUMN id SET DEFAULT nextval('public.marcs_id_seq'::regclass);


--
-- TOC entry 2911 (class 2604 OID 196914)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 2905 (class 2604 OID 196915)
-- Name: talla id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talla ALTER COLUMN id SET DEFAULT nextval('public."Talles_id_seq"'::regclass);


--
-- TOC entry 2912 (class 2604 OID 196916)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3070 (class 0 OID 196847)
-- Dependencies: 202
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name) FROM stdin;
1	Chaquetas
2	Polerones
3	Poleras
4	Parcas
5	Camisas
6	Casacas
7	Shorts
8	Pantalones
\.


--
-- TOC entry 3072 (class 0 OID 196855)
-- Dependencies: 204
-- Data for Name: colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.colors (id, name, hexa) FROM stdin;
\.


--
-- TOC entry 3074 (class 0 OID 196863)
-- Dependencies: 206
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genres (id, name) FROM stdin;
1	Femenino
2	Masculino
3	Otros
\.


--
-- TOC entry 3076 (class 0 OID 196871)
-- Dependencies: 208
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.images (id, name, "idProduct") FROM stdin;
\.


--
-- TOC entry 3078 (class 0 OID 196879)
-- Dependencies: 210
-- Data for Name: marcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marcs (id, name, image) FROM stdin;
1	Polo Ralph Lauren\n	polo ralph lauren.jpg
2	Tommy Hilfiger	Tommy_Hilfiger_Logo.png
3	Nautica	Nautica-watches-logo.png
4	Lacoste	logo-Lacoste.png
5	Yves Saint Laurent	Saint-Laurent-simbolo.jpg
6	Burberry	Burberry-Logo-1999.jpg
7	Stone Island	Stone-Island-logo-1.png
8	Polo Sport	Polo-Sport-Ralph-Lauren.jpg
9	Guess	Guess-Logo-5.png
\.


--
-- TOC entry 3080 (class 0 OID 196887)
-- Dependencies: 212
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, idcolor, idcategory, idtalle, idmarca, description, price, linkpago, idgenre, discount) FROM stdin;
\.


--
-- TOC entry 3082 (class 0 OID 196895)
-- Dependencies: 214
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rol (id, nombre) FROM stdin;
1	usuario
2	administrador
3	colaborador
\.


--
-- TOC entry 3068 (class 0 OID 196839)
-- Dependencies: 200
-- Data for Name: talla; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.talla (id, name, abrev) FROM stdin;
1	Small	S
2	Medium	M
3	Large	L
4	Extra Large	XL
5	XX Large	XXL
6	XXX Large	XXXL
\.


--
-- TOC entry 3083 (class 0 OID 196901)
-- Dependencies: 215
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, mail, password, "rolId", phone, calle, comuna) FROM stdin;
1	Eric Mena	eric@mail.com	123123	2	\N	\N	\N
2	Robert Veintemilla	robert@mail.com	321321	3	\N	\N	\N
\.


--
-- TOC entry 3098 (class 0 OID 0)
-- Dependencies: 201
-- Name: Talles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Talles_id_seq"', 1, false);


--
-- TOC entry 3099 (class 0 OID 0)
-- Dependencies: 203
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 205
-- Name: colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colors_id_seq', 1, false);


--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 207
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genres_id_seq', 1, false);


--
-- TOC entry 3102 (class 0 OID 0)
-- Dependencies: 209
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.images_id_seq', 1, false);


--
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 211
-- Name: marcs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marcs_id_seq', 1, false);


--
-- TOC entry 3104 (class 0 OID 0)
-- Dependencies: 213
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- TOC entry 3105 (class 0 OID 0)
-- Dependencies: 216
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 2914 (class 2606 OID 196918)
-- Name: talla Talles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talla
    ADD CONSTRAINT "Talles_pkey" PRIMARY KEY (id);


--
-- TOC entry 2916 (class 2606 OID 196920)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 2918 (class 2606 OID 196922)
-- Name: colors colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);


--
-- TOC entry 2920 (class 2606 OID 196924)
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);


--
-- TOC entry 2922 (class 2606 OID 196926)
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- TOC entry 2924 (class 2606 OID 196928)
-- Name: marcs marcs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcs
    ADD CONSTRAINT marcs_pkey PRIMARY KEY (id);


--
-- TOC entry 2926 (class 2606 OID 196930)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 2928 (class 2606 OID 196932)
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);


--
-- TOC entry 2930 (class 2606 OID 196934)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2931 (class 2606 OID 196970)
-- Name: images images_idProduct_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT "images_idProduct_fkey" FOREIGN KEY ("idProduct") REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 2932 (class 2606 OID 196935)
-- Name: products products_idCategory_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idCategory_fkey" FOREIGN KEY (idcategory) REFERENCES public.categories(id) NOT VALID;


--
-- TOC entry 2933 (class 2606 OID 196940)
-- Name: products products_idColor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idColor_fkey" FOREIGN KEY (idcolor) REFERENCES public.colors(id) NOT VALID;


--
-- TOC entry 2934 (class 2606 OID 196945)
-- Name: products products_idGenre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idGenre_fkey" FOREIGN KEY (idgenre) REFERENCES public.genres(id) NOT VALID;


--
-- TOC entry 2935 (class 2606 OID 196950)
-- Name: products products_idMarca_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idMarca_fkey" FOREIGN KEY (idmarca) REFERENCES public.marcs(id) NOT VALID;


--
-- TOC entry 2936 (class 2606 OID 196955)
-- Name: products products_idTalle_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idTalle_fkey" FOREIGN KEY (idtalle) REFERENCES public.talla(id) NOT VALID;


--
-- TOC entry 2937 (class 2606 OID 196965)
-- Name: users users_id_rol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_rol_fkey FOREIGN KEY ("rolId") REFERENCES public.rol(id) NOT VALID;


-- Completed on 2021-10-04 07:44:21

--
-- PostgreSQL database dump complete
--

