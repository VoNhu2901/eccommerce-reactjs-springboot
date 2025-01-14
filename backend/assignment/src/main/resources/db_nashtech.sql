PGDMP                         z            db_nash    14.3    14.3 G    D           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            E           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            F           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            G           1262    53247    db_nash    DATABASE     k   CREATE DATABASE db_nash WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE db_nash;
                postgres    false            �            1259    53249    account    TABLE     ~  CREATE TABLE public.account (
    acc_id integer NOT NULL,
    address character varying(255),
    create_date timestamp without time zone,
    email character varying(255),
    password character varying(255),
    phone character varying(255),
    role character varying(255),
    status boolean,
    update_date timestamp without time zone,
    username character varying(255)
);
    DROP TABLE public.account;
       public         heap    postgres    false            �            1259    53248    account_acc_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_acc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.account_acc_id_seq;
       public          postgres    false    210            H           0    0    account_acc_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.account_acc_id_seq OWNED BY public.account.acc_id;
          public          postgres    false    209            �            1259    53258    cart    TABLE     �   CREATE TABLE public.cart (
    cart_id integer NOT NULL,
    active boolean,
    create_date timestamp without time zone,
    update_date timestamp without time zone,
    acc_id integer
);
    DROP TABLE public.cart;
       public         heap    postgres    false            �            1259    53257    cart_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_cart_id_seq;
       public          postgres    false    212            I           0    0    cart_cart_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart.cart_id;
          public          postgres    false    211            �            1259    53264 	   cart_item    TABLE     s   CREATE TABLE public.cart_item (
    cart_id integer NOT NULL,
    pro_id integer NOT NULL,
    quantity integer
);
    DROP TABLE public.cart_item;
       public         heap    postgres    false            �            1259    53270    category    TABLE     �   CREATE TABLE public.category (
    cate_id integer NOT NULL,
    create_date timestamp without time zone,
    description text,
    name character varying(255),
    status character varying(255),
    update_date timestamp without time zone
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    53269    category_cate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_cate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.category_cate_id_seq;
       public          postgres    false    215            J           0    0    category_cate_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.category_cate_id_seq OWNED BY public.category.cate_id;
          public          postgres    false    214            �            1259    53279 	   employees    TABLE     �   CREATE TABLE public.employees (
    id bigint NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    53278    employees_id_seq    SEQUENCE     y   CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employees_id_seq;
       public          postgres    false    217            K           0    0    employees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;
          public          postgres    false    216            �            1259    53288    ordered    TABLE     �   CREATE TABLE public.ordered (
    order_id integer NOT NULL,
    cart_id integer,
    create_date timestamp without time zone,
    status character varying(255),
    update_date timestamp without time zone,
    acc_id integer
);
    DROP TABLE public.ordered;
       public         heap    postgres    false            �            1259    53287    ordered_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ordered_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ordered_order_id_seq;
       public          postgres    false    219            L           0    0    ordered_order_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ordered_order_id_seq OWNED BY public.ordered.order_id;
          public          postgres    false    218            �            1259    53295    product    TABLE     /  CREATE TABLE public.product (
    pro_id integer NOT NULL,
    amount integer,
    create_date timestamp without time zone,
    description text,
    product_name character varying(255),
    price double precision,
    status boolean,
    update_date timestamp without time zone,
    cate_id integer
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    53304    product_image    TABLE     w   CREATE TABLE public.product_image (
    id integer NOT NULL,
    img_url character varying(255),
    pro_id integer
);
 !   DROP TABLE public.product_image;
       public         heap    postgres    false            �            1259    53303    product_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_image_id_seq;
       public          postgres    false    223            M           0    0    product_image_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_image_id_seq OWNED BY public.product_image.id;
          public          postgres    false    222            �            1259    53294    product_pro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_pro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.product_pro_id_seq;
       public          postgres    false    221            N           0    0    product_pro_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.product_pro_id_seq OWNED BY public.product.pro_id;
          public          postgres    false    220            �            1259    53311    product_rate    TABLE       CREATE TABLE public.product_rate (
    id integer NOT NULL,
    acc_id integer,
    comment character varying(255),
    create_date timestamp without time zone,
    rate double precision,
    status boolean,
    updated_date timestamp without time zone,
    pro_id integer
);
     DROP TABLE public.product_rate;
       public         heap    postgres    false            �            1259    53310    product_rate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_rate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_rate_id_seq;
       public          postgres    false    225            O           0    0    product_rate_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_rate_id_seq OWNED BY public.product_rate.id;
          public          postgres    false    224            �           2604    53252    account acc_id    DEFAULT     p   ALTER TABLE ONLY public.account ALTER COLUMN acc_id SET DEFAULT nextval('public.account_acc_id_seq'::regclass);
 =   ALTER TABLE public.account ALTER COLUMN acc_id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    53261    cart cart_id    DEFAULT     l   ALTER TABLE ONLY public.cart ALTER COLUMN cart_id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);
 ;   ALTER TABLE public.cart ALTER COLUMN cart_id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    53273    category cate_id    DEFAULT     t   ALTER TABLE ONLY public.category ALTER COLUMN cate_id SET DEFAULT nextval('public.category_cate_id_seq'::regclass);
 ?   ALTER TABLE public.category ALTER COLUMN cate_id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    53282    employees id    DEFAULT     l   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    53291    ordered order_id    DEFAULT     t   ALTER TABLE ONLY public.ordered ALTER COLUMN order_id SET DEFAULT nextval('public.ordered_order_id_seq'::regclass);
 ?   ALTER TABLE public.ordered ALTER COLUMN order_id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    53298    product pro_id    DEFAULT     p   ALTER TABLE ONLY public.product ALTER COLUMN pro_id SET DEFAULT nextval('public.product_pro_id_seq'::regclass);
 =   ALTER TABLE public.product ALTER COLUMN pro_id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    53307    product_image id    DEFAULT     t   ALTER TABLE ONLY public.product_image ALTER COLUMN id SET DEFAULT nextval('public.product_image_id_seq'::regclass);
 ?   ALTER TABLE public.product_image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    53314    product_rate id    DEFAULT     r   ALTER TABLE ONLY public.product_rate ALTER COLUMN id SET DEFAULT nextval('public.product_rate_id_seq'::regclass);
 >   ALTER TABLE public.product_rate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            2          0    53249    account 
   TABLE DATA           |   COPY public.account (acc_id, address, create_date, email, password, phone, role, status, update_date, username) FROM stdin;
    public          postgres    false    210   S       4          0    53258    cart 
   TABLE DATA           Q   COPY public.cart (cart_id, active, create_date, update_date, acc_id) FROM stdin;
    public          postgres    false    212   �T       5          0    53264 	   cart_item 
   TABLE DATA           >   COPY public.cart_item (cart_id, pro_id, quantity) FROM stdin;
    public          postgres    false    213   KU       7          0    53270    category 
   TABLE DATA           `   COPY public.category (cate_id, create_date, description, name, status, update_date) FROM stdin;
    public          postgres    false    215   �U       9          0    53279 	   employees 
   TABLE DATA           E   COPY public.employees (id, email, first_name, last_name) FROM stdin;
    public          postgres    false    217   zV       ;          0    53288    ordered 
   TABLE DATA           ^   COPY public.ordered (order_id, cart_id, create_date, status, update_date, acc_id) FROM stdin;
    public          postgres    false    219   �V       =          0    53295    product 
   TABLE DATA           ~   COPY public.product (pro_id, amount, create_date, description, product_name, price, status, update_date, cate_id) FROM stdin;
    public          postgres    false    221   1W       ?          0    53304    product_image 
   TABLE DATA           <   COPY public.product_image (id, img_url, pro_id) FROM stdin;
    public          postgres    false    223   rj       A          0    53311    product_rate 
   TABLE DATA           l   COPY public.product_rate (id, acc_id, comment, create_date, rate, status, updated_date, pro_id) FROM stdin;
    public          postgres    false    225   Zo       P           0    0    account_acc_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.account_acc_id_seq', 5, true);
          public          postgres    false    209            Q           0    0    cart_cart_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cart_cart_id_seq', 6, true);
          public          postgres    false    211            R           0    0    category_cate_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.category_cate_id_seq', 5, true);
          public          postgres    false    214            S           0    0    employees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.employees_id_seq', 1, false);
          public          postgres    false    216            T           0    0    ordered_order_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ordered_order_id_seq', 5, true);
          public          postgres    false    218            U           0    0    product_image_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_image_id_seq', 34, true);
          public          postgres    false    222            V           0    0    product_pro_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_pro_id_seq', 34, true);
          public          postgres    false    220            W           0    0    product_rate_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_rate_id_seq', 25, true);
          public          postgres    false    224            �           2606    53256    account account_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (acc_id);
 >   ALTER TABLE ONLY public.account DROP CONSTRAINT account_pkey;
       public            postgres    false    210            �           2606    53268    cart_item cart_item_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_pkey PRIMARY KEY (cart_id, pro_id);
 B   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_pkey;
       public            postgres    false    213    213            �           2606    53263    cart cart_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (cart_id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    212            �           2606    53277    category category_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (cate_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    53286    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    217            �           2606    53293    ordered ordered_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ordered
    ADD CONSTRAINT ordered_pkey PRIMARY KEY (order_id);
 >   ALTER TABLE ONLY public.ordered DROP CONSTRAINT ordered_pkey;
       public            postgres    false    219            �           2606    53309     product_image product_image_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_image
    ADD CONSTRAINT product_image_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_image DROP CONSTRAINT product_image_pkey;
       public            postgres    false    223            �           2606    53302    product product_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (pro_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    221            �           2606    53316    product_rate product_rate_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_rate
    ADD CONSTRAINT product_rate_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_rate DROP CONSTRAINT product_rate_pkey;
       public            postgres    false    225            �           2606    53318 #   account ukgex1lmaqpg0ir5g1f5eftyaa1 
   CONSTRAINT     b   ALTER TABLE ONLY public.account
    ADD CONSTRAINT ukgex1lmaqpg0ir5g1f5eftyaa1 UNIQUE (username);
 M   ALTER TABLE ONLY public.account DROP CONSTRAINT ukgex1lmaqpg0ir5g1f5eftyaa1;
       public            postgres    false    210            �           2606    53324 %   cart_item fk1uobyhgl1wvgt1jpccia8xxs3    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT fk1uobyhgl1wvgt1jpccia8xxs3 FOREIGN KEY (cart_id) REFERENCES public.cart(cart_id);
 O   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT fk1uobyhgl1wvgt1jpccia8xxs3;
       public          postgres    false    213    212    3216            �           2606    53329 %   cart_item fk3bd3w8r027xksw3hfxyhu09dv    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT fk3bd3w8r027xksw3hfxyhu09dv FOREIGN KEY (pro_id) REFERENCES public.product(pro_id);
 O   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT fk3bd3w8r027xksw3hfxyhu09dv;
       public          postgres    false    221    3226    213            �           2606    53344 )   product_image fk5mhfpl6mm0oljybv7k1yha83e    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_image
    ADD CONSTRAINT fk5mhfpl6mm0oljybv7k1yha83e FOREIGN KEY (pro_id) REFERENCES public.product(pro_id);
 S   ALTER TABLE ONLY public.product_image DROP CONSTRAINT fk5mhfpl6mm0oljybv7k1yha83e;
       public          postgres    false    3226    223    221            �           2606    53319     cart fkexcdd1pex25twxkpsltwk2y7w    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT fkexcdd1pex25twxkpsltwk2y7w FOREIGN KEY (acc_id) REFERENCES public.account(acc_id);
 J   ALTER TABLE ONLY public.cart DROP CONSTRAINT fkexcdd1pex25twxkpsltwk2y7w;
       public          postgres    false    210    212    3212            �           2606    53339 "   product fkll9b6w9lwjkhiymqatom6jbd    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fkll9b6w9lwjkhiymqatom6jbd FOREIGN KEY (cate_id) REFERENCES public.category(cate_id);
 L   ALTER TABLE ONLY public.product DROP CONSTRAINT fkll9b6w9lwjkhiymqatom6jbd;
       public          postgres    false    215    3220    221            �           2606    53334 #   ordered fkp640qrr68ytq56r94t3uvnjkq    FK CONSTRAINT     �   ALTER TABLE ONLY public.ordered
    ADD CONSTRAINT fkp640qrr68ytq56r94t3uvnjkq FOREIGN KEY (acc_id) REFERENCES public.account(acc_id);
 M   ALTER TABLE ONLY public.ordered DROP CONSTRAINT fkp640qrr68ytq56r94t3uvnjkq;
       public          postgres    false    3212    210    219            �           2606    53349 (   product_rate fks86au96r4f5fxfaf833b8nk8d    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_rate
    ADD CONSTRAINT fks86au96r4f5fxfaf833b8nk8d FOREIGN KEY (pro_id) REFERENCES public.product(pro_id);
 R   ALTER TABLE ONLY public.product_rate DROP CONSTRAINT fks86au96r4f5fxfaf833b8nk8d;
       public          postgres    false    221    225    3226            2   �  x���Ks�@��u�+X�B_h`P#���L��po��Srɐ_?d3��Jj���}��b�r��k��L�"*ȐuCV$b�5�M�Ϫ /��W`��"�ʊު�y�tQk��)&]#?Ԫ���<�A6��Ԩ�R5��zDL +a�RM�G���Y}OD�D	=�Y7%���[�ҟ��=t����iIq�`Z�>�����\�3�B�=�wj�?��YAu�Ll���?d��+�U����Q�q��͒�ʯ���u��2_��(�@*K�T�{��rvSؿf<�%`���q���éj`b *)���S`pa[{�Z=l��W}ҝh�W��8lg�J_zi�{��p�Z�\y2�_���)в.[�'�Ⱥ��j*���v6^¥�2��?��q�7$��2�m��(	h��ӹD��<�)�پzb��@���o��~J� ����      4   \   x����	�0F�s2�4�O�f�N��x/�����dj�4b����)��������k�F�ȹQ��A�cAY1��YY�b��C��r2�      5   ,   x�3�4�4�2��4�����\&�F@�B�r��b���� �X�      7   �   x�u�1
�0�����!/�i�MpS7G�bESD������I7��*��q{����D
)�� d�)
�D_S�66;Dl��h��~�y��dL�_sG�����
��>PYo��8��ޔI�Â̌�.1�¿��z��S��W���%s����ܚ7�6�J�Zi15L�6O
|d�S4#�z�O��R�6M%���>�VrS2��n�CG�R� �.�0      9      x������ � �      ;   �   x���K
�@�ݧ���~�m��
^����0���q#Ĭ�x�����.G��4��Z\4���pk��z�2���H���|IQ��t<�g��0N齕~�� �S��i悍ly�UMLcS�G6v*k�^�7D���'a�0)Qo      =      x��[[oɕ~n��zq0��N_y�[�jI�yђ���jrĎ������F0�`0f�AAɂ�pֆ=;K0?�Ohɞs��F�<Y �`�}0)��Uu�����I��H��iw��]�d�����!�!���������`�掮/�;�bjr�b�����}}x��D�Q1o݆�����{4��8�X����e���E��ɘ^KV�I����������'L����a}�a��s"υ���
-g0t�i8��R�c��\oP�GN��ۊ�/��M�þ��w,���lp}y���(Ρ7�˸�����(��؞7�8`��s���7	�Οl���[x�G��P���f���'ח`0���-F�H:)����͟�$����e0�Y���,���Ƀ��-.yv�A�Z(��N���p��͂=Y���v���ݖ��6��Ϭި[������MV��VKR͚^�Jэn���EnS[5u�Z�{�tA����a��(N�^.��Q�P�%�
��~��)jk�u�)��FZ��А��p������p��P�-m�߷���hłWE�,��7�]�U��lÄֿ�X�e���;��F��7:m��x~2c��`�p��G^3�� ���76��y��a~2Ϯ/�D���bw۽��|��	�fGM/�^����O���6������?� ]m|}y<ƥO�����[xt�$,��C�0MU��Sb��+f�´ʪbȕ����F��meu5���?-��Pջ��
`�8�"9��ӂ�@̀_�x��0�"���B*��R^R����W].���N�����B�TP?-�I�ȩJ/��^^PUV�J�HU�UE�U�"���m聡�a@��ͥm~%� dS����ʺI6G[C�GA�1~H����t��Yg�{�6�Z۝��-�����Γ��+�❛U�\ӥ����m5���֭�=����Y���ޝd�Nb\lk�ڭº�0F��z��_̈́�#,�Iѹ�E��`Y�	K̸�" by���^ CC2*�O�`��E�;ОG1�c�����Ɨ?F�r��W.��	U�`��� ^a�O��$p��C�	��OM���/P*�GmvH��7O���[p���< ~a;*a�sI�߳n2J�����pB�L)���)UuL�������Og�~y,��"�9䳙� "�e����	��g3oH�7�볐���S��`Ԯ U`:ԡl�)g�p�������9�d�IZ�oB%qdc����e�4y۹o�|��Z�A�@��X�~ʝq�+1�#����ՄO}H��`� �DĨ+���������M�T+��a�|<Z~¡�s�өY{/ĺ:q]
W3K&�_�NRԶ�[��M��D�+:����?�Ѵi7cȡh�ZPG��PWT� x4uUU䚪Kmѐe!����Ə�CG%����kΏ^s���ڲ~������̺S��۝��܊�0l7��+�۔�Gʎ��!W����ݕ��fB��iB��E������)��K�������0y���X+���l2d���!�^�`KFl}ւ!wa>s�F��]����W��?���N�M��������F�~]��=��e t#ȉt���{��� l�I��ٸ��;#�8?�v!���֟�ws[_��/��{m�n�'*���w'�m&�H萟�]�����ݵ�����[0D�E��e;'f;�@���Q.Kud����<��i��V�o�vx�aӬ^����1�2��0}��_@t�	v���`��W_2�;W�Jh��1$��c�ėc�%�;���o��=��54��jF�ux�x���?�i�W~�&8����&F�qg*k6*��i1����5:mI5*�Q[V"t�U�f�P�E�!t�FY��R��a��^:"�L��IEQ�s/oD<Pq�D��~����s%�ff���\���)��'q|?�IO8�8�$DȰ@�L>�� �մ�6@q	RBYS�U][U+��\[Q�з^�fй&�a��!8)p��yj�9�	��٘<;��};
1[_�Eh���?&��R�

�l�,�x�o\�rV\� �C�@���Zs�_^E<�lt�v��6���f��kY��mֵ[�|I3Ai�ޙjTVD��R�͐0#G|�ŊS�=1D�E� �"@���'Ay��+�3�AK���O�I5��2���3��b�Hr�T(.e�K�
(0��\Z�*U��"�(v{��x�^g�϶m�)ҫ���jA��jU[ъ��^YU*r�*�aY�#�<�Źǩڻ�$ F!��_�Ȥ>�b�h�n��c�O��_ ���9/-��a�($�zx��Ȇ?<?}w�X4��f&�T ���˨$Ff�G	R/����
�|@ȅZ�C�n�e��6k�ٖu�j[l�j���-�^.�ˊ����h�T�u�&��;��J��[|�N����p���Cc.z؁ �qX}� H���鸆y9_��h��4G�R�|D�.!_�tI@{�橽���<���ϽO��;6�w��̏8	�r��2���ࡥ�N�j7�V�u�V{�fې����:�IE�T�"�Vъ�bh,�2�/з/Q�#�v�6����Y3�W�h�;	?O`$�� ���z��uB��7c��;�틸�r���o����I�$J�w�MC{�FÐ��.�MI$�d
��%@��y���FXMT[����4�lϗ�p�'�Y��A�\������!�hv`���w���^�v�5�zy�N����aʪn"��?�%v��H�^q�sd��oq'8��z�x���uuF��)"1�f$t�&_�]�r^�ǖV���OS|��L��
 9��@���LD*$��(�AY�Uu�T���>�5��;�b�<m��?1�_�=Ӊ����R
��.:or�#>i �brt4�u��:(���7�_Qg���Y��x�B`#����|���V�Z;m�ll�m޷��Z���rw�j�g*�"�J��z=��C�g��ǲ�1Ϳsy^��<~�R��I��!�S�t'΅�s"�C�|���c�F���Rږc�5a�nc�|�m��6������@պs�B�RY<��*�Y.�gU6���WJ�%g��kآ��R�I��%@�G�I���WR��a8wI�����X�1*?cV��;V��Q�%�IN�f5[ r�b��D&�R(rM���2�'���vcZ��F;�A�O��R.�c�y��$I�@R�f
�O�N��`�<`V���^g�-;�|�D����V���BM�.�0�l��^�yj��.��������D,ڵ�w֚�:��8�I��m�v�݉�����q,��G�|�hfQN)
�J��縯������e��G/���<�vxL ���E�LdD]��3�	��8?p\fۋ���[/='����(�&�XA�ޔ��L��&0WT����۫��T��C?pY�4-^�M��cʊ�q�Xp�0�[~���^�տ��'��3��"^���l��^~N��9L���\�����%L}�'ě=$T���u%�ʘ�$�1�x	��	�e��So�`��c|�P���ՠ���^��UՐ�j���(�(J�Kc1EǏ.���QO��w�҅����"���"c q�%1%eVw�]��ԏ�zH!���o3��j0�D�=��� *�%�ĉ�_�@ٳ���Kn��/�;��V
.+�V 3-_e��
��j�̤��z�e-g�CV}���d��QCQ!DuM��h�?� i�LJ�@����nܘ��"���S��D�y���6������}�l��'Zm�Y�C$3""�#'f`FH\a��3$���=R�%K�����,�Rd�z�ٴ6�����B����v#s�ડ��Ğ`��XĜꊬ��"�;�p�X�W:I)�/ȷS��j�"(~��o,�͎��Fz����z(ث�/�/@z�+e3qV�q��8�̐`�̵��6��C� �hφ �v❆F�ޢYL�R+ ���Y���%�6��;X��	P�䞊r��e���_��(J���؈D?�j�xV ,  �3	�*�.�˜X�}�z�(R�}Dўe4W�&?Dʻ�QQ��rے%�j�7���:*��b�"�wJ�-�u�*�G������L�#����+ސ瘣�S
���rY"�ȱ=44�~�~O��W�#��Z�2T�R+C;��g���Ad��1�eiN�
�@0�!� ���+�h�l����:-x�hەTU3�B�G�z�p��\-��E�}������eŻ�k�ܡ31����ט�gٳ��C)�;<�����Ti��l�=5��"�%Oqev�(|�Q\>�zxI9�̃4N�Xl�>:�<ݖ��:��)>��>`�<��>q���Z��a�"8��@�Y�q}~�_�a
�`�IЎ��B���jA�h6�VȞ
���
8m�W�T�DG�GK/N�xp!ߝ�	󐺌4����ۈ�AĶ���s�4�� ���}>?�RJC�R\�_4⁗)���?n���3 `��Gl��"�/ҧQ̮ΨM,PV �3f��V����ϋ�V����v�lu�5�a*w�׹sG�*�j��i�������^֊6SD�|��-�.�r�#h0��_)Cߝ��z1�:?�"H擡o",3����	?Π�'i��t�.�hN~O�35ܬ<���j���3�n`�~� iY��$�s'���p���2���]:������&ę�	B�l� ���"�ۧ"C��p?��>b��	�d����ݥ��(�󗶒LJM��	y?�A�ؔy� �C���/�ѭO�Ҟ=C�5�\) ���+�.����/pG^|      ?   �  x����n#7��W��D���Y
�D%n���M��K']�s���/bd`̙#�|����ey�����~9�[_�^��,��t����٧�����?�*B�8�C��	�%�-��&գ\�<���p�R����/*�z��L)'P�:Em22v	>�����.|_���R�m���y��+TJ���٧�\���A���5����Ƕߙ?�q?b�Q"P!1�Vr&�$��������}��y]v�'��Z�̈��A�"�B*qb,�ʣ\r��r/��׷�����|;h���7��3Sɡ��"Aٗ��ifW6TP�jm=��As 6�i0�艒���\q�����IBmmF�e�b_�sn�ϜS�I �GW��_�կ�!�T%������5��*R]1��$�
�w ���W ��\�/��l�c��0z��B~ܟ�"�]?�������C�!���u+[�R�=CEy(�|�"���?��<��KY/F�d9,������0�af�ǹJ<2�ܻ���Q��F�`����i[{#(��7K��z7X��<��k
Q�z�i�J/!�|E����$� �M4�ب��|V(��cʫ�Cr��0k��GB_���7� �]C�n��`_��
�+���[�v�[B�F�}$�3G�\L�u���i2�WY���c�Gy��{5�b��� P�D��J{&�P����2�7�U~�I���#��#{�j)2��>��Q,0�ص�n����cX5{�3����i �̛x�a�jڃ�ؑ�r�[Ň4����6F��YĘ������pd>�Pi��?�,q��M�2���E[�fۤVƂ�������@�����Ad�(9ۢdkE�4SX�x$��{m����'�v���e��%OʌL:�hɘ��ɺ?l!ܺ�T9݇g�Ų�s)�jG�y�8zS�Da%�n`�\ηӨ˫֓,���=mC����K_���,hKb�	e��D�P�XZ,c�$���\��Z�����Y<���9ڀҼ�)7��n��$,���وg�3F`��0��6��6��+��/_�I�����{b�7�v�{/�����~���T���ߠ޻�ٹE�����^FD���Վ���1���~��|��,z��B�¯�H�3N+�J�^a6�F^egwy�c�:iE�i�/�ӎyB�Z+��3V��W&��4�Ԃ����৐�͝lJ�5-z���%��s��}��      A   w  x���=oA��_���jg��Z��"�4N0��l%���@)(�"
��b���?�0g�|��Q�����;sN�x[-�.d��V�r��P��h2����ǵ Mt��1:�� *,����ć��/�x��e��M��3?���r%���R^\�/MAQmDT��ݩsO·�.��Bȉ�!��oַ����x��P��Ϻ/la���!	�ϫ�؍�Z���|��S�f���B���ÌU:N(iTԀ�M�)�٬�I���,g��`�"�c;��j�E����r�a�����	�Լj�}��]�����+�(�VEh�"�vrz�R)�iU�����gd��a�����OG�0�i��=�ڊ�y}��q����Ӎ7{MwX�V�c>���02��d}'Ϫ彜3�~"�Ə�sT��R��1GmT�P�jq9�0L����0.�.a_C0uV�N���2^i��4�K�U� ��?+�B[e��+۩��4��͌�LR~c�~f�J9�f�{>E<5�/�U	��1�#z�|�+���2��f��a?�7+��zf�� ��BvG�v*�`��VT_��ykU��ȋO�ay5�إ _��GN�ĢK�_�S�7����7fS�����	�; 2�     