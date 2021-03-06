PGDMP     !                	    y            mundomejormodaDB    10.16    13.1 F    R           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            S           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            T           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            U           1262    65878    mundomejormodaDB    DATABASE     r   CREATE DATABASE "mundomejormodaDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Argentina.1252';
 "   DROP DATABASE "mundomejormodaDB";
                postgres    false            ?            1259    74116    talla    TABLE     ?   CREATE TABLE public.talla (
    id integer NOT NULL,
    name character varying NOT NULL,
    abrev character varying NOT NULL
);
    DROP TABLE public.talla;
       public            postgres    false            ?            1259    74114    Talles_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Talles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Talles_id_seq";
       public          postgres    false    208            V           0    0    Talles_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public."Talles_id_seq" OWNED BY public.talla.id;
          public          postgres    false    207            ?            1259    74105 
   categories    TABLE     X   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.categories;
       public            postgres    false            ?            1259    74103    categories_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    206            W           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    205            ?            1259    74094    colors    TABLE     ]   CREATE TABLE public.colors (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.colors;
       public            postgres    false            ?            1259    74092    colors_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.colors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.colors_id_seq;
       public          postgres    false    204            X           0    0    colors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.colors_id_seq OWNED BY public.colors.id;
          public          postgres    false    203            ?            1259    74072    genres    TABLE     ]   CREATE TABLE public.genres (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.genres;
       public            postgres    false            ?            1259    74070    genres_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genres_id_seq;
       public          postgres    false    200            Y           0    0    genres_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;
          public          postgres    false    199            ?            1259    74135    images    TABLE     ?   CREATE TABLE public.images (
    id integer NOT NULL,
    name character varying NOT NULL,
    "idProducts" integer NOT NULL
);
    DROP TABLE public.images;
       public            postgres    false            ?            1259    74133    images_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public          postgres    false    212            Z           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
          public          postgres    false    211            ?            1259    74124    marcs    TABLE     ?   CREATE TABLE public.marcs (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL
);
    DROP TABLE public.marcs;
       public            postgres    false            ?            1259    74122    marcs_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.marcs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.marcs_id_seq;
       public          postgres    false    210            [           0    0    marcs_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.marcs_id_seq OWNED BY public.marcs.id;
          public          postgres    false    209            ?            1259    74083    products    TABLE     ?  CREATE TABLE public.products (
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
    DROP TABLE public.products;
       public            postgres    false            ?            1259    74081    products_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    202            \           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    201            ?            1259    65890    rol    TABLE     \   CREATE TABLE public.rol (
    id integer NOT NULL,
    nombre character varying NOT NULL
);
    DROP TABLE public.rol;
       public            postgres    false            ?            1259    65881    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL,
    mail character varying NOT NULL,
    password character varying NOT NULL,
    "rolId" integer NOT NULL,
    "genreID" integer
);
    DROP TABLE public.users;
       public            postgres    false            ?            1259    65879    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    197            ]           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    196            ?
           2604    74108    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206            ?
           2604    74097 	   colors id    DEFAULT     f   ALTER TABLE ONLY public.colors ALTER COLUMN id SET DEFAULT nextval('public.colors_id_seq'::regclass);
 8   ALTER TABLE public.colors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    204    204            ?
           2604    74075 	   genres id    DEFAULT     f   ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);
 8   ALTER TABLE public.genres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    199    200            ?
           2604    74138 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            ?
           2604    74127    marcs id    DEFAULT     d   ALTER TABLE ONLY public.marcs ALTER COLUMN id SET DEFAULT nextval('public.marcs_id_seq'::regclass);
 7   ALTER TABLE public.marcs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            ?
           2604    74086    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201    202            ?
           2604    74119    talla id    DEFAULT     g   ALTER TABLE ONLY public.talla ALTER COLUMN id SET DEFAULT nextval('public."Talles_id_seq"'::regclass);
 7   ALTER TABLE public.talla ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208            ?
           2604    65928    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    196    197    197            I          0    74105 
   categories 
   TABLE DATA           .   COPY public.categories (id, name) FROM stdin;
    public          postgres    false    206   K       G          0    74094    colors 
   TABLE DATA           *   COPY public.colors (id, name) FROM stdin;
    public          postgres    false    204   #K       C          0    74072    genres 
   TABLE DATA           *   COPY public.genres (id, name) FROM stdin;
    public          postgres    false    200   @K       O          0    74135    images 
   TABLE DATA           8   COPY public.images (id, name, "idProducts") FROM stdin;
    public          postgres    false    212   yK       M          0    74124    marcs 
   TABLE DATA           6   COPY public.marcs (id, name, description) FROM stdin;
    public          postgres    false    210   ?K       E          0    74083    products 
   TABLE DATA           ?   COPY public.products (id, name, "idColor", "idCategory", "idTalle", "idMarca", description, price, linkpago, "idGenre", discount) FROM stdin;
    public          postgres    false    202   ?K       A          0    65890    rol 
   TABLE DATA           )   COPY public.rol (id, nombre) FROM stdin;
    public          postgres    false    198   ?K       K          0    74116    talla 
   TABLE DATA           0   COPY public.talla (id, name, abrev) FROM stdin;
    public          postgres    false    208   L       @          0    65881    users 
   TABLE DATA           M   COPY public.users (id, name, mail, password, "rolId", "genreID") FROM stdin;
    public          postgres    false    197   fL       ^           0    0    Talles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Talles_id_seq"', 1, false);
          public          postgres    false    207            _           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    205            `           0    0    colors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.colors_id_seq', 1, false);
          public          postgres    false    203            a           0    0    genres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.genres_id_seq', 1, false);
          public          postgres    false    199            b           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 1, false);
          public          postgres    false    211            c           0    0    marcs_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.marcs_id_seq', 1, false);
          public          postgres    false    209            d           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 1, false);
          public          postgres    false    201            e           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    196            ?
           2606    74121    talla Talles_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.talla
    ADD CONSTRAINT "Talles_pkey" PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.talla DROP CONSTRAINT "Talles_pkey";
       public            postgres    false    208            ?
           2606    74113    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    206            ?
           2606    74102    colors colors_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.colors DROP CONSTRAINT colors_pkey;
       public            postgres    false    204            ?
           2606    74080    genres genres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    200            ?
           2606    74143    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    212            ?
           2606    74132    marcs marcs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.marcs
    ADD CONSTRAINT marcs_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.marcs DROP CONSTRAINT marcs_pkey;
       public            postgres    false    210            ?
           2606    74091    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    202            ?
           2606    65897    rol rol_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    198            ?
           2606    65889    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    197            ?
           2606    74152 !   products products_idCategory_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idCategory_fkey" FOREIGN KEY ("idCategory") REFERENCES public.categories(id) NOT VALID;
 M   ALTER TABLE ONLY public.products DROP CONSTRAINT "products_idCategory_fkey";
       public          postgres    false    206    202    2744            ?
           2606    74147    products products_idColor_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idColor_fkey" FOREIGN KEY ("idColor") REFERENCES public.colors(id) NOT VALID;
 J   ALTER TABLE ONLY public.products DROP CONSTRAINT "products_idColor_fkey";
       public          postgres    false    2742    202    204            ?
           2606    74167    products products_idGenre_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idGenre_fkey" FOREIGN KEY ("idGenre") REFERENCES public.genres(id) NOT VALID;
 J   ALTER TABLE ONLY public.products DROP CONSTRAINT "products_idGenre_fkey";
       public          postgres    false    2738    200    202            ?
           2606    74162    products products_idMarca_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idMarca_fkey" FOREIGN KEY ("idMarca") REFERENCES public.marcs(id) NOT VALID;
 J   ALTER TABLE ONLY public.products DROP CONSTRAINT "products_idMarca_fkey";
       public          postgres    false    202    2748    210            ?
           2606    74157    products products_idTalle_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_idTalle_fkey" FOREIGN KEY ("idTalle") REFERENCES public.talla(id) NOT VALID;
 J   ALTER TABLE ONLY public.products DROP CONSTRAINT "products_idTalle_fkey";
       public          postgres    false    2746    202    208            ?
           2606    74172    users users_genreID_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_genreID_fkey" FOREIGN KEY ("genreID") REFERENCES public.genres(id) NOT VALID;
 D   ALTER TABLE ONLY public.users DROP CONSTRAINT "users_genreID_fkey";
       public          postgres    false    2738    197    200            ?
           2606    65898    users users_id_rol_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_rol_fkey FOREIGN KEY ("rolId") REFERENCES public.rol(id) NOT VALID;
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_id_rol_fkey;
       public          postgres    false    198    2736    197            I      x?????? ? ?      G      x?????? ? ?      C   )   x?3?tK?M?????2??M,N.???9?K????b???? ??
k      O      x?????? ? ?      M      x?????? ? ?      E      x?????? ? ?      A   0   x?3?,-.M,???2?LL????,.)JL?/?2?L??ILʇ?b???? ^y      K   F   x?3??M????2??MM?,????2??I,JO???2?t?()JT??#|?L9#"`< ?H"?@?=... ޫ?      @   Q   x?3?t-?LV?M?K?L?r3s???s9????ӈӈˈ3(?)??D!,53?$573''??,?PoldD?@\1z\\\ ???     