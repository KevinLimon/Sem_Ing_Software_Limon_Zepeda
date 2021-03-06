PGDMP     	    5            
    y            baluarte    13.2    13.2 8    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    99101    baluarte    DATABASE     e   CREATE DATABASE baluarte WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE baluarte;
                postgres    false            ?            1259    99379    activo_pasivo    TABLE     ?   CREATE TABLE public.activo_pasivo (
    id_estadof integer,
    nombre character varying(30),
    monto double precision,
    tipo boolean
);
 !   DROP TABLE public.activo_pasivo;
       public         heap    postgres    false            ?            1259    99104    empleado    TABLE     ?  CREATE TABLE public.empleado (
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
    fechanac character varying(20)
);
    DROP TABLE public.empleado;
       public         heap    postgres    false            ?            1259    99102    empleado_id_empleado_seq    SEQUENCE     ?   CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.empleado_id_empleado_seq;
       public          postgres    false    201            ?           0    0    empleado_id_empleado_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.empleado.id_empleado;
          public          postgres    false    200            ?            1259    99373    estadofinanciero    TABLE     ?   CREATE TABLE public.estadofinanciero (
    id_estadof integer NOT NULL,
    fecha date,
    nombrearch character varying(20),
    totalpas double precision,
    totalact double precision
);
 $   DROP TABLE public.estadofinanciero;
       public         heap    postgres    false            ?            1259    99371    estadofinanciero_id_estadof_seq    SEQUENCE     ?   CREATE SEQUENCE public.estadofinanciero_id_estadof_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.estadofinanciero_id_estadof_seq;
       public          postgres    false    212            ?           0    0    estadofinanciero_id_estadof_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.estadofinanciero_id_estadof_seq OWNED BY public.estadofinanciero.id_estadof;
          public          postgres    false    211            ?            1259    99122 
   evaluacion    TABLE     ?   CREATE TABLE public.evaluacion (
    id_evaluacion integer NOT NULL,
    id_empleado integer,
    malasobs integer,
    buenasobs integer,
    faltas integer,
    comentario character varying(500),
    fecha character varying(20)
);
    DROP TABLE public.evaluacion;
       public         heap    postgres    false            ?            1259    99120    evaluacion_id_evaluacion_seq    SEQUENCE     ?   CREATE SEQUENCE public.evaluacion_id_evaluacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.evaluacion_id_evaluacion_seq;
       public          postgres    false    204            ?           0    0    evaluacion_id_evaluacion_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.evaluacion_id_evaluacion_seq OWNED BY public.evaluacion.id_evaluacion;
          public          postgres    false    203            ?            1259    99237    nomina    TABLE     ?  CREATE TABLE public.nomina (
    id_nomina integer NOT NULL,
    id_empleado integer,
    nombre character varying(100),
    nss character varying(11),
    dias_laborados integer,
    fecha date,
    salariod double precision,
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
    sueldoneto double precision
);
    DROP TABLE public.nomina;
       public         heap    postgres    false            ?            1259    99235    nomina_id_nomina_seq    SEQUENCE     ?   CREATE SEQUENCE public.nomina_id_nomina_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.nomina_id_nomina_seq;
       public          postgres    false    210            ?           0    0    nomina_id_nomina_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.nomina_id_nomina_seq OWNED BY public.nomina.id_nomina;
          public          postgres    false    209            ?            1259    99177    producto    TABLE     ?   CREATE TABLE public.producto (
    idproducto integer NOT NULL,
    nombre character varying(30),
    cantidad integer,
    valorunitario double precision,
    valortotal double precision,
    descripcion character varying(200)
);
    DROP TABLE public.producto;
       public         heap    postgres    false            ?            1259    99175    producto_idproducto_seq    SEQUENCE     ?   CREATE SEQUENCE public.producto_idproducto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.producto_idproducto_seq;
       public          postgres    false    208            ?           0    0    producto_idproducto_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.producto_idproducto_seq OWNED BY public.producto.idproducto;
          public          postgres    false    207            ?            1259    99138    reporte    TABLE     ?   CREATE TABLE public.reporte (
    id_reporte integer NOT NULL,
    id_empleado integer,
    fecha date,
    formato character varying(8),
    redimiento integer
);
    DROP TABLE public.reporte;
       public         heap    postgres    false            ?            1259    99136    reporte_id_reporte_seq    SEQUENCE     ?   CREATE SEQUENCE public.reporte_id_reporte_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.reporte_id_reporte_seq;
       public          postgres    false    206            ?           0    0    reporte_id_reporte_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.reporte_id_reporte_seq OWNED BY public.reporte.id_reporte;
          public          postgres    false    205            ?            1259    99110    usuario    TABLE     ?   CREATE TABLE public.usuario (
    username character varying(15) NOT NULL,
    id_empleado integer,
    contrasena character varying(20),
    tipo integer
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            I           2604    99107    empleado id_empleado    DEFAULT     |   ALTER TABLE ONLY public.empleado ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);
 C   ALTER TABLE public.empleado ALTER COLUMN id_empleado DROP DEFAULT;
       public          postgres    false    200    201    201            N           2604    99376    estadofinanciero id_estadof    DEFAULT     ?   ALTER TABLE ONLY public.estadofinanciero ALTER COLUMN id_estadof SET DEFAULT nextval('public.estadofinanciero_id_estadof_seq'::regclass);
 J   ALTER TABLE public.estadofinanciero ALTER COLUMN id_estadof DROP DEFAULT;
       public          postgres    false    212    211    212            J           2604    99125    evaluacion id_evaluacion    DEFAULT     ?   ALTER TABLE ONLY public.evaluacion ALTER COLUMN id_evaluacion SET DEFAULT nextval('public.evaluacion_id_evaluacion_seq'::regclass);
 G   ALTER TABLE public.evaluacion ALTER COLUMN id_evaluacion DROP DEFAULT;
       public          postgres    false    203    204    204            M           2604    99240    nomina id_nomina    DEFAULT     t   ALTER TABLE ONLY public.nomina ALTER COLUMN id_nomina SET DEFAULT nextval('public.nomina_id_nomina_seq'::regclass);
 ?   ALTER TABLE public.nomina ALTER COLUMN id_nomina DROP DEFAULT;
       public          postgres    false    209    210    210            L           2604    99180    producto idproducto    DEFAULT     z   ALTER TABLE ONLY public.producto ALTER COLUMN idproducto SET DEFAULT nextval('public.producto_idproducto_seq'::regclass);
 B   ALTER TABLE public.producto ALTER COLUMN idproducto DROP DEFAULT;
       public          postgres    false    207    208    208            K           2604    99141    reporte id_reporte    DEFAULT     x   ALTER TABLE ONLY public.reporte ALTER COLUMN id_reporte SET DEFAULT nextval('public.reporte_id_reporte_seq'::regclass);
 A   ALTER TABLE public.reporte ALTER COLUMN id_reporte DROP DEFAULT;
       public          postgres    false    205    206    206            ?          0    99379    activo_pasivo 
   TABLE DATA           H   COPY public.activo_pasivo (id_estadof, nombre, monto, tipo) FROM stdin;
    public          postgres    false    213   ?D       ?          0    99104    empleado 
   TABLE DATA           ?   COPY public.empleado (id_empleado, nombre, profesion, telefono, domicilio, salariod, curp, estado, nss, cuentacot, fechanac) FROM stdin;
    public          postgres    false    201   QE       ?          0    99373    estadofinanciero 
   TABLE DATA           ]   COPY public.estadofinanciero (id_estadof, fecha, nombrearch, totalpas, totalact) FROM stdin;
    public          postgres    false    212   &G       ?          0    99122 
   evaluacion 
   TABLE DATA           p   COPY public.evaluacion (id_evaluacion, id_empleado, malasobs, buenasobs, faltas, comentario, fecha) FROM stdin;
    public          postgres    false    204   nG       ?          0    99237    nomina 
   TABLE DATA             COPY public.nomina (id_nomina, id_empleado, nombre, nss, dias_laborados, fecha, salariod, uma, sdi, sal_y_suel, isr, subsidio, cuota_imss, otras_deduc, totalpercep, totaldeduc, sueldo, diasfes, bonopunt, otrosbon, redimiento, cuotaext, sueldorend, sueldoneto) FROM stdin;
    public          postgres    false    210   ?G       ?          0    99177    producto 
   TABLE DATA           h   COPY public.producto (idproducto, nombre, cantidad, valorunitario, valortotal, descripcion) FROM stdin;
    public          postgres    false    208   ?G       ?          0    99138    reporte 
   TABLE DATA           V   COPY public.reporte (id_reporte, id_empleado, fecha, formato, redimiento) FROM stdin;
    public          postgres    false    206   LH       ?          0    99110    usuario 
   TABLE DATA           J   COPY public.usuario (username, id_empleado, contrasena, tipo) FROM stdin;
    public          postgres    false    202   iH       ?           0    0    empleado_id_empleado_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 11, true);
          public          postgres    false    200            ?           0    0    estadofinanciero_id_estadof_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.estadofinanciero_id_estadof_seq', 3, true);
          public          postgres    false    211                        0    0    evaluacion_id_evaluacion_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.evaluacion_id_evaluacion_seq', 4, true);
          public          postgres    false    203                       0    0    nomina_id_nomina_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.nomina_id_nomina_seq', 1, false);
          public          postgres    false    209                       0    0    producto_idproducto_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.producto_idproducto_seq', 2, true);
          public          postgres    false    207                       0    0    reporte_id_reporte_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.reporte_id_reporte_seq', 1, false);
          public          postgres    false    205            P           2606    99109    empleado empleado_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pkey;
       public            postgres    false    201            \           2606    99378 &   estadofinanciero estadofinanciero_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.estadofinanciero
    ADD CONSTRAINT estadofinanciero_pkey PRIMARY KEY (id_estadof);
 P   ALTER TABLE ONLY public.estadofinanciero DROP CONSTRAINT estadofinanciero_pkey;
       public            postgres    false    212            T           2606    99130    evaluacion evaluacion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.evaluacion
    ADD CONSTRAINT evaluacion_pkey PRIMARY KEY (id_evaluacion);
 D   ALTER TABLE ONLY public.evaluacion DROP CONSTRAINT evaluacion_pkey;
       public            postgres    false    204            Z           2606    99242    nomina nomina_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.nomina
    ADD CONSTRAINT nomina_pkey PRIMARY KEY (id_nomina);
 <   ALTER TABLE ONLY public.nomina DROP CONSTRAINT nomina_pkey;
       public            postgres    false    210            X           2606    99182    producto producto_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (idproducto);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    208            V           2606    99143    reporte reporte_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT reporte_pkey PRIMARY KEY (id_reporte);
 >   ALTER TABLE ONLY public.reporte DROP CONSTRAINT reporte_pkey;
       public            postgres    false    206            R           2606    99114    usuario usuario_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (username);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    202            ]           2606    99115    usuario id_empleado    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);
 =   ALTER TABLE ONLY public.usuario DROP CONSTRAINT id_empleado;
       public          postgres    false    201    202    2896            ^           2606    99131    evaluacion id_empleado    FK CONSTRAINT     ?   ALTER TABLE ONLY public.evaluacion
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);
 @   ALTER TABLE ONLY public.evaluacion DROP CONSTRAINT id_empleado;
       public          postgres    false    2896    204    201            _           2606    99144    reporte id_empleado    FK CONSTRAINT     ?   ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);
 =   ALTER TABLE ONLY public.reporte DROP CONSTRAINT id_empleado;
       public          postgres    false    201    2896    206            `           2606    99243    nomina id_empleado    FK CONSTRAINT     ?   ALTER TABLE ONLY public.nomina
    ADD CONSTRAINT id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);
 <   ALTER TABLE ONLY public.nomina DROP CONSTRAINT id_empleado;
       public          postgres    false    201    2896    210            a           2606    99382    activo_pasivo id_estadof    FK CONSTRAINT     ?   ALTER TABLE ONLY public.activo_pasivo
    ADD CONSTRAINT id_estadof FOREIGN KEY (id_estadof) REFERENCES public.estadofinanciero(id_estadof);
 B   ALTER TABLE ONLY public.activo_pasivo DROP CONSTRAINT id_estadof;
       public          postgres    false    213    212    2908            ?   T   x?3?HL?7?425?,?2??8M@<#??k?if?z?????[ ??BF??`c?`=?P#LL?\?&?1z\\\ ?!?      ?   ?  x?E??n?0Eף???
????C??$m`9t?J??V?Y??w?Ύ????9??U
]???)6!߅1v???xi??AJB?$:?Ch?s?ļ?:.q ???r?(??f?????0?3?Hk?#R?y?%?a!TA?Y(??62S²?F> i??V~??xJu?g
hJ?mK?hᝧ?!?)2???R?Q?Q?n?\A?!?aH=??u??F??~>3??ܼl׾R1i
????FjGF^??B???̛c??y>?K??U???:??jfH!`??^Y'=q?f*??-i?bIK??0-`3?X,?)㘺TU55??fy?R?CD?????2?_???t???n]??>??K?L?8?\V~?x??P?|??{?$?z?|???_rrA??'?d??7#H?pw(?D???i??㙙_a?S???8c^??W??i}??]?:?7?_߲,?WK??      ?   8   x?]?9  ?:???	?_Դ?F(????M?ӹ$M????^U?9??1?      ?   I   x?3?4?4?4????LD N##C}CC}#.#?
????<dc?^C??s~nj^IbQf~1B?!?	A1z\\\ ???      ?      x?????? ? ?      ?   X   x?3?t??-(-IL?/JT??4?4?44@MIUp-N.?,?/?????2?3???8??SJ?K?A????K*HqArf~W? 2\Q      ?      x?????? ? ?      ?   A   x?+JM.-*?/??4?,?042?4?JL????,.)JL?/??? )C?????(?	?0?????? ???     