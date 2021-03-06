PGDMP     0    )                x        
   plateforme    13.1    13.1 E    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16396 
   plateforme    DATABASE     g   CREATE DATABASE plateforme WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_Morocco.1252';
    DROP DATABASE plateforme;
                postgres    false                        2615    16397    plate    SCHEMA        CREATE SCHEMA plate;
    DROP SCHEMA plate;
                postgres    false            �            1259    16498    admin    TABLE     �   CREATE TABLE plate.admin (
    admin_id integer NOT NULL,
    admin_nom character varying(60) NOT NULL,
    admin_email character varying(100) NOT NULL,
    admin_password character varying(60) NOT NULL
);
    DROP TABLE plate.admin;
       plate         heap    postgres    false    6            �            1259    16691    questionneur    TABLE     �   CREATE TABLE plate.questionneur (
    qus_id integer NOT NULL,
    qus_nom character varying NOT NULL,
    qus_email character varying NOT NULL,
    qus_password character varying NOT NULL,
    tag_id bigint NOT NULL
);
    DROP TABLE plate.questionneur;
       plate         heap    postgres    false    6            �            1259    16687    questionneur_qus_id_seq    SEQUENCE     �   CREATE SEQUENCE plate.questionneur_qus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE plate.questionneur_qus_id_seq;
       plate          postgres    false    6    205                       0    0    questionneur_qus_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE plate.questionneur_qus_id_seq OWNED BY plate.questionneur.qus_id;
          plate          postgres    false    203            �            1259    16689    questionneur_tag_id_seq    SEQUENCE        CREATE SEQUENCE plate.questionneur_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE plate.questionneur_tag_id_seq;
       plate          postgres    false    6    205                       0    0    questionneur_tag_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE plate.questionneur_tag_id_seq OWNED BY plate.questionneur.tag_id;
          plate          postgres    false    204            �            1259    16730    qustion    TABLE     �   CREATE TABLE plate.qustion (
    q_id integer NOT NULL,
    q_payment integer NOT NULL,
    q_question text NOT NULL,
    idqus bigint NOT NULL,
    rep_id integer NOT NULL
);
    DROP TABLE plate.qustion;
       plate         heap    postgres    false    6            �            1259    16728    qustion_idqus_seq    SEQUENCE     y   CREATE SEQUENCE plate.qustion_idqus_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE plate.qustion_idqus_seq;
       plate          postgres    false    6    211                       0    0    qustion_idqus_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE plate.qustion_idqus_seq OWNED BY plate.qustion.idqus;
          plate          postgres    false    210            �            1259    16726    qustion_q_id_seq    SEQUENCE     �   CREATE SEQUENCE plate.qustion_q_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE plate.qustion_q_id_seq;
       plate          postgres    false    6    211                       0    0    qustion_q_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE plate.qustion_q_id_seq OWNED BY plate.qustion.q_id;
          plate          postgres    false    209            �            1259    16772    qustion_rep_id_seq    SEQUENCE     �   CREATE SEQUENCE plate.qustion_rep_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE plate.qustion_rep_id_seq;
       plate          postgres    false    6    211                       0    0    qustion_rep_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE plate.qustion_rep_id_seq OWNED BY plate.qustion.rep_id;
          plate          postgres    false    216            �            1259    16711 	   repondeur    TABLE     �   CREATE TABLE plate.repondeur (
    rep_id integer NOT NULL,
    rep_nom character varying NOT NULL,
    rep_email character varying NOT NULL,
    rep_assword character varying NOT NULL,
    tag_id bigint NOT NULL
);
    DROP TABLE plate.repondeur;
       plate         heap    postgres    false    6            �            1259    16707    repondeur_rep_id_seq    SEQUENCE     �   CREATE SEQUENCE plate.repondeur_rep_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE plate.repondeur_rep_id_seq;
       plate          postgres    false    6    208                       0    0    repondeur_rep_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE plate.repondeur_rep_id_seq OWNED BY plate.repondeur.rep_id;
          plate          postgres    false    206            �            1259    16709    repondeur_tag_id_seq    SEQUENCE     |   CREATE SEQUENCE plate.repondeur_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE plate.repondeur_tag_id_seq;
       plate          postgres    false    6    208                       0    0    repondeur_tag_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE plate.repondeur_tag_id_seq OWNED BY plate.repondeur.tag_id;
          plate          postgres    false    207            �            1259    16751    reponse    TABLE     �   CREATE TABLE plate.reponse (
    r_id integer NOT NULL,
    r_reponse text NOT NULL,
    id_qus bigint NOT NULL,
    id_rep bigint NOT NULL
);
    DROP TABLE plate.reponse;
       plate         heap    postgres    false    6            �            1259    16747    reponse_id_qus_seq    SEQUENCE     z   CREATE SEQUENCE plate.reponse_id_qus_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE plate.reponse_id_qus_seq;
       plate          postgres    false    6    215                       0    0    reponse_id_qus_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE plate.reponse_id_qus_seq OWNED BY plate.reponse.id_qus;
          plate          postgres    false    213            �            1259    16749    reponse_id_rep_seq    SEQUENCE     z   CREATE SEQUENCE plate.reponse_id_rep_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE plate.reponse_id_rep_seq;
       plate          postgres    false    215    6            	           0    0    reponse_id_rep_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE plate.reponse_id_rep_seq OWNED BY plate.reponse.id_rep;
          plate          postgres    false    214            �            1259    16745    reponse_r_id_seq    SEQUENCE     �   CREATE SEQUENCE plate.reponse_r_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE plate.reponse_r_id_seq;
       plate          postgres    false    6    215            
           0    0    reponse_r_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE plate.reponse_r_id_seq OWNED BY plate.reponse.r_id;
          plate          postgres    false    212            �            1259    16503    tag    TABLE     d   CREATE TABLE plate.tag (
    tag_id integer NOT NULL,
    tag_nom character varying(50) NOT NULL
);
    DROP TABLE plate.tag;
       plate         heap    postgres    false    6            M           2604    16694    questionneur qus_id    DEFAULT     x   ALTER TABLE ONLY plate.questionneur ALTER COLUMN qus_id SET DEFAULT nextval('plate.questionneur_qus_id_seq'::regclass);
 A   ALTER TABLE plate.questionneur ALTER COLUMN qus_id DROP DEFAULT;
       plate          postgres    false    205    203    205            N           2604    16695    questionneur tag_id    DEFAULT     x   ALTER TABLE ONLY plate.questionneur ALTER COLUMN tag_id SET DEFAULT nextval('plate.questionneur_tag_id_seq'::regclass);
 A   ALTER TABLE plate.questionneur ALTER COLUMN tag_id DROP DEFAULT;
       plate          postgres    false    205    204    205            Q           2604    16733    qustion q_id    DEFAULT     j   ALTER TABLE ONLY plate.qustion ALTER COLUMN q_id SET DEFAULT nextval('plate.qustion_q_id_seq'::regclass);
 :   ALTER TABLE plate.qustion ALTER COLUMN q_id DROP DEFAULT;
       plate          postgres    false    209    211    211            R           2604    16734    qustion idqus    DEFAULT     l   ALTER TABLE ONLY plate.qustion ALTER COLUMN idqus SET DEFAULT nextval('plate.qustion_idqus_seq'::regclass);
 ;   ALTER TABLE plate.qustion ALTER COLUMN idqus DROP DEFAULT;
       plate          postgres    false    210    211    211            S           2604    16774    qustion rep_id    DEFAULT     n   ALTER TABLE ONLY plate.qustion ALTER COLUMN rep_id SET DEFAULT nextval('plate.qustion_rep_id_seq'::regclass);
 <   ALTER TABLE plate.qustion ALTER COLUMN rep_id DROP DEFAULT;
       plate          postgres    false    216    211            O           2604    16714    repondeur rep_id    DEFAULT     r   ALTER TABLE ONLY plate.repondeur ALTER COLUMN rep_id SET DEFAULT nextval('plate.repondeur_rep_id_seq'::regclass);
 >   ALTER TABLE plate.repondeur ALTER COLUMN rep_id DROP DEFAULT;
       plate          postgres    false    208    206    208            P           2604    16715    repondeur tag_id    DEFAULT     r   ALTER TABLE ONLY plate.repondeur ALTER COLUMN tag_id SET DEFAULT nextval('plate.repondeur_tag_id_seq'::regclass);
 >   ALTER TABLE plate.repondeur ALTER COLUMN tag_id DROP DEFAULT;
       plate          postgres    false    208    207    208            T           2604    16754    reponse r_id    DEFAULT     j   ALTER TABLE ONLY plate.reponse ALTER COLUMN r_id SET DEFAULT nextval('plate.reponse_r_id_seq'::regclass);
 :   ALTER TABLE plate.reponse ALTER COLUMN r_id DROP DEFAULT;
       plate          postgres    false    215    212    215            U           2604    16755    reponse id_qus    DEFAULT     n   ALTER TABLE ONLY plate.reponse ALTER COLUMN id_qus SET DEFAULT nextval('plate.reponse_id_qus_seq'::regclass);
 <   ALTER TABLE plate.reponse ALTER COLUMN id_qus DROP DEFAULT;
       plate          postgres    false    213    215    215            V           2604    16756    reponse id_rep    DEFAULT     n   ALTER TABLE ONLY plate.reponse ALTER COLUMN id_rep SET DEFAULT nextval('plate.reponse_id_rep_seq'::regclass);
 <   ALTER TABLE plate.reponse ALTER COLUMN id_rep DROP DEFAULT;
       plate          postgres    false    215    214    215            �          0    16498    admin 
   TABLE DATA           P   COPY plate.admin (admin_id, admin_nom, admin_email, admin_password) FROM stdin;
    plate          postgres    false    201   �K       �          0    16691    questionneur 
   TABLE DATA           W   COPY plate.questionneur (qus_id, qus_nom, qus_email, qus_password, tag_id) FROM stdin;
    plate          postgres    false    205   �K       �          0    16730    qustion 
   TABLE DATA           L   COPY plate.qustion (q_id, q_payment, q_question, idqus, rep_id) FROM stdin;
    plate          postgres    false    211   �K       �          0    16711 	   repondeur 
   TABLE DATA           S   COPY plate.repondeur (rep_id, rep_nom, rep_email, rep_assword, tag_id) FROM stdin;
    plate          postgres    false    208   L       �          0    16751    reponse 
   TABLE DATA           A   COPY plate.reponse (r_id, r_reponse, id_qus, id_rep) FROM stdin;
    plate          postgres    false    215   $L       �          0    16503    tag 
   TABLE DATA           -   COPY plate.tag (tag_id, tag_nom) FROM stdin;
    plate          postgres    false    202   AL                  0    0    questionneur_qus_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('plate.questionneur_qus_id_seq', 1, false);
          plate          postgres    false    203                       0    0    questionneur_tag_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('plate.questionneur_tag_id_seq', 1, false);
          plate          postgres    false    204                       0    0    qustion_idqus_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('plate.qustion_idqus_seq', 1, false);
          plate          postgres    false    210                       0    0    qustion_q_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('plate.qustion_q_id_seq', 1, false);
          plate          postgres    false    209                       0    0    qustion_rep_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('plate.qustion_rep_id_seq', 1, false);
          plate          postgres    false    216                       0    0    repondeur_rep_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('plate.repondeur_rep_id_seq', 1, false);
          plate          postgres    false    206                       0    0    repondeur_tag_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('plate.repondeur_tag_id_seq', 1, false);
          plate          postgres    false    207                       0    0    reponse_id_qus_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('plate.reponse_id_qus_seq', 1, false);
          plate          postgres    false    213                       0    0    reponse_id_rep_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('plate.reponse_id_rep_seq', 1, false);
          plate          postgres    false    214                       0    0    reponse_r_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('plate.reponse_r_id_seq', 1, false);
          plate          postgres    false    212            X           2606    16502    admin pk_admin 
   CONSTRAINT     Q   ALTER TABLE ONLY plate.admin
    ADD CONSTRAINT pk_admin PRIMARY KEY (admin_id);
 7   ALTER TABLE ONLY plate.admin DROP CONSTRAINT pk_admin;
       plate            postgres    false    201            Z           2606    16507 
   tag pk_tag 
   CONSTRAINT     K   ALTER TABLE ONLY plate.tag
    ADD CONSTRAINT pk_tag PRIMARY KEY (tag_id);
 3   ALTER TABLE ONLY plate.tag DROP CONSTRAINT pk_tag;
       plate            postgres    false    202            \           2606    16700    questionneur questionneur_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY plate.questionneur
    ADD CONSTRAINT questionneur_pkey PRIMARY KEY (qus_id);
 G   ALTER TABLE ONLY plate.questionneur DROP CONSTRAINT questionneur_pkey;
       plate            postgres    false    205            `           2606    16739    qustion qustion_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY plate.qustion
    ADD CONSTRAINT qustion_pkey PRIMARY KEY (q_id);
 =   ALTER TABLE ONLY plate.qustion DROP CONSTRAINT qustion_pkey;
       plate            postgres    false    211            ^           2606    16720    repondeur repondeur_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY plate.repondeur
    ADD CONSTRAINT repondeur_pkey PRIMARY KEY (rep_id);
 A   ALTER TABLE ONLY plate.repondeur DROP CONSTRAINT repondeur_pkey;
       plate            postgres    false    208            b           2606    16761    reponse reponse_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY plate.reponse
    ADD CONSTRAINT reponse_pkey PRIMARY KEY (r_id);
 =   ALTER TABLE ONLY plate.reponse DROP CONSTRAINT reponse_pkey;
       plate            postgres    false    215            c           2606    16701 %   questionneur questionneur_tag_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY plate.questionneur
    ADD CONSTRAINT questionneur_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES plate.tag(tag_id);
 N   ALTER TABLE ONLY plate.questionneur DROP CONSTRAINT questionneur_tag_id_fkey;
       plate          postgres    false    202    2906    205            e           2606    16740    qustion qustion_idqus_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY plate.qustion
    ADD CONSTRAINT qustion_idqus_fkey FOREIGN KEY (idqus) REFERENCES plate.questionneur(qus_id);
 C   ALTER TABLE ONLY plate.qustion DROP CONSTRAINT qustion_idqus_fkey;
       plate          postgres    false    211    2908    205            f           2606    16775    qustion qustion_rep_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY plate.qustion
    ADD CONSTRAINT qustion_rep_id_fkey FOREIGN KEY (rep_id) REFERENCES plate.repondeur(rep_id);
 D   ALTER TABLE ONLY plate.qustion DROP CONSTRAINT qustion_rep_id_fkey;
       plate          postgres    false    2910    211    208            d           2606    16721    repondeur repondeur_tag_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY plate.repondeur
    ADD CONSTRAINT repondeur_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES plate.tag(tag_id);
 H   ALTER TABLE ONLY plate.repondeur DROP CONSTRAINT repondeur_tag_id_fkey;
       plate          postgres    false    2906    202    208            g           2606    16762    reponse reponse_id_qus_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY plate.reponse
    ADD CONSTRAINT reponse_id_qus_fkey FOREIGN KEY (id_qus) REFERENCES plate.questionneur(qus_id);
 D   ALTER TABLE ONLY plate.reponse DROP CONSTRAINT reponse_id_qus_fkey;
       plate          postgres    false    215    205    2908            h           2606    16767    reponse reponse_id_rep_fkey    FK CONSTRAINT        ALTER TABLE ONLY plate.reponse
    ADD CONSTRAINT reponse_id_rep_fkey FOREIGN KEY (id_rep) REFERENCES plate.repondeur(rep_id);
 D   ALTER TABLE ONLY plate.reponse DROP CONSTRAINT reponse_id_rep_fkey;
       plate          postgres    false    215    2910    208            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   '   x�3��,�2��M,��2��--�L�2�,Ȩ1b���� ��     