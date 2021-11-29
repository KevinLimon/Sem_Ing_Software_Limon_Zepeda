PGDMP     1    "            
    y            baluarte    13.2    13.2 8    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    99101    baluarte    DATABASE     e   CREATE DATABASE baluarte WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE baluarte;
                postgres    false            �            1259    99379    activo_pasivo    TABLE     �   CREATE TABLE public.activo_pasivo (
    id_estadof integer,
    nombre character varying(30),
    monto double precision,
    tipo boolean
);
 !   DROP TABLE public.activo_pasivo;
       public         heap    postgres    false            �            1259    99104    empleado    TABLE     �  CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    nombre character varying(100),
    profesion character varying(50),
    telefono character varying(10),
    domicilio character varying(100),
    salariod double precision,
    curp character varying(18),
    estado boolean,
    nss character varying(11),
    cuentacot character varying(30),
    fechanac character varying(20),
    evaluacion integer DEFAULT 0
);
    DROP TABLE public.empleado;
       public         heap    postgres    false            �            1259    99102    empleado_id_empleado_seq    SEQUENCE     �   CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.empleado_id_empleado_seq;
       public          postgres    false    201            �           0    0    empleado_id_empleado_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.empleado.id_empleado;
          public          postgres    false    200            �            1259    99373    estadofinanciero    TABLE     �   CREATE TABLE public.estadofinanciero (
    id_estadof integer NOT NULL,
    fecha date,
    nombrearch character varying(20),
    totalpas double precision,
    totalact double precision
);
 $   DROP TABLE public.estadofinanciero;
       public         heap    postgres    false            �            1259    99371    estadofinanciero_id_estadof_seq    SEQUENCE     �   CREATE SEQUENCE public.estadofinanciero_id_estadof_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.estadofinanciero_id_estadof_seq;
       public          postgres    false    212            �           0    0    estadofinanciero_id_estadof_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.estadofinanciero_id_estadof_seq OWNED BY public.estadofinanciero.id_estadof;
          public          postgres    false    211            �            1259    99122 
   evaluacion    TABLE     �   CREATE TABLE public.evaluacion (
    id_evaluacion integer NOT NULL,
    id_empleado integer,
    malasobs integer,
    buenasobs integer,
    comentario character varying(500),
    fecha character varying(20),
    reporte boolean DEFAULT false
);
    DROP TABLE public.evaluacion;
       public         heap    postgres    false            �            1259    99120    evaluacion_id_evaluacion_seq    SEQUENCE     �   CREATE SEQUENCE public.evaluacion_id_evaluacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.evaluacion_id_evaluacion_seq;
       public          postgres    false    204            �           0    0    evaluacion_id_evaluacion_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.evaluacion_id_evaluacion_seq OWNED BY public.evaluacion.id_evaluacion;
          public          postgres    false    203            �            1259    99237    nomina    TABLE     �  CREATE TABLE public.nomina (
    id_nomina integer NOT NULL,
    id_empleado integer,
    dias_laborados integer,
    fecha date,
    uma double precision,
    sdi double precision,
    sal_y_suel double precision,
    isr double precision,
    subsidio double precision,
    cuota_imss double precision,
    otras_deduc double precision,
    totalpercep double precision,
    totaldeduc double precision,
    sueldo double precision,
    diasfes integer,
    bonopunt double precision,
    otrosbon double precision,
    redimiento integer,
    cuotaext double precision,
    sueldorend double precision,
    sueldoneto double precision,
    pdf boolean DEFAULT false
);
    DROP TABLE public.nomina;
       public         heap    postgres    false            �            1259    99235    nomina_id_nomina_seq    SEQUENCE     �   CREATE SEQUENCE public.nomina_id_nomina_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.nomina_id_nomina_seq;
       public          postgres    false    210                        0    0    nomina_id_nomina_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.nomina_id_nomina_seq OWNED BY public.nomina.id_nomina;
          public          postgres    false    209            �            1259    99177    producto    TABLE     �   CREATE TABLE public.producto (
    idproducto integer NOT NULL,
    nombre character varying(30),
    cantidad integer,
    valorunitario double precision,
    valortotal double precision,
    descripcion character varying(200)
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    99175    producto_idproducto_seq    SEQUENCE     �   CREATE SEQUENCE public.producto_idproducto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.producto_idproducto_seq;
       public          postgres    false    208                       0    0    producto_idproducto_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.producto_idproducto_seq OWNED BY public.producto.idproducto;
          public          postgres    false    207            �            1259    99138    reporte    TABLE     �   CREATE TABLE public.reporte (
    id_reporte integer NOT NULL,
    id_empleado integer,
    rendimiento integer,
    archivo bytea,
    fecha character varying(10),
    nomina boolean DEFAULT false,
    nombre character varying(40)
);
    DROP TABLE public.reporte;
       public         heap    postgres    false            �            1259    99136    reporte_id_reporte_seq    SEQUENCE     �   CREATE SEQUENCE public.reporte_id_reporte_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.reporte_id_reporte_seq;
       public          postgres    false    206                       0    0    reporte_id_reporte_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.reporte_id_reporte_seq OWNED BY public.reporte.id_reporte;
          public          postgres    false    205            �            1259    99110    usuario    TABLE     �   CREATE TABLE public.usuario (
    username character varying(15) NOT NULL,
    id_empleado integer,
    contrasena character varying(20),
    tipo integer
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            J           2604    99107    empleado id_empleado    DEFAULT     |   ALTER TABLE ONLY public.empleado ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);
 C   ALTER TABLE public.empleado ALTER COLUMN id_empleado DROP DEFAULT;
       public          postgres    false    201    200    201            S           2604    99376    estadofinanciero id_estadof    DEFAULT     �   ALTER TABLE ONLY public.estadofinanciero ALTER COLUMN id_estadof SET DEFAULT nextval('public.estadofinanciero_id_estadof_seq'::regclass);
 J   ALTER TABLE public.estadofinanciero ALTER COLUMN id_estadof DROP DEFAULT;
       public          postgres    false    212    211    212            L           2604    99125    evaluacion id_evaluacion    DEFAULT     �   ALTER TABLE ONLY public.evaluacion ALTER COLUMN id_evaluacion SET DEFAULT nextval('public.evaluacion_id_evaluacion_seq'::regclass);
 G   ALTER TABLE public.evaluacion ALTER COLUMN id_evaluacion DROP DEFAULT;
       public          postgres    false    203    204    204            Q           2604    99240    nomina id_nomina    DEFAULT     t   ALTER TABLE ONLY public.nomina ALTER COLUMN id_nomina SET DEFAULT nextval('public.nomina_id_nomina_seq'::regclass);
 ?   ALTER TABLE public.nomina ALTER COLUMN id_nomina DROP DEFAULT;
       public          postgres    false    210    209    210            P           2604    99180    producto idproducto    DEFAULT     z   ALTER TABLE ONLY public.producto ALTER COLUMN idproducto SET DEFAULT nextval('public.producto_idproducto_seq'::regclass);
 B   ALTER TABLE public.producto ALTER COLUMN idproducto DROP DEFAULT;
       public          postgres    false    207    208    208            N           2604    99141    reporte id_reporte    DEFAULT     x   ALTER TABLE ONLY public.reporte ALTER COLUMN id_reporte SET DEFAULT nextval('public.reporte_id_reporte_seq'::regclass);
 A   ALTER TABLE public.reporte ALTER COLUMN id_reporte DROP DEFAULT;
       public          postgres    false    205    206    206            �          0    99379    activo_pasivo 
   TABLE DATA           H   COPY public.activo_pasivo (id_estadof, nombre, monto, tipo) FROM stdin;
    public          postgres    false    213   0E       �          0    99104    empleado 
   TABLE DATA           �   COPY public.empleado (id_empleado, nombre, profesion, telefono, domicilio, salariod, curp, estado, nss, cuentacot, fechanac, evaluacion) FROM stdin;
    public          postgres    false    201   �E       �          0    99373    estadofinanciero 
   TABLE DATA           ]   COPY public.estadofinanciero (id_estadof, fecha, nombrearch, totalpas, totalact) FROM stdin;
    public          postgres    false    212   wG       �          0    99122 
   evaluacion 
   TABLE DATA           q   COPY public.evaluacion (id_evaluacion, id_empleado, malasobs, buenasobs, comentario, fecha, reporte) FROM stdin;
    public          postgres    false    204   �G       �          0    99237    nomina 
   TABLE DATA           �   COPY public.nomina (id_nomina, id_empleado, dias_laborados, fecha, uma, sdi, sal_y_suel, isr, subsidio, cuota_imss, otras_deduc, totalpercep, totaldeduc, sueldo, diasfes, bonopunt, otrosbon, redimiento, cuotaext, sueldorend, sueldoneto, pdf) FROM stdin;
    public          postgres    false    210   1H       �          0    99177    producto 
   TABLE DATA           h   COPY public.producto (idproducto, nombre, cantidad, valorunitario, valortotal, descripcion) FROM stdin;
    public          postgres    false    208   �H       �          0    99138    reporte 
   TABLE DATA           g   COPY public.reporte (id_reporte, id_empleado, rendimiento, archivo, fecha, nomina, nombre) FROM stdin;
    public          postgres    false    206   �H       �          0    99110    usuario 
   TABLE DATA           J   COPY public.usuario (username, id_empleado, contrasena, tipo) FROM stdin;
    public          postgres    false    202   ��                  0    0    empleado_id_empleado_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 12, true);
          public          postgres    false    200                       0    0    estadofinanciero_id_estadof_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.estadofinanciero_id_estadof_seq', 11, true);
          public          postgres    false    211                       0    0    evaluacion_id_evaluacion_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.evaluacion_id_evaluacion_seq', 24, true);
          public          postgres    false    203                       0    0    nomina_id_nomina_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.nomina_id_nomina_seq', 4, true);
          public          postgres    false    209                       0    0    producto_idproducto_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.producto_idproducto_seq', 3, true);
          public          postgres    false    207                       0    0    reporte_id_reporte_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.reporte_id_reporte_seq', 14, true);
          public          postgres    false    205            U           2606    99109    empleado empleado_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pkey;
       public            postgres    false    201            a           2606    99378 &   estadofinanciero estadofinanciero_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.estadofinanciero
    ADD CONSTRAINT estadofinanciero_pkey PRIMARY KEY (id_estadof);
 P   ALTER TABLE ONLY public.estadofinanciero DROP CONSTRAINT estadofinanciero_pkey;
       public            postgres    false    212            Y           2606    99130    evaluacion evaluacion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.evaluacion
    ADD CONSTRAINT evaluacion_pkey PRIMARY KEY (id_evaluacion);
 D   ALTER TABLE ONLY public.evaluacion DROP CONSTRAINT evaluacion_pkey;
       public            postgres    false    204            _           2606    99242    nomina nomina_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.nomina
    ADD CONSTRAINT nomina_pkey PRIMARY KEY (id_nomina);
 <   ALTER TABLE ONLY public.nomina DROP CONSTRAINT nomina_pkey;
       public            postgres    false    210            ]           2606    99182    producto producto_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (idproducto);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    208            [           2606    99143    reporte reporte_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT reporte_pkey PRIMARY KEY (id_reporte);
 >   ALTER TABLE ONLY public.reporte DROP CONSTRAINT reporte_pkey;
       public            postgres    false    206            W           2606    99114    usuario usuario_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (username);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    202            b           2606    99115    usuario id_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);
 =   ALTER TABLE ONLY public.usuario DROP CONSTRAINT id_empleado;
       public          postgres    false    2901    201    202            c           2606    99131    evaluacion id_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY public.evaluacion
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);
 @   ALTER TABLE ONLY public.evaluacion DROP CONSTRAINT id_empleado;
       public          postgres    false    204    2901    201            d           2606    99144    reporte id_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);
 =   ALTER TABLE ONLY public.reporte DROP CONSTRAINT id_empleado;
       public          postgres    false    201    2901    206            e           2606    99243    nomina id_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY public.nomina
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);
 <   ALTER TABLE ONLY public.nomina DROP CONSTRAINT id_empleado;
       public          postgres    false    2901    201    210            f           2606    99382    activo_pasivo id_estadof    FK CONSTRAINT     �   ALTER TABLE ONLY public.activo_pasivo
    ADD CONSTRAINT id_estadof FOREIGN KEY (id_estadof) REFERENCES public.estadofinanciero(id_estadof);
 B   ALTER TABLE ONLY public.activo_pasivo DROP CONSTRAINT id_estadof;
       public          postgres    false    213    2913    212            �   �   x�e�A�@�u{�9�iA\��n����0��0���_s8k׾� |""�`����^�Rk/��"O��K!�1i���\�j�
�̍Q[c����m���u�8?4�h�96xg��|6&�h�퀈?3E�      �   �  x�e�Mo�@���_a�3���~	%����ޢ�������,M�!�Ok�<�DX��	��#56!^�> �D���i�^�4ܪԵ�HjPB�t6�-�7($-�B�)(ǒ?�0���-_әg}h��~�ں��ф_!Đח�ZH��-W�����a �Xt�(>�4Zr�?.�E�:��/MuW*�Ū�C�SZ��F�2�n���X@�B�����)��H㼳`H�@ر���&�9�)�Vw=3�2V�C�4Uh�X����f�v֑GFpZL�G�G,j���2C�,�6��x�u(�a�����u���c�<�R8�|�[�_K�q��n@�u��gB
�r�����?k��1�,g���2�[M��P��Q�aH��ᯛB�����I�K�8@u�����K�j9;�
M��rK�[��y�ϧ�(� \Ԝ      �   f   x�m��� ��3���=Z�.�	���IcB�p��(Pƃ<��_i�T��z%�eЍ!���M���V�yjfc�Ā>��a�D��y}�����T���.P      �   4   x�32�4�4�4�)JLJ�JT�-�TH�L��4202�74�7��,����� �[
9      �   f   x�M���0��.���K���*I󨄐}��p�ră<�h�n��	F`���������F<�����j{\�b{5��Y�Ȑұ(&V�{ﳔ�'��      �   A   x�3�t��-(-IL�/JT�(�4�44500�44 SȲ)�
���E�%�E��
�i�əy�\1z\\\ ��      �      x���˲,;v]�&�B_P�x�@u�>�n�FQf�(������+3��$���{�̼������Zs��D��P�!����O�����-<�w���'��s.��銟���
=��Kv_wIO��k�'��s,�����y+�Rڳ[{�^�V�=_c�~_�ƾ��W����f;֗��x�v��S[L��C�c����2�b�z�}�T�6��g^1�*��rG>����o�k�B��v�w�u��yڼ��ޒֻ�Ü�����{����6��^O)w[�����w{W��Sg�Yv���1��j�i槦��|��1������Fj,N����ܝ�o�q���Wm���V�,��{���U���[Y%�x׮��jk{����7�;��|��׸��=ǝ��F���ѻ����g����g�X��ڞ�����g���>��x�]�ٞU�l�/UJo�����ܓW��2�}�ծ���5�Fo�o��v��5����<�����\���u�w��U&K��n}�6��	������,~�o[�b���g_�����w�;_Ou͊���%+����O?�k���7��;qX���k�賔�ޘ���Go���3�����\��:����{���Q��/�d��k�uYA׌5z��^��z����}�+����ͭ9�h}<�/�e�v���엣���lm�����J}JO�y�p7��y_����mc�����va��������{w�������]<f+q�l���+�֢����&�.X+^�˅��4ԇ�oo��g�"�&o_,��0���p�
3ߜa�w<�ŉ��T�y���ؚ��{=�O�b�Y5�n�0N�;�m���<7��Xm�:����B��y��R�VH�~�����g�Xi���7V���{b�9������y#��Yq�ؿ���=�7&�F�;���U6��
ˏa�k�s���8�,���o��"[P����=�����y�bk0��޼���x	�8�R�ݛ.�՝yX��l#��}���;a��{ݣ<z�>���g����e�~�O�qJ1��V�<���������Hm�'4����>�G��9^���l�l,
;z%��ܫ��Y���sW���j:]�Oz�X�$���T�'�[E����mo��yq.�����X��(�Sv��,gd�z�k��}�~�����Y�u���=k|�l/&ތX�A�͢���'\ӾK�#^>z��E�s7����<4�����eކ������.�����MoxW�۱C�t�<@K7o�1����wO���e"M�|��Z�x�C�F����t���q��%6����/,rf�ޑ���@Wٕ3N��/˜������:�_6/���M�x�,����ދ���i�^,0��=���<�����,�`Ϻ�9�~�گz�%7lm���J<9Ǡ~��&{�{�MY�	G��5�X��7�ԥ��yy�����J�K���_i_	g=�2����R��� %8)��w�\���=�"8^Is���yw�AKK��;��)���~_����+ۑ:d�Tǃ�Ϧo����;�.���p�,̻kju�5XĻ7��`���>W b'\�
GA,Π�[��ƌ_ ͬ�7��`��p�[H�b�o�������_�+�=g`�'m�����ȏ9s����ie|��v�
���a>+�0�{��m���8b��	 w��-��Xͪ�+��{_���ˉV��,��AD��3�Yq8S�h�����ѯ�++��@% �s�P�I��5m�)Ap��36�e"6Ǭ����4���I�!r\�O�����B_��;�f ��5�|���:���.A�cc۹c\d� ��y~����"&7���V�l~�eA�N1�aJ`~/�����E��f�� F^E�.o�<u`��,P�{��H��ùb5�E���a�I_��ቐ��w��N���GfM��Y���} ��l?hs�����ã�r�x��-�~���]�)f���������P�� �g����-�뎯�"�f 	�L�`~�O�uN^"��`��w(��	���~k������y�քD���$���!��>}�ͺq(y�=��"���"eٽv�ަ~�sw�w�"XJ~w�-u�!��g2����cvS#�&�JX5�:��at*˺|�_��<������{��&[ř��?�S��q_n!��~��NԈ� l��
�N�P4	~<���]?�x޴��lb<��� [Hɹ(`������Q��;x
������H�����YLP>��K5r�7���z|��~�,`��ۗ?x�:a>��Fl�7�_|���cb�:ۀ�)D�l�`N:|���{��S$��Rh ~��| �+ `Fy�mp����O�7
eD��g�����z�mYg�����p�^a��s,�k���#=�ヵ������mNPo�o-��k�� ��72k��9˨�2d�3oR6ђ�v����:^��7�p��6g��� M��5��$j�p@bEou>��*��4����[�A��R�J�&�=@Y�/�g��i|c�'4�!@'*�Z�` �ïR��5)Ga�#�i|ڃٽ����;���(�50ԅuy�<i���F�ń�O� �a����A�+A�h6�լۅ� �-�#�kV� �뮏��c�.���skg)߬T��7��^�%b����>p��3�����¤x7�	���o`F}�ƅ�w���b:��<��X:g����ŀ��;x��� `�4~�#�@N0���;�}���������EЙT��,V��;YPNQC����W�̀���>�	28 N���u0𖉰�6Ncd_"���Uހg.sn����/�w��5��xQ�
�/�W�!��"�� �/
n�5�F���e|�1�84�0��kpd)ُ.��5��n�Q������?	��}�g����sJn�`�00�^������&^��`Q0�Ģ<�k��{�n,��-��%0!|�p��=��]��C)��8~7q>s5"'Q����D��I�@�~l������w(�ȋ7��G/���9�o�Y�`Yf�����}�������A���	hR-,;VB<�Wk��f�4\�!���*�ӊ��*+���]9�w����M+�$���e&V���>NdJځ+ދ�S���<�t�Yl|>�1��̭�{�*��-�����'~^�9|��;��6�[�4""��uf� 7�V�xٱ/N;!t�m36�����.�����8�GK�g�c�����,}�c��2!��A� ��DPj������kd�Z0?؏�v�wk�x��:�$sEv�L�W-f1�=�lPuX'̶MދS��.��'�#O�U�HWe��w0/B�����	SޅO�mP	qj�f�UXX6���f�s���YޣS����2_���M��2S'��x^���	��,��5ן�CV�\<����}$@�kjd�R��4���6l@S�[���>"8�f4��ɇ���C��ħ�J�ג�ߋ���#080��!~2l-�LcE�� sW`�;ai�����;n0��o9�O"8��������k�2?^����$vm����W����n����y�Mk.�	���oHܿ���4������������^?�������W<�S+�ϟ�������P�M"�	�$�Ꮰ��Y�Cc���X�FP6�/ĕ���1�^C.���3ߋ�����9bB5DX��y(� �&w��@��V��N�۔d���F遲��]q(��/�&��� �XG�@6��fW�8z3�V ��&A��'h���[EA^�n�Ngs�1��0Ts�B"�D�x�J�&5�F��MT�&�n�����_�g2���r��5�G����G���']f<
��> ��p�Kn�+'����da��Oq�D%b� ��]5CuAV�� ^PY���i� �0ϓ� l�-���J<9p�~�&&��$�<6��W�}|+    K9�N���W0,�T����,c�-6�H}>%	o��BH1��@�W��\Z��~vH����Vj�����:��-�X�ȼ�>�^h�0eW0D�7�p��x���`�F�����}�iX�cL�w��*r�`�p8�L��*��n&�n�v�����A����)Q3�}뽚U�x�dpp��j�R��?b��!w� D@�^��/�Yn�)7^NcN �^|�C}a�(�,b7bAɭ:���Y�n�ד�X�:�3�+����X'?��\#���H`w� F4-|u�/"Y����S  �U0�M�V|_[�З��b�x>=c��p�B��7 �̍猛�`�Vm��b�ki��e&����N�p)B�����'�ꆺ�/�Xf��yt8�2��Z���9���*��`V`W���Iag8E���>���Xpl�������ـf���T1�hs���n�?*٘��jgE���r�<��(��l�1/�|���rȹ5.��a�@�,y� .M��c�\�^6	�n����7̈́�Na>V�qo��ua�Ԭ���O��_�)��k�֐�Y���$Ӵ�h����.��h.���O\i���Ŝ]��S��ߴR��,\.�gL1p�`�l'�M��SQz9	�� ]������]�-O���8ͺNf��L��Ϙ8n�7�?�����<3�������q4A����wݑ��Y���W�j�o�C!8���� ��_��d^�V�  �0�:x� ���*gE�;�w��^>.���h �Q����vJ�Gְ���6��������5��Z���>�/�
���q�ji)�7�VY�$&b�5�e�#5b�E�@����]|�͒�GWE�*<V�O��,��YᦈA"�O.�D=[6��#���A�		r j�c��KnPe¢Im!�������p�*�/a�D<!��?�����
��r��L��d˓�+�{a_����fN/}��$o�t�!7�w09�C);��$�ʁ4�Y�͛F�8��;#��r�2E�"�\�ֵ1��NB�� �����u"F�1C�p�j�8</A.i��c�x�<pl���o�Щ�瞴�Bc;\����*V��k��0�c9���r���C g�m��U�qH��N�q�t�lQZ�2̿�7��w��������$�Rl �lj��j���YV�C�<��K[v�G�v<�i\�У	�`0�?b�:Y���i�H�n`q8(���y��p*�֗s��pa��e���A?f��n!�M�c�!`�s����vU��Ζ��O�ԩՆqL�hp*C�j�X��&]|1pO�_3�'Y��;f�#��$�yOg�)Nm��W�,�X�0�����C�:9��@ر��+�:��X3�݉��y4h��Q,�J�&QO���q?o ���A�{Z^O��UJxٛ�%w������"+�}���j5ޠK �sw���$��&��o���B8x4�<@(ق�Q_�3��8�m�{����
vI`�|�57�*fO�i���]qd �+;8�'���2Ļ���T|�f��pt
7$ cxh�@�$Λ�]�������>�'��%.������
$�!�?���q.��J��h�8Zሃ�g��)w*"2B����`X��ĝ �*߿��zE��#�H'��_ve��+ؒ"~�`����6%D���l}�� �f�`]�"�3�#l
 (�9��6�89;�"a ����BX-�Ϻz�7�%/���N����6߁L�9�grرv0�ϫ=:'��-iǯB[�ƞ�[�-������e�/�o5O��7�������/1���Z�6	=5Jz[�6߱S̆^�:��ݓC9�SxD`r":|Ͳ��T��n�S����ۆAr�����A�`�V�>�-TƲ=g�HJ�)"(A�
�zM� ~���[m�snY|B�8����&���']&�.����}YsWl��ш�qu� ����<v�Y��]Ǵi`[�D�I��_���`j8���<����=Sðd�0�����d�8�l�*ѭ���8��!�V�Û �����Xh,`�Hпw}~r)V���۲�#<W��J6���"� �4|���Γ����C��j�����e��Vl3Fh!�	J�`Ǡ~ \�8ܵ��s]$��d���
��F������ag��v���	��C����z�K�E0&�������q�8|�=\80=��#f�3cæ�{V9R�=V6,�^��X��`��.���V&"���Ū���s�kw	Q�����-k���V�?"�ɇ}�os����d:k�[/֙�b��ɽ��]o=z����b��q��[�p֛s�x�ٷ��QN'؟l�M�VJ�y���>���=XA����s੭�]{d���@����
'Თ�Ha�vK�F0z��H���;��ޙ�9���L��j�u4�x�2�k�<g���&,� /k\r"�� �Zy�U\�I�0k[/h]q�'_v5�Μc�_,�����<|��=��~��Հ<ƞ��;��&~�o�V5d��~��,b(���JP�h�0n�{W���a��Ř��X�i������� �sz���O�V�_�[�����O�#��#<D�Exx��O�,��&��f,>$���	A�N�ot�a=���V�ۻg섽���H<[�C~���m�lc�L� =�鞗�Eq�	�#n�gc��=_�t8������B��e<��}3���!�o�gb�a�)�r�J?��s2F?��
RS�]�oA����Ƹ�=*?��6}���������k4�6�(��:�Oh�A��mlu���m^?�>��o��
��u��SQ0��0AA<p��~�e�ڿo�7 rŧٰ�ŷ��	�4����6�Η����)��
l1�28*A`§����^{�=3-�8/f3��SN.ܰ,s��p�}G�2w51H��L[A+��f�^+���\f�	���ΓU4��ո=x���j�a�D׽�UҲU�:��~����6b:��J�<!	���r<��?v��W���U̴l;�u��=I^��h��9\g
�h��n�z�#�1FW+O��rqM�0����[�q�þ�T|ɦ\t�a���f�L^�$�{Z/��2$!�l�Ec���b�λ�+��i��0�{Hg,�>�;�x�u��`;�V�KGcs3�؞<�ԲE�HY%��]\L��5�
�߽���� f�h�֯�И۪�]�DM�r�x�����.ɺ��"'O�U����`�P���ڒ:7(~���	�S��n^�E�ʂ�eu\�D�f!8|�C'�o���:Qt��6%c*�l�Pz��rf�B.0~�����VG�7���N����{���t��i%�O8��{�vS�#�6��I�U���$9`�Oݮ@w��+H�T�CX��&�9�&�n��p�F�.��/��c%��N�/.��&Xr�t��Vݓjr2���k��OF�sfk��ʤ{��?،�;����� +C�Nz��B|,���y�W���Է5+)tsܢ<�5����Hnwa�͔���^����p����)��"�X�`�'�B�=���(/9�3>�P�'WL�{�8�g;Ь�wO�etp�3�sZ�q�t.�)����`���<��=�i��J��b�; ��"
�tcg	����><�u�d�h
��z�r���pF�6�>P����Q,@�4cZ�W�u	�a��g;����˹6�xa��:G:�q7n5�ͦ�G�9��6WsZ��SG��8���;���w�N&�#o{w�'�ND
 3r�����5c�O�Y�g��.�o���Ӧꇆ0=�0�V������v^�c���&p��|e�N��� �U��p�)_@��i�(o���?{�lƸ�(��!g��l�F��4Q_�"��?,eJڧ��T���X�yu�~����vbV���N�+^ ��L\~G����q�Ol�!��&;ƴA���$�5u����b�+d��Ε�C��)��n��=�    ᨵ��ׯ���EUv.ʦ.��UP���#��t/��ВZp��S8���g�W�ʉH�N;O�OD �?~��HT;�w0�%���:Z���1�b��Z��f�G���%��H�ѭ4I������>����X��&��� _0֜�מ|��*	C\N�͌���s[/��/Y�l���B��|�a:���Q�˞����ֵ��K݂ˋ�m8J���n�a6��MA��o�T/z-�6��%���>���\�HV�r��HLr1�'������;ա`��P?7a��������"E|w�bڍ7�ؠn?�N�!��y�cl/�)G�'_N.�mt�q����O�XS;�:�Gݬd�A��8�y�W�~�)#�S2��Tٖ��U֜ǅ��0�z¼�%u1N�T�m�����,�#�S&VMm,�� �LռR;3��i���W0B}
�~��,��īޠ-��Up;O�oz0�0G_���j�C��ׄ�ѝ@g�i���2�����r<��a0����{n>�W���c�$���;�+�d�s�V �\/Q?�:HN���#�3����2㳖]�_��}cR��'Gm�6T����0�������	9��?ϙ�Gؗ{�/��p� ������ ǟl͈�R3 f�p0 I\���X��a�0S�����e���i��v"��/��ו���5w��&s��y
�&����'q��d׮UP�o��L�^`���LS�`U��iy6�TӪc:����[_��* �O9A�N@ڠq>Ԟ����<#� ~� �Dk����"�P��k9!S���Oٍ
�N6>�P�-�Ӡ�u�`�| =��ŉ�!�^��  ��(c�V����(��F��}�������)����)xc5dx�JKM�讎��]��6ǽ�� �,�ڨTxw<���KDd�Y��^�v�Ě�sp�l,'�ð6�8Bo��R��Τ��v�!�]�C�:�g�k�׼�1مK�l;������C2=DZ���#�W�l.;�X2{��.��Q쐶>`2��v��
_C(q�H��m�>�;y�{l������|ó'Y��4��2�w�k�4������3tnn�����yIf�XO�)��_��xff�W�8��(9s�y��e� w�cS���}U<]��'b�oy�8��0����Y��_I��9V@R2'hv=�u��鸵�u�~�(�v��_}�u&���\ ��$�&�#a���u%���R��2l�8�A<�b�@}���;��z�ԻS���e�
p���Ė�/Yx�3�m�Vk�3��/gZ��WZ��+l_�}w )�J0�cK|��A���:��{]�V-XL+l�`�OU�伍��Dp�n������-6�gҠ-�NX��3g��%�^v�-?��줹%o@ò3��w`N���ҭ�L�-	9��ίߓp#��pO�����b�l<�?���&u4�ة
�gE9r���Σ�s���PS vZ
Ӛ��9���� �
@W�'%?0�������Y�/6	A��o����~�!��m��~�o� T 0\b^0��V&cb�C5`���	�����n����?G��@��pk�3�;Xl�p�m6	6r��;U���5�U&�]�VXR>UA�sG�,5��y'EP`ۉ�j�K�؞����;�̾�2���zX-��&�8��S��F��M ��٫$�3��b�][)�8����_�G꾄��p��� c%ND,��8��|��yGx�Xr�#��8�c�� l׆-7̲K1��c��|b�[�"���w�����6 ����.9��t�M��,|�5��<��6E�����T9> H"0CX'��r8�U�'�2/�u���Cr}_� ?5��u�d�tr�x=�}��N���y�ip+�c���%k#�,�7-�7��0+��s�9j�c�'�?u2�j:�Լ���q
y�;H��~����9�@�!�(}��|��S�kG�tDXN4�lD������l��8F�rr�nSk��a ��a�L!&�ʬ�WsqJ/�y����v�^���%�q���vƿ��I{�����xۋ�y-���N�
P^�F��;�~���X/�[���b���4ű�]�τ�K��{�6�ۏ;�\�.h�.H�	v�[U��*_��g��8�s��k�)\�%�=Kz쇬P����b�!�il��=�U�gA8�#M�*ի0���^�dD���<y��&6>���}I5%��7��i~L��5�(ݴJ����[�w�kg��M~��ծ�_��?�@]��c��T�������Uݿ��Nm��t�����~���M���o�`�I��I���6 ���8�);�@��!V���I}'rq?�q)�v�U҄�]�5��Ȯ��LK< �&X/L"[����Q'[Ҵ��8 +�W����\e�ճ� �81g7�]g=xܿ�ɰl�ډ�3��JҀl���Է9�aEh�s��-M���E$�)����*8���/r���~�x?=Uq��*!��樂-���(��+a��h������@4��%�����B�;��~jh�v��]�tE��WU�Y'"ֶX5��9���ۯ�����)�9�&������,�������jl��J&M���}BԺ��ط:2�� J���ɾ>���d�3l�u��"�i8S>bK֬��k2LS��Ɍ�㷪������;�5V>��Y��gM)8Ef��c�QXzm�)/����}�I��R.���aI6"������Y��n��Vڶ�N-:'�O&�I�X�����Yy9OKI�
�:���\ۆr��`hq*G�s�`��E��jaY��8M%��M�!3�c�:�_(5�Zi˟������2X���0���u����U� wPސ�A�n���R7���E�
_�ވ�Ӻa�X^ݻ�yzx��ú��t�^��J���������]aP/���ÖM�	K���g��ْ�~M$fΧ��6��ٺ�9ij�l��
����K��X��Oߪ���}� kG`���s��n3�S~��-m?>�w��8�ž��Qx�0�8u'�B��^xH1�c�6��zb��{��~���a��L1����V�� �O��n�6��ؐ1���sR^�\k�XU��p�٠zV�޿E@�aP堲�WE�)�t-^���l���g
J,0g�,
���#����8��9^�[í��Tk
���N�̍��bc��G�B����V�f�0d��k��Z���NG]>(�r�_��3Blǯ���t����uv,d�Ѧ��7��>}��巆�
� �I��͚NJ��=�٥���=��*��P��9�����c�7=9Ф!������0[���� ������;�X�=��*�e*nG�k��,v��P[;��KJ���_ޠoX[N������wV=�Q��c͉�Ɔ�ޣ��9���G��[Os�Mo��(G������O>vd4�ڑEc��|:4���6e�����yf,o����	g���g���@c����5�l	[�'^F&2��,�!�=Ӝ%W}j"�9������H߭���!�S�:���Q�+��U 3 ��3y�c���ӕ���i#�����Ԯz2�?��x�����wY �x�K4�Z���^����
�����ϓe�L�D5�^�]�fS�R!�p]��]��� �����m��X�m���e�^T�#H��|���a̰{����I�1F0G�YV��$x����A);�����wx��J�/��'�V�wU���/�6T��g��`����DCk��*���kO�0G��^<�u���=յ�n,��.�|�I�c���28�[ zkq��%x��گ���S�Z��7Wk4��u��UX�����i�Kg��I����I������KI٧'��d�A[�(W��I@�ӡc��3Ō�7q����F]���S��0���7{
�������!Y[v���k���X����~���Z�}y�.'U4����B�,`K*��&O1p��wO����b�@y$"��-ΥBƳ���     G��/����Tox�p��40��S�;�T����l#��n�v<����(�*;�툋 ����cl[�X�K�c��#̜�]-�����i���Թ"h�uN��Gww�����'�!Dۦ�����}ps�O��.k�D�[=T�ס5���h7�3B������;�*������W���U㭦b��u�S_���s�5� ���tO�2�$��2k ��C}�jC�9�s���ti6t�n�RݶQ�2�t T�xr�jk?g�Z<ɸՖo`��;k��\�(�V�H�8x�v��������j�*�ꖖ�c���u^ЪJ�]��E���e�o���c[���ǎ>e"�R�G������@��F����5S×����F9F�*�b�Dp7�"��w�C��ߏ�4���\� hG�����#&[�\>!TPj��Sj�'hn����*,~j8ϣԨ�T���C�hG�s����;�ƈ����R�0#B*:�gG �]���LK���s�J̛�+,��l;u!b�,�O%�z�k�3X�3��V�^�y�x0^����9��yH�@�8<�7�7�ɰ�F\*m��l/Z)�ck�1XQv�<Y�j\���g�j�fZ�#e
�8 jϐ���J89rd;�(N�r/��'��v=`R����iY2=Ӱ���x9���1h���� g)���ymN8�+��ķ�o��K�|�$���p�b�����*����^��f��?�g�r@�n����R�3*,��p%�K��k�O�s��w���y(�e���%�Ge�/��궗��g���"�h���yᮜb�
�mz:^i+������EUc%���d��[��}��?��]�q���W����gx(S��_�BX �q��$|�T�Q�˗C�v�)�dG+qJ�
=p����)�c�j��8DR�l,����:rz����7���A]���ekVv���~�@+Q����}L�+�����(��9�2����D�xg�3��޷��̙�*@t�����*}8y��	h�}��o,"�Ā�C�l����Yw���]��~�p�ӄ ��[ۦ�И�����]�6�5�w�u�npG):h�'�፲Xu4��b��Q���A�XG�<|�yc�H�m�=\��e[!y��z|�t�1�����o	f�!;�M��	�yj�fG<�B�'{�ZI@h%(�:���v�xX�Yއ`�:�ަ�jݕ��`�v>�v���D�;O���#8�Gh��Ľv}�����B����n(o�������=���Ώ�	*�P�b�U!��Tu�V�G"l�K��Ԁc�/.r�N'��Go�K�w;BwZt`RX�������K��gUmN���(�Jh�,i|���;�L�=�q�l"Z��79�F6� &�,uF,btZ?��0T��Hz���Q_~[�e��-���Q<�
�6�a�lɱ�K
bnϞH�$�$?�N͓�7�
}~���_�ӔX�*�E��mqB$$8��D5����` �����F�	�3l�@�j0�.+���Wq�����ˬl�WG�����*6_�)7����b���͢�ҷ�-5EV��)��XY��Ն�&p����Q�,ʋ���G�E]N6r̶�C
�=	/xY���x! ����4����$_1�~l�Zn�[L��"'e�l}�����Ύ���)�L�JϮk���$ޫ�.�P��������3A°���9y.�zU�Uܼ�E��|����aˁ�8�����w��e�0���o��c�n �����&�t:��XG�9��n�D��
z�J���Q��a�k2�2>֢���	?:�-�E�A��[�y�=�L�4��E��p����7��d��?2_U��vT��Z��"��`��u��9ݰ���W��D�NܰL�]F�wx�p-�0�F��^�6o��R�fv��a�G��s�e��8��"+��^���a'�R-gyӬ@(�hU� YiP��b�Ե���.����
�B��|.log�df���~���8@bj��[]��!���>��=��`F��b_�!���	�4z��,eWqL	�;���#�� y��g�{v�d�؞�$��(0�[Q/��\��Q�/��4:Ú��g�ϩ
@\��|��^���|�d��	�^�]�6�P�*���X�WD�;�_�U&�E�+��|�*%�,n
�U���}����'������:︨#�Э�K�[	�F�P�Bz0�aw٫��Ĳؼ�5 YE�1ƹh�ǎ^�{HuVB�&?�};�/5+O� k�ޏ�)���v�i:��6�:X����MdI���������m{%��W�}<{����_��R����EU�J�k��V�|���&O��s��}�n���*�y|[R�	�vvBF��&���8��i/��h�|N��++A��=]�x�]���B�j�2��(c�t�{���0m���P���0��#��K�n�m����E
%9c7�x�2H�ث{L\�6RuNd����{��誼vS[��l���U׷/f�ߏ��H}� �����e�� ���=3�ɫq��㱼`8ex�J�GVR��FL��'��|��Vռ!XF���(�;���y�<UG/
��W��x1�#3aj���PlN�g妞2�F���Q<!W�g<$�=��ծ' c�ɴ���l���1���c@n%��&��%7<B�zH{�ZT(�_}o�s���q���Ḑu`�1g�4��+`���KN��M�	0>�%V��p�-�V$8]!�г�\�[�F���X�~�Y8����[\C�'�K����K��ˆ.{�饩R��%�pU�Ѫ۝����@�2��J��!�:T�X����f��B>��h�0��s��� ��{`�8�>�6��!䠋aX�P�>�,R�>��ar�E�8��u�'�|:��'~��\�eǆ�&�h5�(�u��roγB�,ѷJ!Z �����T���sa���;L�Ҷ�kAsv?p��Ͷ|���X�|�}�X|h�5��8�9�l��GN�D`�l��NJ8�L�7?�@�I7�fFm"�mk�=7�8��[0��;�^�b��b��x�F�ꊸ��#ҿ���VG�.�?H�l�y������j�{8w�JG�$p7;�'5	����G^��ح)S�K]�vܘ%�i�v9�w$�;f��&���8��f���1���ne����ޅ`�ImZ>��9��}�0��`�
�u$�s��H*f��I���2��Y��*�}��ˑ1��Z(�W�t��pP\~~ƴ�L�ɂ��N��1Ba�Ӧצ�ۡb��-J��R����î�I�� �a!��m6i��7���_�i[9m(�X����%/��$ُ��\�x|��I�����Z�!�t���ug!���gU��������ϯq����1,Eb���MeՍ��
��߀�M=QI*91��	�W�آ��"E���
*����YU�3����K��3Sm�i��:�����}�=�T�9-S�2uJ-"�a��2^���!��8Ul.��l���i9~o�X'��4[Ε_���yN+��K; ���6q��6`�uaշ�ob�yS���ޛ ��!,:؊tnR�����)M?�7��v3�^r^y{˜���;8o�8���7t^@�w��
�q�TAj��:4v]m!� <E����w��ˀ��zUZrxH����m˜�V��;}��`�]��x��ⳋ���t���R����zT�Ke�^�x�¼�0z�̹� N܉�"� �����!�7�@��� \�(�7 Eg����`v������������bk�$_�|K�BU��r�O>���>/�S�X	���p�����b�τ�^?���.�ȏLQUo��eO�8�����[IO�w�mPl�ֱ1"]⺂���M?�+6�8&9f����+.����ZG���ଯ5�۱� $��q �Gd�����q��Ο����~�1\��~ܑW�0;w�h�G�t��6�]�vV�����m��)��w��k;f��s6�<�Eo�*Ǝ���6�`|s���Z*^ܛ���nՙj~�ߧq�#�5�y    �q��@�]�J�����G�<U�^Î8�0ê�w��{n�`�^/��ӎ�gA��&�mڹͩy�\y�=㬃��w2��kC���T�J�.����[�,pS�N�*.��\��gE�[ط��R�8�c��=��	�mj�����53�WG�sK���B )��N���#Ul�?sϔ�3_'Xl��x۾�pG(�����M1� ��[O�ǋʲ�����	�W��9�# Fdw��#�w�g�4lۄ#y-�;e��
�*�6��l]&�me���:���qt_��T�ض�U���V����T�Ls���f�Ӌ�T���:Pe*��Y�gVR���������8P����Ln)|����%p�����v&�x637^���j�4˰l��(��D�u;�&*\�6����+�^"�
D��S��T߿����q�H���[eK|�<����z��P�3>N�I��o��[~�/ϩ��f����ï+>ū�����tK�3��vL�򹢺������)��+� �޶3��4L4�Com����E1U���ڜ��vۋ�q��@����Ҵ0�*1x�w@�`Й��}5^��S?j��a3�^ ����(8l�HÉJ{���PK�R%���)��q&���������-�}m�N��Aj��|��r�i� ��>�@8��~��n�p�:S���Z=����!���1�W�yw��~�)�1�l�R��\g�ms=��,�]vHϹS���ޜ[���۾����h���Af�G���.Q��U<��Y�^���R~�|�<;���;�
�P��B�T���d�.5�"�q()�^���L�8�8\��v{����W��<^q��:�{2F�`=���Dj@v�'�I�֬8�<�,��Zqo�;x(zuNGa�m�%<��㳇���4=�Mk��tA�9���9@��ɖ6)^NyQ�A��d�b�98E�$Gq�@�.+�|Z�7a^o�!�3��M�ؑ��P{����@��Y�+�
p	�-�wr��H~<�7�/7Ž�K7����p�>�QG�~|:м}���ךĨ�G�nc�G��n�eY��j��zO/&�X�G��5���g=�q@����v
`��p��kM��++*�l�Թ��r����L�gG!��$�}&�2�h`~�W�몪����偒�p���e�"[�VE����}�'��e�!g}4�l����@�қzo{)mj�z�ZT����z��ڸ�vϲ�����w5N��cN��J_bG	؝Bu֤�����KEb��k�P4�Y�cs�s�W�٦iO�w��g�n;'@g�޾9�N�^w���y����~�=
��7��^w+��t������4�AL��a� � C�t�6���ktQoS�pAG6��-����`��'#��� ��`���=�E�͹�2.��Q-�	�K�y��Y��3�2Vu��^�Æ0E�l�d�9Is�Pr�| `��!��멕:��}��9���cl��?����Y�q�=�v]���K�H,=�GvΪV�H���C[��~N�M��"^��j��`
��*�u�T�L(6�W(�&r���=稶O"�ũ_ʞ��k��/�	94�o/FŬ������Z�k��m�<��?��\�
}N���6no����A!�>��
"�sY��0%�s|��g�[7_�|�0�c�Y��?]o�ns��L�W�5��v�k^ͱ�?�H��wx�+�>�3�V�p��s�����6a�ޮ��,��mw�>�,PVx��13�-�r?�K�H�8������:u�����>y�����}(�9gΡ}b��+�`ҹ��Q�R��`}�
�a{�m�0R���U� 6v2���z�=p�z�*?&�,�QO���K�|��}*15�~�1�Nn�>�A�@+�޽?�l�=M�����3��V�rY�Q�ݎK
�K¹.c���u��:d�u�ʕ��%>7��ح:.�?��h�ؕ�8�;{7�'U�SF��U��+���=!&���8�?�#���K��o�@��Fܛ���@_��	��X���~'�8�v���,L���j"�ߌL�� �a��#�V�8T�y�GD�b#:�<�̤�1�}r��|�����jN�Q/9�D�j�p�F�`<�����x׉L�K1�9��C���,�������=̹Y�6�䄗���xO�^Vf��L@4Kww�ڦ�j�G�~rVŲ�{(�q��Gm�Ħ�_s�ݪx�qЊ:%[I���1���	�~���=�k]���d/�P?�,2��5���Y�i[΢;:���C\�jX���W��Z��+��	X4⛚����m3uP�Ǿ������>*ռ'�{�Ux?sx=8��5ge�G��l���#e� 9{~�>�Ӯ�˖ҧy�C�=�G�E%9�^����;� �	6|��e��rge�!K�o��^^�sD8ͱ��ܘg���;��t��3-���~�6Iv��̀y�饂ܴ���~ V���H[���\88�+���C��l�<�8��1:���ɭ��[/�B��|��ԇ��
r|8�?7��@S"������Y�F�h����6so%#$� 9�}.T)tŢ��fF�G��r�כ<�Uk�Lb�������,3�«`a�|�l_���b����+$g�z�t��杈��*���U`y�5��eR��sI�}Å��C0դI'*b3���ԓ�;��u"H��k�h?+xϻ�� �sSa�~yay�gUB������l��F��_
����ε�2?�R��i8�Rn8��]�L�㼠*���v6,E�	.!������6L�⻻�+��r��U:�M�]U��*/���U5S��yUOq�u�l�!�H����+[}��[�Z���FǮ��u'z�6j���渔ͻ�J�9�ZU� ��Oc��jP�R�c��O�U=�;|���63�زJB�O��-B8����jG�'�^�9�k��sd�&09��<wTއ��b`q���>�_���]#t&��������w9���ԕ���LX~Ǚa��=�cT�Yq�ӊ	̇J/ȠՎU��y��o]��W�j�z��sp�)>b
�/b�w"?je��^{)�����z��.q�w���)����d�R:��V��^^�s�������T��EP���r,���p��בϵn0�1w�`|fs�0N ضf)�g�S
�/UA?yx����<��X��ˬ1:>^}�):��*�X����|AU�_ߗuhx
g�q�3}���qx1'�f��VW]�GZ[�(}���e��"���'�Ʒ
f�Ҟ��	;Z�Z�0�Q��LT�����8ė��_Q��k^�f���k~���{|��n����jWq⟌�7���5��v�;�e.���N���󀯻�U8�b�"���,~���N��ԺU,�M}� ��v���EM�K�o�U�2� g��νe^�cM6���T��'{��?�X-߿=�7Z�]���з`t8�3���`�z􀊷�s�p��7�V�ou�τ��V�_���7�(�9�����O$�?w=��%����.�`)�"�s+�c�R�p,�@C�}��aw�vN㨜�L]��Q+=��W+�x7����a�6��|>!S��8��,�b�v�`T�)ҟ뵽]F�O�Φ�8�`"_<Y���侼"`���/�q��j��\&�I�2��^�}.�T�p�Eեp�����Q��k0��?��`��)��C �G��;9Wđ5y�����:)a���F���(�Mu�./8~T�! ��h�����h��O]2ye��8v«O3�d�b8���a�ύ6Y���.����V/��E2G��=�K-�lގ��k���Y>b�Y�V���{��a�����g����}:�0�N�AE���1�hʗ�J�*��K�a������u��V������,k��k��'���m6��<�
Xۄ��W5���Q��;Uf�^V�Q�*�}�I���飤��kK�$P��ߖ���[���-��+��j(�^�<��]EB��*pA��?����}���32*�|��c�Zrl@-*I���b!��J�����s�^-8 �  ��YF/7��z(�cۚ�څ� �u:[��7���}ٽt���O�᛺nj=������ �h�B��z|�=��{�.K�U�|M��Ub?M���V���P^?�B�jt��{��r����u��[Ē����1�~������d��!p��uj���+����	}sޡ�o+��N �U��`Y�9�@�U=�=�OUMٍ�����ܓ>&:��ݗӷ�YYs�Ӕ���i�s|���UWK<fp��V��2X���*�9�v<BT��1�]��5��ujS|?��*U�]����)�X���*oe���syK���X�s��6J�f�0����d�!�P�˚�-�eG�X�rX'6\��E�"T��KoJ���ɛ�/,ʞ�7������go��i|bq�"A# '�_��E�Bo���7{�p������c�B�GN����M?��m�ͦ�,�݊?�s�}��f��TMR��H�m!9M�'o���̞���qϹ��9���lH��姨vi�s���fP�G{��/{�N4[<l/Ʌ͌ڃⷐ�����F���	R�����rW=��l�*���V�oo��}n��ےU�K�9�ا'^bu�<q�'�|��o~��_Ukś^Ǯ9@��0zG���J�o�dM���o�2n�7���'r���W�ܧ���m0G�Mhvm��gł*�}z1�Yޢ��vմ]M��yy��nc�7&�����i������������T����GFϙ���Wҫ�Zuv�=q����t�x�/��ة�����h�Wߌ�)9�a��Sx�^E��s��>�=:���սeJi4<�"nI$}��O��q<�����qK�m�-��	l){NW9��R-�����ۻ�F���<o�o'���*"F��:�_��}����d7["
SYA�?���uu!�*\��?WE�Zs�5o��_�b�p�ۮ��Jj)]�d�m����j�lM�E�|k�~�}��!��5o�O��$�?��ۼ9��,�w�9����|�}K �{nk������{dr>S���Vu(m�~��	N�F�3��z�-�-���[#j�"Uo>�Gŕ���j,Zn|�S~e8��ܐ=?J�wx�@'F����a���&�������<�ۧ+����+7�đם���X�Fp�������NI�Q4��V���d�\Su���u��Q������h{�Ê�8�m�9����[���;{���OXa���&���#��4�	g9�~�a�$cϰ�����j����ڒ�f�U���v���~�X��i�|�3���|�:�{��֥�&Q�r;�ؖ�6�w��~N���W�@ܽ��k�O���{��v�r�ϴe�&��c��k/���w�7j�KR+l�e��e{-f�?���z�'���y�~���Q���	����iY���eMoo>�G��}9gl秣�vc�F����*�O��Z��J=N�r�Af7֕��_��Q��Cݧ����'���U�U6�*�n�9�l�o;��-�/��*�^����j���A��{�9���ڷ�N���Z��F֟���2��w�R�-C��r9�q�����{��⭤���|���?�m)4�Ͼ��>���w(O@(�桦P�3$�xAj� ���\,�����C�&�V℺��*�Z�L�)�e��楓��ͽ�ʌ ��SMK������8�o/?t^����]�x.'�j���ڬ^�SN�2%��P�מ��Jy��cfA_�0�=�&<.�\�c���:Ii��<3�~{����_1y�H�Y��۪���-��W��4�5��ٿͯ��\i.���́á?3`~����;bDE����L���	"id�x�N��lw�9߭ ��[7w2�U� �>J5/s����}a-x�*���Jɬ+��}ػ�~���ZbO��lɊ�o�����as����B'2��]�uS������9m~�+�l��6-~Gd��\:�h��s/y�v�@sͪ}��o�P���������G�Z9�ƕ�ԯT�>�N�̓eL#'@N��ׇ�W&pZPG����?w �S��]���IZ51^{I��b��v�������g��Qb\ �l��v�{Ϭ�(��4�-����o�ǁ�ٿzj�S�/0m�4�T��V��ܟ� ��E����m�ϡX��{�мno��_����� �CO6Uk���<��uV]�I��q�1;R�N�>޴sA�L�>U<�����ڑ@�`�Ց������o͓}}�}�ރ�M�-��V]��eN�r)>p�(~Su�%]*^v��~ wOA����:(lp��q���\�о�.�o�Su���~l�{}L`� ��N�WM���z�O.�~��L~;3�;�s��z�f�0�o�z���v�v
t{�M��Mֹ؊3�',������.��&�BPeK�i=36�u��B&���fB�o��վ�뱳����
6Eo��s���S9*�Uja}�t�����h]0rȣ�^��=Vِr4X9��v:��gUGَl�}���ޖ���3#$N��&�4��ೲsY�� ��#��:��BN��N��G��L7���C�w��ʹ{��=l���f~�[t���{��#��a��⻃�ޓO��z�&���+�����bƙ��y����7|�!�������ʒ�\�q.��v�:w�����]��N7��K���ٕ��&�{v Ntrl�yτ|��OS��2/EI�����������X(wU�Ƹ>�̔E����鴘����7.�4���K��^�v�#0��h��y�]����c$���{«u���5#���V��:m���6��J���J��o�����?w�z�0���#����2=��$��k�v���p����G;��m.�k�\ݼ`��ϥ�g�ұ]��3��M�)�	'�e��X��sO�EF�V!�`�p�O��l[xN+�c�GÛ�t����$�N�T��;t�-<��"���캭�5�9�)��T����ų�G�����n�t�W�y�!���cr���F<yi-�䱒gyPP���1Oá����,�iG,�UG�,�?������C�w͚)�;�Nầ���GM�Pʮ�yn`�)���czU�Z�	`��΀3�x*�;���Æ�s��J`��-�L
�z1�*���<Ѓ�z�H
g/}����������Y%U�_�m��z��km���΁���S�J�A=�:NpI�^�).���T��M����Vj�D�l�^M�u��-z60�WB��Aõ&זcb�%3�����~;��/�C�Y�.�������?z�>��[�b����w�p9���u!��3�܉�fe��]�:q9~?������I�ni��?����?�����?�۲���]�c�����?�ë�k�wx�?����O�v�����W��e���x�˟������������������%��}����#�sQ�Ω���!��s��9�x�����������������?��������?�������G      �   ?   x�+JM.-*�/��4�,�042�4�JL����4�� !C�����Ĕ�"N3N$a����� ���     