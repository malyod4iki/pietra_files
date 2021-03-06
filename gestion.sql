PGDMP         .                w            gestion_hotel    9.6.5    9.6.5 g    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16393    gestion_hotel    DATABASE     �   CREATE DATABASE gestion_hotel WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE gestion_hotel;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16496 	   categorie    TABLE     n   CREATE TABLE categorie (
    id integer NOT NULL,
    groupe_id integer,
    libelle character varying(50)
);
    DROP TABLE public.categorie;
       public         postgres    false    3            �            1259    16494    categorie_id_seq    SEQUENCE     r   CREATE SEQUENCE categorie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.categorie_id_seq;
       public       postgres    false    199    3            �           0    0    categorie_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE categorie_id_seq OWNED BY categorie.id;
            public       postgres    false    198            �            1259    16552    chambre    TABLE     �   CREATE TABLE chambre (
    id integer NOT NULL,
    type_id integer,
    etat character varying(50),
    numero character varying(50)
);
    DROP TABLE public.chambre;
       public         postgres    false    3            �            1259    16550    chambre_id_seq    SEQUENCE     p   CREATE SEQUENCE chambre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.chambre_id_seq;
       public       postgres    false    208    3            �           0    0    chambre_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE chambre_id_seq OWNED BY chambre.id;
            public       postgres    false    207            �            1259    16521 	   concerner    TABLE     M   CREATE TABLE concerner (
    produit_id integer,
    promotion_id integer
);
    DROP TABLE public.concerner;
       public         postgres    false    3            �            1259    16480    groupe    TABLE     T   CREATE TABLE groupe (
    id integer NOT NULL,
    libelle character varying(50)
);
    DROP TABLE public.groupe;
       public         postgres    false    3            �            1259    16478    groupe_id_seq    SEQUENCE     o   CREATE SEQUENCE groupe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.groupe_id_seq;
       public       postgres    false    197    3            �           0    0    groupe_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE groupe_id_seq OWNED BY groupe.id;
            public       postgres    false    196            �            1259    16544    lit    TABLE     F   CREATE TABLE lit (
    id integer NOT NULL,
    nbre_place integer
);
    DROP TABLE public.lit;
       public         postgres    false    3            �            1259    16542 
   lit_id_seq    SEQUENCE     l   CREATE SEQUENCE lit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.lit_id_seq;
       public       postgres    false    3    206            �           0    0 
   lit_id_seq    SEQUENCE OWNED BY     +   ALTER SEQUENCE lit_id_seq OWNED BY lit.id;
            public       postgres    false    205            �            1259    16563    posseder    TABLE     C   CREATE TABLE posseder (
    type_id integer,
    lit_id integer
);
    DROP TABLE public.posseder;
       public         postgres    false    3            �            1259    16418 	   privilege    TABLE     W   CREATE TABLE privilege (
    id integer NOT NULL,
    libelle character varying(50)
);
    DROP TABLE public.privilege;
       public         postgres    false    3            �            1259    16416    privilege_id_seq    SEQUENCE     r   CREATE SEQUENCE privilege_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.privilege_id_seq;
       public       postgres    false    190    3            �           0    0    privilege_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE privilege_id_seq OWNED BY privilege.id;
            public       postgres    false    189            �            1259    16444    produit    TABLE     �   CREATE TABLE produit (
    id integer NOT NULL,
    unite_produit_id integer,
    libelle character varying(50),
    prix numeric(8,2),
    photos character varying(50),
    categorie_id integer
);
    DROP TABLE public.produit;
       public         postgres    false    3            �            1259    16442    produit_id_seq    SEQUENCE     p   CREATE SEQUENCE produit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produit_id_seq;
       public       postgres    false    3    193            �           0    0    produit_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE produit_id_seq OWNED BY produit.id;
            public       postgres    false    192            �            1259    16514 	   promotion    TABLE     �   CREATE TABLE promotion (
    id integer NOT NULL,
    nom character varying(100),
    reduction numeric(4,2),
    date_debut date,
    date_fin date,
    etat_promotion character varying(50)
);
    DROP TABLE public.promotion;
       public         postgres    false    3            �            1259    16512    promotion_id_seq    SEQUENCE     r   CREATE SEQUENCE promotion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.promotion_id_seq;
       public       postgres    false    201    3            �           0    0    promotion_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE promotion_id_seq OWNED BY promotion.id;
            public       postgres    false    200            �            1259    16394    responsable    TABLE     n  CREATE TABLE responsable (
    id integer NOT NULL,
    nom character varying(100),
    prenom character varying(100),
    telephone character varying(20),
    email character varying(50),
    pseudo character varying(50),
    mdp character varying(50),
    indication_mdp character varying(50),
    photos character varying(100) NOT NULL,
    service_id integer
);
    DROP TABLE public.responsable;
       public         postgres    false    3            �            1259    16397    responsable_id_seq    SEQUENCE     t   CREATE SEQUENCE responsable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.responsable_id_seq;
       public       postgres    false    3    185            �           0    0    responsable_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE responsable_id_seq OWNED BY responsable.id;
            public       postgres    false    186            �            1259    16410    service    TABLE     o   CREATE TABLE service (
    id integer NOT NULL,
    libelle character varying(50),
    privilege_id integer
);
    DROP TABLE public.service;
       public         postgres    false    3            �            1259    16408    service_id_seq    SEQUENCE     p   CREATE SEQUENCE service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.service_id_seq;
       public       postgres    false    3    188            �           0    0    service_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE service_id_seq OWNED BY service.id;
            public       postgres    false    187            �            1259    16434    stocker    TABLE     w   CREATE TABLE stocker (
    responsable_id integer,
    produit_id integer,
    quantite bigint,
    date_enreg date
);
    DROP TABLE public.stocker;
       public         postgres    false    3            �            1259    16536    type    TABLE     t   CREATE TABLE type (
    id integer NOT NULL,
    libelle character varying(50),
    photos character varying(50)
);
    DROP TABLE public.type;
       public         postgres    false    3            �            1259    16534    type_id_seq    SEQUENCE     m   CREATE SEQUENCE type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.type_id_seq;
       public       postgres    false    204    3            �           0    0    type_id_seq    SEQUENCE OWNED BY     -   ALTER SEQUENCE type_id_seq OWNED BY type.id;
            public       postgres    false    203            �            1259    16457    unite_produit    TABLE     �   CREATE TABLE unite_produit (
    id integer NOT NULL,
    categorie_id integer,
    libelle character varying(50),
    quantite integer
);
 !   DROP TABLE public.unite_produit;
       public         postgres    false    3            �            1259    16455    unite_produit_id_seq    SEQUENCE     v   CREATE SEQUENCE unite_produit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.unite_produit_id_seq;
       public       postgres    false    3    195            �           0    0    unite_produit_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE unite_produit_id_seq OWNED BY unite_produit.id;
            public       postgres    false    194                        2604    16499    categorie id    DEFAULT     ^   ALTER TABLE ONLY categorie ALTER COLUMN id SET DEFAULT nextval('categorie_id_seq'::regclass);
 ;   ALTER TABLE public.categorie ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            $           2604    16555 
   chambre id    DEFAULT     Z   ALTER TABLE ONLY chambre ALTER COLUMN id SET DEFAULT nextval('chambre_id_seq'::regclass);
 9   ALTER TABLE public.chambre ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    207    208                       2604    16483 	   groupe id    DEFAULT     X   ALTER TABLE ONLY groupe ALTER COLUMN id SET DEFAULT nextval('groupe_id_seq'::regclass);
 8   ALTER TABLE public.groupe ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            #           2604    16547    lit id    DEFAULT     R   ALTER TABLE ONLY lit ALTER COLUMN id SET DEFAULT nextval('lit_id_seq'::regclass);
 5   ALTER TABLE public.lit ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205    206                       2604    16421    privilege id    DEFAULT     ^   ALTER TABLE ONLY privilege ALTER COLUMN id SET DEFAULT nextval('privilege_id_seq'::regclass);
 ;   ALTER TABLE public.privilege ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189    190                       2604    16447 
   produit id    DEFAULT     Z   ALTER TABLE ONLY produit ALTER COLUMN id SET DEFAULT nextval('produit_id_seq'::regclass);
 9   ALTER TABLE public.produit ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    192    193            !           2604    16517    promotion id    DEFAULT     ^   ALTER TABLE ONLY promotion ALTER COLUMN id SET DEFAULT nextval('promotion_id_seq'::regclass);
 ;   ALTER TABLE public.promotion ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201                       2604    16399    responsable id    DEFAULT     b   ALTER TABLE ONLY responsable ALTER COLUMN id SET DEFAULT nextval('responsable_id_seq'::regclass);
 =   ALTER TABLE public.responsable ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    185                       2604    16413 
   service id    DEFAULT     Z   ALTER TABLE ONLY service ALTER COLUMN id SET DEFAULT nextval('service_id_seq'::regclass);
 9   ALTER TABLE public.service ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187    188            "           2604    16539    type id    DEFAULT     T   ALTER TABLE ONLY type ALTER COLUMN id SET DEFAULT nextval('type_id_seq'::regclass);
 6   ALTER TABLE public.type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    204    204                       2604    16460    unite_produit id    DEFAULT     f   ALTER TABLE ONLY unite_produit ALTER COLUMN id SET DEFAULT nextval('unite_produit_id_seq'::regclass);
 ?   ALTER TABLE public.unite_produit ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    195    194    195            �          0    16496 	   categorie 
   TABLE DATA               4   COPY categorie (id, groupe_id, libelle) FROM stdin;
    public       postgres    false    199   �j       �           0    0    categorie_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('categorie_id_seq', 6, true);
            public       postgres    false    198            �          0    16552    chambre 
   TABLE DATA               5   COPY chambre (id, type_id, etat, numero) FROM stdin;
    public       postgres    false    208   4k       �           0    0    chambre_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('chambre_id_seq', 1, false);
            public       postgres    false    207            �          0    16521 	   concerner 
   TABLE DATA               6   COPY concerner (produit_id, promotion_id) FROM stdin;
    public       postgres    false    202   Qk       �          0    16480    groupe 
   TABLE DATA               &   COPY groupe (id, libelle) FROM stdin;
    public       postgres    false    197   nk       �           0    0    groupe_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('groupe_id_seq', 4, true);
            public       postgres    false    196            �          0    16544    lit 
   TABLE DATA               &   COPY lit (id, nbre_place) FROM stdin;
    public       postgres    false    206   �k       �           0    0 
   lit_id_seq    SEQUENCE SET     2   SELECT pg_catalog.setval('lit_id_seq', 1, false);
            public       postgres    false    205            �          0    16563    posseder 
   TABLE DATA               ,   COPY posseder (type_id, lit_id) FROM stdin;
    public       postgres    false    209   �k       �          0    16418 	   privilege 
   TABLE DATA               )   COPY privilege (id, libelle) FROM stdin;
    public       postgres    false    190   �k       �           0    0    privilege_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('privilege_id_seq', 3, true);
            public       postgres    false    189            �          0    16444    produit 
   TABLE DATA               U   COPY produit (id, unite_produit_id, libelle, prix, photos, categorie_id) FROM stdin;
    public       postgres    false    193   /l       �           0    0    produit_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('produit_id_seq', 2, true);
            public       postgres    false    192            �          0    16514 	   promotion 
   TABLE DATA               V   COPY promotion (id, nom, reduction, date_debut, date_fin, etat_promotion) FROM stdin;
    public       postgres    false    201   �l       �           0    0    promotion_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('promotion_id_seq', 2, true);
            public       postgres    false    200            �          0    16394    responsable 
   TABLE DATA               r   COPY responsable (id, nom, prenom, telephone, email, pseudo, mdp, indication_mdp, photos, service_id) FROM stdin;
    public       postgres    false    185   �l       �           0    0    responsable_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('responsable_id_seq', 2, true);
            public       postgres    false    186            �          0    16410    service 
   TABLE DATA               5   COPY service (id, libelle, privilege_id) FROM stdin;
    public       postgres    false    188   m       �           0    0    service_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('service_id_seq', 3, true);
            public       postgres    false    187            �          0    16434    stocker 
   TABLE DATA               L   COPY stocker (responsable_id, produit_id, quantite, date_enreg) FROM stdin;
    public       postgres    false    191   �m       �          0    16536    type 
   TABLE DATA               ,   COPY type (id, libelle, photos) FROM stdin;
    public       postgres    false    204   �m       �           0    0    type_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('type_id_seq', 1, false);
            public       postgres    false    203            �          0    16457    unite_produit 
   TABLE DATA               E   COPY unite_produit (id, categorie_id, libelle, quantite) FROM stdin;
    public       postgres    false    195   �m       �           0    0    unite_produit_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('unite_produit_id_seq', 1, true);
            public       postgres    false    194            2           2606    16501    categorie categorie_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY categorie
    ADD CONSTRAINT categorie_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categorie DROP CONSTRAINT categorie_pkey;
       public         postgres    false    199    199            :           2606    16557    chambre chambre_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY chambre
    ADD CONSTRAINT chambre_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.chambre DROP CONSTRAINT chambre_pkey;
       public         postgres    false    208    208            0           2606    16485    groupe groupe_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY groupe
    ADD CONSTRAINT groupe_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groupe DROP CONSTRAINT groupe_pkey;
       public         postgres    false    197    197            8           2606    16549    lit lit_pkey 
   CONSTRAINT     C   ALTER TABLE ONLY lit
    ADD CONSTRAINT lit_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.lit DROP CONSTRAINT lit_pkey;
       public         postgres    false    206    206            *           2606    16423    privilege privilege_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY privilege
    ADD CONSTRAINT privilege_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.privilege DROP CONSTRAINT privilege_pkey;
       public         postgres    false    190    190            ,           2606    16449    produit produit_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY produit
    ADD CONSTRAINT produit_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produit DROP CONSTRAINT produit_pkey;
       public         postgres    false    193    193            4           2606    16519    promotion promotion_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY promotion
    ADD CONSTRAINT promotion_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.promotion DROP CONSTRAINT promotion_pkey;
       public         postgres    false    201    201            &           2606    16407    responsable responsable_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY responsable
    ADD CONSTRAINT responsable_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.responsable DROP CONSTRAINT responsable_pkey;
       public         postgres    false    185    185            (           2606    16415    service service_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY service
    ADD CONSTRAINT service_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.service DROP CONSTRAINT service_pkey;
       public         postgres    false    188    188            6           2606    16541    type type_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY type
    ADD CONSTRAINT type_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.type DROP CONSTRAINT type_pkey;
       public         postgres    false    204    204            .           2606    16462     unite_produit unite_produit_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY unite_produit
    ADD CONSTRAINT unite_produit_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.unite_produit DROP CONSTRAINT unite_produit_pkey;
       public         postgres    false    195    195            @           2606    16576    produit categorie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY produit
    ADD CONSTRAINT categorie_fkey FOREIGN KEY (categorie_id) REFERENCES categorie(id) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.produit DROP CONSTRAINT categorie_fkey;
       public       postgres    false    2098    193    199            A           2606    16507    unite_produit categorie_id    FK CONSTRAINT     �   ALTER TABLE ONLY unite_produit
    ADD CONSTRAINT categorie_id FOREIGN KEY (categorie_id) REFERENCES categorie(id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.unite_produit DROP CONSTRAINT categorie_id;
       public       postgres    false    2098    199    195            B           2606    16502    categorie groupe_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY categorie
    ADD CONSTRAINT groupe_fkey FOREIGN KEY (groupe_id) REFERENCES groupe(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.categorie DROP CONSTRAINT groupe_fkey;
       public       postgres    false    199    197    2096            G           2606    16571    posseder lit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY posseder
    ADD CONSTRAINT lit_fkey FOREIGN KEY (lit_id) REFERENCES lit(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ;   ALTER TABLE ONLY public.posseder DROP CONSTRAINT lit_fkey;
       public       postgres    false    2104    206    209            <           2606    16424    service privilege_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY service
    ADD CONSTRAINT privilege_fkey FOREIGN KEY (privilege_id) REFERENCES privilege(id) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.service DROP CONSTRAINT privilege_fkey;
       public       postgres    false    2090    188    190            >           2606    16473    stocker produit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stocker
    ADD CONSTRAINT produit_fkey FOREIGN KEY (produit_id) REFERENCES produit(id) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.stocker DROP CONSTRAINT produit_fkey;
       public       postgres    false    193    191    2092            C           2606    16524    concerner produit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY concerner
    ADD CONSTRAINT produit_fkey FOREIGN KEY (produit_id) REFERENCES produit(id) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.concerner DROP CONSTRAINT produit_fkey;
       public       postgres    false    2092    193    202            D           2606    16529    concerner promotion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY concerner
    ADD CONSTRAINT promotion_fkey FOREIGN KEY (promotion_id) REFERENCES promotion(id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.concerner DROP CONSTRAINT promotion_fkey;
       public       postgres    false    2100    201    202            =           2606    16437    stocker responsble_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stocker
    ADD CONSTRAINT responsble_fkey FOREIGN KEY (responsable_id) REFERENCES responsable(id) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.stocker DROP CONSTRAINT responsble_fkey;
       public       postgres    false    191    185    2086            ;           2606    16468    responsable sevice_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY responsable
    ADD CONSTRAINT sevice_fkey FOREIGN KEY (service_id) REFERENCES service(id) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.responsable DROP CONSTRAINT sevice_fkey;
       public       postgres    false    188    2088    185            E           2606    16558    chambre type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY chambre
    ADD CONSTRAINT type_fkey FOREIGN KEY (type_id) REFERENCES type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ;   ALTER TABLE ONLY public.chambre DROP CONSTRAINT type_fkey;
       public       postgres    false    204    2102    208            F           2606    16566    posseder type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY posseder
    ADD CONSTRAINT type_fkey FOREIGN KEY (type_id) REFERENCES type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.posseder DROP CONSTRAINT type_fkey;
       public       postgres    false    204    209    2102            ?           2606    16463    produit unite_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY produit
    ADD CONSTRAINT unite_fkey FOREIGN KEY (unite_produit_id) REFERENCES unite_produit(id) ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.produit DROP CONSTRAINT unite_fkey;
       public       postgres    false    195    193    2094            �   I   x�3�4�t��,.��S�*-�2F�;�$���d^��e�$�X�e�i��Z\�ZT�e�i��_Z������ *�d      �      x������ � �      �      x������ � �      �   <   x�3�J-.��uJ,�2�t.�,��K�2��KL�VH-QȬ�J�2���/I������ �=�      �      x������ � �      �      x������ � �      �   +   x�3��IM.)-J�2��RKR��2��Ɯ��ɥy\1z\\\ U!�      �   W   x�3�4�t�wvT040PH��4260�30�L��I��w���p�w��wO-.���/I��/.J�w��,.��+�O�ON��*H�4����� 5��      �   J   x�3�KLN�KN�44�30�420��50�50�2�A̔����̲�T.#μ��NC3�jc]#�j##d�1z\\\ �p�      �      x�%�K
�0 ���=A�OA�JA�UD��4I�`���oo���ip�7Vg,��\=�<����F)�����Fɀ����������a���eKC�<�!dZ]իE??fJ��GWw���z9�w)��G}'\      �   1   x�3�LL����4�2�,NM.J-I�,J�4�2�LN�,.�L-rb���� ��      �      x������ � �      �      x������ � �      �   %   x�3�4�tNLO�/QHIU040PH��44����� j�p     