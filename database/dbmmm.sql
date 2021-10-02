--
-- PostgreSQL database dump
--

-- Dumped from database version 10.16
-- Dumped by pg_dump version 13.1

-- Started on 2021-10-02 16:17:16

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
-- TOC entry 208 (class 1259 OID 74116)
-- Name: talla; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.talla (
    id integer NOT NULL,
    name character varying NOT NULL,
    abrev character varying NOT NULL
);


ALTER TABLE public.talla OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 74114)
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
-- TOC entry 2901 (class 0 OID 0)
-- Dependencies: 207
-- Name: Talles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Talles_id_seq" OWNED BY public.talla.id;


--
-- TOC entry 206 (class 1259 OID 74105)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 74103)
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
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 205
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 204 (class 1259 OID 74094)
-- Name: colors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colors (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.colors OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 74092)
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
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 203
-- Name: colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colors_id_seq OWNED BY public.colors.id;


--
-- TOC entry 200 (class 1259 OID 74072)
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 74070)
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
-- TOC entry 2904 (class 0 OID 0)
-- Dependencies: 199
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;


--
-- TOC entry 212 (class 1259 OID 74135)
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    id integer NOT NULL,
    name character varying NOT NULL,
    "idProducts" integer NOT NULL
);


ALTER TABLE public.images OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 74133)
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
-- TOC entry 2905 (class 0 OID 0)
-- Dependencies: 211
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- TOC entry 210 (class 1259 OID 74124)
-- Name: marcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marcs (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.marcs OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 74122)
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
-- TOC entry 2906 (class 0 OID 0)
-- Dependencies: 209
-- Name: marcs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marcs_id_seq OWNED BY public.marcs.id;


--
-- TOC entry 202 (class 1259 OID 74083)
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
    linkpago character varying NOT NULL,
    "idGenre" integer NOT NULL,
    discount integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 74081)
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
-- TOC entry 2907 (class 0 OID 0)
-- Dependencies: 201
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 198 (class 1259 OID 65890)
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol (
    id integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 65881)
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
-- TOC entry 196 (class 1259 OID 65879)
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
-- TOC entry 2908 (class 0 OID 0)
-- Dependencies: 196
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2729 (class 2604 OID 74108)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 2728 (class 2604 OID 74097)
-- Name: colors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors ALTER COLUMN id SET DEFAULT nextval('public.colors_id_seq'::regclass);


--
-- TOC entry 2726 (class 2604 OID 74075)
-- Name: genres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);


--
-- TOC entry 2732 (class 2604 OID 74138)
-- Name: images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- TOC entry 2731 (class 2604 OID 74127)
-- Name: marcs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcs ALTER COLUMN id SET DEFAULT nextval('public.marcs_id_seq'::regclass);


--
-- TOC entry 2727 (class 2604 OID 74086)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 2730 (class 2604 OID 74119)
-- Name: talla id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talla ALTER COLUMN id SET DEFAULT nextval('public."Talles_id_seq"'::regclass);


--
-- TOC entry 2725 (class 2604 OID 65928)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 2889 (class 0 OID 74105)
-- Dependencies: 206
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name) FROM stdin;
\.


--
-- TOC entry 2887 (class 0 OID 74094)
-- Dependencies: 204
-- Data for Name: colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.colors (id, name) FROM stdin;
\.


--
-- TOC entry 2883 (class 0 OID 74072)
-- Dependencies: 200
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genres (id, name) FROM stdin;
1	Femenino
2	Masculino
3	Otros
\.


--
-- TOC entry 2895 (class 0 OID 74135)
-- Dependencies: 212
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.images (id, name, "idProducts") FROM stdin;
\.


--
-- TOC entry 2893 (class 0 OID 74124)
-- Dependencies: 210
-- Data for Name: marcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marcs (id, name, description) FROM stdin;
\.


--
-- TOC entry 2885 (class 0 OID 74083)
-- Dependencies: 202
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, "idColor", "idCategory", "idTalle", "idMarca", description, price, linkpago, "idGenre", discount) FROM stdin;
\.


