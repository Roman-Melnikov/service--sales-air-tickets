PGDMP     5    0            
    z            service_sales_air_tickets #   14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)    14.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    139264    service_sales_air_tickets    DATABASE     n   CREATE DATABASE service_sales_air_tickets WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'ru_RU.UTF-8';
 )   DROP DATABASE service_sales_air_tickets;
                postgres    false            �           0    0 "   DATABASE service_sales_air_tickets    ACL     9   GRANT ALL ON DATABASE service_sales_air_tickets TO roma;
                   postgres    false    3564            m           1247    139465    days_of_week_type    TYPE     �   CREATE TYPE public.days_of_week_type AS (
	monday boolean,
	tuesday boolean,
	wednesday boolean,
	thursday boolean,
	friday boolean,
	saturday boolean,
	sunday boolean
);
 $   DROP TYPE public.days_of_week_type;
       public          roma    false            �            1259    139457    aircraft_type    TABLE     �   CREATE TABLE public.aircraft_type (
    id integer NOT NULL,
    aircraft_name character varying(50) NOT NULL,
    number_seats smallint NOT NULL
);
 !   DROP TABLE public.aircraft_type;
       public         heap    roma    false            �            1259    139456    aircraft_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aircraft_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.aircraft_type_id_seq;
       public          roma    false    222            �           0    0    aircraft_type_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.aircraft_type_id_seq OWNED BY public.aircraft_type.id;
          public          roma    false    221            �            1259    139450 	   aircrafts    TABLE     �   CREATE TABLE public.aircrafts (
    id integer NOT NULL,
    registration_mark character varying(8) NOT NULL,
    aircraft_type_id integer,
    airline_id integer
);
    DROP TABLE public.aircrafts;
       public         heap    roma    false            �            1259    139541    aircrafts_flights    TABLE     l   CREATE TABLE public.aircrafts_flights (
    aircraft_id integer NOT NULL,
    flight_id integer NOT NULL
);
 %   DROP TABLE public.aircrafts_flights;
       public         heap    roma    false            �            1259    139449    aircrafts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aircrafts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.aircrafts_id_seq;
       public          roma    false    220            �           0    0    aircrafts_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.aircrafts_id_seq OWNED BY public.aircrafts.id;
          public          roma    false    219            �            1259    139416    airlines    TABLE     �   CREATE TABLE public.airlines (
    id integer NOT NULL,
    airline_name character varying(50) NOT NULL,
    alphanumeric_code character varying(10) NOT NULL
);
    DROP TABLE public.airlines;
       public         heap    roma    false            �            1259    139534    airlines_airports    TABLE     �   CREATE TABLE public.airlines_airports (
    airline_id integer NOT NULL,
    airport_id integer NOT NULL,
    contract_number integer NOT NULL
);
 %   DROP TABLE public.airlines_airports;
       public         heap    roma    false            �            1259    139415    airlines_id_seq    SEQUENCE     �   CREATE SEQUENCE public.airlines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.airlines_id_seq;
       public          roma    false    212            �           0    0    airlines_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.airlines_id_seq OWNED BY public.airlines.id;
          public          roma    false    211            �            1259    139407    airports    TABLE     �   CREATE TABLE public.airports (
    id integer NOT NULL,
    airport_name character varying(50) NOT NULL,
    city_id integer
);
    DROP TABLE public.airports;
       public         heap    roma    false            �            1259    139406    airports_id_seq    SEQUENCE     �   CREATE SEQUENCE public.airports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.airports_id_seq;
       public          roma    false    210            �           0    0    airports_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.airports_id_seq OWNED BY public.airports.id;
          public          roma    false    209            �            1259    139436    cities    TABLE     f   CREATE TABLE public.cities (
    id integer NOT NULL,
    city_name character varying(50) NOT NULL
);
    DROP TABLE public.cities;
       public         heap    roma    false            �            1259    139435    cities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public          roma    false    216            �           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
          public          roma    false    215            �            1259    147467    closed_tariffs    TABLE       CREATE TABLE public.closed_tariffs (
    id integer NOT NULL,
    flight_id integer,
    first_class_price money,
    business_class_price money NOT NULL,
    economy_class_price money NOT NULL,
    created_at date NOT NULL,
    finished_at date NOT NULL
);
 "   DROP TABLE public.closed_tariffs;
       public         heap    roma    false            �            1259    147466    closed_tariffs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.closed_tariffs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.closed_tariffs_id_seq;
       public          roma    false    243            �           0    0    closed_tariffs_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.closed_tariffs_id_seq OWNED BY public.closed_tariffs.id;
          public          roma    false    242            �            1259    139519    current_tariffs    TABLE     �   CREATE TABLE public.current_tariffs (
    id integer NOT NULL,
    first_class_price money,
    business_class_price money NOT NULL,
    economy_class_price money NOT NULL,
    created_at date NOT NULL,
    flight_id integer
);
 #   DROP TABLE public.current_tariffs;
       public         heap    roma    false            �            1259    139427    flights    TABLE     �   CREATE TABLE public.flights (
    id integer NOT NULL,
    flight_number smallint NOT NULL,
    from_city_id integer,
    to_city_id integer
);
    DROP TABLE public.flights;
       public         heap    roma    false            �            1259    139426    flights_id_seq    SEQUENCE     �   CREATE SEQUENCE public.flights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.flights_id_seq;
       public          roma    false    214            �           0    0    flights_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.flights_id_seq OWNED BY public.flights.id;
          public          roma    false    213            �            1259    139467    schedule    TABLE     0  CREATE TABLE public.schedule (
    id integer NOT NULL,
    flight_id integer,
    start_execution_period date,
    end_execution_period date,
    execution_by_day_of_week public.days_of_week_type,
    exception_days date[],
    cancellation_days date[],
    departure_time_msk time without time zone
);
    DROP TABLE public.schedule;
       public         heap    roma    false    877            �            1259    139466    schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.schedule_id_seq;
       public          roma    false    225            �           0    0    schedule_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.schedule_id_seq OWNED BY public.schedule.id;
          public          roma    false    224            �            1259    139476    schedule_y2022_m10    TABLE     �   CREATE TABLE public.schedule_y2022_m10 (
    id integer,
    CONSTRAINT schedule_y2022_m10_check CHECK (((start_execution_period >= '2022-10-01'::date) AND (end_execution_period < '2022-11-01'::date)))
)
INHERITS (public.schedule);
 &   DROP TABLE public.schedule_y2022_m10;
       public         heap    roma    false    225    877            �            1259    139475    schedule_y2022_m10_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_y2022_m10_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.schedule_y2022_m10_id_seq;
       public          roma    false    227            �           0    0    schedule_y2022_m10_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.schedule_y2022_m10_id_seq OWNED BY public.schedule_y2022_m10.id;
          public          roma    false    226            �            1259    139486    schedule_y2022_m11    TABLE     �   CREATE TABLE public.schedule_y2022_m11 (
    id integer,
    CONSTRAINT schedule_y2022_m11_check CHECK (((start_execution_period >= '2022-11-01'::date) AND (end_execution_period < '2022-12-01'::date)))
)
INHERITS (public.schedule);
 &   DROP TABLE public.schedule_y2022_m11;
       public         heap    roma    false    877    225            �            1259    139485    schedule_y2022_m11_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_y2022_m11_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.schedule_y2022_m11_id_seq;
       public          roma    false    229            �           0    0    schedule_y2022_m11_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.schedule_y2022_m11_id_seq OWNED BY public.schedule_y2022_m11.id;
          public          roma    false    228            �            1259    139526    service_classes    TABLE     o   CREATE TABLE public.service_classes (
    id integer NOT NULL,
    class_name character varying(8) NOT NULL
);
 #   DROP TABLE public.service_classes;
       public         heap    roma    false            �            1259    139525    service_classes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.service_classes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.service_classes_id_seq;
       public          roma    false    239            �           0    0    service_classes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.service_classes_id_seq OWNED BY public.service_classes.id;
          public          roma    false    238            �            1259    139518    tariffs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tariffs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tariffs_id_seq;
       public          roma    false    237            �           0    0    tariffs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tariffs_id_seq OWNED BY public.current_tariffs.id;
          public          roma    false    236            �            1259    139496    tickets    TABLE     �   CREATE TABLE public.tickets (
    id integer NOT NULL,
    user_id integer,
    flight_id integer,
    seat_number smallint,
    departure_date date,
    service_class_id smallint
);
    DROP TABLE public.tickets;
       public         heap    roma    false            �            1259    139495    tickets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tickets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tickets_id_seq;
       public          roma    false    231            �           0    0    tickets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tickets_id_seq OWNED BY public.tickets.id;
          public          roma    false    230            �            1259    139503    tickets_y2022_m10    TABLE     �   CREATE TABLE public.tickets_y2022_m10 (
    id integer,
    CONSTRAINT tickets_y2022_m10_departure_date_check CHECK (((departure_date >= '2022-10-01'::date) AND (departure_date < '2022-11-01'::date)))
)
INHERITS (public.tickets);
 %   DROP TABLE public.tickets_y2022_m10;
       public         heap    roma    false    231            �            1259    139502    tickets_y2022_m10_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tickets_y2022_m10_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tickets_y2022_m10_id_seq;
       public          roma    false    233            �           0    0    tickets_y2022_m10_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tickets_y2022_m10_id_seq OWNED BY public.tickets_y2022_m10.id;
          public          roma    false    232            �            1259    139511    tickets_y2022_m11    TABLE     �   CREATE TABLE public.tickets_y2022_m11 (
    id integer,
    CONSTRAINT tickets_y2022_m11_departure_date_check CHECK (((departure_date >= '2022-11-01'::date) AND (departure_date < '2022-12-01'::date)))
)
INHERITS (public.tickets);
 %   DROP TABLE public.tickets_y2022_m11;
       public         heap    roma    false    231            �            1259    139510    tickets_y2022_m11_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tickets_y2022_m11_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tickets_y2022_m11_id_seq;
       public          roma    false    235            �           0    0    tickets_y2022_m11_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tickets_y2022_m11_id_seq OWNED BY public.tickets_y2022_m11.id;
          public          roma    false    234            �            1259    139443    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL
);
    DROP TABLE public.users;
       public         heap    roma    false            �            1259    139442    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          roma    false    218            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          roma    false    217            �           2604    139460    aircraft_type id    DEFAULT     t   ALTER TABLE ONLY public.aircraft_type ALTER COLUMN id SET DEFAULT nextval('public.aircraft_type_id_seq'::regclass);
 ?   ALTER TABLE public.aircraft_type ALTER COLUMN id DROP DEFAULT;
       public          roma    false    222    221    222            �           2604    139453    aircrafts id    DEFAULT     l   ALTER TABLE ONLY public.aircrafts ALTER COLUMN id SET DEFAULT nextval('public.aircrafts_id_seq'::regclass);
 ;   ALTER TABLE public.aircrafts ALTER COLUMN id DROP DEFAULT;
       public          roma    false    219    220    220            �           2604    139419    airlines id    DEFAULT     j   ALTER TABLE ONLY public.airlines ALTER COLUMN id SET DEFAULT nextval('public.airlines_id_seq'::regclass);
 :   ALTER TABLE public.airlines ALTER COLUMN id DROP DEFAULT;
       public          roma    false    211    212    212            �           2604    139410    airports id    DEFAULT     j   ALTER TABLE ONLY public.airports ALTER COLUMN id SET DEFAULT nextval('public.airports_id_seq'::regclass);
 :   ALTER TABLE public.airports ALTER COLUMN id DROP DEFAULT;
       public          roma    false    210    209    210            �           2604    139439 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public          roma    false    216    215    216            �           2604    147470    closed_tariffs id    DEFAULT     v   ALTER TABLE ONLY public.closed_tariffs ALTER COLUMN id SET DEFAULT nextval('public.closed_tariffs_id_seq'::regclass);
 @   ALTER TABLE public.closed_tariffs ALTER COLUMN id DROP DEFAULT;
       public          roma    false    243    242    243            �           2604    139522    current_tariffs id    DEFAULT     p   ALTER TABLE ONLY public.current_tariffs ALTER COLUMN id SET DEFAULT nextval('public.tariffs_id_seq'::regclass);
 A   ALTER TABLE public.current_tariffs ALTER COLUMN id DROP DEFAULT;
       public          roma    false    237    236    237            �           2604    139430 
   flights id    DEFAULT     h   ALTER TABLE ONLY public.flights ALTER COLUMN id SET DEFAULT nextval('public.flights_id_seq'::regclass);
 9   ALTER TABLE public.flights ALTER COLUMN id DROP DEFAULT;
       public          roma    false    214    213    214            �           2604    139470    schedule id    DEFAULT     j   ALTER TABLE ONLY public.schedule ALTER COLUMN id SET DEFAULT nextval('public.schedule_id_seq'::regclass);
 :   ALTER TABLE public.schedule ALTER COLUMN id DROP DEFAULT;
       public          roma    false    224    225    225            �           2604    139479    schedule_y2022_m10 id    DEFAULT     ~   ALTER TABLE ONLY public.schedule_y2022_m10 ALTER COLUMN id SET DEFAULT nextval('public.schedule_y2022_m10_id_seq'::regclass);
 D   ALTER TABLE public.schedule_y2022_m10 ALTER COLUMN id DROP DEFAULT;
       public          roma    false    226    227    227            �           2604    139489    schedule_y2022_m11 id    DEFAULT     ~   ALTER TABLE ONLY public.schedule_y2022_m11 ALTER COLUMN id SET DEFAULT nextval('public.schedule_y2022_m11_id_seq'::regclass);
 D   ALTER TABLE public.schedule_y2022_m11 ALTER COLUMN id DROP DEFAULT;
       public          roma    false    229    228    229            �           2604    139529    service_classes id    DEFAULT     x   ALTER TABLE ONLY public.service_classes ALTER COLUMN id SET DEFAULT nextval('public.service_classes_id_seq'::regclass);
 A   ALTER TABLE public.service_classes ALTER COLUMN id DROP DEFAULT;
       public          roma    false    238    239    239            �           2604    139499 
   tickets id    DEFAULT     h   ALTER TABLE ONLY public.tickets ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);
 9   ALTER TABLE public.tickets ALTER COLUMN id DROP DEFAULT;
       public          roma    false    230    231    231            �           2604    139506    tickets_y2022_m10 id    DEFAULT     |   ALTER TABLE ONLY public.tickets_y2022_m10 ALTER COLUMN id SET DEFAULT nextval('public.tickets_y2022_m10_id_seq'::regclass);
 C   ALTER TABLE public.tickets_y2022_m10 ALTER COLUMN id DROP DEFAULT;
       public          roma    false    233    232    233            �           2604    139514    tickets_y2022_m11 id    DEFAULT     |   ALTER TABLE ONLY public.tickets_y2022_m11 ALTER COLUMN id SET DEFAULT nextval('public.tickets_y2022_m11_id_seq'::regclass);
 C   ALTER TABLE public.tickets_y2022_m11 ALTER COLUMN id DROP DEFAULT;
       public          roma    false    234    235    235            �           2604    139446    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          roma    false    217    218    218            �          0    139457    aircraft_type 
   TABLE DATA           H   COPY public.aircraft_type (id, aircraft_name, number_seats) FROM stdin;
    public          roma    false    222   �       �          0    139450 	   aircrafts 
   TABLE DATA           X   COPY public.aircrafts (id, registration_mark, aircraft_type_id, airline_id) FROM stdin;
    public          roma    false    220   e�       �          0    139541    aircrafts_flights 
   TABLE DATA           C   COPY public.aircrafts_flights (aircraft_id, flight_id) FROM stdin;
    public          roma    false    241   ��       �          0    139416    airlines 
   TABLE DATA           G   COPY public.airlines (id, airline_name, alphanumeric_code) FROM stdin;
    public          roma    false    212   ��       �          0    139534    airlines_airports 
   TABLE DATA           T   COPY public.airlines_airports (airline_id, airport_id, contract_number) FROM stdin;
    public          roma    false    240   (�       �          0    139407    airports 
   TABLE DATA           =   COPY public.airports (id, airport_name, city_id) FROM stdin;
    public          roma    false    210   Y�       �          0    139436    cities 
   TABLE DATA           /   COPY public.cities (id, city_name) FROM stdin;
    public          roma    false    216   c�       �          0    147467    closed_tariffs 
   TABLE DATA           �   COPY public.closed_tariffs (id, flight_id, first_class_price, business_class_price, economy_class_price, created_at, finished_at) FROM stdin;
    public          roma    false    243   ��       �          0    139519    current_tariffs 
   TABLE DATA           �   COPY public.current_tariffs (id, first_class_price, business_class_price, economy_class_price, created_at, flight_id) FROM stdin;
    public          roma    false    237   �       �          0    139427    flights 
   TABLE DATA           N   COPY public.flights (id, flight_number, from_city_id, to_city_id) FROM stdin;
    public          roma    false    214   !�       �          0    139467    schedule 
   TABLE DATA           �   COPY public.schedule (id, flight_id, start_execution_period, end_execution_period, execution_by_day_of_week, exception_days, cancellation_days, departure_time_msk) FROM stdin;
    public          roma    false    225   ��       �          0    139476    schedule_y2022_m10 
   TABLE DATA           �   COPY public.schedule_y2022_m10 (id, flight_id, start_execution_period, end_execution_period, execution_by_day_of_week, exception_days, cancellation_days, departure_time_msk) FROM stdin;
    public          roma    false    227   �       �          0    139486    schedule_y2022_m11 
   TABLE DATA           �   COPY public.schedule_y2022_m11 (id, flight_id, start_execution_period, end_execution_period, execution_by_day_of_week, exception_days, cancellation_days, departure_time_msk) FROM stdin;
    public          roma    false    229   ��       �          0    139526    service_classes 
   TABLE DATA           9   COPY public.service_classes (id, class_name) FROM stdin;
    public          roma    false    239   r�       �          0    139496    tickets 
   TABLE DATA           h   COPY public.tickets (id, user_id, flight_id, seat_number, departure_date, service_class_id) FROM stdin;
    public          roma    false    231   ��       �          0    139503    tickets_y2022_m10 
   TABLE DATA           r   COPY public.tickets_y2022_m10 (id, user_id, flight_id, seat_number, departure_date, service_class_id) FROM stdin;
    public          roma    false    233   ��       �          0    139511    tickets_y2022_m11 
   TABLE DATA           r   COPY public.tickets_y2022_m11 (id, user_id, flight_id, seat_number, departure_date, service_class_id) FROM stdin;
    public          roma    false    235   &�       �          0    139443    users 
   TABLE DATA           :   COPY public.users (id, first_name, last_name) FROM stdin;
    public          roma    false    218   l       �           0    0    aircraft_type_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.aircraft_type_id_seq', 1, false);
          public          roma    false    221            �           0    0    aircrafts_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.aircrafts_id_seq', 1, false);
          public          roma    false    219                        0    0    airlines_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.airlines_id_seq', 1, false);
          public          roma    false    211                       0    0    airports_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.airports_id_seq', 1, false);
          public          roma    false    209                       0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
          public          roma    false    215                       0    0    closed_tariffs_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.closed_tariffs_id_seq', 1, false);
          public          roma    false    242                       0    0    flights_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.flights_id_seq', 1, false);
          public          roma    false    213                       0    0    schedule_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.schedule_id_seq', 1, false);
          public          roma    false    224                       0    0    schedule_y2022_m10_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.schedule_y2022_m10_id_seq', 1, false);
          public          roma    false    226                       0    0    schedule_y2022_m11_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.schedule_y2022_m11_id_seq', 1, false);
          public          roma    false    228                       0    0    service_classes_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.service_classes_id_seq', 3, true);
          public          roma    false    238            	           0    0    tariffs_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tariffs_id_seq', 1, true);
          public          roma    false    236            
           0    0    tickets_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tickets_id_seq', 1, false);
          public          roma    false    230                       0    0    tickets_y2022_m10_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tickets_y2022_m10_id_seq', 1, false);
          public          roma    false    232                       0    0    tickets_y2022_m11_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tickets_y2022_m11_id_seq', 1, false);
          public          roma    false    234                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          roma    false    217            	           2606    139462     aircraft_type aircraft_type_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.aircraft_type
    ADD CONSTRAINT aircraft_type_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.aircraft_type DROP CONSTRAINT aircraft_type_pkey;
       public            roma    false    222            !           2606    139545 (   aircrafts_flights aircrafts_flights_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.aircrafts_flights
    ADD CONSTRAINT aircrafts_flights_pkey PRIMARY KEY (aircraft_id, flight_id);
 R   ALTER TABLE ONLY public.aircrafts_flights DROP CONSTRAINT aircrafts_flights_pkey;
       public            roma    false    241    241                       2606    139455    aircrafts aircrafts_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.aircrafts
    ADD CONSTRAINT aircrafts_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.aircrafts DROP CONSTRAINT aircrafts_pkey;
       public            roma    false    220            �           2606    139423 "   airlines airlines_airline_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.airlines
    ADD CONSTRAINT airlines_airline_name_key UNIQUE (airline_name);
 L   ALTER TABLE ONLY public.airlines DROP CONSTRAINT airlines_airline_name_key;
       public            roma    false    212                       2606    139540 7   airlines_airports airlines_airports_contract_number_key 
   CONSTRAINT     }   ALTER TABLE ONLY public.airlines_airports
    ADD CONSTRAINT airlines_airports_contract_number_key UNIQUE (contract_number);
 a   ALTER TABLE ONLY public.airlines_airports DROP CONSTRAINT airlines_airports_contract_number_key;
       public            roma    false    240                       2606    139538 (   airlines_airports airlines_airports_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.airlines_airports
    ADD CONSTRAINT airlines_airports_pkey PRIMARY KEY (airline_id, airport_id);
 R   ALTER TABLE ONLY public.airlines_airports DROP CONSTRAINT airlines_airports_pkey;
       public            roma    false    240    240            �           2606    139425 '   airlines airlines_alphanumeric_code_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.airlines
    ADD CONSTRAINT airlines_alphanumeric_code_key UNIQUE (alphanumeric_code);
 Q   ALTER TABLE ONLY public.airlines DROP CONSTRAINT airlines_alphanumeric_code_key;
       public            roma    false    212            �           2606    139421    airlines airlines_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.airlines
    ADD CONSTRAINT airlines_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.airlines DROP CONSTRAINT airlines_pkey;
       public            roma    false    212            �           2606    139414 "   airports airports_airport_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.airports
    ADD CONSTRAINT airports_airport_name_key UNIQUE (airport_name);
 L   ALTER TABLE ONLY public.airports DROP CONSTRAINT airports_airport_name_key;
       public            roma    false    210            �           2606    139412    airports airports_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.airports
    ADD CONSTRAINT airports_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.airports DROP CONSTRAINT airports_pkey;
       public            roma    false    210                       2606    139441    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            roma    false    216            #           2606    147472 "   closed_tariffs closed_tariffs_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.closed_tariffs
    ADD CONSTRAINT closed_tariffs_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.closed_tariffs DROP CONSTRAINT closed_tariffs_pkey;
       public            roma    false    243            �           2606    139434 !   flights flights_flight_number_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_flight_number_key UNIQUE (flight_number);
 K   ALTER TABLE ONLY public.flights DROP CONSTRAINT flights_flight_number_key;
       public            roma    false    214                       2606    139432    flights flights_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.flights DROP CONSTRAINT flights_pkey;
       public            roma    false    214                       2606    139474    schedule schedule_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_pkey;
       public            roma    false    225                       2606    139484 *   schedule_y2022_m10 schedule_y2022_m10_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.schedule_y2022_m10
    ADD CONSTRAINT schedule_y2022_m10_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.schedule_y2022_m10 DROP CONSTRAINT schedule_y2022_m10_pkey;
       public            roma    false    227                       2606    139494 *   schedule_y2022_m11 schedule_y2022_m11_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.schedule_y2022_m11
    ADD CONSTRAINT schedule_y2022_m11_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.schedule_y2022_m11 DROP CONSTRAINT schedule_y2022_m11_pkey;
       public            roma    false    229                       2606    139533 .   service_classes service_classes_class_name_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.service_classes
    ADD CONSTRAINT service_classes_class_name_key UNIQUE (class_name);
 X   ALTER TABLE ONLY public.service_classes DROP CONSTRAINT service_classes_class_name_key;
       public            roma    false    239                       2606    139531 $   service_classes service_classes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.service_classes
    ADD CONSTRAINT service_classes_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.service_classes DROP CONSTRAINT service_classes_pkey;
       public            roma    false    239                       2606    139524    current_tariffs tariffs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.current_tariffs
    ADD CONSTRAINT tariffs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.current_tariffs DROP CONSTRAINT tariffs_pkey;
       public            roma    false    237                       2606    139501    tickets tickets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tickets DROP CONSTRAINT tickets_pkey;
       public            roma    false    231                       2606    139509 (   tickets_y2022_m10 tickets_y2022_m10_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tickets_y2022_m10
    ADD CONSTRAINT tickets_y2022_m10_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.tickets_y2022_m10 DROP CONSTRAINT tickets_y2022_m10_pkey;
       public            roma    false    233                       2606    139517 (   tickets_y2022_m11 tickets_y2022_m11_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tickets_y2022_m11
    ADD CONSTRAINT tickets_y2022_m11_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.tickets_y2022_m11 DROP CONSTRAINT tickets_y2022_m11_pkey;
       public            roma    false    235                       2606    139448    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            roma    false    218            '           2606    139681 '   aircrafts aircrafts_aircraft_type_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.aircrafts
    ADD CONSTRAINT aircrafts_aircraft_type_id_fk FOREIGN KEY (aircraft_type_id) REFERENCES public.aircraft_type(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.aircrafts DROP CONSTRAINT aircrafts_aircraft_type_id_fk;
       public          roma    false    222    220    3337            (           2606    139686 !   aircrafts aircrafts_airline_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.aircrafts
    ADD CONSTRAINT aircrafts_airline_id_fk FOREIGN KEY (airline_id) REFERENCES public.airlines(id) ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.aircrafts DROP CONSTRAINT aircrafts_airline_id_fk;
       public          roma    false    212    3325    220            8           2606    139766 2   aircrafts_flights aircrafts_flights_aircraft_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.aircrafts_flights
    ADD CONSTRAINT aircrafts_flights_aircraft_id_fk FOREIGN KEY (aircraft_id) REFERENCES public.aircrafts(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.aircrafts_flights DROP CONSTRAINT aircrafts_flights_aircraft_id_fk;
       public          roma    false    241    3335    220            9           2606    139771 0   aircrafts_flights aircrafts_flights_flight_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.aircrafts_flights
    ADD CONSTRAINT aircrafts_flights_flight_id_fk FOREIGN KEY (flight_id) REFERENCES public.flights(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.aircrafts_flights DROP CONSTRAINT aircrafts_flights_flight_id_fk;
       public          roma    false    241    214    3329            6           2606    139756 1   airlines_airports airlines_airports_airline_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.airlines_airports
    ADD CONSTRAINT airlines_airports_airline_id_fk FOREIGN KEY (airline_id) REFERENCES public.airlines(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.airlines_airports DROP CONSTRAINT airlines_airports_airline_id_fk;
       public          roma    false    212    3325    240            7           2606    139761 1   airlines_airports airlines_airports_airport_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.airlines_airports
    ADD CONSTRAINT airlines_airports_airport_id_fk FOREIGN KEY (airport_id) REFERENCES public.airports(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.airlines_airports DROP CONSTRAINT airlines_airports_airport_id_fk;
       public          roma    false    3319    210    240            $           2606    139706    airports airports_city_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.airports
    ADD CONSTRAINT airports_city_id_fk FOREIGN KEY (city_id) REFERENCES public.cities(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.airports DROP CONSTRAINT airports_city_id_fk;
       public          roma    false    216    3331    210            5           2606    147461 ,   current_tariffs current_tariffs_flight_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.current_tariffs
    ADD CONSTRAINT current_tariffs_flight_id_fk FOREIGN KEY (flight_id) REFERENCES public.flights(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.current_tariffs DROP CONSTRAINT current_tariffs_flight_id_fk;
       public          roma    false    214    237    3329            %           2606    139671    flights flights_from_city_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_from_city_id_fk FOREIGN KEY (from_city_id) REFERENCES public.cities(id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.flights DROP CONSTRAINT flights_from_city_id_fk;
       public          roma    false    216    214    3331            &           2606    139676    flights flights_to_city_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_to_city_id_fk FOREIGN KEY (to_city_id) REFERENCES public.cities(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.flights DROP CONSTRAINT flights_to_city_id_fk;
       public          roma    false    3331    214    216            )           2606    139691    schedule schedule_flight_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_flight_id_fk FOREIGN KEY (flight_id) REFERENCES public.flights(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_flight_id_fk;
       public          roma    false    214    3329    225            *           2606    139696 2   schedule_y2022_m10 schedule_y2022_m10_flight_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_y2022_m10
    ADD CONSTRAINT schedule_y2022_m10_flight_id_fk FOREIGN KEY (flight_id) REFERENCES public.flights(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.schedule_y2022_m10 DROP CONSTRAINT schedule_y2022_m10_flight_id_fk;
       public          roma    false    214    227    3329            +           2606    139701 2   schedule_y2022_m11 schedule_y2022_m11_flight_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_y2022_m11
    ADD CONSTRAINT schedule_y2022_m11_flight_id_fk FOREIGN KEY (flight_id) REFERENCES public.flights(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.schedule_y2022_m11 DROP CONSTRAINT schedule_y2022_m11_flight_id_fk;
       public          roma    false    3329    229    214            -           2606    139716    tickets tickets_flight_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_flight_id_fk FOREIGN KEY (flight_id) REFERENCES public.flights(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.tickets DROP CONSTRAINT tickets_flight_id_fk;
       public          roma    false    214    3329    231            .           2606    139721 #   tickets tickets_service_class_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_service_class_id_fk FOREIGN KEY (service_class_id) REFERENCES public.service_classes(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.tickets DROP CONSTRAINT tickets_service_class_id_fk;
       public          roma    false    239    231    3355            ,           2606    139711    tickets tickets_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.tickets DROP CONSTRAINT tickets_user_id_fk;
       public          roma    false    231    218    3333            0           2606    139731 0   tickets_y2022_m10 tickets_y2022_m10_flight_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets_y2022_m10
    ADD CONSTRAINT tickets_y2022_m10_flight_id_fk FOREIGN KEY (flight_id) REFERENCES public.flights(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.tickets_y2022_m10 DROP CONSTRAINT tickets_y2022_m10_flight_id_fk;
       public          roma    false    214    3329    233            1           2606    139736 7   tickets_y2022_m10 tickets_y2022_m10_service_class_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets_y2022_m10
    ADD CONSTRAINT tickets_y2022_m10_service_class_id_fk FOREIGN KEY (service_class_id) REFERENCES public.service_classes(id) ON DELETE SET NULL;
 a   ALTER TABLE ONLY public.tickets_y2022_m10 DROP CONSTRAINT tickets_y2022_m10_service_class_id_fk;
       public          roma    false    233    3355    239            /           2606    139726 .   tickets_y2022_m10 tickets_y2022_m10_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets_y2022_m10
    ADD CONSTRAINT tickets_y2022_m10_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.tickets_y2022_m10 DROP CONSTRAINT tickets_y2022_m10_user_id_fk;
       public          roma    false    3333    233    218            3           2606    139746 0   tickets_y2022_m11 tickets_y2022_m11_flight_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets_y2022_m11
    ADD CONSTRAINT tickets_y2022_m11_flight_id_fk FOREIGN KEY (flight_id) REFERENCES public.flights(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.tickets_y2022_m11 DROP CONSTRAINT tickets_y2022_m11_flight_id_fk;
       public          roma    false    235    214    3329            4           2606    139751 7   tickets_y2022_m11 tickets_y2022_m11_service_class_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets_y2022_m11
    ADD CONSTRAINT tickets_y2022_m11_service_class_id_fk FOREIGN KEY (service_class_id) REFERENCES public.service_classes(id) ON DELETE SET NULL;
 a   ALTER TABLE ONLY public.tickets_y2022_m11 DROP CONSTRAINT tickets_y2022_m11_service_class_id_fk;
       public          roma    false    3355    235    239            2           2606    139741 .   tickets_y2022_m11 tickets_y2022_m11_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets_y2022_m11
    ADD CONSTRAINT tickets_y2022_m11_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.tickets_y2022_m11 DROP CONSTRAINT tickets_y2022_m11_user_id_fk;
       public          roma    false    235    3333    218            �   ?  x�uV�n�6<7��_`���qb��Ƴ��ק\d��%��=�ߧHj��"�	ɮ�����/ջ��n��=)��������{v|W�}��_�k�SWߑ�s��'�Յ���w���<9҅`��ڷ~�#ߟ��������I]���3�����~T�k�yD�	����+W���c?wM:�:���0���t��y���6k�]��/^��+�2g"���q�j��m�K�n�.�]CF0!h�wm`d�o�凩V̈́��k����Ƈ<�3X��X�S���Ǿ��l$V5�2�K&��я-q�Y"3Lt�jd�\�(?��f�� ��H�JH&,� �O�*Y0Qұk7���_ρH �v���5���́�wlI��,�����C}�E�aU�n��~Htg𹁩�dRѣ.��p�30�krD����Q���8�KP�ড�{�:g2���	
�=n2]�O[&ڷ��~
�]��YAH�Eу��� �����@,��sW�W�Ei����U�vle�,()u���@��:�7���(�R��1~��X���?�`6�SB
�Oq�6�,���C�y��
@��,��mt-q�����π(U�~��1lt����j����5H{��z�3-R]��!x�4����LK�����]�?�X#��Q
�)R|D���i�s8���t��/}ÿ]�Jm��<�ng�6t��?VF�"PfӖ^�?�p&( ҽ/�=y��ܷ�o�
���\�}����n���*!3��k�C?���%ʐ+J�,k�u�3�l�&�Z$lk<��1�y�(G��G�ա#�z�_$s\���H�������3�rK}������iR����]훹��QZVd���\�6��-��|t�[�h��XJ�
I0��r�v`5�m�f^�����y�*�Y��R�F:���E�_�� Pq��:�-Xa�3�� x-,%�{�~��Vҷy�i�ɖ�v�G��6���j��|�ۏy��z&*�1#��=��4��(�^}�۟��6�Ѱ��v-�tt�j�#F)fr��B��*�I�M���X����DJ$�L*@�z�
����5�1�#��V����퇍,��6�$�!�TE!�\1+��a��>��Ӄ +7��F��%�U`�J]*)�Y��,�9R�eI���_�'غ�s\`���/��r�di4��vC=��k�֖�Q���B�2�8��F�ɺ~^A�H����X���Q��NV�4+զ�ٗ��`�\��\��쳌Ͽ4�6��X��=��ႪKM^"�Im�r|����K��]�u�%Fx�����ȲD�v�����c�_\Lo�      �     x�%�[rB9D��x�ڲe�3$���@x��f�똣;E����n��6٦Z�:��T��#�޻�h25�\^��]�I�����k�Ʒ)�R��!���md%��%7�:�uљ��߳z�)^����GkC�/�i��6kw/Eƒ�"�m���h!j���>���eP��R�����4�d�TT>Ygh%k��T��?�k/&6��T��~wDo�F��e��67)�@d�咫��2k�X<v
\\`2ϔ�[�ѬK�.������R]�L���-j`��^���'OU*�ć�{n��)����|e���y��ARo��h��߁�(�����׵��7k3]�R{���%�� N�t��#�Q��2��E��JY@�I�\6��fg^id�|� L[��%Q��Rx@8�t�\r�֧p%�������$�ony8�c-�py�D0ac�)G�8_�10n^�=��Q C��sܼ ��V�|�71aպ���`�����O�Oq���|�7�Ըf�!5��+��eeS�9D��n�g!B����α�+��$2����:�(x
�Oo���b@���gTVb@��ĩOw��c�m<-�sk�XtʴU�5(hq�ĩwﴪ��y�d���`m_��(�BP� ���E-�� ��-�4��&�S���2)Ɋ���o|��41��;Ђx�-DTnOq�X�$�49��2P�����;8���V���:L��N�!�L�t��2.�W
�f�N�`���q�Xj,����W}��׿���!�Q�g�YK&JK�r8�:�� �$���}�p)@G��#�<
1��Cf� ����pX��ŵ��r�QFH�C"�3&�ms�%�"�#�[��P�X��M�N�P�;�Hd�����	�;����'&��g-LA�#9C_h��UJK8��J�k����F!%�n�`8�qf�Cw��,U�g1���|5H �v{���- f���c`� ��C�R57�q��k�$@u���s"�2x%����X��N�����֞�{���|fm`����!t��RJ�:�      �   '  x�Qɑ�@{�`���L�q�菋j]��+�7�H6�%�^z�-m��&�9�iQ�<$+A�K��}(�B��Ep�7l��b�X��N2
ђ�̓o����$�]�Ƽw��)������v�n+��ohM�͗n�˾D���c����MJ�6SH3�������n/uA99ꓱC��NLa*�(���z�ί>29��c.瘧�띍G`[�1��3%�e����He�*(އw0���v�X��>�P�wj<S��]�<WS4��.�L�.���X���F�;�<w����V�      �   `  x�mVے�H|��
�`B���(Ψx��ľ0��v��ؿ�lN��������&}&?�N�ژ�iQދ2����3�Y�F��"�1jc��i{0�MQ.n�RT�e���ZޚUo4��̡�Ln�X\sQU��;��2���6���H�ZTF\_h���FQ���.��K�+�ژ̧��S�s���Y�|P,~xY����&49X,���-���b怎H��B����iҒ��ut�ow^q<��*d������l�).~�R�ߊJV�7Z�lf:4�W`d\dE����]f��R����Q�c<��$�Uk����d��ύX܄�|m=f�"Ԥ�"d"��h��RUV��t:z��2����r���&yU����=��5��E�,����[���b��ҨSKU��v�2ˡ�ƨL�����d�K/a��IJ^��s�yb3ˣ!�Q�����l�w��$�e��y*.R������
��y�Ñ�C�
��|�fhU�B!�x�!�����l�^G�Q�=6YO�vV�XmӢ�2\�����N�d- %�G��#��.iy�P�c ��6�=�j��5O��W���Ii�X>r��$}#D���ب�+�ּ�J�P����u�(bV�9�C֍pk~��a&~)U)H����p�aXU U�>̱P�TYA'0���ёRD�h�p"���ň��	zi����Ԗ?���f��G���8��6
���a�OC�`��B+��r޸N���CZgI�O��:�nY��h(��1̾|���C��
B`���kiiuX8��\�Lst��G8��h�Qe9LL溄6V�K௚�Nk<���B�}��r}j����b�1z�����J4PG��Ї�\D����=�����~����2O��Ȕֹ�a�Y��h���G���?�s�y5�&M�>78�����K;n�6�<ڊ�H���~�w[`�	ڪ��8`^�@=v޿qX�}�����h�����ͣ)V�v!˻P~�p  �j������r�0b��]�X�*�S��,`~���󪍮�m�]rz����t�Z�����٭��)�5�eQ�@�S���Gs�"Q޴ī�z�#��N�ܸȹ���	�޳ED��yY&m=bxd`�^�0&l�5Z)B�6me]Bdܓ��Z�<�W-�!\z�d7�#�d�Q� �-�)����Q�E"��l[+L�z$����W��m��f��O�%��M�B�&\^��Ɠ�g��j��Z�W�y�XM�U�*�iU�v�#��N����eV��J�#�CpѤ������  e���:��v���.�OO���'���e_����z&�Mx�� x9����,��T7M�x��U��Z����c�}Q�      �   !  x�%��m1D���ȼl�%�ב�F�t7^v�3�1�W�j�L�I���׏>yΡ]��{()WyMI�����w�����l��h���#�⑦N��u���ᣓ�wg	��[2.�7�yoo��x2ˍ�%�<V��qԍFb=�}�,�Â%~�g��h&���Ԧ��B�G���ӊ𖖵����O���&G��
N}�*�z,BA�����j~i[���&[����@��xR�8d�|0��\+�#��e��By0��l���$x��ەi��"s�Ҿ��ܧ�CZr�p�1�]�(�@.�|����������P�	�o{��o_A�k�8��_�g���	�N{j��A�"��C��v�pX>��vэ칵��}���ʇ��x����G�V����a?�]�F�-A�71v�6q������x�5=5�'�؃ݰ�S<����PƇR��,��լf{� Tw�y�����r����|� ?G.+��������*��ݐ8Qʔ��� �9���86֚�!�4J&A���p`;�����'�I      �   �  x�uV�n�8<w� E�u�:��xw����Ȅ��,y�X`�~������C,��]]Uݒ^��p��x�˦�7���d�1�*�s07q��M��G.C׷�v���l��ֽ�~V|�����zK	kz���Љ�Z�m�1'���bw���7�����4�ޚ?��'�R�軽��jZ�2t�]=�ӟ!��ސ*�u]S:<�5t4���;�[�DZ��h��6T���$,%}�ߛ�Ѷ�y@�Gws>�,b	0D���+�b������u�q��x&��L��}�3�>L��L��蹵�C��w�5D��ڦ#4�Ǽ`��N�Zq���eA����8-:�@qD�����}q�ėC�|&�=e	ǒ�0�V��.�*{���t���9Vt�ڮ7��We�к�����Bs���Z��s#
	�3![@���t�qF�r��k�"��+9=�
��_r�(� �|�-ԯXEtl��u7��3V2 �b�+�X��h����ե�u�P� ����#�V�|����kj*
V	���A*%Y��޴`����P�b(x<��ɢ�C]��]�]�Q�LBb3�KY���#o�k��J��ð	�D����6�=�r��sS���f�/�M؄��l������	�[�����!�"�U�
�R: ���17ys���B�l����5b@�s7�9���<�b]@�
Z����$��Bo�WF`'r����/���$'1������ �^��jQ�?�9��=׶F�p��ɉ]�>'�{��]72Z@�XM�TOr
�t��M7S�o1:g8�҈�Ck� ��T>���ն�ZsO*Uެ{} ޜ*�������;��H5}�}�QԄ�X_���{�n�<Gf)}kK'�?L�ҷ�J#N��s�U�iNGw��A��2�C�9��?F.�mC�YDg���{j<�byu���8��@��p�� N�c�bB����/����Y2ph����ζ�/zT�&LɄ�m��`tq��3Yd��߳���)N�t;�f�R���t�O��6q���]S��HŹ�r��IB	��f�B�*'cK��_�ɹz,A\XF�}�j���Px�rO�IT0��v+�1��t�h{����g���a`U(?�B��ӥЇ�*�B�ǐ��oE�8�Ļ�wp!�/_H
T�^�ʢ+���L�0p�y6�;Vl�Dq�~_;�k
\X8$��q_Xz5�s����b��ݚK#�/,0!��6��TK��M
�`�E���}OF�d���mZ��O��<;IO      �   |  x�=T�n�F���
v��M���][~�2�M�y%�E�83;R��H�H$��I����I��	��y��t��AE�D���k'��^F�8��2�y�
n�-gt��3m�N[��.�_M��v\Эވv�O6�q����e�等N�x��.T|�5-U/���'�V�t���x�iB�����`�����-q��2l�nw�qA+��@]I��"f�*:Κ]�A��qM�^���p� �A��Ĵ
����Mp;N:Q�UѲ����.l�(��9�ѭ8)�ҝ�%z�1�夤��~؋��cI����SC�iN�WܬVәl��iB�:���n���Ef�`�����~�֜փ��]��k�9-�N+�QY�ztX�{-Ϝ�t����mt��Aa�&K�N�6�	D�����nl?}����љrG�Y6��ܠ�<#��^A�8+ �03+�dx�1�fm�$��t��Y���N���� 8������9O_	�]�V��Q ��N`����琭��	�%�T0L���D�h��h�`����ѩ2�I�LCK���=���5�)�5��!"E6�6/�a7�8�~�Q;4.KQ�I��4�H�]���Ǒ�����h�Y����w;X��Z,�R�]�nH���\& ���˔�[oD���-n���èf��eA�?2�%�T��p���f�Z�x�V�Z�Ղnl7���馿�l��s��� �՗+o������WA�^�ѭm�[�Z�`��O��*HD���qU�ҙN���ٜ�����\����;��F5}�:�{��	�G��0{�:L7FW҈W"�w:r��J�i���F]в׍p]��u����Y�-�5�q���C��Yе�p�������y�      �      x������ � �      �     x�uXۭ7��H�0�K���P*H3�$�޻6�D���h�1���`�'���/5���������(���?���^�/�G4�����|ݨ^��Q�)?�H���ϳ�|���GT=��Eim�tPyh�jQ�o���[ܦ̏8�>��]n?/�$�|��l�������c���'�6Bp�y�|t�j�g�G��'���:C��kr'�^�о2�#��4��H=\_�4�xhx��aު�vTc�3o�0>4Nk�9����8��-�vM�c�bA��g���v�
�q�.���L[���7�Yo��R�\��E��&�w��K��2<k�W�6��LgGa�3k�����Y�<8cO3�7�6���F�v�X1��`	7�y���h�c��0�i��	��w#ـ�v�K^�9k`�N�n��q4� r�;l��18���GE����O_-�&pzh�U��f?�5�P���༨7t¶�u��>�|!�&<
V�*V/��\V���q�q1����O9�����&�v�N:�_�HՋ|`��VV{%�� ��Τ���|��v'��Z&W�ċ2j��jm4x�����buӚ�$���'�c�1C�u:b�B��L��P:O�i1:)��(�*w��>a��3U����E!I�V��[)��%�3��ZC�����ԡ��]*��f��M���2��7݀��v��,9Ӗ�6�6k����!bg�'�Β� dR�ڤ����HS8�;�9�I��5k�p�n��X��Sj�3�Y��Ԣ���-IK9
�!pbø�ˣt+�W��@8=^��*^�A_�F^dlR0��B�e?�JZ�QA�va4Iɞ!�OyS��j��N�B���D?�_e�f���A�a��e�{C+qp��h�G!|5�F��$I��՜�Q,���{;O�}Ԣˋ�����s��9R��z�D'!�&��
�I^��!�2e��nhen+b���wJ�<x�y*S7� �W�(a�VS+.�uW�i��� ��q,�V&{���j�1JU�Nek�ȿ�Dj�E�ڊ�/ڴk���/rvNǝ	t,T����,����o�M������	��߶�ӣ���K���H[�G�u��e�r=��H��2G)�&Y�*����-������i��kS3�,\�Jj�\-y��v��IM3oU�QD��5Dr�J�w3L�z-zȗ���d���S�7���V��m1H�+d�&X1�Ȼhs�+rj�$�fKo�5:�`pƯ�s�o��!�+c�،���>{�a��S3Tn�:�D�%�:AVne}s�������h4w����o)]�K~�����_@J�9�+)Z/"��F��;�77�CTMb�I�/ő��҅����lә�u+��M��AN�I���ԌE����w���#e�d+��U��.���BZ���U��4M�̳C𚢸�ы�F��*CY;C��)�� �T��,c���8Z�t�;�n�jĲ��7Fh����&Q��ziL��r���7ba�2DŮ��hP���=ʨ4Il��������.\[9���5�^��F{�A[�g�B�Z�M�^�-�c
�L���Q'�_à�im�V��<�7ȇR|�A������k��U�7�!c\<������tNӚ@��mo���
v�_w�Ax�CߢjN".���m��i��[�yv�y�Kt�hPM�&o��E?�V]��ۼMy� �^K�����4��Q�����Z���tXB�nč��W��mG���-V�Y�QyS�A/k�]{��ALi�@�}3&����v���ʠ�5���uu��O���� ����      �   �  x��[�%1C�a1�
�d/��u��Z}�� �696��z앇m�t-���ʶ�v�˲�Z�I�[TZ^��C�Y��_똵�6~�7(u�?۝Q�I?��{�*��sl{����~��?O�N.i����Z@��4�w��V�d� p>�� ��<3q���d�=�z���+��v�5�l�_w۞�� ���4�l�� ��Gj�3�V��b0r�C�e�y<�)ޖ���������}��3(-�5L[��)Du8�V��U��g
�s���]t$p��rHC71W��E��yƏ�HO'�h��$j �>����M3^��؈4�.�f���{S��/�	�ku�@����� �w�1���N�����ҡ���� C�T�9`"�v�Śf��V/NY��+ECfJ��<a	��q>���H�=���ۘ���u��#r���?yd�0V0���#Ft �yIq�:��\�2�3:s^Q���j�M����I{�}1��G�Ή��ŰבA��J����u�\!��oے<���-���URo���@��rwӑ�v�ץ3~��RV7�lޅ2�.�X�H�Wh$V�|u��_������_J�;�xr;`�@��X�]�w�i��ȏ��A�#o%o�y�\V�cq��m��D������U�J�k6� �\[����>������/      �      x������ � �      �   �  x��YK��6\kN22���|���	�.��CK�X��	t��%V�2�R]�!�"��ˏ�����߇�}�p�������=���ŷ�����຀��cX`����B�`�,:����h����5@;��r8ђ�P[�?F��}.����/DG�'ZvUР�Y��ڢym�P�D+.뤔���>�FxR��O��
	�.�S�I3��6�dA����w�����҉�]��WHWO?xoO��G���D㋯�bo��}�p�*��v�QA��*5��W����i3.���X�8�>O9T�:��\t���E�;*Pݺ��ي�5M�a�����X\v)�qx�a�	mO����>Do����N���?.�Ru�Z�'���%/,.G�ww��M�maՉ��fuݕf*��*6V�	�Gu\�-�K_�i<;�gzY����ͻ�4�K�TEމ�h�ܥ��Ѱ'&�[�tuCrXv�!����y�[g7M�����ev�0���T�Ż��9�^,~w���lAށA�!��4c��״��w]���Xpj�pg��5ײyw7�<�ag���FS�:��N٧��,���Y�8����	�2��8�=�&���X pi�
�	��!����bR�5<�d1*�(���q����\+VcO��ۍfug>���.� ˪� 	N�,kl�.�P@cI��P^��1��l����0SH�w�M�19,u�b-�$�n��(�"���O�S���Ac�u�jјH"
����?��]"����+��y�_�I1�.1@7�)�dͰ(��vN;����;�D3q���LE�M.8�(v�Y�3���7�8�P�=�F����$Q|��
�y��:�H��l��s6
~�V�p��X=d��f׏47��扱��4�yFO�滛y'{����13>A+�
w�\I��T@٭�fu{G�L3f�yuj�F+�c,G����I8(̑�X�gN�D��hY�t"/�e�>(�#o7��Ԟ��;�<,h�.b��A6W��j�eŷ`���	�V4ͨ8Y���N����3�N������5���9'��������]X�i��Gbo�a�{�K�3���A�%`g�9�[��l8>�c��4N7�W��w��h�����n�NuZ��<D�E���=���+���"��O�Q�F�+ɲ�$�꺵h+QO�M�,��\̫����|��ڟJ��&]�X�n�/��f,�,�2 �W6H\���dPbܮ�LO�0(��3O5af��]�W�dV	��4Oq��p4�&g�l/����4�;����	��ʪ
SO���H#����Tu暭��O�T׳E��iL?���NhGW��6{��pJ�_<�0;�:�|�C�%1\��B�A�Y|/�3[:�WT�Һ)�(���ScG@X�m����K������qs-����jg�'�댱M� �K���E\vҲK�
p��i��c[o���E45Q�u/4!t�� ۪��w��Н��ԑ��ۑfu�m���+������~����U�bg�L��Q3[�� ��Ά�Th�>ɨx�+��GD�,�d������R��NN�t��_c�N���PlO�wQ<^c��"�d�l�a����"s����d�D+* ����ʉ;%֫�����b����e�v�?�k-V~�� �ڲQ�]��x�U3vv��W���[����"���
��_?~��wz<      �   �  x��YK�7\���@��}����3|��%�HvS��A
Y,��rr���m�������?������A��7�{���������]Ό���ĺЪ@ò�p����������:F�֮P�N��?�#��N�+��g�����DK.���z��º^�^���G�'ZvvhE?t��ء�#��עY�$C�мJ�"�p�U9 �i��V͇�t�����g�����)�B��-hHG豁w��p傛uOE�
�H���Aߠ�
z�����	�[ÀC�n�WYe70e��~D^p��,��U����r��zl���A:0�&���Մ˃u�+#w�f宷d�$�诗$J�sG�4�B=�L�&�bF'd�]��.�]���N�ٹ�-�L6_��U�ڹ�G�]���e[��j��X��	.��.ޱp*���d$�$P'��MyʗK�T=��A��d���[<V���BK������%�NN	�de���q�4^�SEe�x,a�Y�*s�&�� �t������]V�'ʹ���SYGe�ʝ<�ES>Ee��D�#�ձW)�	G⎽����m�(8�6Q`*J %P�;	@�T��s�%1��F��c��`�|�.�!��=��3��Q�r`�N!��ftE�
���|]R�.�SsV�����Y����]��1Åٳᬃ	���&�ftT�1+Bua;�c?�"Js���{c���N�⺝��c-�C7<6͊�9wr�P����0�B�S�,���B��pz�H��ˆ@�R(����dx�����O	@��g�(j����7ٮ<���i�4��f��l�;v$��Ʊ(E�F)�rVH��Bs6��VճO�H��YA�l<������"J���ݐ��]���=�1��H>�vwn��$g�'� �l�#7ւY�,il�QO[O�]�]��"4���0�]�xЬl3��f0�ƞ�\��Ew�Z�Y|�MF���Ŝd`{�1��n`E�nwT��(�G{�}H2wo����,i��f�]�"'٢�f��,E���h�qGm)b��܎i���o�N
i{oYz��	<hwc��\	?=E���c�J�9����;a�i˛�	'.<m�gN�-~gQT��J֦��۵�i�nh;����G�BD�7�}��ė��n���cy�c�	`9 q�G�DQ
�h�rp^eƱ��2@2�P�pdz)
|4�1�-�4l���V+���xT�t���ۏ���Yg�%B�'j�l��$����=M@o2J��i����'��]{ %nC��	O!�"�,^pE���@��Sy��We���X��� �;ѳm�������i�6{2Tg��d����R�.���r]�Ӯ�?��Nܹp��C���F���B��L1hL�A���|��Ǯ�S��"w�Z��O��A�9*[����X,۶���QY�
4���{��C�(�����ur�z�ێq����Lx(ʇ��Y�c�+
-���d�yW�a�h�֊���e��Q��Qhi�d����y��4n���Q�h4�� �җZQ����ea*�,��:.Rh��(���uo�&ksζD+�^��}V��9��([{p����T�aQZQ��=�hgߴi�[�}KirT�M1f8j�n�s�v_��f����]� �^}�����w��cV������c�~�      �   *   x�3�L�,*.�2�L*-��K-.�2�LM���ϭ����� ��
      �      x������ � �      �   M
  x�eYk�^9
�����2�����:F����S�����mB�_e��}���X���⟗=�9���w�O���u�إ��v�Ҿ^�*s��;�?eb�)���,4�I?*Vkig���??������;
f|�t�XK�����n���݁�>�|GË�*���g�K�l�2�޸~�̢O���i���J�`�n��=N�O��,���;-���^�ؼ
��Uv�n19w�bq}�}��{m�w:�4��f�ab{f�?g�B�ׂc&pZ�L+{fL��ދ��{-F���im�|��龍�]���H�)x;S�y�������oZ+�pt��4���� &\�>�>��K]�-�=�lx���{�n�[����H�x~g�{nY|Lw�ze��kog�ݲh����4�y��`^s7�����HpA�{
��(쳶s`�h����sTg7v��c��ˍ�E���WO;�v���S��e�m���"�Sn6[pX�i@�Ą	+�E��a�`��������Q���-���5$���ֲp�ܔ�!d��dE'�H~�|�x�qɼ�O�d^�'�o�apK���%��2��bIN8!�'�i�xXn6��hsĜ�; �l�Fce�ƈ\���1�|�dv��q	��8��mqp,>� Jχ5�fI��o<�IH�8ȟ\N���w��&Am�.P�D��! 60Ȩ�-C�߄i_��$,�8��D���Ef�ΰC�����)?���zHt�)~��q��4�j?�{�1d��������K�d����4�$ U�B�
��Ld�ga�=L:���I'x�AL���r�0��=xs�擵,�B=��)���)����\@�lJ��
p����+����Jb�G��2��:5C���XNfM_ٗ(>�D��YO<D]�|�LU�"^#7H���aq��g�H=&mm�X��S#��$A���B0�4��Srj��+�a㑁���Er�!��,��+����^ut�'f�W�I��Z�������+^<�-���}֥�(#kN!#Q�")r�.��%��:f�1Yz�j%�$X�#�
/�E��b�ȟJb����$� �dt�Q����n-]f���X�.j�U#n�U�����c�p	y���(
#0����]�d4<,�Ϯ�"X�#�'��x$���}/�lH�Z�{7�`,�^I�s�0�؋��}�#���^5ԍ`G�x\�3���P�3`ǛΣƩܸ���b5�t����%=�%�PFQ�P�.���;�Y5^žǩ9�I-�<i�M�[Ot�������CtQd[�"����q(�����P3����ȭ]r��Gh�n�/��+uyu�c�,��HB=�!��;�
�!�[��|r 	�-Ն?���G���P���X5�/8����7��%>:���a:$�"W	GL�J��F�n�z���vR[���D�'����TNo��G��p$Gc�.��4'S�D \�6L���Hs��[j��n(�����v�<�0��= �&�z�cO��4*`F����Y�3��HW��',X�[��)�/��=��%��8σ�&U�=4&
F�j\Sl&��*q�]��ĕ��&K�.�/���L��3%6b*��j]��X��3
Ո`��	\�]�P����D��J�K"Lz�i Y�EU�~�
vS�� �k�j@c����D��W\�lc8V(Fb�#y��^]��~�)`��Ǌ#��(�^��wҁ�+��q�/�a}�ev�bA5���)���|3)qiH@b�;3;��b��*�)�u��p��
>犿Z� ��D�5: �5��C0�q�-���k�^��;�qeGI sjL�	�M���~��{��'�͐<M.w
8�j��k�v��9���Ĺ~ޓ�hpc�hO�EH |"[ȑ�T���J.�vseJ��J���-2�ʽ�i�F�95���J �䶭'�.!˪gi�TT`S����?���&pI�7j��\�BW`9���\���z)�5��&-�e�r�JG�:�0�t�A�k$�쵂�ݜ@�C+�KX�n��SF�4�u':!o�T�ݪ��VA�N�o�ݤI���{Yɭ��5˝�����H�E��D�Ny)"HX�S�z�ֻ$"qߝ����x�T�3ǘ4U�X?Uz����2�8v�B��R'�rk:o(1yی��[9~�H�
W8�gZ�����ZLRB����9ǈ��U�G�s��%���<�ػK�(�>�(︪���sWgUÙ�s��iX��D��"�fn}�!?�����F�R���~�����_8�C���Z14࠘Q&�iI���R�+�H�O-��o��AU]�'��3H�Fr��ԐNI����k���D�� ���4�aPz��*L�/HE�s�4��'�g�T��*_2��/�:��J)��k~��9wD=�y�3��__��\x�o�63��ĥ�5;���+j�8����<��m�g.�L��Ծ2�85��X)u �G��8��'�����;�)�b,	S~m���+<X�'��B��P�M�~A�1��Ve������E�$7]��C��Ej�Ԏw	eGI����#$)�
�K$�J��]T����&

�k��}����w�L����z�r�̠%�,?�����q�J����|��?��0      �   6
  x�mY[�m�	�֚�S����#ݭkoP\���͑ģ��eeZY������/������Z��6�?o�>����e����n�Ŷ�#�8��r��՟���7y��N��S�*����o�׹J??A8qJ�e(�~fXi�o���h�߂I�=�����<b^�����F�GW(�����V�-{Ġ�����#x��2ql��2Xo�8nÙM�`x�5���7���W�ґ�
��Up��Εnq/��6F��}~e��:Y3(�\�G=m��4���/�e���E�-<6~~�Wpf3\x���*sd$;��:3n��p٦Ą��z %���\���ʠ�V�,.j���`��yľS2
̀G��sf��􋭑q���@ǿ�d$�%�e�T�2n�/��d����l=DZ�je���(�,�ښ��2g�pB�x�}���V[�4���K:�+C Onf B�$:��#�t�+G� ��w�Y����8j�Qg�7�������y� ��b��e�`>:s�ۊhߐ �~�qf�����RA���?*��;�S>,��m�������#�	�sG�̲�*qC�6�����G�5#������h�A�NA�M]U�AXX<�t$�
k# �e P��kM��M+y2�t�AC�Au����G�������B��m�����RTs�|�#ھ����w�.�L*F��GLA�X:�!B�u���s?:3e
����
X�z���_�%��>��gXC�xF!���{R�uJ�Q���7���l���^���>���eV�f���=�C�li�Ҁ��c&�BÚ�K��q�o�9��B�4���ۥ�N����2X�{4$��d��c� �.\��5�3Kl5�	rԥ�<z.�g�$'��^ �#w	��v^���k��z�>ĳ*�J�Գ*R@���~$^����
Q9g$'N��(⅓���X��$$��6�*l�L���A�{��"~�V<C��"����K�"t��|��L�X��w�:EpD,�.������؞�6�af*1��q^��Th=�J^"Z�5�O��&�o	46�*�Rрz�S���H��aXX�ć{�W9�H@�F$?���BX�+R�'R�1�W�,�ۢщE�4��䓘� ��H��,�d������%�EɱwJ4��>�u��p��Op�vS0|�'m���_�����T-+�!E�N��ڴD�����)��E�Y�C�/\� �"+)�A��v��;�~v�ؙT^����w�h�OS�, X�&���������kz�!mn�z�v�O�����3Jx&=`D�j�*�C�O�,_n����0%d�jB=�Q^7D�Wb7o�m)#�ױq�ό�;1A�u_rH�;��L��Cj�Fr��#��y��db����-��j��[@��)$\kφAo�G��>�y�?Y[`7���%}lg�+ ��٠�hCX�R�DXђ[��mD�w#�$(B2)�[*px
�&�/�R�.�
<�B3�݆���u�9}O�5��5�H��gA�؝��fO֐�q�b�A%�i
n����
�l��W�0	��nO�\��G�,�n��L4���Ҫ��Ѡ��%]$�υ��\2�AVJV�Y�Z����Gc>�{�r�h����xf}ĳ���C,���ԑoyy}{幕���GC�鍢;�M{���+3衿�z)j�vQxa�S����\BQ�e�{��!s"���R�e��+�?��xV�+�����!^9���Z�HTB[���d�׋�08I���Ǻ֟��v9^d�J{g�q,t�
G����羪��W+w'��E}8�����7��P�7���ٟe�>=�9Zu��H(������@�59¹�
�K-��pZ&���}��zoT]L���'=�o�$�f���)���D1����i�O`���ZF�z�fNіEo����:�#a d�,�݉�x�.b<Vi޴�۹��}�L����%���i�@2Ͻ/��4iyE�\�WgSL�P�T5qY�o��n�=*���R���pq�����pv����Y�}bW�*�܅wW1X��]��c��� <�1���u��b*�qդ�VM;�W���9i�x�䕅qp�O�/<1D���x�ߥ���J�J���ll7U��O�!sW��Q��CX>?���u\�s�=%��v�/`�L����:���{�zS�M�t%��,I��tݦ6Ɂ)N
 ^�_S�NR�ﺒ�,5D��.�*o�C��q�'�=�U$��L���1�m���"im��ۗ��C�})9�����/�F�(�p�	y|=F-e��x!M&�|�ז��5$���~
j��֐ε�q?��錫��5�2J[�y�����n�������*X}��6\f���jmP�ڴ	"z6M��?����}1�E����'�$O��[��=���Ez"±�թ◮{JC9���% G��p�8*�q��v?�vqӰ����$�N	�?�/R>~���>lΞv���q��A+}&����ү�g�������#��      �     x�MTKW�6^��Hw=��^&�.8�¹=��$V#KT������!=w����^ц'Z;�Q1�t'�߉W	��.���FTJ�����u-*�57[��r��[��UA�}#�"�����A[��x�����=�Nl�>YE�9zMWΡ��"�Lti��m��8������U��w�A�lZ7Z�t!�^3�;6FE]qcd��;T�Ӎ�� ���^>UT���w(Q�7��� �TT��ws�x��}�+�{G�e�n5�=��1���d�ť�[g��'�<�8{�������w���MFT��jͣ�E��6�hZ�`9.�Vp�y.�> C\ѓFc�L*YН�x��zF�l���O;g���ʸ�> ���M%	]�ɯ2� ��I�V.��ƾ���%�hs�@��^�hW��ZH���� H��lݪ��Ա�ZZVIEט~5bz��.h_�a��t�4B�Vws�I�1���oچ�	^�����4�_o�o�ҌvS�F,�9j��,\}��=꺝��>0��6��ƄBo2�V����W��^�*6��[�xCePM�K{�
RY.8�v�T�в$�VT�`�V��h�,:e��6�{������G�[�rjo��ǡMIר�!Y���*z�ևT.���@��9�苛0�����'��V����_�9�[�[�� ޻����*��SyN���lkВ��C��m;�όN��v������[�g��u�OŨ"�v�c��l쉖Cp�	V��z�����wJ7�ϑ^9�/B�;m�a�"��8��5G��(¨�/l3�E�o�bS�7TQAA9H�SC�rF���D0��QXb'�	8�2��ig7�	��8_�*aO͸J�<[T�b�
�PU�'V;z��Te��Y`u>)i��8YI}�iJ䝱<�jŔU�f,s������Ep৊i����,]�a�T�����8�J�����O|�0��9<Y}lU!����o�wΫ�w,k����uD��KvE�d��_�nΕ�g�7��])����     