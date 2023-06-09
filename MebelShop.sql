PGDMP         %                {            ShopAtt    15.1    15.1 M    V           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            W           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            X           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Y           1262    49249    ShopAtt    DATABASE     }   CREATE DATABASE "ShopAtt" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "ShopAtt";
                postgres    false            �            1259    49251    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    49250    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            Z           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    49258    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    49342 	   image_cat    TABLE     �   CREATE TABLE public.image_cat (
    id integer NOT NULL,
    file_name character varying(255),
    category_id integer NOT NULL
);
    DROP TABLE public.image_cat;
       public         heap    postgres    false            �            1259    49341    image_cat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_cat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.image_cat_id_seq;
       public          postgres    false    229            [           0    0    image_cat_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.image_cat_id_seq OWNED BY public.image_cat.id;
          public          postgres    false    228            �            1259    49257    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            \           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    49265    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    person_id integer NOT NULL,
    product_id integer NOT NULL,
    status_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    49264    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            ]           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    49272    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    49271    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            ^           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    49281    product    TABLE     m  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    seller_id integer,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    49291    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    49290    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            _           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    49280    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            `           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            �            1259    65622    seller    TABLE     Y   CREATE TABLE public.seller (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.seller;
       public         heap    postgres    false            �            1259    65621    seller_id_seq    SEQUENCE     �   CREATE SEQUENCE public.seller_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.seller_id_seq;
       public          postgres    false    231            a           0    0    seller_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.seller_id_seq OWNED BY public.seller.id;
          public          postgres    false    230            �            1259    49298    status    TABLE     Y   CREATE TABLE public.status (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.status;
       public         heap    postgres    false            �            1259    49297    status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.status_id_seq;
       public          postgres    false    227            b           0    0    status_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;
          public          postgres    false    226            �           2604    49254    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    49261    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    49345    image_cat id    DEFAULT     l   ALTER TABLE ONLY public.image_cat ALTER COLUMN id SET DEFAULT nextval('public.image_cat_id_seq'::regclass);
 ;   ALTER TABLE public.image_cat ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    49268 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    49275 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    49284 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    49294    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    65625 	   seller id    DEFAULT     f   ALTER TABLE ONLY public.seller ALTER COLUMN id SET DEFAULT nextval('public.seller_id_seq'::regclass);
 8   ALTER TABLE public.seller ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    49301 	   status id    DEFAULT     f   ALTER TABLE ONLY public.status ALTER COLUMN id SET DEFAULT nextval('public.status_id_seq'::regclass);
 8   ALTER TABLE public.status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            C          0    49251    category 
   TABLE DATA                 public          postgres    false    215   �R       E          0    49258    image 
   TABLE DATA                 public          postgres    false    217   �S       Q          0    49342 	   image_cat 
   TABLE DATA                 public          postgres    false    229   �X       G          0    49265    orders 
   TABLE DATA                 public          postgres    false    219   �Y       I          0    49272    person 
   TABLE DATA                 public          postgres    false    221   �Z       K          0    49281    product 
   TABLE DATA                 public          postgres    false    223   !\       M          0    49291    product_cart 
   TABLE DATA                 public          postgres    false    225   �n       S          0    65622    seller 
   TABLE DATA                 public          postgres    false    231   o       O          0    49298    status 
   TABLE DATA                 public          postgres    false    227   �o       c           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 10, true);
          public          postgres    false    214            d           0    0    image_cat_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.image_cat_id_seq', 12, true);
          public          postgres    false    228            e           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 83, true);
          public          postgres    false    216            f           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 11, true);
          public          postgres    false    218            g           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 3, true);
          public          postgres    false    220            h           0    0    product_cart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_cart_id_seq', 22, true);
          public          postgres    false    224            i           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 27, true);
          public          postgres    false    222            j           0    0    seller_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.seller_id_seq', 7, true);
          public          postgres    false    230            k           0    0    status_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.status_id_seq', 1, false);
          public          postgres    false    226            �           2606    49256    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    49347    image_cat image_cat_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.image_cat
    ADD CONSTRAINT image_cat_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.image_cat DROP CONSTRAINT image_cat_pkey;
       public            postgres    false    229            �           2606    49263    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    49270    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    49279    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            �           2606    49296    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    49289    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    65627    seller seller_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.seller DROP CONSTRAINT seller_pkey;
       public            postgres    false    231            �           2606    49303    status status_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            postgres    false    227            �           2606    49305 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            �           2606    49311 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    221    3230    219            �           2606    49326 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    223    215    3224            �           2606    49348 %   image_cat fk6ur97t3bejnnynvn5phm4t8ie    FK CONSTRAINT     �   ALTER TABLE ONLY public.image_cat
    ADD CONSTRAINT fk6ur97t3bejnnynvn5phm4t8ie FOREIGN KEY (category_id) REFERENCES public.category(id);
 O   ALTER TABLE ONLY public.image_cat DROP CONSTRAINT fk6ur97t3bejnnynvn5phm4t8ie;
       public          postgres    false    229    215    3224            �           2606    49316 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    219    223    3232            �           2606    65628 #   product fkesd6fy52tk7esoo2gcls4lfe3    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fkesd6fy52tk7esoo2gcls4lfe3 FOREIGN KEY (seller_id) REFERENCES public.seller(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fkesd6fy52tk7esoo2gcls4lfe3;
       public          postgres    false    223    231    3242            �           2606    49306 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    3232    223            �           2606    49336 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    223    225    3232            �           2606    49321 "   orders fknoettwqr56yaai4i8nwxg4huo    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fknoettwqr56yaai4i8nwxg4huo FOREIGN KEY (status_id) REFERENCES public.status(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fknoettwqr56yaai4i8nwxg4huo;
       public          postgres    false    227    219    3238            �           2606    49331 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    221    3230    225            C   �   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0�b���v]�p�_�[/l��{�5��<I3�dެ�.6\���bㅽ�0��J�
� )����v���A��8:z�� 2����-�^l��¾;�0�� d�|`�� �z߅m����� 0��7      E   
  x����n\7�{?�v�qA�3C�J��@� ��� 9���N� ~���ݤ��\P�i��9Ի���������_N߾�/�����}��W��pZ�_�?���p���_�}����_�~�����~8�����D�<�x��VCOn��j�1ZI�������É^�y��3m(�8m�HTϮ�-�0G���E�P~��Qh6@�y$k9���q��sh�?.�&B��'��V@��3�i�0��HY��Gqm����(�#�VS�IR��&�;G�,�Ϩ���Z
hy��x��@-9�ώ����;���If_\x�P噚Si�o��*�X��f^�٬:��n�^`Π2%��j��ar��t"�R̩4��@}^��S�95J��::<kC�ckE��6r�y�����c�h:Q�c��mY��w#d+yf#P�"���-�W�u,��óh�
�tF����
��&9L�M�U�������C�,�Ʉ>��u�5ݑ[v��T��z\�Lp	�]l�fj�p�~��e���\jC�fh��o�ه��8�[�z���Kk����rE�T���*����� �)D*L�s�]7{(�K�a�����&`��^�<�8Z��K�$��p�ݸ�}��k��h�>yb�*1e����p�~����\�B�<Po���� ܄��:��{��a����c�K�ު�]nR.�=I���V�n/�."	�ݐ+*���!�V�im����n7�qR�QF4"Z̕���m�\�����ZE�D�8W����m��US�4�Z}�W��L#[��4/��XX���.��4Z'�M�M�8wkU���6>�0bTZ�%P��9�<�J���l����
C`Au�]*�s�
�5��R�u*��j��5��>8U��}b�F��7�V�a�n�º�*¤m��L���B8(��G��½_�zI�\�]�1��#�d\���u.�jgG�:�!�N�nU���
�0T�˪�^k=�u�����{k��d�ڧ���q�����j�pvԭQ+&6GXU�H���Z%i2�v�oW{�֨��������l'e*AZ/�"���¥�q�J��y���&g�1���������g�U{8+�^fˎ���24J2�`F���ZAz�I��ZgG�յ�R)�t<u"���K+�B��A�n��l�[�x��b*m6�Y�!c���6v��٨�\�5r���Sq(��}s[˳ƈ y����[����
Y̫���(�g�>i6�.ߏK�M�f�2����p\\)d}q*������ſ�ET      Q   $  x��һJCA�>O�]�,{�ٝ��"E@"�h��$D��-N���v���������Q���gq�I�!������Xe#�p���x��k����{�Z�=>�nb�7byoDv��x��`�Re)GTh����r#��a��7���QF�]F.G�j����f��,|���}2��������Z�٥j�7Ҏ����j��Fu�3�Bj� x�Z���G����'c�(� �Nc#�0�'[2y�Z��F?�㛉�}�1a�L���g��6���b��ߧz���)��.      G     x��ѱj�0��=Oq[���t�,w�!PRhҮA�04�q���d)ݳ���/���G���0��w�6���x�U��~�N
r��i�.E�u��eT0�]�� i=��a����6�i�ɸ��׷��VA*X�!�k􀦱�1f)����0����4��Z�M�J���:��!��V˻~Y�@�+ Ć|�aSc�;��m#3i�Ҳu:��uMgW
���ұŇ��υ�������)bb�)�v9� ;��Dԭ,C>'��J��=(�b���      I     x����n�@�O141Ё��� i;����M�H�� O_�4�I��nNrN�\d�&^d�P��"K�*�MI�$��@Q22U�4��C@�"��P[�&p�x�7c1Çq5������$�н�lc�:�u�.�"�(�J��3)L��Y���B67}��`Ұ�6)o`�Q�k� �-�O��\d	ԝ����E�+�����yB�h#k�P����s�K�u�׫e}~BLp�_b� ��H|���g�~S_��c/�KOߘ�8����a��7��      K      x��[[��~��� E`��u.��D�"R.�"�l�JN�̒�䇝]�Yc��D�ؘ5�D�"z�n�m%����/�9ߩ��e-�=��U]u��|�2���˟��W��7�s�����q��ޥ��|p~S����9�������������/m���q��z���y����y���ӹK��^��}�x���⥿�ͣ�_�pa�}<�������/�˾����o8��V�f�,��*�Ɇ�4[��E�Pe��8��{�1�8��5�s�%���븮[�}ʃ�,�o�ķ�з>���ݣ�O�=���{�a�V��mZ'}����y�������}��o��D��ߣ	�4EJ�a������	n�KK�]?Xs�5���nu��
����a�_W�|Tl�EqD"�$s�v��K�Q]	��9	��s���,:��ž{Q���@d�x�P�5���8��D�E~#����H1<�.� �V�t��3j�����3$�X�|ϗRx^]Q-��\�)��A��FRIi��?�$Mi ��$���'KV㹱Į�j�"���
+�(�N�v��D��)/p�򌮒o p<4w�(2wH;�mXVJ3MY�	}���(Mx��kzpA_G�|�p�ne�4<H���∮ꅮ�w�Sg�y��%� ��oY��m��q��o�w<A{��p*赻�ȧ�tq�������c�h��]M�G滼8�*ъ���BWFق�[A�}hO���C������umi.�����7�z<ј)}4U��qTp��X��!�{1m�6�옶ӏ	F�Ĕ�&9��G�/=v�|�YR{��F4����t�+z�5֤X���8e��O#��}&
�w�+sTvL�xLq�>B�|G�(���p�~����7i�����A��:4�{�Aњ�����3�O�Z�,���e)+�?i�c�R��iT6}4m@2��D�!���׎�n��F~7�hL��eU�a�@&|0�gS����n��l"��|$,�+tH4�9
]��[���rb��w弬���,��~�>mvt���r̌���4Ta��o@���L	4��-}�-^��(Ҋ�\h�od��=�w~L<��Ct��(M� ��x�R�����iIv^�l}ʐ����ӿ�B�h�V�.I��F�/&��} oF����!�&c�̛yn�K#�#svv���/i����D�Ɯ#
?�~x����Z,��1�i�#t5�uj8i\wL�����]B�F�3! ~,>f�����w��~�vY>��w�B���G���U���f?࿉��Ϳ-���w�p`VxP>�XE��)\v(Q�g�tS��l|�l� px%GR�#��{^@uݐ6��!���1��1�;��ޣ-��Q�+1m}�\�Lؼ��Bt��2�/kM�&Pr��J/��d��h��mq?��u�K�5�u�5d���8C{I�@�c.#8M�k��4Ǵ����́kfY��Pc���{���!��aiż$���25�=Y��؝= ��;��6
�K/g_�&JԭN��L� �Sj��Dq��jy]�W0�K�49?�0�J|i'�F]�0�����	�.RH+\O�[�9�4*��@��+O|��(Nk��M��
�R�o.���A1Q�O;��<
O ԣ�t^�x��>�<����|�y=�0�&/��MhuK�J�	S�[���P\�B���o�]��SL�Ϋ�k�T�N�b��}X�w���lFJ�ݾ��zW�����sP��|����YO�Z���Z��a���z�����G�P<&��3�,�y��t���w������z���	kʢ���ͥ� }�<�quw�Lb[�Li|�7"=��	=`1��=:WGt�W���H�n)�)��� �0<��n�[�� �
��}��%���&|�,m^;a��K�;��@�IH�(Ҫ�vh��\���i�iO�8��8 tI�A��g��UY��Մ�m���t>8PQr���a7H�p�pP�}�j%Qy��B�U �/{�c 2xA~ >6i
KTi*
��?0����訥8�.�z�'��S�(6J�W�>,��N��2j^�_N��7:�ǌ��<=��+7�m�Y8�9�����+ē_��������p&�~ȏ��aP��QXl��b��&tq���Y�� ��M����6(
SzQ�J
�<YN���/�iď� &��_X�+�����p��Fj���[����X���	���%�A���:'����!��\�
jsB��������*�f�����bS:�ӧ�M�d����% �O<�g&8鳍���J ו���k뛛��%�v�����O/��ܥw���ӿB�5�E��VƷ4p�t�"���\C��	z j���R$cK��^*��s�US6������,ִ���]�I�:��'��A*���q���+=�5�~V�����9G�^���h�ܑ$���L�
��#T�L�KrR�zᨋr���m@z�Ca�Aʗb��4 ����J�C������g̉˰�����>�d��Ruj|:�0����H�"���eq�0`��[\���?ϲ5��G���5b�j��3��?lh�����WuWg�����}��[3��$����fw�*�'��2}��d�Z6+��������+9#�R�B��URn�rv�FSN)n��N	�-$5��Q6�S�}`[���0�6%��B�c��aa;:����na�
����S	��S$�me�#:�4��7L~ɲ*�~��V;󿍺բ�ZC��.�z��Q%����ntZA�o��/5T���N(J%�n1�X[�!y���id !F�-��Z�#�4�\���&1��\P�:J/aa
�����80a�b%'�ሊ0�t���Z�t��Ͻ��-B�A�b�R�nGQq�\�4���+N��#mǾ�rð��`����bdP`�H�Jr��Έ���llR�s`P��ՔeY�MG	�΋bnc�KlJV��c����(��9E���V�����"��:���ĚL��Z�`�
|�C�xA�9R;
��)��-��()\�lUH��l����x�&&Bt��}�m��P�\Řh�֤&��w~��X�Q6���G�n�jfI"�m�~�:��l��� �E��?�$��e³�J(�t�H��':#����(�-L�O7��mS��Lu��7�b� �'l4���Ǆͭ�9`�ngEF
��C֔pEʳ{R�d�^J������QC�
q��C��&��(��.כCӣS-�q,�h�
zm���77�58��C);X������%Q8.�mE
³LW,%�˸��tq�
�tII�ؠ+,�Q]�~��$,6(k2\ڍ>	�H3υ���GXI��Y�D�I��$�1)�LM~g5��o����9��@�$�9��d�P���[��
���	P����b�MXs��	��r0eo�A��q}��>�����h�Bķ-)�3	�K��:�AU�ܔ^�c � 10��@��Z�����Σ)d5%l9�w:
~d�Єӂ��E.�8�Pf�K���#�]��\3LπMS��C��k�����_���haӬR�e�gZA$=^WHh���,j�Sjp�7`�-�nB͖�3���v���͛'�[3���7��d�_��Ej��y���v�k����T��r�0Mk1�0� �K�SW��u�k�f7�:I����
_z�lN�9ϸ���Р�y�n�&"�	@��l��ĺ�v�:�����e=� !���N+:6�HW%�T�]і3׵���n]���q��^''j���a�K��	���]H[���P�L�� �T�j���7	��͹.x�Nt�;�������@�1���+������Z��j�2�zT��py�ي��J_���`K�P_i��Q�#�TsFg=i�X+Y������g��Y�d4e��?��`5�6�C��n�5��l�@t�j���J�P05v���6�H��XTb��t�$8W#
�t4���;)��Ajґ��ɏj\�w��kya7;�ɇR}���*u�2J��e�c�c>@��r |  F���~�5"y����r�8v��DWі�G����8���R�?lі�X��>]]v.ΧEAʌ�/�#��Ʒ4���G'����*q��v��N��5"��n��n5	��i�s h�T�L3�v嚤	L(��ޙij�ts�C�c��M�:���+�˙o�I�Ѱ���(��N��>���ӡ�U�1�� ]HJu�`6(7�!���a�>����S �I�<H���&�,��^ޙ��ߴ�"���E��d�l��,�98k�W�b���t9S�N;�W�K!�9��96�Ԗ��S0A�!\;�$U��K�ٶm�(�͸�P�1�锶-�?���T�$r�}f�j��T՞.O�4Os�"Q�t-_��f�|W�L'�
�(���.�Szd=~�{���1��~}tbpЩ�A'�{�^ϣ��9XENh�M��]HCD�ט"ұ�����[�)�6��A�]��+L��Oc�����[�W
2�M~�L*T��c���e�)}��}+/e�6��6̊�ChV�(/}ӎ阊��|;�sq����^N���Aa�S.�ŋn��~�2����l�\�;C�k�"z�W؞f���/�mq�w�1c���O$P��:&�Jdz���ѻ�ծ��ƌN��/}�k)      M   [   x���v
Q���W((M��L�+(�O)M.�ON,*Q��L�Q(H-*�ϋ3���)�
a�>���
F�:
�:
FF��\��0�l��8.. ��1�      S   �   x���v
Q���W((M��L�+N��I-R��L�Q�K�M�Ts�	uV�0�QP�0�.L���bÅ}�^ؠ��i��I�I& �f\�� $6]� 4d߅M
&�]��G�a�p�^�qa�M`�&�M$�83d_ι���F �}�G��b��7\�M����p��bӅ�6\l��H�YF�fm��j Ч��      O   �   x���v
Q���W((M��L�+.I,)-V��L�Q�K�M�Ts�	uV�0�QP�0�b˅}.칰���{�5��<I1�d�|�;.���I��& oÅ�@c�.6�l�1��� ��ͺ�K��|��b��v]�J��&���F�GMA�L��hІ��/3�1�.v_�4��� ۮ�     