--
-- TOC entry 2881 (class 0 OID 65890)
-- Dependencies: 198
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rol (id, nombre) FROM stdin;
1	usuario
2	administrador
3	colaborador
\.


--
-- TOC entry 2891 (class 0 OID 74116)
-- Dependencies: 208
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
-- TOC entry 2880 (class 0 OID 65881)
-- Dependencies: 197
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, mail, password, "rolId", "genreID") FROM stdin;
1	Eric Mena	eric@mail.com	123123	2	2
2	Robert Veintemilla	robert@mail.com	321321	3	2
\.


--
-- TOC entry 2909 (class 0 OID 0)
-- Dependencies: 207
-- Name: Talles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Talles_id_seq"', 1, false);


--
-- TOC entry 2910 (class 0 OID 0)
-- Dependencies: 205
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- TOC entry 2911 (class 0 OID 0)
-- Dependencies: 203
-- Name: colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colors_id_seq', 1, false);


--
-- TOC entry 2912 (class 0 OID 0)
-- Dependencies: 199
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genres_id_seq', 1, false);


--
-- TOC entry 2913 (class 0 OID 0)
-- Dependencies: 211
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.images_id_seq', 1, false);


--
-- TOC entry 2914 (class 0 OID 0)
-- Dependencies: 209
-- Name: marcs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marcs_id_seq', 1, false);


--
-- TOC entry 2915 (class 0 OID 0)
-- Dependencies: 201
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- TOC entry 2916 (class 0 OID 0)
-- Dependencies: 196
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 2746 (class 2606 OID 74121)
-- Name: talla Talles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talla
    ADD CONSTRAINT "Talles_pkey" PRIMARY KEY (id);


--
-- TOC entry 2744 (class 2606 OID 74113)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 2742 (class 2606 OID 74102)
-- Name: colors colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);


--
-- TOC entry 2738 (class 2606 OID 74080)
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);


--
-- TOC entry 2750 (class 2606 OID 74143)
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- TOC entry 2748 (class 2606 OID 74132)
-- Name: marcs marcs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcs
    ADD CONSTRAINT marcs_pkey PRIMARY KEY (id);


--
-- TOC entry 2740 (class 2606 OID 74091)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 2736 (class 2606 OID 65897)
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);


--
-- TOC entry 2734 (class 2606 OID 65889)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2754 (class 2606 OID 74152)
-- Name: products products_idCategory_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idCategory_fkey" FOREIGN KEY ("idCategory") REFERENCES public.categories(id) NOT VALID;


--
-- TOC entry 2753 (class 2606 OID 74147)
-- Name: products products_idColor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idColor_fkey" FOREIGN KEY ("idColor") REFERENCES public.colors(id) NOT VALID;


--
-- TOC entry 2757 (class 2606 OID 74167)
-- Name: products products_idGenre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idGenre_fkey" FOREIGN KEY ("idGenre") REFERENCES public.genres(id) NOT VALID;


--
-- TOC entry 2756 (class 2606 OID 74162)
-- Name: products products_idMarca_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idMarca_fkey" FOREIGN KEY ("idMarca") REFERENCES public.marcs(id) NOT VALID;


--
-- TOC entry 2755 (class 2606 OID 74157)
-- Name: products products_idTalle_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idTalle_fkey" FOREIGN KEY ("idTalle") REFERENCES public.talla(id) NOT VALID;


--
-- TOC entry 2752 (class 2606 OID 74172)
-- Name: users users_genreID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_genreID_fkey" FOREIGN KEY ("genreID") REFERENCES public.genres(id) NOT VALID;


--
-- TOC entry 2751 (class 2606 OID 65898)
-- Name: users users_id_rol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_rol_fkey FOREIGN KEY ("rolId") REFERENCES public.rol(id) NOT VALID;


-- Completed on 2021-10-02 16:17:16

--
-- PostgreSQL database dump complete
--

