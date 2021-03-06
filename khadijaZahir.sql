PGDMP          -                x           project1Pgsql    13.1    13.1 L               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16723    project1Pgsql    DATABASE     l   CREATE DATABASE "project1Pgsql" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_Morocco.1252';
    DROP DATABASE "project1Pgsql";
                postgres    false            �            1259    16726    admin    TABLE     �   CREATE TABLE public.admin (
    id_admin bigint NOT NULL,
    name_admin character varying(100) NOT NULL,
    email_admin character varying(255) NOT NULL,
    psword_admin character varying(100) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    16724    admin_id_admin_seq    SEQUENCE     {   CREATE SEQUENCE public.admin_id_admin_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_id_admin_seq;
       public          postgres    false    201            	           0    0    admin_id_admin_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_id_admin_seq OWNED BY public.admin.id_admin;
          public          postgres    false    200            �            1259    16777    question    TABLE     �   CREATE TABLE public.question (
    id_qst bigint NOT NULL,
    name_qst character varying NOT NULL,
    paymt_qst integer NOT NULL,
    id_tag bigint NOT NULL,
    id_qsteur bigint NOT NULL,
    id_repdeur bigint NOT NULL
);
    DROP TABLE public.question;
       public         heap    postgres    false            �            1259    16773    question_id_qst_seq    SEQUENCE     |   CREATE SEQUENCE public.question_id_qst_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.question_id_qst_seq;
       public          postgres    false    211            
           0    0    question_id_qst_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.question_id_qst_seq OWNED BY public.question.id_qst;
          public          postgres    false    209            �            1259    16792    question_id_qsteur_seq    SEQUENCE        CREATE SEQUENCE public.question_id_qsteur_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.question_id_qsteur_seq;
       public          postgres    false    211                       0    0    question_id_qsteur_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.question_id_qsteur_seq OWNED BY public.question.id_qsteur;
          public          postgres    false    212            �            1259    16807    question_id_repdeur_seq    SEQUENCE     �   CREATE SEQUENCE public.question_id_repdeur_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.question_id_repdeur_seq;
       public          postgres    false    211                       0    0    question_id_repdeur_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.question_id_repdeur_seq OWNED BY public.question.id_repdeur;
          public          postgres    false    213            �            1259    16775    question_id_tag_seq    SEQUENCE     |   CREATE SEQUENCE public.question_id_tag_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.question_id_tag_seq;
       public          postgres    false    211                       0    0    question_id_tag_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.question_id_tag_seq OWNED BY public.question.id_tag;
          public          postgres    false    210            �            1259    16734    questionneur    TABLE     �   CREATE TABLE public.questionneur (
    id_qsteur bigint NOT NULL,
    name_qsteur character varying NOT NULL,
    email_qsteur character varying NOT NULL,
    psword_qsteur character varying NOT NULL
);
     DROP TABLE public.questionneur;
       public         heap    postgres    false            �            1259    16732    questionneur_id_qsteur_seq    SEQUENCE     �   CREATE SEQUENCE public.questionneur_id_qsteur_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.questionneur_id_qsteur_seq;
       public          postgres    false    203                       0    0    questionneur_id_qsteur_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.questionneur_id_qsteur_seq OWNED BY public.questionneur.id_qsteur;
          public          postgres    false    202            �            1259    16758 	   repondeur    TABLE       CREATE TABLE public.repondeur (
    id_repdeur bigint NOT NULL,
    name_repdeur character varying NOT NULL,
    email_repdeur character varying NOT NULL,
    psword_repdeur character varying NOT NULL,
    dknowledge_repdeur character varying NOT NULL,
    id_tag bigint NOT NULL
);
    DROP TABLE public.repondeur;
       public         heap    postgres    false            �            1259    16754    repondeur_id_repdeur_seq    SEQUENCE     �   CREATE SEQUENCE public.repondeur_id_repdeur_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.repondeur_id_repdeur_seq;
       public          postgres    false    208                       0    0    repondeur_id_repdeur_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.repondeur_id_repdeur_seq OWNED BY public.repondeur.id_repdeur;
          public          postgres    false    206            �            1259    16756    repondeur_id_tag_seq    SEQUENCE     }   CREATE SEQUENCE public.repondeur_id_tag_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.repondeur_id_tag_seq;
       public          postgres    false    208                       0    0    repondeur_id_tag_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.repondeur_id_tag_seq OWNED BY public.repondeur.id_tag;
          public          postgres    false    207            �            1259    16828    reponse    TABLE     �   CREATE TABLE public.reponse (
    id_rep bigint NOT NULL,
    name_rep character varying NOT NULL,
    id_tag bigint NOT NULL,
    id_qst bigint NOT NULL
);
    DROP TABLE public.reponse;
       public         heap    postgres    false            �            1259    16826    reponse_id_qst_seq    SEQUENCE     {   CREATE SEQUENCE public.reponse_id_qst_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.reponse_id_qst_seq;
       public          postgres    false    217                       0    0    reponse_id_qst_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.reponse_id_qst_seq OWNED BY public.reponse.id_qst;
          public          postgres    false    216            �            1259    16822    reponse_id_rep_seq    SEQUENCE     {   CREATE SEQUENCE public.reponse_id_rep_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.reponse_id_rep_seq;
       public          postgres    false    217                       0    0    reponse_id_rep_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.reponse_id_rep_seq OWNED BY public.reponse.id_rep;
          public          postgres    false    214            �            1259    16824    reponse_id_tag_seq    SEQUENCE     {   CREATE SEQUENCE public.reponse_id_tag_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.reponse_id_tag_seq;
       public          postgres    false    217                       0    0    reponse_id_tag_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.reponse_id_tag_seq OWNED BY public.reponse.id_tag;
          public          postgres    false    215            �            1259    16745    tag    TABLE     �   CREATE TABLE public.tag (
    id_tag bigint NOT NULL,
    name_tag character varying NOT NULL,
    name_category character varying NOT NULL
);
    DROP TABLE public.tag;
       public         heap    postgres    false            �            1259    16743    tag_id_tag_seq    SEQUENCE     w   CREATE SEQUENCE public.tag_id_tag_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tag_id_tag_seq;
       public          postgres    false    205                       0    0    tag_id_tag_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tag_id_tag_seq OWNED BY public.tag.id_tag;
          public          postgres    false    204            Q           2604    16729    admin id_admin    DEFAULT     p   ALTER TABLE ONLY public.admin ALTER COLUMN id_admin SET DEFAULT nextval('public.admin_id_admin_seq'::regclass);
 =   ALTER TABLE public.admin ALTER COLUMN id_admin DROP DEFAULT;
       public          postgres    false    201    200    201            V           2604    16780    question id_qst    DEFAULT     r   ALTER TABLE ONLY public.question ALTER COLUMN id_qst SET DEFAULT nextval('public.question_id_qst_seq'::regclass);
 >   ALTER TABLE public.question ALTER COLUMN id_qst DROP DEFAULT;
       public          postgres    false    211    209    211            W           2604    16781    question id_tag    DEFAULT     r   ALTER TABLE ONLY public.question ALTER COLUMN id_tag SET DEFAULT nextval('public.question_id_tag_seq'::regclass);
 >   ALTER TABLE public.question ALTER COLUMN id_tag DROP DEFAULT;
       public          postgres    false    210    211    211            X           2604    16794    question id_qsteur    DEFAULT     x   ALTER TABLE ONLY public.question ALTER COLUMN id_qsteur SET DEFAULT nextval('public.question_id_qsteur_seq'::regclass);
 A   ALTER TABLE public.question ALTER COLUMN id_qsteur DROP DEFAULT;
       public          postgres    false    212    211            Y           2604    16809    question id_repdeur    DEFAULT     z   ALTER TABLE ONLY public.question ALTER COLUMN id_repdeur SET DEFAULT nextval('public.question_id_repdeur_seq'::regclass);
 B   ALTER TABLE public.question ALTER COLUMN id_repdeur DROP DEFAULT;
       public          postgres    false    213    211            R           2604    16737    questionneur id_qsteur    DEFAULT     �   ALTER TABLE ONLY public.questionneur ALTER COLUMN id_qsteur SET DEFAULT nextval('public.questionneur_id_qsteur_seq'::regclass);
 E   ALTER TABLE public.questionneur ALTER COLUMN id_qsteur DROP DEFAULT;
       public          postgres    false    202    203    203            T           2604    16761    repondeur id_repdeur    DEFAULT     |   ALTER TABLE ONLY public.repondeur ALTER COLUMN id_repdeur SET DEFAULT nextval('public.repondeur_id_repdeur_seq'::regclass);
 C   ALTER TABLE public.repondeur ALTER COLUMN id_repdeur DROP DEFAULT;
       public          postgres    false    208    206    208            U           2604    16762    repondeur id_tag    DEFAULT     t   ALTER TABLE ONLY public.repondeur ALTER COLUMN id_tag SET DEFAULT nextval('public.repondeur_id_tag_seq'::regclass);
 ?   ALTER TABLE public.repondeur ALTER COLUMN id_tag DROP DEFAULT;
       public          postgres    false    207    208    208            Z           2604    16831    reponse id_rep    DEFAULT     p   ALTER TABLE ONLY public.reponse ALTER COLUMN id_rep SET DEFAULT nextval('public.reponse_id_rep_seq'::regclass);
 =   ALTER TABLE public.reponse ALTER COLUMN id_rep DROP DEFAULT;
       public          postgres    false    214    217    217            [           2604    16832    reponse id_tag    DEFAULT     p   ALTER TABLE ONLY public.reponse ALTER COLUMN id_tag SET DEFAULT nextval('public.reponse_id_tag_seq'::regclass);
 =   ALTER TABLE public.reponse ALTER COLUMN id_tag DROP DEFAULT;
       public          postgres    false    215    217    217            \           2604    16833    reponse id_qst    DEFAULT     p   ALTER TABLE ONLY public.reponse ALTER COLUMN id_qst SET DEFAULT nextval('public.reponse_id_qst_seq'::regclass);
 =   ALTER TABLE public.reponse ALTER COLUMN id_qst DROP DEFAULT;
       public          postgres    false    217    216    217            S           2604    16748 
   tag id_tag    DEFAULT     h   ALTER TABLE ONLY public.tag ALTER COLUMN id_tag SET DEFAULT nextval('public.tag_id_tag_seq'::regclass);
 9   ALTER TABLE public.tag ALTER COLUMN id_tag DROP DEFAULT;
       public          postgres    false    204    205    205            �          0    16726    admin 
   TABLE DATA           P   COPY public.admin (id_admin, name_admin, email_admin, psword_admin) FROM stdin;
    public          postgres    false    201   dU       �          0    16777    question 
   TABLE DATA           ^   COPY public.question (id_qst, name_qst, paymt_qst, id_tag, id_qsteur, id_repdeur) FROM stdin;
    public          postgres    false    211   �U       �          0    16734    questionneur 
   TABLE DATA           [   COPY public.questionneur (id_qsteur, name_qsteur, email_qsteur, psword_qsteur) FROM stdin;
    public          postgres    false    203   �U       �          0    16758 	   repondeur 
   TABLE DATA           x   COPY public.repondeur (id_repdeur, name_repdeur, email_repdeur, psword_repdeur, dknowledge_repdeur, id_tag) FROM stdin;
    public          postgres    false    208   �U                 0    16828    reponse 
   TABLE DATA           C   COPY public.reponse (id_rep, name_rep, id_tag, id_qst) FROM stdin;
    public          postgres    false    217   V       �          0    16745    tag 
   TABLE DATA           >   COPY public.tag (id_tag, name_tag, name_category) FROM stdin;
    public          postgres    false    205   "V                  0    0    admin_id_admin_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_id_admin_seq', 2, true);
          public          postgres    false    200                       0    0    question_id_qst_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.question_id_qst_seq', 1, false);
          public          postgres    false    209                       0    0    question_id_qsteur_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.question_id_qsteur_seq', 1, false);
          public          postgres    false    212                       0    0    question_id_repdeur_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.question_id_repdeur_seq', 1, false);
          public          postgres    false    213                       0    0    question_id_tag_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.question_id_tag_seq', 1, false);
          public          postgres    false    210                       0    0    questionneur_id_qsteur_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.questionneur_id_qsteur_seq', 1, false);
          public          postgres    false    202                       0    0    repondeur_id_repdeur_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.repondeur_id_repdeur_seq', 1, false);
          public          postgres    false    206                       0    0    repondeur_id_tag_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.repondeur_id_tag_seq', 1, false);
          public          postgres    false    207                       0    0    reponse_id_qst_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.reponse_id_qst_seq', 1, false);
          public          postgres    false    216                       0    0    reponse_id_rep_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.reponse_id_rep_seq', 1, false);
          public          postgres    false    214                       0    0    reponse_id_tag_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.reponse_id_tag_seq', 1, false);
          public          postgres    false    215                        0    0    tag_id_tag_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tag_id_tag_seq', 1, false);
          public          postgres    false    204            ^           2606    16731    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id_admin);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    201            f           2606    16786    question question_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (id_qst);
 @   ALTER TABLE ONLY public.question DROP CONSTRAINT question_pkey;
       public            postgres    false    211            `           2606    16742    questionneur questionneur_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.questionneur
    ADD CONSTRAINT questionneur_pkey PRIMARY KEY (id_qsteur);
 H   ALTER TABLE ONLY public.questionneur DROP CONSTRAINT questionneur_pkey;
       public            postgres    false    203            d           2606    16767    repondeur repondeur_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.repondeur
    ADD CONSTRAINT repondeur_pkey PRIMARY KEY (id_repdeur);
 B   ALTER TABLE ONLY public.repondeur DROP CONSTRAINT repondeur_pkey;
       public            postgres    false    208            h           2606    16838    reponse reponse_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT reponse_pkey PRIMARY KEY (id_rep);
 >   ALTER TABLE ONLY public.reponse DROP CONSTRAINT reponse_pkey;
       public            postgres    false    217            b           2606    16753    tag tag_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id_tag);
 6   ALTER TABLE ONLY public.tag DROP CONSTRAINT tag_pkey;
       public            postgres    false    205            k           2606    16795     question question_id_qsteur_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_id_qsteur_fkey FOREIGN KEY (id_qsteur) REFERENCES public.questionneur(id_qsteur);
 J   ALTER TABLE ONLY public.question DROP CONSTRAINT question_id_qsteur_fkey;
       public          postgres    false    211    2912    203            l           2606    16810 !   question question_id_repdeur_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_id_repdeur_fkey FOREIGN KEY (id_repdeur) REFERENCES public.repondeur(id_repdeur);
 K   ALTER TABLE ONLY public.question DROP CONSTRAINT question_id_repdeur_fkey;
       public          postgres    false    2916    211    208            j           2606    16787    question question_id_tag_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_id_tag_fkey FOREIGN KEY (id_tag) REFERENCES public.tag(id_tag);
 G   ALTER TABLE ONLY public.question DROP CONSTRAINT question_id_tag_fkey;
       public          postgres    false    205    2914    211            i           2606    16768    repondeur repondeur_id_tag_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.repondeur
    ADD CONSTRAINT repondeur_id_tag_fkey FOREIGN KEY (id_tag) REFERENCES public.tag(id_tag);
 I   ALTER TABLE ONLY public.repondeur DROP CONSTRAINT repondeur_id_tag_fkey;
       public          postgres    false    208    2914    205            n           2606    16844    reponse reponse_id_qst_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT reponse_id_qst_fkey FOREIGN KEY (id_qst) REFERENCES public.question(id_qst);
 E   ALTER TABLE ONLY public.reponse DROP CONSTRAINT reponse_id_qst_fkey;
       public          postgres    false    2918    217    211            m           2606    16839    reponse reponse_id_tag_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT reponse_id_tag_fkey FOREIGN KEY (id_tag) REFERENCES public.tag(id_tag);
 E   ALTER TABLE ONLY public.reponse DROP CONSTRAINT reponse_id_tag_fkey;
       public          postgres    false    2914    205    217            �   :   x�3���HL��J�J��,�K����O�L54qH�M���K���4426�2"Ze� 1�      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �      �      x������ � �     