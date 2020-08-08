BEGIN;

--
-- Name: cb_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cb_details (
    cb_id character varying(10) NOT NULL,
    cb_loc character varying(10),
    cb_status character varying(2)
);


ALTER TABLE public.cb_details OWNER TO postgres;


--
-- Name: economic_mode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.economic_mode (
    id integer NOT NULL,
    eco_timestamp timestamp without time zone,
    eco_tf character varying(10),
    eco_gf character varying(10),
    eco_tif character varying(10),
    eco_dcl character varying(10),
    eco_clnl character varying(10),
    eco_res_val character varying(10)
);


ALTER TABLE public.economic_mode OWNER TO postgres;


--
-- Name: economic_mode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.economic_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.economic_mode_id_seq OWNER TO postgres;


--
-- Name: economic_mode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.economic_mode_id_seq OWNED BY public.economic_mode.id;


--
-- Name: event_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_details (
    id integer NOT NULL,
    event_timestamp timestamp without time zone,
    event_type character varying(10),
    event_lat character varying(10),
    event_long character varying(10),
    event_wind_speed character varying(10),
    event_wind_direction character varying(10)
);


ALTER TABLE public.event_details OWNER TO postgres;

--
-- Name: event_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.event_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_details_id_seq OWNER TO postgres;

--
-- Name: event_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.event_details_id_seq OWNED BY public.event_details.id;


--
-- Name: expected_outage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.expected_outage (
    id integer NOT NULL,
    eo_timestamp timestamp without time zone,
    eo_fault_loc character varying(10),
    eo_iso_sec_detail character varying(10),
    eo_wind_speed character varying(10),
    eo_wind_direction character varying(10)
);


ALTER TABLE public.expected_outage OWNER TO postgres;

--
-- Name: expected_outage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.expected_outage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.expected_outage_id_seq OWNER TO postgres;

--
-- Name: expected_outage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.expected_outage_id_seq OWNED BY public.expected_outage.id;


--
-- Name: gu_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gu_details (
    g_id character varying(10) NOT NULL,
    g_kv character varying(10),
    g_unit_id character varying(10),
    g_status character varying(20),
    g_ctrl character varying(10),
    g_mw_measured character varying(10),
    g_rating character varying(10)
);


ALTER TABLE public.gu_details OWNER TO postgres;

--
-- Name: load_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.load_details (
    l_id character varying(10) NOT NULL,
    l_kv character varying(10),
    l_unit_id character varying(10),
    l_status character varying(20),
    l_type character varying(10),
    l_mw_measured character varying(10),
    l_mvar_measured character varying(10)
);


ALTER TABLE public.load_details OWNER TO postgres;

--
-- Name: radience_dynamic_nodesGIS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."radience_dynamic_nodesGIS" (
    id integer NOT NULL,
    node_lat character varying(20) NOT NULL,
    node_long character varying(20) NOT NULL,
    node_code character varying(10),
    node_desc character varying(100),
    node_status integer NOT NULL
);


ALTER TABLE public."radience_dynamic_nodesGIS" OWNER TO postgres;

--
-- Name: radience_dynamic_nodesGIS_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."radience_dynamic_nodesGIS_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."radience_dynamic_nodesGIS_id_seq" OWNER TO postgres;

--
-- Name: radience_dynamic_nodesGIS_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."radience_dynamic_nodesGIS_id_seq" OWNED BY public."radience_dynamic_nodesGIS".id;


--
-- Name: radience_dynamic_nodes_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.radience_dynamic_nodes_links (
    id integer NOT NULL,
    from_node_lat character varying(20) NOT NULL,
    from_node_long character varying(20) NOT NULL,
    to_node_lat character varying(20) NOT NULL,
    to_node_long character varying(20) NOT NULL,
    link_desc character varying(20),
    link_status character varying(5)
);


ALTER TABLE public.radience_dynamic_nodes_links OWNER TO postgres;

--
-- Name: radience_dynamic_nodes_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.radience_dynamic_nodes_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.radience_dynamic_nodes_links_id_seq OWNER TO postgres;

--
-- Name: radience_dynamic_nodes_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.radience_dynamic_nodes_links_id_seq OWNED BY public.radience_dynamic_nodes_links.id;


--
-- Name: radience_output_edge_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.radience_output_edge_file (
    name character varying(20) NOT NULL,
    from_node character varying(6),
    to_node character varying(6),
    status character varying(1)
);


ALTER TABLE public.radience_output_edge_file OWNER TO postgres;

--
-- Name: radience_output_node_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.radience_output_node_file (
    name character varying(6) NOT NULL,
    voltage character varying(6),
    load character varying(6),
    gen character varying(6),
    kind character varying(6),
    critical character varying(1),
    pathredundacy character varying(1)
);


ALTER TABLE public.radience_output_node_file OWNER TO postgres;

--
-- Name: radience_static_nodesGIS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."radience_static_nodesGIS" (
    id integer NOT NULL,
    node_lat character varying(20) NOT NULL,
    node_long character varying(20) NOT NULL,
    node_code character varying(10),
    node_desc character varying(100)
);


ALTER TABLE public."radience_static_nodesGIS" OWNER TO postgres;

--
-- Name: radience_static_nodesGIS_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."radience_static_nodesGIS_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."radience_static_nodesGIS_id_seq" OWNER TO postgres;

--
-- Name: radience_static_nodesGIS_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."radience_static_nodesGIS_id_seq" OWNED BY public."radience_static_nodesGIS".id;


--
-- Name: radience_static_nodes_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.radience_static_nodes_links (
    id integer NOT NULL,
    from_node_lat character varying(20) NOT NULL,
    from_node_long character varying(20) NOT NULL,
    to_node_lat character varying(20) NOT NULL,
    to_node_long character varying(20) NOT NULL,
    link_desc character varying(20)
);


ALTER TABLE public.radience_static_nodes_links OWNER TO postgres;

--
-- Name: radience_static_nodes_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.radience_static_nodes_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.radience_static_nodes_links_id_seq OWNER TO postgres;

--
-- Name: radience_static_nodes_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.radience_static_nodes_links_id_seq OWNED BY public.radience_static_nodes_links.id;


--
-- Name: resiliency_scores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resiliency_scores (
    id integer NOT NULL,
    res_timestamp timestamp without time zone,
    res_rg character varying(10),
    res_tif character varying(10),
    res_dcl character varying(10),
    res_clnl character varying(10),
    res_val character varying(10)
);


ALTER TABLE public.resiliency_scores OWNER TO postgres;

--
-- Name: resiliency_scores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resiliency_scores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resiliency_scores_id_seq OWNER TO postgres;

--
-- Name: resiliency_scores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resiliency_scores_id_seq OWNED BY public.resiliency_scores.id;


--
-- Name: resilient_mode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resilient_mode (
    id integer NOT NULL,
    resilient_timestamp timestamp without time zone,
    resilient_tf character varying(10),
    resilient_gf character varying(10),
    resilient_tif character varying(10),
    resilient_dcl character varying(10),
    resilient_clnl character varying(10),
    resilient_resval character varying(10)
);


ALTER TABLE public.resilient_mode OWNER TO postgres;

--
-- Name: resilient_mode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resilient_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resilient_mode_id_seq OWNER TO postgres;

--
-- Name: resilient_mode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resilient_mode_id_seq OWNED BY public.resilient_mode.id;


--
-- Name: subs_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subs_details (
    sub_id character varying(10) NOT NULL,
    sub_loc character varying(10),
    sub_out_feed character varying(10),
    sub_remarks character varying(20)
);


ALTER TABLE public.subs_details OWNER TO postgres;

--
-- Name: system_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.system_info (
    key_code character varying(6) NOT NULL,
    key_desc character varying(20),
    key_val integer
);


ALTER TABLE public.system_info OWNER TO postgres;

--
-- Name: threat_impacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.threat_impacts (
    id integer NOT NULL,
    threat_timestamp timestamp without time zone,
    threat_vol character varying(10),
    threat_freq character varying(10),
    threat_sch_load character varying(10),
    threat_sch_gen character varying(10),
    threat_present_load character varying(10),
    threat_present_gen character varying(10),
    threat_affected_loc character varying(10)
);


ALTER TABLE public.threat_impacts OWNER TO postgres;

--
-- Name: threat_impacts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.threat_impacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.threat_impacts_id_seq OWNER TO postgres;

--
-- Name: threat_impacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.threat_impacts_id_seq OWNED BY public.threat_impacts.id;


--
-- Name: trans_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trans_details (
    trans_id character varying(10) NOT NULL,
    trans_rating character varying(10),
    trans_loc character varying(10),
    trans_op_condition character varying(20)
);


ALTER TABLE public.trans_details OWNER TO postgres;

--
-- Name: economic_mode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.economic_mode ALTER COLUMN id SET DEFAULT nextval('public.economic_mode_id_seq'::regclass);


--
-- Name: event_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_details ALTER COLUMN id SET DEFAULT nextval('public.event_details_id_seq'::regclass);


--
-- Name: expected_outage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.expected_outage ALTER COLUMN id SET DEFAULT nextval('public.expected_outage_id_seq'::regclass);


--
-- Name: radience_dynamic_nodesGIS id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."radience_dynamic_nodesGIS" ALTER COLUMN id SET DEFAULT nextval('public."radience_dynamic_nodesGIS_id_seq"'::regclass);


--
-- Name: radience_dynamic_nodes_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.radience_dynamic_nodes_links ALTER COLUMN id SET DEFAULT nextval('public.radience_dynamic_nodes_links_id_seq'::regclass);


--
-- Name: radience_static_nodesGIS id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."radience_static_nodesGIS" ALTER COLUMN id SET DEFAULT nextval('public."radience_static_nodesGIS_id_seq"'::regclass);


--
-- Name: radience_static_nodes_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.radience_static_nodes_links ALTER COLUMN id SET DEFAULT nextval('public.radience_static_nodes_links_id_seq'::regclass);


--
-- Name: resiliency_scores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resiliency_scores ALTER COLUMN id SET DEFAULT nextval('public.resiliency_scores_id_seq'::regclass);


--
-- Name: resilient_mode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resilient_mode ALTER COLUMN id SET DEFAULT nextval('public.resilient_mode_id_seq'::regclass);


--
-- Name: threat_impacts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.threat_impacts ALTER COLUMN id SET DEFAULT nextval('public.threat_impacts_id_seq'::regclass);


--
-- Data for Name: cb_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cb_details (cb_id, cb_loc, cb_status) FROM stdin;
CB1	ORCA	0
CB2	EYAK	1
CB3	ORCA	1
CB4	EYAK	0
CB5	HBC	1
\.


--
-- Data for Name: economic_mode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.economic_mode (id, eco_timestamp, eco_tf, eco_gf, eco_tif, eco_dcl, eco_clnl, eco_res_val) FROM stdin;
\.


--
-- Data for Name: event_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event_details (id, event_timestamp, event_type, event_lat, event_long, event_wind_speed, event_wind_direction) FROM stdin;
\.


--
-- Data for Name: expected_outage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.expected_outage (id, eo_timestamp, eo_fault_loc, eo_iso_sec_detail, eo_wind_speed, eo_wind_direction) FROM stdin;
\.


--
-- Data for Name: gu_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gu_details (g_id, g_kv, g_unit_id, g_status, g_ctrl, g_mw_measured, g_rating) FROM stdin;
DG1	4.16	G3_ORC	0	AGC	1.5	220
DG2	0.5	G4_ORC	1	AGC	2.5	220
DG3	0.8	G5_ORC	1	AGC	3.5	330
DG4	1.54	G3_ORC	0	AGC	4.5	220
DG5	3.22	G4_ORC	0	AGC	5.5	330
\.


--
-- Data for Name: load_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.load_details (l_id, l_kv, l_unit_id, l_status, l_type, l_mw_measured, l_mvar_measured) FROM stdin;
L01	12	L01_LAK	1	CL	0.1	0.01
L02	30	L02_LAK	1	NCL	0.2	0.02
L03	40	L03_LAK	1	CL	0.3	0.03
L04	15	L04_LAK	1	NCL	0.4	0.04
L05	20	L05_LAK	1	NCL	0.5	0.05
L06	30	L06_LAK	1	CL	0.6	0.06
\.


--
-- Data for Name: radience_dynamic_nodesGIS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."radience_dynamic_nodesGIS" (id, node_lat, node_long, node_code, node_desc, node_status) FROM stdin;
1	60.585037	-145.626264	G	N100 (Power Creek Substation - H5, H6, H7)	1
2	60.586285	-145.623469	N	N101	1
3	60.58628	-145.623362	N	N102	1
4	60.583697	-145.630038	N	N103	1
5	60.614739	-145.628432	G	N200 (Humpback Substation - H1, H2, H3, H4)	1
6	60.616122	-145.630223	N	N201	1
7	60.616465	-145.629995	N	N202	1
8	60.616483	-145.627432	N	N203	1
9	60.610081	-145.632727	N	N204	1
10	60.597869	-145.663727	N	N205	1
11	60.556121	-145.753738	G	N300 (Orca Substation - G3, G4, G5, G6, G7, G8)	1
12	60.54054	-145.740904	N	N400	1
13	60.55604	-145.7538	N	N507	1
14	60.55604	-145.7538	N	N507	1
15	60.54728	-145.763625	N	N514	1
16	60.54728	-145.763625	N	N514	1
17	60.54875	-145.763994	N	N518	1
18	60.54875	-145.763994	N	N518	1
19	60.550438	-145.760331	N	N526	1
20	60.550438	-145.760331	N	N526	1
21	60.5405	-145.741037	N	N606	1
22	60.5405	-145.741037	N	N606	1
23	60.54319	-145.74179	N	N608	1
24	60.54319	-145.74179	N	N608	1
25	60.54319	-145.74179	N	N612	1
26	60.54319	-145.74179	N	N612	1
27	60.542419	-145.752657	N	N614	1
28	60.542419	-145.752657	N	N614	1
29	60.543419	-145.752657	N	N620	1
30	60.543419	-145.752657	N	N620	1
31	60.544636	-145.757055	N	N627	1
32	60.544636	-145.757055	N	N627	1
33	60.540457	-145.741037	N	N701	1
34	60.543756	-145.760985	N	N707	1
35	60.546848	-145.761041	N	N720	1
36	60.546848	-145.761041	N	N722	1
37	60.547613	-145.765318	N	N731	1
38	60.5405	-145.741037	N	N801	1
39	60.539322	-145.753094	N	N806	1
40	60.539322	-145.753094	N	N808	1
41	60.539322	-145.753094	N	N811	1
42	60.535159	-145.773058	N	N813	1
43	60.532345	-145.778623	N	N822	1
44	60.527345	-145.781623	N	N829	1
45	60.524323	-145.784216	N	N831	1
46	60.541412	-145.757476	N	N838	1
47	60.546626	-145.758652	N	N850	1
48	60.5405	-145.741037	N	N901	1
49	60.539483	-145.73447	N	N910	1
50	60.539483	-145.73447	N	N911	1
51	60.538594	-145.706188	N	N916	1
52	60.537257	-145.659961	N	N920	1
53	60.535957	-145.658961	N	N921	1
54	60.527245	-145.627593	N	N931	1
55	60.531245	-145.647593	N	N937	1
56	60.537332	-145.666187	N	N941	1
\.


--
-- Data for Name: radience_dynamic_nodes_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.radience_dynamic_nodes_links (id, from_node_lat, from_node_long, to_node_lat, to_node_long, link_desc, link_status) FROM stdin;
\.


--
-- Data for Name: radience_output_edge_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.radience_output_edge_file (name, from_node, to_node, status) FROM stdin;
N200_to_N201	N200	N201	1
N200_to_N202	N200	N202	1
N200_to_N203	N200	N203	1
N200_to_N204	N200	N204	1
N204_to_N205	N204	N205	1
N205_to_N300	N205	N300	1
N303_to_N300	N300	N303	1
N304_to_N300	N300	N304	1
N305_to_N315	N315	N305	1
N306_to_N315	N315	N306	1
N300_to_N315	N315	N300	1
N307_to_N300	N307	N300	1
N308_to_N300	N308	N300	1
N400_to_N300	N300	N400	1
N507_to_N300	N300	N507	1
N507_to_N514	N507	N514	1
N518_to_N514	N518	N514	1
N518_to_N526	N518	N526	1
N627_to_N620	N627	N620	1
N614_to_N620	N614	N620	1
N614_to_N612	N614	N612	1
N608_to_N612	N608	N612	1
N608_to_N606	N608	N606	1
N400_to_N606	N606	N400	1
N731_to_N720	N731	N720	1
N720_to_N722	N720	N722	1
N707_to_N722	N707	N722	1
N707_to_N701	N707	N701	1
N701_to_N400	N707	N400	1
N850_to_N838	N850	N838	1
N838_to_N811	N838	N811	1
N811_to_N808	N811	N808	1
N806_to_N808	N806	N808	1
N806_to_N801	N806	N801	1
N801_to_N400	N801	N400	1
N941_to_N937	N941	N937	1
N937_to_N931	N937	N931	1
N931_to_N921	N931	N921	1
N921_to_N920	N921	N920	1
N920_to_N916	N920	N916	1
N916_to_N911	N916	N911	1
N911_to_N910	N911	N910	1
N910_to_N901	N910	N901	1
N901_to_N400	N901	N400	1
LD5_to_N400	LD5	N400	1
N104_to_N400	N104	N400	1
N104_to_N103	N104	N103	1
N103_to_N100	N103	N100	1
N100_to_N101	N100	N101	1
N100_to_N102	N100	N102	1
N811_to_N813	N811	N813	1
N813_to_N822	N813	N822	1
N822_to_N829	N822	N829	1
N829_to_N831	N829	N831	1
\.


--
-- Data for Name: radience_output_node_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.radience_output_node_file (name, voltage, load, gen, kind, critical, pathredundacy) FROM stdin;
N200	277	0	0	PV	1	0
N201	277	0	625	PV	1	0
N202	277	0	625	PV	1	0
N203	277	0	0	PV	1	0
N204	7200	0	0	 PQ	1	2
N205	7200	31	0	 PQ	3	1
N300	7200	0	0	 PQ	1	2
N303	7200	0	3250	PV	1	0
N304	7200	0	3004	PV	1	0
N305	7200	0	1406	PV	1	0
N306	7200	0	0	PV	1	0
N307	7200	0	5000	PV	1	0
N308	7200	0	0	PV	1	0
N315	277	0	0	PV	1	0
N507	7200	234	0	 PQ	1	2
N514	7200	1111	0	 PQ	1	2
N518	7200	355	0	 PQ	3	2
N526	7200	1920	0	 PQ	2	1
N627	7200	108	0	 PQ	1	2
N620	7200	217	0	 PQ	1	3
N614	7200	92.5	0	 PQ	1	2
N612	7200	42.5	0	 PQ	3	2
N608	7200	55	0	 PQ	3	2
N606	7200	5.1	0	 PQ	1	1
N731	7200	1450	0	 PQ	2	2
N720	7200	39	0	 PQ	2	2
N722	7200	24.2	0	 PQ	1	3
N707	7200	1239	0	 PQ	1	3
N701	7200	0	0	 PQ	1	2
N801	7200	520	0	 PQ	1	3
N806	7200	245	0	 PQ	3	2
N808	7200	650	0	 PQ	1	3
N850	7200	129	0	 PQ	1	2
N811	7200	0	0	 PQ	1	2
N813	7200	128	0	 PQ	2	2
N822	7200	62	0	 PQ	2	1
N829	7200	12	0	 PQ	3	1
N831	7200	2.5	0	 PQ	1	3
N838	7200	219	0	 PQ	1	2
N941	7200	44	0	 PQ	1	3
N937	7200	8	0	 PQ	1	3
N931	7200	15.5	0	 PQ	1	3
N921	7200	42.6	0	 PQ	2	2
N920	7200	2.5	0	 PQ	1	2
N916	7200	2.5	0	 PQ	1	3
N911	7200	2	0	 PQ	3	1
N910	7200	17.3	0	 PQ	1	3
N901	7200	0	0	 PQ	1	3
N400	7200	0	inf	 SWING	1	0
LD5	7200	0	\N	PQ	3	3
N100	2400	0	3750	PV	2	0
N101	2400	0	3750	PV	2	0
N102	2400	0	0	PV	2	0
N103	14400	0	\N	 PQ	2	2
N104	14400	0	0	 PQ	3	1
\.


--
-- Data for Name: radience_static_nodesGIS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."radience_static_nodesGIS" (id, node_lat, node_long, node_code, node_desc) FROM stdin;
1	60.585037	-145.626264	G	N100 (Power Creek Substation - H5, H6, H7)
2	60.586285	-145.623469	N	N101
3	60.58628	-145.623362	N	N102
4	60.583697	-145.630038	N	N103
5	60.614739	-145.628432	G	N200 (Humpback Substation - H1, H2, H3, H4)
6	60.616122	-145.630223	N	N201
7	60.616465	-145.629995	N	N202
8	60.616483	-145.627432	N	N203
9	60.610081	-145.632727	N	N204
10	60.597869	-145.663727	N	N205
11	60.556121	-145.753738	G	N300 (Orca Substation - G3, G4, G5, G6, G7, G8)
12	60.54054	-145.740904	N	N400
13	60.55604	-145.7538	N	N507
14	60.55604	-145.7538	N	N507
15	60.54728	-145.763625	N	N514
16	60.54728	-145.763625	N	N514
17	60.54875	-145.763994	N	N518
18	60.54875	-145.763994	N	N518
19	60.550438	-145.760331	N	N526
20	60.550438	-145.760331	N	N526
21	60.5405	-145.741037	N	N606
22	60.5405	-145.741037	N	N606
23	60.54319	-145.74179	N	N608
24	60.54319	-145.74179	N	N608
25	60.54319	-145.74179	N	N612
26	60.54319	-145.74179	N	N612
27	60.542419	-145.752657	N	N614
28	60.542419	-145.752657	N	N614
29	60.543419	-145.752657	N	N620
30	60.543419	-145.752657	N	N620
31	60.544636	-145.757055	N	N627
32	60.544636	-145.757055	N	N627
33	60.540457	-145.741037	N	N701
34	60.543756	-145.760985	N	N707
35	60.546848	-145.761041	N	N720
36	60.546848	-145.761041	N	N722
37	60.547613	-145.765318	N	N731
38	60.5405	-145.741037	N	N801
39	60.539322	-145.753094	N	N806
40	60.539322	-145.753094	N	N808
41	60.539322	-145.753094	N	N811
42	60.535159	-145.773058	N	N813
43	60.532345	-145.778623	N	N822
44	60.527345	-145.781623	N	N829
45	60.524323	-145.784216	N	N831
46	60.541412	-145.757476	N	N838
47	60.546626	-145.758652	N	N850
48	60.5405	-145.741037	N	N901
49	60.539483	-145.73447	N	N910
50	60.539483	-145.73447	N	N911
51	60.538594	-145.706188	N	N916
52	60.537257	-145.659961	N	N920
53	60.535957	-145.658961	N	N921
54	60.527245	-145.627593	N	N931
55	60.531245	-145.647593	N	N937
56	60.537332	-145.666187	N	N941
\.


--
-- Data for Name: radience_static_nodes_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.radience_static_nodes_links (id, from_node_lat, from_node_long, to_node_lat, to_node_long, link_desc) FROM stdin;
\.


--
-- Data for Name: resiliency_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resiliency_scores (id, res_timestamp, res_rg, res_tif, res_dcl, res_clnl, res_val) FROM stdin;
12	2020-05-04 15:14:37	0.43	0.34	0.43	0.43	0.9
13	2020-05-04 15:14:42	0.55	0.43	0.43	0.34	0.81
14	2020-05-04 15:14:47	0.43	0.43	0.43	0.34	0.9
15	2020-05-04 15:14:52	0.55	0.55	0.43	0.34	0.81
16	2020-05-04 15:14:57	0.55	0.43	0.55	0.34	0.9
17	2020-05-04 15:15:02	0.55	0.34	0.34	0.34	0.74
18	2020-05-04 15:15:07	0.43	0.55	0.34	0.43	0.79
19	2020-05-04 15:15:12	0.55	0.43	0.34	0.55	0.74
20	2020-05-04 15:15:17	0.34	0.34	0.43	0.34	0.73
21	2020-05-04 15:15:22	0.34	0.43	0.34	0.55	0.79
22	2020-05-04 15:15:27	0.34	0.34	0.43	0.55	0.73
23	2020-05-04 15:15:32	0.43	0.34	0.34	0.34	0.79
24	2020-05-04 15:15:37	0.55	0.34	0.55	0.34	0.81
25	2020-05-04 15:15:42	0.43	0.43	0.55	0.43	0.81
26	2020-05-04 15:15:47	0.34	0.43	0.43	0.43	0.73
27	2020-05-04 15:15:52	0.34	0.55	0.55	0.55	0.9
28	2020-05-04 15:15:57	0.55	0.55	0.55	0.34	0.85
29	2020-05-04 15:16:02	0.34	0.55	0.55	0.43	0.74
30	2020-05-04 15:16:07	0.34	0.34	0.34	0.55	0.81
31	2020-05-04 15:16:12	0.43	0.34	0.43	0.55	0.74
32	2020-05-04 15:16:17	0.55	0.55	0.55	0.34	0.74
33	2020-05-04 15:16:22	0.34	0.55	0.55	0.55	0.79
34	2020-05-04 15:16:27	0.55	0.55	0.55	0.55	0.79
35	2020-05-04 15:16:32	0.34	0.34	0.34	0.34	0.79
36	2020-05-04 15:16:37	0.55	0.43	0.43	0.34	0.81
37	2020-05-04 15:18:07	0.34	0.55	0.43	0.34	0.9
38	2020-05-04 15:18:12	0.55	0.55	0.55	0.55	0.74
39	2020-05-04 15:18:17	0.55	0.34	0.43	0.34	0.9
40	2020-05-04 15:18:22	0.34	0.55	0.55	0.55	0.74
41	2020-05-04 15:18:27	0.43	0.55	0.34	0.34	0.81
42	2020-05-04 15:18:32	0.55	0.34	0.34	0.55	0.73
43	2020-05-04 15:18:37	0.34	0.34	0.55	0.55	0.73
44	2020-05-04 15:18:42	0.43	0.43	0.55	0.55	0.79
45	2020-05-04 15:18:47	0.43	0.55	0.43	0.43	0.85
46	2020-05-04 15:18:52	0.55	0.34	0.55	0.34	0.73
47	2020-05-04 15:18:57	0.55	0.55	0.34	0.34	0.9
48	2020-05-04 15:19:02	0.55	0.55	0.43	0.34	0.9
49	2020-05-04 15:19:07	0.43	0.43	0.55	0.55	0.79
50	2020-05-04 15:19:12	0.34	0.43	0.43	0.55	0.74
51	2020-05-04 15:19:17	0.55	0.55	0.43	0.43	0.79
52	2020-05-04 15:19:22	0.43	0.34	0.43	0.43	0.73
53	2020-05-04 15:19:27	0.43	0.55	0.55	0.34	0.81
54	2020-05-04 15:19:32	0.34	0.34	0.34	0.55	0.73
55	2020-05-04 15:19:37	0.34	0.55	0.34	0.34	0.85
56	2020-05-04 15:19:42	0.55	0.55	0.43	0.43	0.81
57	2020-05-04 15:19:47	0.43	0.55	0.43	0.34	0.81
58	2020-05-04 15:19:52	0.55	0.55	0.34	0.43	0.79
59	2020-05-04 15:19:57	0.55	0.34	0.55	0.55	0.9
60	2020-05-04 15:20:02	0.34	0.34	0.34	0.34	0.85
61	2020-05-04 15:20:07	0.34	0.55	0.55	0.55	0.79
62	2020-05-04 15:20:12	0.34	0.43	0.34	0.55	0.81
63	2020-05-04 15:20:17	0.43	0.43	0.43	0.55	0.74
64	2020-05-04 15:20:22	0.55	0.34	0.55	0.43	0.74
65	2020-05-04 15:20:27	0.34	0.43	0.43	0.43	0.9
66	2020-05-04 15:20:32	0.43	0.43	0.55	0.55	0.79
67	2020-05-04 15:20:37	0.55	0.34	0.43	0.43	0.9
68	2020-05-04 15:20:42	0.43	0.55	0.43	0.43	0.81
69	2020-05-04 15:20:47	0.34	0.34	0.43	0.55	0.9
70	2020-05-04 15:20:52	0.43	0.43	0.43	0.55	0.9
71	2020-05-04 15:20:57	0.43	0.43	0.55	0.43	0.73
72	2020-05-04 15:21:02	0.55	0.55	0.34	0.34	0.74
73	2020-05-04 16:27:20	0.55	0.55	0.43	0.55	0.73
74	2020-05-04 16:27:26	0.55	0.43	0.55	0.43	0.74
75	2020-05-04 16:27:31	0.43	0.43	0.43	0.55	0.85
76	2020-05-04 16:27:33	0.34	0.43	0.43	0.34	0.74
77	2020-05-04 16:27:36	0.43	0.34	0.43	0.55	0.9
78	2020-05-04 16:27:38	0.43	0.43	0.43	0.55	0.81
79	2020-05-04 16:27:43	0.34	0.55	0.43	0.55	0.73
80	2020-05-04 16:27:48	0.43	0.34	0.34	0.55	0.73
81	2020-05-04 16:27:53	0.43	0.34	0.55	0.55	0.79
82	2020-05-04 16:27:58	0.34	0.43	0.43	0.43	0.74
83	2020-05-04 16:27:59	0.43	0.43	0.43	0.55	0.79
84	2020-05-04 16:28:03	0.34	0.34	0.34	0.34	0.9
85	2020-05-04 16:28:04	0.55	0.34	0.55	0.43	0.85
86	2020-05-04 16:28:09	0.55	0.34	0.55	0.55	0.73
87	2020-05-04 16:28:14	0.55	0.43	0.34	0.43	0.81
88	2020-05-04 16:28:19	0.34	0.55	0.55	0.34	0.74
89	2020-05-04 16:28:23	0.55	0.55	0.43	0.34	0.81
90	2020-05-04 16:28:24	0.34	0.34	0.43	0.43	0.74
91	2020-05-04 16:28:28	0.55	0.34	0.43	0.43	0.9
92	2020-05-04 16:28:33	0.34	0.43	0.55	0.34	0.85
93	2020-05-04 16:28:38	0.43	0.34	0.55	0.34	0.79
94	2020-05-04 16:28:43	0.43	0.34	0.34	0.34	0.9
95	2020-05-04 16:28:48	0.55	0.55	0.43	0.55	0.85
96	2020-05-04 16:28:53	0.43	0.55	0.55	0.55	0.9
97	2020-05-04 16:28:58	0.55	0.34	0.43	0.43	0.81
98	2020-05-04 16:29:03	0.43	0.55	0.55	0.34	0.85
99	2020-05-04 16:29:08	0.55	0.43	0.55	0.43	0.73
100	2020-05-04 16:29:13	0.55	0.55	0.43	0.43	0.79
101	2020-05-04 16:29:18	0.34	0.34	0.34	0.55	0.74
102	2020-05-04 16:29:23	0.34	0.34	0.34	0.55	0.85
103	2020-05-04 16:29:24	0.43	0.43	0.55	0.55	0.85
104	2020-05-04 16:29:28	0.34	0.34	0.43	0.43	0.9
105	2020-05-04 16:29:29	0.43	0.55	0.55	0.55	0.74
106	2020-05-04 16:29:34	0.43	0.34	0.34	0.55	0.74
107	2020-05-04 16:29:39	0.34	0.34	0.55	0.34	0.79
108	2020-05-04 16:29:44	0.43	0.34	0.43	0.34	0.73
109	2020-05-04 16:29:49	0.43	0.55	0.34	0.43	0.81
110	2020-05-04 16:29:54	0.55	0.43	0.55	0.43	0.85
112	2020-05-04 16:30:04	0.34	0.34	0.55	0.55	0.9
114	2020-05-04 16:30:14	0.55	0.55	0.34	0.34	0.73
116	2020-05-04 16:30:24	0.43	0.43	0.34	0.34	0.73
118	2020-05-04 16:30:34	0.55	0.55	0.55	0.34	0.81
120	2020-05-04 16:30:44	0.55	0.34	0.34	0.55	0.73
122	2020-05-04 16:30:54	0.43	0.55	0.55	0.43	0.73
124	2020-05-04 16:31:04	0.34	0.55	0.43	0.55	0.73
126	2020-05-04 16:31:14	0.34	0.55	0.43	0.55	0.74
128	2020-05-04 16:31:25	0.43	0.55	0.55	0.43	0.74
111	2020-05-04 16:29:59	0.43	0.43	0.34	0.43	0.74
113	2020-05-04 16:30:09	0.34	0.43	0.43	0.34	0.74
115	2020-05-04 16:30:19	0.34	0.55	0.34	0.55	0.9
117	2020-05-04 16:30:29	0.55	0.43	0.43	0.34	0.73
119	2020-05-04 16:30:39	0.55	0.55	0.43	0.43	0.79
121	2020-05-04 16:30:49	0.55	0.43	0.34	0.43	0.85
123	2020-05-04 16:30:59	0.43	0.34	0.43	0.43	0.9
125	2020-05-04 16:31:09	0.34	0.43	0.43	0.43	0.74
127	2020-05-04 16:31:19	0.34	0.55	0.55	0.43	0.73
129	2020-05-04 16:31:30	0.55	0.43	0.43	0.34	0.74
130	2020-05-04 16:31:35	0.34	0.43	0.34	0.43	0.74
131	2020-05-04 16:31:40	0.55	0.55	0.43	0.55	0.9
132	2020-05-04 16:31:45	0.55	0.34	0.43	0.43	0.85
133	2020-05-04 16:31:50	0.43	0.55	0.55	0.43	0.74
134	2020-05-04 16:31:55	0.34	0.34	0.43	0.55	0.81
135	2020-05-04 16:32:00	0.43	0.55	0.55	0.55	0.73
136	2020-05-04 16:32:05	0.43	0.34	0.55	0.55	0.73
137	2020-05-04 16:32:10	0.55	0.43	0.34	0.55	0.81
138	2020-05-04 16:32:15	0.34	0.34	0.55	0.43	0.73
139	2020-05-04 16:32:20	0.55	0.34	0.43	0.43	0.9
140	2020-05-04 16:32:25	0.55	0.43	0.55	0.34	0.73
141	2020-05-04 16:32:30	0.34	0.43	0.34	0.43	0.81
142	2020-05-04 16:32:35	0.43	0.55	0.55	0.34	0.85
143	2020-05-04 16:32:40	0.43	0.43	0.34	0.34	0.74
144	2020-05-04 16:32:45	0.34	0.34	0.55	0.43	0.73
145	2020-05-04 16:32:50	0.43	0.34	0.55	0.55	0.79
146	2020-05-04 16:32:55	0.55	0.43	0.34	0.34	0.81
147	2020-05-04 16:33:00	0.55	0.34	0.43	0.55	0.9
148	2020-05-04 16:33:05	0.55	0.34	0.55	0.55	0.73
149	2020-05-04 16:33:10	0.43	0.34	0.34	0.34	0.74
150	2020-05-04 16:33:15	0.43	0.43	0.43	0.43	0.73
151	2020-05-04 16:33:20	0.34	0.34	0.43	0.34	0.79
152	2020-05-04 16:33:25	0.55	0.34	0.43	0.43	0.73
153	2020-05-04 16:33:30	0.43	0.55	0.55	0.43	0.85
154	2020-05-04 16:33:35	0.34	0.55	0.55	0.43	0.9
155	2020-05-04 16:33:40	0.34	0.55	0.34	0.55	0.73
156	2020-05-04 16:33:45	0.43	0.55	0.34	0.43	0.9
157	2020-05-04 16:33:50	0.34	0.43	0.55	0.34	0.85
158	2020-05-04 16:33:55	0.34	0.43	0.43	0.55	0.81
159	2020-05-04 16:34:00	0.34	0.34	0.43	0.55	0.9
160	2020-05-04 16:34:05	0.55	0.43	0.34	0.43	0.81
161	2020-05-04 16:34:10	0.34	0.55	0.55	0.55	0.81
162	2020-05-04 16:34:15	0.43	0.55	0.55	0.34	0.79
163	2020-05-04 16:34:20	0.55	0.55	0.43	0.43	0.9
164	2020-05-04 16:34:25	0.43	0.55	0.34	0.55	0.81
165	2020-05-04 16:34:30	0.43	0.34	0.55	0.34	0.79
166	2020-05-04 16:34:35	0.55	0.34	0.43	0.55	0.81
167	2020-05-04 16:34:40	0.43	0.34	0.55	0.43	0.74
168	2020-05-04 16:34:45	0.34	0.55	0.34	0.34	0.74
169	2020-05-04 16:34:50	0.34	0.43	0.55	0.34	0.85
170	2020-05-04 16:34:55	0.43	0.34	0.43	0.34	0.85
171	2020-05-04 16:35:00	0.55	0.34	0.55	0.34	0.81
172	2020-05-04 16:35:05	0.43	0.55	0.34	0.34	0.9
173	2020-05-04 16:35:10	0.34	0.43	0.55	0.43	0.73
174	2020-05-04 16:35:15	0.55	0.55	0.43	0.43	0.79
175	2020-05-04 16:35:20	0.55	0.34	0.34	0.34	0.73
176	2020-05-04 16:35:25	0.55	0.55	0.55	0.34	0.9
177	2020-05-04 16:35:30	0.55	0.43	0.43	0.43	0.85
178	2020-05-04 16:35:35	0.55	0.55	0.43	0.43	0.74
179	2020-05-04 16:35:40	0.34	0.55	0.34	0.34	0.74
180	2020-05-04 16:35:45	0.43	0.43	0.55	0.34	0.73
181	2020-05-04 16:35:50	0.55	0.43	0.43	0.43	0.9
182	2020-05-04 16:35:55	0.43	0.43	0.34	0.34	0.79
183	2020-05-04 16:36:00	0.55	0.55	0.43	0.34	0.79
184	2020-05-04 16:36:05	0.43	0.43	0.34	0.55	0.85
185	2020-05-04 16:36:10	0.55	0.34	0.55	0.43	0.74
186	2020-05-04 16:36:15	0.43	0.34	0.43	0.34	0.74
187	2020-05-04 16:36:20	0.55	0.55	0.43	0.34	0.79
188	2020-05-04 16:36:25	0.34	0.55	0.55	0.55	0.73
189	2020-05-04 16:36:30	0.55	0.43	0.34	0.43	0.9
190	2020-05-04 16:36:35	0.34	0.55	0.34	0.34	0.85
191	2020-05-04 16:36:40	0.34	0.55	0.55	0.34	0.73
192	2020-05-04 16:36:45	0.43	0.43	0.55	0.34	0.73
193	2020-05-04 16:36:50	0.34	0.55	0.55	0.34	0.73
194	2020-05-04 16:36:55	0.43	0.34	0.43	0.55	0.85
195	2020-05-04 16:37:00	0.43	0.43	0.43	0.43	0.79
196	2020-05-04 16:37:05	0.43	0.43	0.43	0.34	0.81
197	2020-05-04 16:37:10	0.34	0.43	0.55	0.34	0.81
198	2020-05-04 16:37:15	0.43	0.34	0.43	0.43	0.9
199	2020-05-04 16:37:20	0.55	0.34	0.55	0.55	0.73
200	2020-05-04 16:37:25	0.34	0.34	0.34	0.43	0.79
201	2020-05-04 16:37:30	0.43	0.55	0.55	0.43	0.85
202	2020-05-04 16:37:35	0.55	0.43	0.55	0.43	0.9
203	2020-05-04 16:37:40	0.55	0.55	0.34	0.55	0.9
204	2020-05-05 13:20:54	0.43	0.55	0.43	0.34	0.85
205	2020-05-05 13:20:59	0.43	0.55	0.43	0.34	0.9
206	2020-05-05 13:21:04	0.55	0.34	0.55	0.55	0.85
207	2020-05-05 13:21:09	0.43	0.43	0.34	0.43	0.79
208	2020-05-05 13:21:14	0.43	0.55	0.55	0.55	0.73
209	2020-05-05 13:21:19	0.43	0.43	0.43	0.43	0.74
210	2020-05-05 13:21:24	0.43	0.34	0.55	0.34	0.74
211	2020-05-05 13:21:29	0.43	0.43	0.43	0.34	0.73
212	2020-05-05 13:21:34	0.55	0.43	0.34	0.55	0.9
213	2020-05-05 13:21:39	0.34	0.43	0.34	0.34	0.85
214	2020-05-05 13:21:44	0.55	0.55	0.34	0.43	0.9
215	2020-05-05 13:21:49	0.55	0.55	0.43	0.43	0.79
216	2020-05-05 13:21:54	0.55	0.55	0.43	0.34	0.74
217	2020-05-05 13:21:59	0.55	0.55	0.43	0.55	0.73
218	2020-05-05 13:22:04	0.43	0.34	0.34	0.55	0.85
219	2020-05-05 13:22:09	0.34	0.34	0.34	0.34	0.9
220	2020-05-05 13:22:14	0.34	0.55	0.43	0.55	0.85
221	2020-05-05 13:22:19	0.34	0.34	0.55	0.55	0.74
222	2020-05-05 13:22:24	0.34	0.34	0.43	0.43	0.74
223	2020-05-05 13:22:29	0.43	0.43	0.34	0.55	0.79
224	2020-05-05 13:22:34	0.55	0.55	0.43	0.34	0.74
225	2020-05-05 13:22:39	0.43	0.55	0.34	0.34	0.85
226	2020-05-05 13:22:44	0.43	0.43	0.55	0.34	0.73
227	2020-05-05 13:22:49	0.34	0.43	0.55	0.43	0.85
228	2020-05-05 13:22:54	0.55	0.55	0.55	0.43	0.79
229	2020-05-05 13:22:59	0.34	0.55	0.55	0.43	0.73
234	2020-05-05 13:23:24	0.34	0.34	0.34	0.34	0.81
239	2020-05-05 13:23:49	0.34	0.55	0.55	0.43	0.85
244	2020-05-05 13:24:14	0.34	0.55	0.43	0.43	0.79
249	2020-05-05 13:24:39	0.34	0.34	0.55	0.43	0.9
254	2020-05-05 13:25:04	0.55	0.43	0.55	0.55	0.9
259	2020-05-05 13:25:29	0.43	0.55	0.34	0.43	0.85
264	2020-05-05 13:25:54	0.34	0.34	0.43	0.43	0.9
269	2020-05-05 13:26:19	0.55	0.43	0.34	0.43	0.81
274	2020-05-05 13:26:44	0.34	0.43	0.55	0.43	0.81
279	2020-05-05 13:27:09	0.34	0.43	0.43	0.55	0.74
230	2020-05-05 13:23:04	0.43	0.34	0.55	0.34	0.9
235	2020-05-05 13:23:29	0.43	0.55	0.55	0.55	0.79
240	2020-05-05 13:23:54	0.34	0.34	0.43	0.34	0.74
245	2020-05-05 13:24:19	0.43	0.55	0.43	0.43	0.81
250	2020-05-05 13:24:44	0.43	0.34	0.55	0.34	0.79
255	2020-05-05 13:25:09	0.55	0.43	0.34	0.34	0.81
260	2020-05-05 13:25:34	0.43	0.55	0.55	0.55	0.81
265	2020-05-05 13:25:59	0.43	0.34	0.34	0.34	0.74
270	2020-05-05 13:26:24	0.55	0.55	0.55	0.34	0.81
275	2020-05-05 13:26:49	0.55	0.43	0.55	0.55	0.9
231	2020-05-05 13:23:09	0.43	0.34	0.34	0.55	0.81
236	2020-05-05 13:23:34	0.43	0.43	0.34	0.43	0.9
241	2020-05-05 13:23:59	0.43	0.43	0.55	0.43	0.85
246	2020-05-05 13:24:24	0.43	0.55	0.55	0.43	0.74
251	2020-05-05 13:24:49	0.55	0.43	0.55	0.34	0.73
256	2020-05-05 13:25:14	0.55	0.43	0.43	0.34	0.85
261	2020-05-05 13:25:39	0.43	0.34	0.34	0.55	0.74
266	2020-05-05 13:26:04	0.55	0.55	0.34	0.43	0.81
271	2020-05-05 13:26:29	0.55	0.34	0.43	0.43	0.74
276	2020-05-05 13:26:54	0.43	0.34	0.55	0.34	0.9
232	2020-05-05 13:23:14	0.55	0.43	0.43	0.43	0.79
237	2020-05-05 13:23:39	0.55	0.34	0.55	0.55	0.85
242	2020-05-05 13:24:04	0.34	0.55	0.55	0.43	0.74
247	2020-05-05 13:24:29	0.34	0.55	0.34	0.34	0.73
252	2020-05-05 13:24:54	0.34	0.43	0.43	0.34	0.79
257	2020-05-05 13:25:19	0.55	0.43	0.43	0.43	0.79
262	2020-05-05 13:25:44	0.34	0.55	0.43	0.43	0.85
267	2020-05-05 13:26:09	0.43	0.55	0.43	0.55	0.85
272	2020-05-05 13:26:34	0.34	0.43	0.55	0.55	0.74
277	2020-05-05 13:26:59	0.43	0.34	0.34	0.43	0.85
233	2020-05-05 13:23:19	0.34	0.34	0.43	0.43	0.9
238	2020-05-05 13:23:44	0.55	0.43	0.55	0.34	0.74
243	2020-05-05 13:24:09	0.55	0.43	0.55	0.43	0.81
248	2020-05-05 13:24:34	0.34	0.55	0.43	0.43	0.81
253	2020-05-05 13:24:59	0.34	0.34	0.55	0.55	0.79
258	2020-05-05 13:25:24	0.34	0.34	0.43	0.55	0.73
263	2020-05-05 13:25:49	0.34	0.34	0.34	0.55	0.74
268	2020-05-05 13:26:14	0.34	0.34	0.34	0.43	0.81
273	2020-05-05 13:26:39	0.55	0.34	0.43	0.34	0.81
278	2020-05-05 13:27:04	0.43	0.43	0.43	0.55	0.73
280	2020-05-05 13:27:14	0.34	0.34	0.55	0.34	0.79
281	2020-05-05 13:27:19	0.43	0.34	0.43	0.34	0.79
282	2020-05-05 13:27:24	0.34	0.34	0.43	0.34	0.9
283	2020-05-05 13:27:29	0.43	0.55	0.34	0.34	0.9
284	2020-05-05 13:27:34	0.34	0.34	0.34	0.43	0.9
285	2020-05-05 13:27:39	0.55	0.55	0.43	0.34	0.73
286	2020-05-05 13:27:44	0.34	0.55	0.55	0.55	0.81
287	2020-05-05 13:27:49	0.55	0.34	0.34	0.55	0.79
288	2020-05-05 13:27:54	0.34	0.34	0.43	0.34	0.73
289	2020-05-05 13:27:59	0.43	0.55	0.55	0.55	0.81
290	2020-05-05 13:28:04	0.43	0.34	0.34	0.34	0.79
291	2020-05-05 13:28:09	0.55	0.55	0.34	0.34	0.85
292	2020-05-05 13:28:14	0.34	0.43	0.34	0.34	0.73
293	2020-05-05 13:28:19	0.55	0.55	0.43	0.43	0.73
294	2020-05-05 13:28:24	0.34	0.34	0.55	0.34	0.79
295	2020-05-05 13:28:29	0.55	0.55	0.43	0.55	0.79
296	2020-05-05 13:28:34	0.43	0.55	0.34	0.43	0.74
297	2020-05-05 13:28:39	0.43	0.34	0.43	0.55	0.74
298	2020-05-05 13:28:44	0.55	0.34	0.55	0.55	0.74
299	2020-05-05 13:28:49	0.55	0.43	0.55	0.55	0.73
300	2020-05-05 13:28:54	0.34	0.43	0.34	0.34	0.85
301	2020-05-05 13:28:59	0.34	0.55	0.55	0.43	0.85
302	2020-05-05 13:29:04	0.34	0.43	0.43	0.43	0.85
303	2020-05-05 13:29:09	0.43	0.55	0.55	0.43	0.79
304	2020-05-05 13:29:14	0.43	0.55	0.34	0.34	0.85
305	2020-05-05 13:29:19	0.43	0.34	0.43	0.55	0.79
306	2020-05-05 13:29:24	0.55	0.34	0.34	0.43	0.9
307	2020-05-05 13:29:29	0.43	0.55	0.43	0.34	0.74
308	2020-05-05 13:29:34	0.34	0.43	0.55	0.43	0.85
309	2020-05-05 13:29:39	0.55	0.34	0.43	0.43	0.79
310	2020-05-05 13:29:44	0.55	0.55	0.34	0.43	0.81
311	2020-05-05 13:29:49	0.43	0.55	0.43	0.34	0.85
312	2020-05-05 13:29:54	0.55	0.34	0.34	0.43	0.81
313	2020-05-05 13:29:59	0.55	0.43	0.55	0.43	0.74
314	2020-05-05 13:30:04	0.43	0.34	0.34	0.43	0.74
315	2020-05-05 13:30:09	0.43	0.55	0.43	0.55	0.79
316	2020-05-05 13:30:14	0.43	0.34	0.55	0.43	0.79
317	2020-05-05 13:30:19	0.34	0.43	0.55	0.55	0.74
318	2020-05-05 13:30:24	0.55	0.43	0.43	0.43	0.9
319	2020-05-05 13:30:29	0.43	0.34	0.55	0.34	0.74
320	2020-05-05 13:30:34	0.43	0.43	0.55	0.34	0.79
321	2020-05-05 13:30:39	0.34	0.43	0.55	0.55	0.79
322	2020-05-05 13:30:44	0.55	0.43	0.55	0.43	0.85
323	2020-05-05 13:30:49	0.34	0.55	0.55	0.43	0.81
324	2020-05-05 13:30:54	0.34	0.43	0.55	0.34	0.81
325	2020-05-05 13:30:59	0.55	0.43	0.34	0.34	0.81
326	2020-05-05 13:31:04	0.34	0.34	0.55	0.55	0.81
327	2020-05-05 13:31:09	0.55	0.34	0.34	0.34	0.73
328	2020-05-05 13:31:14	0.43	0.34	0.55	0.43	0.81
329	2020-05-05 13:31:19	0.43	0.43	0.43	0.43	0.81
330	2020-05-05 13:31:24	0.34	0.34	0.55	0.43	0.79
331	2020-05-05 13:31:29	0.43	0.55	0.43	0.55	0.79
332	2020-05-05 13:31:34	0.43	0.43	0.55	0.55	0.73
333	2020-05-05 13:31:39	0.55	0.55	0.55	0.55	0.81
334	2020-05-05 13:31:44	0.34	0.55	0.34	0.34	0.9
335	2020-05-05 13:31:49	0.43	0.43	0.55	0.55	0.85
336	2020-05-05 13:31:54	0.43	0.43	0.55	0.55	0.73
337	2020-05-05 13:31:59	0.55	0.43	0.34	0.34	0.73
338	2020-05-05 13:32:04	0.34	0.55	0.43	0.55	0.81
339	2020-05-05 13:32:09	0.55	0.55	0.34	0.55	0.74
340	2020-05-05 13:32:14	0.43	0.55	0.34	0.34	0.9
341	2020-05-05 13:32:19	0.34	0.55	0.55	0.55	0.79
342	2020-05-05 13:32:24	0.43	0.55	0.43	0.34	0.79
343	2020-05-05 13:32:29	0.43	0.55	0.43	0.55	0.85
344	2020-05-05 13:32:34	0.43	0.55	0.34	0.34	0.81
345	2020-05-05 13:32:39	0.43	0.43	0.43	0.43	0.9
346	2020-05-05 13:32:44	0.55	0.34	0.34	0.43	0.79
347	2020-05-05 13:32:49	0.43	0.43	0.55	0.34	0.79
348	2020-05-05 13:32:54	0.43	0.43	0.43	0.34	0.9
349	2020-05-05 13:32:59	0.55	0.43	0.43	0.55	0.73
350	2020-05-05 13:33:04	0.55	0.55	0.34	0.34	0.9
351	2020-05-05 13:33:09	0.55	0.34	0.55	0.43	0.81
352	2020-05-05 13:33:14	0.43	0.55	0.55	0.43	0.85
353	2020-05-05 13:33:19	0.43	0.34	0.43	0.55	0.81
354	2020-05-05 13:33:24	0.43	0.55	0.55	0.34	0.9
355	2020-05-05 13:33:29	0.55	0.55	0.43	0.43	0.74
356	2020-05-05 13:33:34	0.55	0.43	0.43	0.55	0.9
357	2020-05-05 13:33:39	0.34	0.34	0.34	0.34	0.79
358	2020-05-05 13:33:44	0.55	0.34	0.43	0.34	0.81
359	2020-05-05 13:33:49	0.55	0.43	0.55	0.34	0.81
360	2020-05-05 13:33:54	0.43	0.43	0.55	0.34	0.81
361	2020-05-05 13:33:59	0.34	0.34	0.43	0.43	0.9
362	2020-05-05 13:34:04	0.55	0.43	0.55	0.34	0.73
363	2020-05-05 13:34:09	0.43	0.34	0.34	0.34	0.9
364	2020-05-05 13:34:14	0.43	0.43	0.55	0.43	0.74
365	2020-05-05 13:34:19	0.43	0.34	0.55	0.34	0.74
366	2020-05-05 13:34:24	0.43	0.55	0.43	0.34	0.9
367	2020-05-05 13:34:29	0.43	0.43	0.34	0.34	0.85
368	2020-05-05 13:34:34	0.34	0.55	0.34	0.34	0.9
369	2020-05-05 13:34:39	0.34	0.43	0.34	0.34	0.81
370	2020-05-05 13:34:44	0.34	0.34	0.55	0.55	0.9
371	2020-05-05 13:34:49	0.55	0.43	0.55	0.43	0.73
372	2020-05-05 13:34:54	0.34	0.43	0.55	0.34	0.79
373	2020-05-05 13:34:59	0.55	0.55	0.43	0.55	0.79
374	2020-05-05 13:35:04	0.34	0.34	0.34	0.34	0.73
375	2020-05-05 13:35:09	0.55	0.55	0.43	0.43	0.74
376	2020-05-05 13:35:14	0.55	0.34	0.55	0.55	0.73
377	2020-05-05 13:35:19	0.43	0.43	0.43	0.55	0.74
378	2020-05-05 13:35:24	0.34	0.34	0.43	0.43	0.79
379	2020-05-05 13:35:29	0.34	0.55	0.55	0.34	0.85
384	2020-05-05 13:35:54	0.43	0.34	0.34	0.34	0.74
389	2020-05-05 13:36:19	0.34	0.43	0.55	0.34	0.73
394	2020-05-05 13:36:44	0.34	0.43	0.43	0.55	0.81
399	2020-05-05 13:37:09	0.55	0.34	0.55	0.55	0.79
404	2020-05-05 13:37:34	0.43	0.43	0.55	0.43	0.85
409	2020-05-05 13:37:59	0.55	0.55	0.43	0.55	0.73
414	2020-05-05 13:38:24	0.34	0.43	0.55	0.55	0.74
419	2020-05-05 13:38:49	0.55	0.55	0.43	0.34	0.85
424	2020-05-05 13:39:14	0.43	0.34	0.43	0.43	0.85
429	2020-05-05 13:39:39	0.43	0.43	0.34	0.34	0.73
434	2020-05-05 13:40:04	0.43	0.34	0.55	0.55	0.74
439	2020-05-05 13:40:29	0.55	0.43	0.55	0.34	0.81
444	2020-05-05 13:40:54	0.34	0.34	0.34	0.43	0.81
449	2020-05-05 13:41:19	0.43	0.55	0.55	0.34	0.9
454	2020-05-05 13:41:44	0.43	0.34	0.34	0.55	0.85
459	2020-05-05 13:42:09	0.34	0.34	0.34	0.43	0.9
380	2020-05-05 13:35:34	0.43	0.55	0.43	0.34	0.81
385	2020-05-05 13:35:59	0.43	0.43	0.43	0.55	0.9
390	2020-05-05 13:36:24	0.34	0.34	0.34	0.34	0.79
395	2020-05-05 13:36:49	0.55	0.34	0.43	0.43	0.9
400	2020-05-05 13:37:14	0.43	0.34	0.55	0.43	0.79
405	2020-05-05 13:37:39	0.55	0.34	0.34	0.43	0.81
410	2020-05-05 13:38:04	0.43	0.55	0.43	0.34	0.73
415	2020-05-05 13:38:29	0.34	0.34	0.43	0.55	0.74
420	2020-05-05 13:38:54	0.43	0.34	0.55	0.43	0.73
425	2020-05-05 13:39:19	0.34	0.55	0.34	0.43	0.85
430	2020-05-05 13:39:44	0.34	0.55	0.55	0.34	0.9
435	2020-05-05 13:40:09	0.43	0.43	0.55	0.43	0.74
440	2020-05-05 13:40:34	0.55	0.34	0.55	0.43	0.74
445	2020-05-05 13:40:59	0.55	0.55	0.43	0.43	0.9
450	2020-05-05 13:41:24	0.43	0.55	0.34	0.55	0.9
455	2020-05-05 13:41:49	0.43	0.34	0.34	0.43	0.74
381	2020-05-05 13:35:39	0.43	0.55	0.55	0.55	0.73
386	2020-05-05 13:36:04	0.43	0.34	0.55	0.55	0.73
391	2020-05-05 13:36:29	0.34	0.34	0.34	0.43	0.85
396	2020-05-05 13:36:54	0.55	0.43	0.34	0.55	0.85
401	2020-05-05 13:37:19	0.34	0.34	0.55	0.43	0.85
406	2020-05-05 13:37:44	0.55	0.55	0.43	0.55	0.81
411	2020-05-05 13:38:09	0.34	0.55	0.43	0.43	0.81
416	2020-05-05 13:38:34	0.55	0.55	0.43	0.55	0.81
421	2020-05-05 13:38:59	0.43	0.55	0.55	0.43	0.74
426	2020-05-05 13:39:24	0.34	0.43	0.55	0.43	0.73
431	2020-05-05 13:39:49	0.43	0.43	0.55	0.55	0.79
436	2020-05-05 13:40:14	0.43	0.43	0.34	0.55	0.79
441	2020-05-05 13:40:39	0.55	0.34	0.34	0.43	0.81
446	2020-05-05 13:41:04	0.55	0.55	0.43	0.34	0.74
451	2020-05-05 13:41:29	0.34	0.43	0.43	0.43	0.85
456	2020-05-05 13:41:54	0.34	0.34	0.55	0.43	0.73
382	2020-05-05 13:35:44	0.55	0.34	0.43	0.34	0.79
387	2020-05-05 13:36:09	0.55	0.55	0.55	0.55	0.73
392	2020-05-05 13:36:34	0.55	0.55	0.43	0.55	0.9
397	2020-05-05 13:36:59	0.34	0.34	0.34	0.43	0.85
402	2020-05-05 13:37:24	0.34	0.55	0.55	0.43	0.74
407	2020-05-05 13:37:49	0.55	0.43	0.34	0.34	0.79
412	2020-05-05 13:38:14	0.43	0.34	0.43	0.34	0.74
417	2020-05-05 13:38:39	0.34	0.43	0.34	0.43	0.81
422	2020-05-05 13:39:04	0.34	0.43	0.34	0.34	0.85
427	2020-05-05 13:39:29	0.34	0.55	0.34	0.55	0.74
432	2020-05-05 13:39:54	0.34	0.34	0.43	0.55	0.85
437	2020-05-05 13:40:19	0.34	0.43	0.43	0.55	0.85
442	2020-05-05 13:40:44	0.34	0.34	0.43	0.34	0.73
447	2020-05-05 13:41:09	0.43	0.43	0.55	0.43	0.9
452	2020-05-05 13:41:34	0.34	0.34	0.55	0.55	0.81
457	2020-05-05 13:41:59	0.55	0.34	0.43	0.55	0.73
383	2020-05-05 13:35:49	0.55	0.55	0.43	0.43	0.9
388	2020-05-05 13:36:14	0.55	0.55	0.43	0.43	0.73
393	2020-05-05 13:36:39	0.43	0.34	0.34	0.55	0.9
398	2020-05-05 13:37:04	0.43	0.43	0.55	0.55	0.74
403	2020-05-05 13:37:29	0.34	0.34	0.55	0.34	0.81
408	2020-05-05 13:37:54	0.43	0.34	0.34	0.55	0.79
413	2020-05-05 13:38:19	0.43	0.55	0.55	0.43	0.74
418	2020-05-05 13:38:44	0.43	0.43	0.34	0.34	0.74
423	2020-05-05 13:39:09	0.55	0.55	0.34	0.55	0.85
428	2020-05-05 13:39:34	0.43	0.55	0.43	0.43	0.81
433	2020-05-05 13:39:59	0.43	0.55	0.55	0.34	0.79
438	2020-05-05 13:40:24	0.43	0.55	0.34	0.55	0.79
443	2020-05-05 13:40:49	0.43	0.34	0.34	0.43	0.81
448	2020-05-05 13:41:14	0.34	0.43	0.34	0.43	0.9
453	2020-05-05 13:41:39	0.43	0.43	0.34	0.55	0.79
458	2020-05-05 13:42:04	0.34	0.55	0.55	0.34	0.73
460	2020-05-05 13:42:14	0.34	0.34	0.55	0.55	0.9
461	2020-05-05 13:42:19	0.55	0.34	0.43	0.55	0.74
462	2020-05-05 13:42:24	0.43	0.55	0.55	0.55	0.74
463	2020-05-05 13:42:29	0.55	0.34	0.34	0.43	0.9
464	2020-05-05 13:42:34	0.43	0.43	0.55	0.34	0.73
465	2020-05-05 13:42:39	0.34	0.43	0.34	0.55	0.85
466	2020-05-05 13:42:44	0.55	0.55	0.55	0.55	0.74
467	2020-05-05 13:42:49	0.34	0.55	0.43	0.55	0.85
468	2020-05-05 13:42:54	0.55	0.55	0.34	0.34	0.79
469	2020-05-05 13:42:59	0.55	0.34	0.34	0.34	0.81
470	2020-05-05 13:43:04	0.55	0.43	0.34	0.43	0.74
471	2020-05-05 13:43:09	0.55	0.43	0.34	0.55	0.73
472	2020-05-05 13:43:14	0.34	0.34	0.43	0.55	0.81
473	2020-05-05 13:43:19	0.43	0.43	0.34	0.55	0.79
474	2020-05-05 13:43:24	0.43	0.34	0.55	0.34	0.85
475	2020-05-05 13:43:29	0.34	0.55	0.43	0.34	0.85
476	2020-05-05 13:43:34	0.34	0.34	0.55	0.55	0.9
477	2020-05-05 13:43:39	0.34	0.55	0.34	0.43	0.74
478	2020-05-05 13:43:44	0.34	0.34	0.55	0.43	0.85
479	2020-05-05 13:43:49	0.43	0.43	0.55	0.34	0.85
480	2020-05-05 13:43:54	0.43	0.55	0.43	0.43	0.9
481	2020-05-05 13:43:59	0.43	0.43	0.55	0.43	0.85
482	2020-05-05 13:44:04	0.55	0.34	0.34	0.34	0.79
483	2020-05-05 13:44:09	0.55	0.55	0.34	0.43	0.73
484	2020-05-05 13:44:14	0.34	0.55	0.43	0.43	0.85
485	2020-05-05 13:44:19	0.34	0.34	0.34	0.34	0.85
486	2020-05-05 13:44:24	0.43	0.43	0.43	0.34	0.9
487	2020-05-05 13:44:29	0.55	0.34	0.55	0.34	0.85
488	2020-05-05 13:44:34	0.34	0.34	0.43	0.34	0.74
489	2020-05-05 13:44:39	0.34	0.43	0.55	0.34	0.73
490	2020-05-05 13:44:44	0.55	0.43	0.43	0.43	0.74
491	2020-05-05 13:44:49	0.34	0.34	0.34	0.55	0.74
492	2020-05-05 13:44:54	0.43	0.34	0.43	0.34	0.73
493	2020-05-05 13:44:59	0.43	0.34	0.43	0.34	0.85
494	2020-05-05 13:45:04	0.43	0.55	0.34	0.34	0.81
495	2020-05-05 13:45:09	0.34	0.55	0.34	0.34	0.73
496	2020-05-05 13:45:14	0.34	0.34	0.55	0.43	0.73
497	2020-05-05 13:45:19	0.34	0.34	0.34	0.34	0.9
498	2020-05-05 13:45:24	0.34	0.34	0.55	0.43	0.73
499	2020-05-05 13:45:29	0.43	0.43	0.55	0.43	0.74
500	2020-05-05 13:45:34	0.55	0.43	0.43	0.43	0.74
501	2020-05-05 13:45:39	0.43	0.43	0.55	0.34	0.9
502	2020-05-05 13:45:44	0.55	0.55	0.34	0.43	0.74
503	2020-05-05 13:45:49	0.43	0.55	0.55	0.34	0.9
504	2020-05-05 13:45:54	0.55	0.34	0.34	0.43	0.73
505	2020-05-05 13:45:59	0.43	0.43	0.34	0.34	0.79
506	2020-05-05 13:46:04	0.34	0.43	0.34	0.55	0.81
507	2020-05-05 13:46:09	0.34	0.34	0.34	0.34	0.9
508	2020-05-05 13:46:14	0.55	0.43	0.34	0.43	0.81
509	2020-05-05 13:46:19	0.34	0.43	0.55	0.43	0.79
510	2020-05-05 13:46:24	0.34	0.34	0.34	0.55	0.74
511	2020-05-05 13:46:29	0.34	0.43	0.55	0.55	0.9
512	2020-05-05 13:46:34	0.43	0.43	0.34	0.34	0.85
513	2020-05-05 13:46:39	0.55	0.43	0.55	0.34	0.81
514	2020-05-05 13:46:44	0.34	0.55	0.43	0.43	0.74
515	2020-05-05 13:46:49	0.55	0.34	0.34	0.43	0.74
516	2020-05-05 13:46:54	0.34	0.55	0.34	0.55	0.9
517	2020-05-05 13:46:59	0.43	0.55	0.43	0.34	0.74
518	2020-05-05 13:47:04	0.55	0.55	0.43	0.55	0.81
519	2020-05-05 13:47:09	0.55	0.43	0.43	0.34	0.73
520	2020-05-05 13:47:14	0.43	0.34	0.43	0.43	0.74
521	2020-05-05 13:47:19	0.34	0.43	0.34	0.55	0.81
522	2020-05-05 13:47:24	0.43	0.43	0.43	0.43	0.79
523	2020-05-05 13:47:29	0.43	0.55	0.43	0.55	0.9
524	2020-05-05 13:47:34	0.55	0.55	0.34	0.43	0.73
525	2020-05-05 13:47:39	0.55	0.43	0.34	0.34	0.9
526	2020-05-05 13:47:44	0.43	0.43	0.34	0.43	0.73
527	2020-05-05 13:47:49	0.43	0.43	0.34	0.34	0.9
528	2020-05-05 13:47:54	0.34	0.43	0.43	0.34	0.85
529	2020-05-05 13:47:59	0.34	0.43	0.43	0.43	0.79
530	2020-05-05 13:48:04	0.55	0.55	0.55	0.34	0.9
531	2020-05-05 13:48:09	0.55	0.55	0.34	0.55	0.73
532	2020-05-05 13:48:14	0.34	0.34	0.55	0.43	0.73
533	2020-05-05 13:48:20	0.43	0.55	0.34	0.43	0.85
534	2020-05-05 13:48:25	0.55	0.34	0.34	0.34	0.85
535	2020-05-05 13:48:30	0.55	0.34	0.34	0.34	0.81
536	2020-05-05 13:48:35	0.43	0.34	0.43	0.34	0.85
537	2020-05-05 13:48:40	0.34	0.34	0.34	0.55	0.9
538	2020-05-05 13:48:45	0.34	0.55	0.55	0.43	0.81
539	2020-05-05 13:48:50	0.34	0.55	0.43	0.43	0.9
540	2020-05-05 13:48:55	0.34	0.34	0.43	0.43	0.85
541	2020-05-05 13:49:00	0.34	0.55	0.55	0.55	0.81
542	2020-05-05 13:49:05	0.34	0.55	0.34	0.55	0.73
543	2020-05-05 13:49:10	0.43	0.55	0.55	0.34	0.74
544	2020-05-05 13:49:15	0.43	0.55	0.55	0.55	0.79
545	2020-05-05 13:49:20	0.43	0.55	0.34	0.55	0.81
546	2020-05-05 13:49:25	0.55	0.55	0.43	0.43	0.79
547	2020-05-05 13:49:30	0.34	0.43	0.34	0.34	0.85
548	2020-05-05 13:49:35	0.43	0.43	0.43	0.55	0.81
549	2020-05-05 13:49:40	0.34	0.43	0.43	0.34	0.74
550	2020-05-05 13:49:45	0.43	0.34	0.55	0.55	0.9
551	2020-05-05 13:49:50	0.55	0.43	0.34	0.34	0.79
552	2020-05-05 13:49:55	0.34	0.55	0.43	0.34	0.81
553	2020-05-05 13:50:00	0.34	0.34	0.43	0.55	0.9
554	2020-05-05 13:50:05	0.55	0.43	0.55	0.34	0.74
555	2020-05-05 13:50:10	0.34	0.34	0.43	0.43	0.9
556	2020-05-05 13:50:15	0.55	0.43	0.43	0.55	0.79
557	2020-05-05 13:50:20	0.55	0.34	0.43	0.55	0.81
558	2020-05-05 13:50:25	0.34	0.43	0.34	0.43	0.74
559	2020-05-05 13:50:30	0.43	0.34	0.34	0.43	0.73
560	2020-05-05 13:50:35	0.43	0.43	0.55	0.43	0.73
561	2020-05-05 13:50:40	0.43	0.55	0.55	0.43	0.74
562	2020-05-05 13:50:45	0.34	0.43	0.43	0.43	0.81
563	2020-05-05 13:50:50	0.43	0.55	0.34	0.55	0.9
564	2020-05-05 13:50:55	0.43	0.34	0.34	0.43	0.9
565	2020-05-05 13:51:00	0.43	0.43	0.43	0.55	0.81
566	2020-05-05 13:51:05	0.55	0.43	0.55	0.55	0.73
567	2020-05-05 13:51:10	0.55	0.55	0.55	0.55	0.81
568	2020-05-05 13:51:15	0.55	0.43	0.55	0.43	0.73
569	2020-05-05 13:51:20	0.43	0.34	0.34	0.55	0.73
570	2020-05-05 13:51:25	0.43	0.55	0.55	0.34	0.9
571	2020-05-05 13:51:30	0.55	0.43	0.34	0.55	0.79
572	2020-05-05 13:51:35	0.55	0.55	0.43	0.43	0.9
573	2020-05-05 13:51:40	0.55	0.43	0.43	0.55	0.74
574	2020-05-05 13:51:45	0.34	0.43	0.43	0.55	0.9
575	2020-05-05 13:51:50	0.34	0.55	0.43	0.55	0.9
576	2020-05-05 13:51:55	0.34	0.34	0.55	0.43	0.74
577	2020-05-05 13:52:00	0.55	0.34	0.34	0.34	0.85
578	2020-05-05 13:52:05	0.55	0.34	0.34	0.34	0.81
579	2020-05-05 13:52:10	0.43	0.34	0.43	0.34	0.85
580	2020-05-05 13:52:15	0.55	0.34	0.55	0.55	0.81
581	2020-05-05 13:52:20	0.34	0.43	0.55	0.34	0.81
582	2020-05-05 13:52:25	0.34	0.34	0.55	0.55	0.73
583	2020-05-05 13:52:30	0.34	0.34	0.55	0.55	0.73
584	2020-05-05 13:52:35	0.43	0.34	0.43	0.43	0.9
585	2020-05-05 13:52:40	0.34	0.34	0.43	0.34	0.81
586	2020-05-05 13:52:45	0.55	0.55	0.55	0.34	0.74
587	2020-05-05 13:52:50	0.55	0.34	0.34	0.34	0.79
588	2020-05-05 13:52:55	0.34	0.43	0.34	0.43	0.9
589	2020-05-05 13:53:00	0.55	0.34	0.34	0.34	0.81
590	2020-05-05 13:53:05	0.34	0.43	0.43	0.43	0.73
591	2020-05-05 13:53:10	0.43	0.34	0.55	0.55	0.85
592	2020-05-05 13:53:15	0.55	0.34	0.43	0.55	0.81
593	2020-05-05 13:53:20	0.55	0.34	0.55	0.55	0.85
594	2020-05-05 13:53:25	0.34	0.34	0.34	0.55	0.85
595	2020-05-05 13:53:30	0.34	0.55	0.55	0.43	0.81
596	2020-05-05 13:53:35	0.34	0.55	0.43	0.43	0.79
597	2020-05-05 13:53:40	0.34	0.34	0.43	0.34	0.9
598	2020-05-05 13:53:45	0.34	0.43	0.34	0.43	0.79
599	2020-05-05 13:53:50	0.34	0.55	0.43	0.34	0.79
600	2020-05-05 13:53:55	0.43	0.34	0.34	0.43	0.9
601	2020-05-05 13:54:00	0.55	0.43	0.55	0.43	0.81
602	2020-05-05 13:54:05	0.43	0.34	0.55	0.43	0.74
603	2020-05-05 13:54:10	0.55	0.34	0.55	0.43	0.81
604	2020-05-05 13:54:15	0.34	0.43	0.34	0.55	0.73
605	2020-05-05 13:54:20	0.34	0.34	0.34	0.43	0.9
606	2020-05-05 13:54:25	0.34	0.34	0.43	0.43	0.74
607	2020-05-05 13:54:30	0.55	0.55	0.43	0.43	0.81
608	2020-05-05 13:54:35	0.55	0.43	0.34	0.43	0.9
609	2020-05-05 13:54:40	0.34	0.43	0.34	0.43	0.74
610	2020-05-05 13:54:45	0.34	0.55	0.43	0.34	0.73
611	2020-05-05 13:54:50	0.43	0.43	0.43	0.55	0.85
612	2020-05-05 13:54:55	0.55	0.55	0.55	0.55	0.79
613	2020-05-05 13:55:00	0.55	0.34	0.55	0.43	0.85
614	2020-05-05 13:55:05	0.55	0.43	0.34	0.55	0.9
615	2020-05-05 13:55:10	0.55	0.34	0.43	0.34	0.81
616	2020-05-05 13:55:15	0.43	0.55	0.34	0.43	0.9
617	2020-05-05 13:55:20	0.34	0.43	0.34	0.34	0.79
618	2020-05-05 13:55:25	0.34	0.55	0.43	0.43	0.74
619	2020-05-05 13:55:30	0.43	0.34	0.43	0.55	0.81
620	2020-05-05 13:55:35	0.43	0.34	0.43	0.55	0.81
621	2020-05-05 13:55:40	0.34	0.55	0.34	0.43	0.73
622	2020-05-05 13:55:45	0.43	0.43	0.55	0.34	0.79
623	2020-05-05 13:55:50	0.55	0.43	0.43	0.43	0.73
624	2020-05-05 13:55:55	0.34	0.55	0.55	0.43	0.9
625	2020-05-05 13:56:00	0.55	0.34	0.55	0.55	0.85
626	2020-05-05 13:56:05	0.34	0.43	0.55	0.55	0.81
627	2020-05-05 13:56:10	0.43	0.55	0.34	0.34	0.79
628	2020-05-05 13:56:15	0.43	0.34	0.34	0.55	0.9
629	2020-05-05 13:56:20	0.43	0.43	0.34	0.43	0.81
630	2020-05-05 13:56:25	0.43	0.43	0.55	0.34	0.85
631	2020-05-05 13:56:30	0.34	0.55	0.34	0.34	0.85
632	2020-05-05 13:56:35	0.55	0.43	0.55	0.55	0.85
633	2020-05-05 13:56:40	0.55	0.34	0.43	0.43	0.81
634	2020-05-05 13:56:45	0.55	0.43	0.55	0.55	0.79
635	2020-05-05 13:56:50	0.55	0.55	0.43	0.55	0.9
636	2020-05-05 13:56:55	0.55	0.43	0.55	0.34	0.73
637	2020-05-05 13:57:00	0.34	0.55	0.43	0.34	0.73
638	2020-05-05 13:57:05	0.55	0.34	0.55	0.55	0.73
639	2020-05-05 13:57:10	0.43	0.55	0.34	0.43	0.85
640	2020-05-05 13:57:15	0.55	0.55	0.43	0.55	0.79
641	2020-05-05 13:57:20	0.55	0.55	0.34	0.43	0.74
642	2020-05-05 13:57:25	0.43	0.43	0.55	0.34	0.81
643	2020-05-05 13:57:30	0.34	0.55	0.43	0.43	0.9
644	2020-05-05 13:57:35	0.55	0.43	0.43	0.55	0.9
645	2020-05-05 13:57:40	0.43	0.43	0.34	0.34	0.73
646	2020-05-05 13:57:45	0.43	0.55	0.34	0.43	0.79
647	2020-05-05 13:57:50	0.43	0.55	0.34	0.34	0.79
648	2020-05-05 13:57:55	0.34	0.43	0.55	0.43	0.74
649	2020-05-05 13:58:00	0.34	0.55	0.55	0.55	0.79
650	2020-05-05 13:58:05	0.43	0.43	0.43	0.55	0.74
651	2020-05-05 13:58:10	0.43	0.55	0.55	0.43	0.85
652	2020-05-05 13:58:15	0.55	0.34	0.55	0.34	0.79
653	2020-05-05 13:58:20	0.34	0.55	0.55	0.43	0.74
654	2020-05-05 13:58:25	0.34	0.43	0.43	0.43	0.74
655	2020-05-05 13:58:30	0.34	0.55	0.34	0.34	0.81
656	2020-05-05 13:58:35	0.55	0.55	0.55	0.43	0.85
657	2020-05-05 13:58:40	0.34	0.55	0.55	0.43	0.79
658	2020-05-05 13:58:45	0.55	0.34	0.34	0.43	0.9
659	2020-05-05 13:58:50	0.34	0.43	0.43	0.55	0.73
660	2020-05-05 13:58:55	0.34	0.55	0.34	0.34	0.79
661	2020-05-05 13:59:00	0.43	0.55	0.43	0.43	0.9
662	2020-05-05 13:59:05	0.43	0.34	0.55	0.34	0.85
663	2020-05-05 13:59:10	0.34	0.34	0.34	0.55	0.9
894	2020-05-05 14:18:26	0.55	0.55	0.34	0.43	0.9
664	2020-05-05 13:59:15	0.55	0.55	0.55	0.43	0.79
665	2020-05-05 13:59:20	0.34	0.55	0.55	0.55	0.73
666	2020-05-05 13:59:25	0.34	0.55	0.55	0.34	0.73
667	2020-05-05 13:59:30	0.55	0.55	0.55	0.55	0.79
668	2020-05-05 13:59:35	0.34	0.43	0.55	0.34	0.85
669	2020-05-05 13:59:40	0.55	0.55	0.43	0.55	0.79
670	2020-05-05 13:59:45	0.34	0.55	0.55	0.34	0.79
671	2020-05-05 13:59:50	0.34	0.55	0.43	0.34	0.79
672	2020-05-05 13:59:55	0.34	0.55	0.43	0.43	0.74
673	2020-05-05 14:00:00	0.34	0.55	0.34	0.43	0.85
674	2020-05-05 14:00:05	0.55	0.34	0.43	0.55	0.85
675	2020-05-05 14:00:10	0.55	0.43	0.55	0.55	0.73
676	2020-05-05 14:00:15	0.34	0.43	0.43	0.55	0.85
677	2020-05-05 14:00:20	0.55	0.43	0.55	0.34	0.81
678	2020-05-05 14:00:25	0.43	0.34	0.55	0.43	0.85
679	2020-05-05 14:00:30	0.43	0.43	0.34	0.55	0.9
680	2020-05-05 14:00:35	0.43	0.55	0.43	0.34	0.73
681	2020-05-05 14:00:40	0.34	0.55	0.55	0.55	0.74
682	2020-05-05 14:00:45	0.34	0.43	0.55	0.43	0.85
683	2020-05-05 14:00:50	0.34	0.55	0.55	0.43	0.85
684	2020-05-05 14:00:55	0.55	0.34	0.55	0.55	0.85
685	2020-05-05 14:01:00	0.34	0.55	0.34	0.34	0.81
686	2020-05-05 14:01:05	0.55	0.43	0.55	0.43	0.85
687	2020-05-05 14:01:10	0.43	0.34	0.34	0.55	0.81
688	2020-05-05 14:01:15	0.34	0.55	0.43	0.43	0.85
689	2020-05-05 14:01:20	0.34	0.43	0.55	0.43	0.73
690	2020-05-05 14:01:25	0.34	0.55	0.34	0.43	0.73
691	2020-05-05 14:01:30	0.43	0.43	0.34	0.55	0.74
692	2020-05-05 14:01:35	0.55	0.43	0.55	0.55	0.81
693	2020-05-05 14:01:40	0.34	0.34	0.43	0.43	0.73
694	2020-05-05 14:01:45	0.34	0.34	0.43	0.43	0.85
695	2020-05-05 14:01:50	0.43	0.34	0.34	0.43	0.79
696	2020-05-05 14:01:55	0.43	0.34	0.43	0.43	0.79
697	2020-05-05 14:02:00	0.34	0.34	0.55	0.43	0.9
698	2020-05-05 14:02:05	0.43	0.43	0.55	0.34	0.9
699	2020-05-05 14:02:10	0.34	0.34	0.43	0.43	0.85
700	2020-05-05 14:02:15	0.34	0.34	0.55	0.43	0.9
701	2020-05-05 14:02:20	0.34	0.34	0.34	0.34	0.85
702	2020-05-05 14:02:25	0.43	0.43	0.55	0.43	0.79
703	2020-05-05 14:02:30	0.34	0.34	0.43	0.43	0.74
704	2020-05-05 14:02:35	0.43	0.43	0.34	0.55	0.79
705	2020-05-05 14:02:40	0.34	0.55	0.43	0.34	0.74
706	2020-05-05 14:02:45	0.34	0.55	0.43	0.34	0.81
707	2020-05-05 14:02:50	0.43	0.43	0.34	0.43	0.81
708	2020-05-05 14:02:55	0.34	0.43	0.55	0.34	0.74
709	2020-05-05 14:03:00	0.55	0.43	0.55	0.43	0.73
710	2020-05-05 14:03:05	0.55	0.34	0.43	0.43	0.73
711	2020-05-05 14:03:10	0.34	0.34	0.43	0.55	0.81
712	2020-05-05 14:03:15	0.55	0.55	0.34	0.55	0.79
713	2020-05-05 14:03:20	0.43	0.34	0.55	0.55	0.73
714	2020-05-05 14:03:25	0.55	0.43	0.43	0.43	0.79
715	2020-05-05 14:03:30	0.43	0.43	0.34	0.43	0.79
716	2020-05-05 14:03:35	0.55	0.43	0.34	0.55	0.79
717	2020-05-05 14:03:40	0.55	0.34	0.55	0.34	0.79
718	2020-05-05 14:03:45	0.55	0.55	0.34	0.43	0.85
719	2020-05-05 14:03:50	0.34	0.55	0.55	0.55	0.81
720	2020-05-05 14:03:55	0.34	0.43	0.43	0.43	0.81
721	2020-05-05 14:04:00	0.43	0.34	0.55	0.34	0.81
722	2020-05-05 14:04:05	0.34	0.55	0.55	0.34	0.9
723	2020-05-05 14:04:10	0.34	0.34	0.43	0.55	0.74
724	2020-05-05 14:04:15	0.34	0.43	0.43	0.34	0.73
725	2020-05-05 14:04:20	0.34	0.55	0.34	0.34	0.74
726	2020-05-05 14:04:25	0.55	0.55	0.43	0.43	0.79
727	2020-05-05 14:04:30	0.34	0.43	0.43	0.43	0.79
728	2020-05-05 14:04:35	0.34	0.55	0.43	0.55	0.81
729	2020-05-05 14:04:40	0.55	0.43	0.55	0.43	0.9
730	2020-05-05 14:04:45	0.43	0.34	0.43	0.43	0.85
731	2020-05-05 14:04:50	0.55	0.55	0.34	0.34	0.81
732	2020-05-05 14:04:55	0.34	0.55	0.43	0.34	0.81
733	2020-05-05 14:05:00	0.34	0.34	0.34	0.43	0.81
734	2020-05-05 14:05:05	0.43	0.34	0.34	0.55	0.9
735	2020-05-05 14:05:10	0.55	0.43	0.43	0.34	0.73
736	2020-05-05 14:05:15	0.55	0.55	0.43	0.43	0.74
737	2020-05-05 14:05:20	0.43	0.55	0.55	0.43	0.79
738	2020-05-05 14:05:25	0.55	0.55	0.43	0.43	0.74
739	2020-05-05 14:05:30	0.43	0.34	0.43	0.34	0.9
740	2020-05-05 14:05:35	0.34	0.43	0.43	0.34	0.79
741	2020-05-05 14:05:40	0.55	0.55	0.43	0.55	0.85
742	2020-05-05 14:05:45	0.55	0.34	0.43	0.55	0.79
743	2020-05-05 14:05:50	0.55	0.55	0.43	0.43	0.85
744	2020-05-05 14:05:55	0.34	0.34	0.34	0.55	0.73
745	2020-05-05 14:06:00	0.55	0.34	0.34	0.55	0.73
746	2020-05-05 14:06:05	0.55	0.55	0.55	0.34	0.79
747	2020-05-05 14:06:10	0.43	0.43	0.43	0.34	0.85
748	2020-05-05 14:06:15	0.43	0.43	0.43	0.55	0.81
749	2020-05-05 14:06:20	0.55	0.34	0.43	0.43	0.85
750	2020-05-05 14:06:25	0.43	0.43	0.55	0.34	0.79
751	2020-05-05 14:06:30	0.34	0.55	0.55	0.55	0.9
752	2020-05-05 14:06:35	0.55	0.43	0.43	0.55	0.85
753	2020-05-05 14:06:40	0.55	0.43	0.43	0.43	0.85
754	2020-05-05 14:06:45	0.43	0.34	0.43	0.55	0.79
755	2020-05-05 14:06:50	0.34	0.55	0.55	0.43	0.74
756	2020-05-05 14:06:55	0.34	0.43	0.34	0.34	0.73
757	2020-05-05 14:07:00	0.43	0.34	0.34	0.34	0.81
758	2020-05-05 14:07:05	0.55	0.43	0.55	0.34	0.81
759	2020-05-05 14:07:10	0.55	0.55	0.43	0.43	0.73
760	2020-05-05 14:07:15	0.43	0.34	0.34	0.43	0.85
761	2020-05-05 14:07:20	0.55	0.34	0.55	0.55	0.73
762	2020-05-05 14:07:25	0.43	0.43	0.43	0.55	0.85
763	2020-05-05 14:07:30	0.43	0.43	0.34	0.43	0.9
764	2020-05-05 14:07:35	0.34	0.43	0.55	0.55	0.73
765	2020-05-05 14:07:40	0.55	0.34	0.43	0.55	0.9
766	2020-05-05 14:07:45	0.43	0.55	0.55	0.55	0.74
767	2020-05-05 14:07:50	0.43	0.55	0.43	0.55	0.9
768	2020-05-05 14:07:55	0.55	0.43	0.43	0.55	0.79
769	2020-05-05 14:08:00	0.55	0.55	0.43	0.55	0.9
770	2020-05-05 14:08:05	0.34	0.43	0.34	0.43	0.81
771	2020-05-05 14:08:10	0.55	0.55	0.43	0.34	0.74
772	2020-05-05 14:08:15	0.34	0.34	0.55	0.43	0.79
777	2020-05-05 14:08:40	0.34	0.43	0.55	0.55	0.81
782	2020-05-05 14:09:05	0.55	0.43	0.55	0.34	0.9
773	2020-05-05 14:08:20	0.34	0.34	0.34	0.34	0.79
778	2020-05-05 14:08:45	0.34	0.55	0.34	0.43	0.9
783	2020-05-05 14:09:10	0.55	0.55	0.43	0.55	0.73
774	2020-05-05 14:08:25	0.43	0.55	0.43	0.43	0.81
779	2020-05-05 14:08:50	0.55	0.34	0.43	0.43	0.73
775	2020-05-05 14:08:30	0.34	0.43	0.55	0.43	0.81
780	2020-05-05 14:08:55	0.55	0.43	0.34	0.34	0.73
776	2020-05-05 14:08:35	0.55	0.55	0.55	0.43	0.79
781	2020-05-05 14:09:00	0.55	0.34	0.34	0.34	0.85
784	2020-05-05 14:09:15	0.34	0.43	0.43	0.34	0.74
785	2020-05-05 14:09:20	0.55	0.34	0.55	0.43	0.79
786	2020-05-05 14:09:25	0.43	0.34	0.43	0.34	0.9
787	2020-05-05 14:09:30	0.43	0.43	0.43	0.55	0.85
788	2020-05-05 14:09:35	0.34	0.43	0.55	0.55	0.9
789	2020-05-05 14:09:40	0.55	0.43	0.34	0.55	0.74
790	2020-05-05 14:09:45	0.34	0.55	0.43	0.34	0.73
791	2020-05-05 14:09:50	0.55	0.43	0.43	0.34	0.9
792	2020-05-05 14:09:55	0.43	0.34	0.34	0.55	0.73
793	2020-05-05 14:10:00	0.34	0.34	0.43	0.43	0.85
794	2020-05-05 14:10:05	0.55	0.43	0.43	0.34	0.73
795	2020-05-05 14:10:10	0.55	0.34	0.55	0.55	0.79
796	2020-05-05 14:10:15	0.55	0.55	0.43	0.34	0.79
797	2020-05-05 14:10:20	0.34	0.43	0.34	0.43	0.81
798	2020-05-05 14:10:25	0.34	0.55	0.34	0.43	0.9
799	2020-05-05 14:10:30	0.43	0.34	0.55	0.43	0.81
800	2020-05-05 14:10:35	0.55	0.34	0.43	0.34	0.74
801	2020-05-05 14:10:40	0.43	0.43	0.34	0.43	0.79
802	2020-05-05 14:10:45	0.34	0.43	0.34	0.55	0.9
803	2020-05-05 14:10:50	0.43	0.55	0.55	0.34	0.73
804	2020-05-05 14:10:55	0.34	0.43	0.43	0.43	0.85
805	2020-05-05 14:11:00	0.55	0.55	0.43	0.55	0.9
806	2020-05-05 14:11:05	0.34	0.34	0.43	0.55	0.73
807	2020-05-05 14:11:10	0.43	0.43	0.43	0.55	0.81
808	2020-05-05 14:11:15	0.43	0.43	0.34	0.55	0.74
809	2020-05-05 14:11:20	0.34	0.34	0.55	0.34	0.74
810	2020-05-05 14:11:25	0.55	0.43	0.43	0.55	0.81
811	2020-05-05 14:11:30	0.34	0.55	0.55	0.55	0.79
812	2020-05-05 14:11:35	0.55	0.43	0.34	0.55	0.74
813	2020-05-05 14:11:40	0.55	0.34	0.43	0.43	0.73
814	2020-05-05 14:11:45	0.43	0.34	0.43	0.55	0.74
815	2020-05-05 14:11:50	0.43	0.34	0.34	0.34	0.9
816	2020-05-05 14:11:55	0.55	0.55	0.34	0.55	0.81
817	2020-05-05 14:12:00	0.43	0.55	0.43	0.55	0.73
818	2020-05-05 14:12:05	0.55	0.34	0.55	0.43	0.74
819	2020-05-05 14:12:10	0.34	0.43	0.34	0.34	0.9
820	2020-05-05 14:12:15	0.43	0.43	0.34	0.55	0.9
821	2020-05-05 14:12:20	0.55	0.43	0.34	0.55	0.9
822	2020-05-05 14:12:25	0.55	0.43	0.34	0.55	0.81
823	2020-05-05 14:12:30	0.34	0.55	0.55	0.34	0.81
824	2020-05-05 14:12:35	0.43	0.43	0.55	0.43	0.79
825	2020-05-05 14:12:40	0.34	0.55	0.43	0.55	0.79
826	2020-05-05 14:12:45	0.55	0.55	0.43	0.34	0.73
827	2020-05-05 14:12:50	0.34	0.55	0.55	0.43	0.9
828	2020-05-05 14:12:55	0.43	0.55	0.55	0.34	0.74
829	2020-05-05 14:13:00	0.34	0.55	0.34	0.34	0.81
830	2020-05-05 14:13:05	0.34	0.43	0.43	0.34	0.79
831	2020-05-05 14:13:10	0.43	0.34	0.34	0.55	0.81
832	2020-05-05 14:13:15	0.43	0.34	0.55	0.55	0.81
833	2020-05-05 14:13:20	0.43	0.43	0.55	0.34	0.9
834	2020-05-05 14:13:25	0.43	0.55	0.34	0.43	0.79
835	2020-05-05 14:13:30	0.43	0.43	0.43	0.34	0.79
836	2020-05-05 14:13:35	0.34	0.55	0.43	0.43	0.79
837	2020-05-05 14:13:40	0.34	0.55	0.55	0.34	0.74
838	2020-05-05 14:13:45	0.55	0.55	0.34	0.34	0.85
839	2020-05-05 14:13:50	0.43	0.55	0.43	0.34	0.81
840	2020-05-05 14:13:55	0.34	0.55	0.55	0.34	0.85
841	2020-05-05 14:14:00	0.55	0.55	0.34	0.34	0.74
842	2020-05-05 14:14:05	0.43	0.55	0.55	0.55	0.85
843	2020-05-05 14:14:10	0.55	0.34	0.55	0.43	0.81
844	2020-05-05 14:14:15	0.43	0.43	0.34	0.43	0.81
845	2020-05-05 14:14:20	0.43	0.43	0.55	0.34	0.79
846	2020-05-05 14:14:25	0.55	0.34	0.55	0.55	0.81
847	2020-05-05 14:14:30	0.43	0.43	0.34	0.55	0.74
848	2020-05-05 14:14:35	0.34	0.43	0.55	0.34	0.81
849	2020-05-05 14:14:40	0.55	0.34	0.43	0.43	0.74
850	2020-05-05 14:14:45	0.34	0.55	0.43	0.43	0.81
851	2020-05-05 14:14:50	0.34	0.55	0.55	0.34	0.81
852	2020-05-05 14:14:55	0.55	0.34	0.43	0.43	0.9
853	2020-05-05 14:15:00	0.34	0.55	0.43	0.55	0.81
854	2020-05-05 14:15:05	0.43	0.34	0.34	0.43	0.73
855	2020-05-05 14:15:10	0.43	0.55	0.43	0.55	0.9
856	2020-05-05 14:15:15	0.55	0.34	0.43	0.43	0.79
857	2020-05-05 14:15:20	0.55	0.34	0.34	0.43	0.81
858	2020-05-05 14:15:25	0.43	0.43	0.34	0.43	0.9
859	2020-05-05 14:15:30	0.43	0.55	0.55	0.34	0.73
860	2020-05-05 14:15:35	0.34	0.55	0.55	0.43	0.74
861	2020-05-05 14:15:40	0.43	0.43	0.43	0.55	0.79
862	2020-05-05 14:15:45	0.55	0.43	0.43	0.43	0.9
863	2020-05-05 14:15:50	0.55	0.55	0.55	0.55	0.79
864	2020-05-05 14:15:56	0.34	0.43	0.34	0.43	0.81
865	2020-05-05 14:16:01	0.55	0.55	0.34	0.43	0.73
866	2020-05-05 14:16:06	0.55	0.43	0.55	0.43	0.74
867	2020-05-05 14:16:11	0.55	0.55	0.34	0.34	0.74
868	2020-05-05 14:16:16	0.55	0.34	0.55	0.55	0.79
869	2020-05-05 14:16:21	0.55	0.34	0.34	0.55	0.85
870	2020-05-05 14:16:26	0.43	0.34	0.43	0.55	0.81
871	2020-05-05 14:16:31	0.43	0.43	0.43	0.55	0.85
872	2020-05-05 14:16:36	0.43	0.34	0.55	0.34	0.85
873	2020-05-05 14:16:41	0.55	0.43	0.55	0.34	0.9
874	2020-05-05 14:16:46	0.43	0.34	0.55	0.55	0.74
875	2020-05-05 14:16:51	0.43	0.55	0.55	0.55	0.85
876	2020-05-05 14:16:56	0.43	0.43	0.55	0.34	0.9
877	2020-05-05 14:17:01	0.55	0.43	0.43	0.55	0.79
878	2020-05-05 14:17:06	0.43	0.55	0.34	0.55	0.81
879	2020-05-05 14:17:11	0.34	0.43	0.34	0.55	0.74
880	2020-05-05 14:17:16	0.43	0.43	0.34	0.43	0.9
881	2020-05-05 14:17:21	0.34	0.34	0.43	0.34	0.74
882	2020-05-05 14:17:26	0.55	0.43	0.34	0.55	0.81
883	2020-05-05 14:17:31	0.34	0.55	0.55	0.34	0.81
884	2020-05-05 14:17:36	0.55	0.55	0.43	0.43	0.81
885	2020-05-05 14:17:41	0.43	0.43	0.55	0.43	0.73
886	2020-05-05 14:17:46	0.55	0.34	0.34	0.43	0.85
887	2020-05-05 14:17:51	0.34	0.43	0.55	0.43	0.74
888	2020-05-05 14:17:56	0.34	0.43	0.43	0.55	0.81
889	2020-05-05 14:18:01	0.34	0.43	0.43	0.43	0.9
890	2020-05-05 14:18:06	0.55	0.34	0.43	0.43	0.79
891	2020-05-05 14:18:11	0.34	0.43	0.34	0.34	0.73
896	2020-05-05 14:18:36	0.43	0.43	0.55	0.34	0.74
901	2020-05-05 14:19:01	0.34	0.43	0.43	0.55	0.79
906	2020-05-05 14:19:26	0.43	0.55	0.55	0.55	0.81
911	2020-05-05 14:19:51	0.43	0.34	0.55	0.43	0.85
892	2020-05-05 14:18:16	0.43	0.55	0.34	0.43	0.79
897	2020-05-05 14:18:41	0.43	0.55	0.34	0.34	0.73
902	2020-05-05 14:19:06	0.43	0.34	0.55	0.43	0.85
907	2020-05-05 14:19:31	0.43	0.43	0.55	0.43	0.85
912	2020-05-05 14:19:56	0.43	0.55	0.43	0.55	0.73
893	2020-05-05 14:18:21	0.34	0.43	0.55	0.34	0.79
898	2020-05-05 14:18:46	0.55	0.55	0.34	0.55	0.81
903	2020-05-05 14:19:11	0.43	0.55	0.34	0.34	0.79
908	2020-05-05 14:19:36	0.55	0.34	0.43	0.55	0.9
913	2020-05-05 14:20:01	0.43	0.43	0.55	0.34	0.85
895	2020-05-05 14:18:31	0.34	0.34	0.43	0.34	0.9
900	2020-05-05 14:18:56	0.34	0.43	0.34	0.34	0.79
905	2020-05-05 14:19:21	0.55	0.55	0.34	0.43	0.85
910	2020-05-05 14:19:46	0.34	0.43	0.55	0.43	0.9
915	2020-05-05 14:20:11	0.34	0.34	0.55	0.34	0.81
899	2020-05-05 14:18:51	0.43	0.34	0.55	0.43	0.73
904	2020-05-05 14:19:16	0.43	0.34	0.43	0.43	0.81
909	2020-05-05 14:19:41	0.43	0.34	0.55	0.34	0.9
914	2020-05-05 14:20:06	0.55	0.55	0.55	0.34	0.74
916	2020-05-05 14:20:16	0.34	0.34	0.34	0.55	0.9
917	2020-05-05 14:20:21	0.43	0.55	0.55	0.43	0.9
918	2020-05-05 14:20:26	0.43	0.43	0.43	0.43	0.79
919	2020-05-05 14:20:31	0.43	0.34	0.43	0.43	0.9
920	2020-05-05 14:20:36	0.55	0.43	0.43	0.43	0.81
921	2020-05-05 14:20:41	0.43	0.43	0.55	0.34	0.85
922	2020-05-05 14:20:46	0.55	0.43	0.43	0.43	0.73
923	2020-05-05 14:20:51	0.55	0.34	0.34	0.55	0.74
924	2020-05-05 14:20:56	0.34	0.34	0.34	0.55	0.73
925	2020-05-05 14:21:01	0.43	0.34	0.55	0.43	0.74
926	2020-05-05 14:21:06	0.55	0.43	0.55	0.43	0.85
927	2020-05-05 14:21:11	0.34	0.43	0.55	0.55	0.73
928	2020-05-05 14:21:16	0.34	0.55	0.43	0.55	0.81
929	2020-05-05 14:21:21	0.55	0.55	0.43	0.55	0.81
930	2020-05-05 14:21:26	0.43	0.55	0.34	0.55	0.9
931	2020-05-05 14:21:31	0.55	0.55	0.43	0.55	0.85
932	2020-05-05 14:21:36	0.43	0.55	0.55	0.34	0.74
933	2020-05-05 14:21:41	0.34	0.43	0.34	0.55	0.79
934	2020-05-05 14:21:46	0.43	0.34	0.55	0.55	0.74
935	2020-05-05 14:21:51	0.34	0.55	0.43	0.43	0.74
936	2020-05-05 14:21:56	0.43	0.43	0.55	0.43	0.79
937	2020-05-05 14:22:01	0.34	0.34	0.43	0.34	0.73
938	2020-05-05 14:22:06	0.43	0.55	0.43	0.34	0.79
939	2020-05-05 14:22:11	0.43	0.34	0.43	0.43	0.9
940	2020-05-05 14:22:16	0.43	0.34	0.43	0.55	0.85
941	2020-05-05 14:22:21	0.55	0.55	0.43	0.43	0.81
942	2020-05-05 14:22:26	0.34	0.43	0.34	0.55	0.9
943	2020-05-05 14:22:31	0.55	0.55	0.43	0.43	0.9
944	2020-05-05 14:22:36	0.55	0.43	0.34	0.43	0.85
945	2020-05-05 14:22:41	0.55	0.43	0.43	0.55	0.73
946	2020-05-05 14:22:46	0.43	0.55	0.55	0.43	0.73
947	2020-05-05 14:22:51	0.34	0.43	0.55	0.55	0.9
948	2020-05-05 14:22:56	0.55	0.43	0.34	0.43	0.81
949	2020-05-05 14:23:01	0.43	0.34	0.43	0.34	0.79
950	2020-05-05 14:23:06	0.43	0.43	0.43	0.43	0.9
951	2020-05-05 14:23:11	0.55	0.43	0.43	0.34	0.74
952	2020-05-05 14:23:16	0.34	0.43	0.55	0.34	0.73
953	2020-05-05 14:23:21	0.43	0.43	0.55	0.43	0.9
954	2020-05-05 14:23:26	0.55	0.34	0.43	0.55	0.73
955	2020-05-05 14:23:31	0.55	0.34	0.34	0.55	0.74
956	2020-05-05 14:23:36	0.34	0.55	0.55	0.55	0.79
957	2020-05-05 14:23:41	0.55	0.55	0.34	0.34	0.81
958	2020-05-05 14:23:46	0.34	0.34	0.43	0.55	0.85
959	2020-05-05 14:23:51	0.55	0.55	0.34	0.55	0.73
960	2020-05-05 14:23:56	0.34	0.55	0.43	0.55	0.81
961	2020-05-05 14:24:01	0.43	0.43	0.34	0.55	0.9
962	2020-05-05 14:24:06	0.55	0.55	0.34	0.34	0.85
963	2020-05-05 14:24:11	0.43	0.43	0.43	0.43	0.74
964	2020-05-05 14:24:16	0.55	0.34	0.55	0.43	0.9
965	2020-05-05 14:24:21	0.34	0.43	0.34	0.55	0.79
966	2020-05-05 14:24:26	0.55	0.55	0.34	0.55	0.81
967	2020-05-05 14:24:31	0.34	0.43	0.34	0.43	0.73
968	2020-05-05 14:24:36	0.34	0.43	0.55	0.55	0.81
969	2020-05-05 14:24:41	0.55	0.34	0.55	0.55	0.85
970	2020-05-05 14:24:46	0.34	0.34	0.34	0.55	0.85
971	2020-05-05 14:24:51	0.55	0.34	0.55	0.55	0.74
972	2020-05-05 14:24:56	0.34	0.34	0.34	0.34	0.9
973	2020-05-05 14:25:01	0.34	0.34	0.34	0.43	0.9
974	2020-05-05 14:25:06	0.55	0.34	0.34	0.55	0.79
975	2020-05-05 14:25:11	0.43	0.34	0.55	0.43	0.73
976	2020-05-05 14:25:16	0.43	0.55	0.43	0.34	0.9
977	2020-05-05 14:25:21	0.34	0.43	0.43	0.55	0.73
978	2020-05-05 14:25:26	0.55	0.55	0.55	0.43	0.85
979	2020-05-05 14:25:31	0.34	0.34	0.43	0.34	0.79
980	2020-05-05 14:25:36	0.43	0.55	0.43	0.43	0.74
981	2020-05-05 14:25:41	0.43	0.34	0.43	0.34	0.74
982	2020-05-05 14:25:46	0.43	0.55	0.43	0.34	0.81
983	2020-05-05 14:25:51	0.34	0.55	0.43	0.43	0.73
984	2020-05-05 14:25:56	0.43	0.34	0.55	0.55	0.9
985	2020-05-05 14:26:01	0.55	0.55	0.43	0.34	0.73
986	2020-05-05 14:26:06	0.43	0.43	0.43	0.43	0.9
987	2020-05-05 14:26:11	0.55	0.55	0.34	0.43	0.9
988	2020-05-05 14:26:16	0.34	0.55	0.55	0.34	0.74
989	2020-05-05 14:26:21	0.34	0.43	0.34	0.55	0.73
990	2020-05-05 14:26:26	0.34	0.34	0.34	0.34	0.73
991	2020-05-05 14:26:31	0.55	0.55	0.55	0.43	0.73
992	2020-05-05 14:26:36	0.43	0.55	0.55	0.55	0.81
993	2020-05-05 14:26:41	0.55	0.43	0.34	0.55	0.85
994	2020-05-05 14:26:46	0.55	0.55	0.43	0.34	0.73
995	2020-05-05 14:26:51	0.43	0.55	0.34	0.55	0.73
996	2020-05-05 14:26:56	0.43	0.43	0.55	0.34	0.74
997	2020-05-05 14:27:01	0.55	0.34	0.43	0.43	0.74
998	2020-05-05 14:27:06	0.43	0.34	0.43	0.55	0.81
999	2020-05-05 14:27:11	0.55	0.43	0.34	0.55	0.73
1000	2020-05-05 14:27:16	0.55	0.34	0.34	0.55	0.79
1001	2020-05-05 14:27:21	0.55	0.34	0.43	0.43	0.74
1002	2020-05-05 14:27:26	0.55	0.55	0.55	0.55	0.73
1003	2020-05-05 14:27:31	0.43	0.43	0.34	0.55	0.73
1004	2020-05-05 14:27:36	0.34	0.34	0.43	0.34	0.81
1005	2020-05-05 14:27:41	0.55	0.43	0.55	0.43	0.81
1006	2020-05-05 14:27:46	0.55	0.43	0.43	0.34	0.79
1007	2020-05-05 14:27:51	0.55	0.34	0.55	0.34	0.79
1008	2020-05-05 14:27:56	0.43	0.34	0.43	0.55	0.74
1009	2020-05-05 14:28:01	0.55	0.43	0.55	0.43	0.79
1010	2020-05-05 14:28:06	0.55	0.55	0.34	0.34	0.9
1011	2020-05-05 14:28:11	0.43	0.34	0.34	0.55	0.85
1012	2020-05-05 14:28:16	0.34	0.34	0.55	0.43	0.81
1013	2020-05-05 14:28:21	0.55	0.55	0.34	0.43	0.81
1014	2020-05-05 14:28:26	0.34	0.34	0.34	0.34	0.9
1015	2020-05-05 14:28:31	0.55	0.55	0.43	0.43	0.79
1016	2020-05-05 14:28:36	0.43	0.43	0.34	0.55	0.85
1017	2020-05-05 14:28:41	0.34	0.43	0.34	0.34	0.9
1018	2020-05-05 14:28:46	0.34	0.55	0.43	0.43	0.85
1019	2020-05-05 14:28:51	0.55	0.55	0.55	0.34	0.79
1020	2020-05-05 14:28:56	0.43	0.34	0.55	0.55	0.81
1021	2020-05-05 14:29:01	0.34	0.34	0.55	0.43	0.85
1026	2020-05-05 14:29:26	0.55	0.43	0.34	0.34	0.81
1031	2020-05-05 14:29:51	0.55	0.43	0.55	0.55	0.85
1036	2020-05-05 14:30:16	0.43	0.43	0.34	0.43	0.85
1041	2020-05-05 14:30:41	0.34	0.43	0.43	0.43	0.81
1046	2020-05-05 14:31:06	0.43	0.34	0.43	0.34	0.81
1051	2020-05-05 14:31:31	0.55	0.34	0.55	0.55	0.79
1056	2020-05-05 14:31:56	0.43	0.43	0.55	0.43	0.85
1022	2020-05-05 14:29:06	0.55	0.43	0.55	0.55	0.73
1027	2020-05-05 14:29:31	0.55	0.55	0.55	0.55	0.79
1032	2020-05-05 14:29:56	0.34	0.55	0.55	0.34	0.85
1037	2020-05-05 14:30:21	0.34	0.55	0.34	0.34	0.85
1042	2020-05-05 14:30:46	0.34	0.34	0.55	0.55	0.79
1047	2020-05-05 14:31:11	0.43	0.43	0.34	0.43	0.79
1052	2020-05-05 14:31:36	0.34	0.34	0.55	0.43	0.74
1057	2020-05-05 14:32:01	0.55	0.55	0.43	0.34	0.74
1023	2020-05-05 14:29:11	0.43	0.43	0.34	0.43	0.79
1028	2020-05-05 14:29:36	0.55	0.43	0.43	0.34	0.74
1033	2020-05-05 14:30:01	0.55	0.55	0.55	0.34	0.85
1038	2020-05-05 14:30:26	0.43	0.55	0.55	0.43	0.9
1043	2020-05-05 14:30:51	0.43	0.34	0.34	0.55	0.85
1048	2020-05-05 14:31:16	0.34	0.34	0.55	0.43	0.79
1053	2020-05-05 14:31:41	0.34	0.55	0.43	0.34	0.9
1058	2020-05-05 14:32:06	0.34	0.34	0.43	0.34	0.79
1024	2020-05-05 14:29:16	0.55	0.55	0.34	0.55	0.74
1029	2020-05-05 14:29:41	0.34	0.34	0.55	0.55	0.9
1034	2020-05-05 14:30:06	0.34	0.43	0.55	0.43	0.74
1039	2020-05-05 14:30:31	0.43	0.55	0.34	0.34	0.9
1044	2020-05-05 14:30:56	0.43	0.43	0.55	0.55	0.81
1049	2020-05-05 14:31:21	0.34	0.43	0.43	0.55	0.74
1054	2020-05-05 14:31:46	0.43	0.34	0.55	0.55	0.74
1059	2020-05-05 14:32:11	0.55	0.34	0.43	0.34	0.74
1025	2020-05-05 14:29:21	0.43	0.43	0.43	0.55	0.79
1030	2020-05-05 14:29:46	0.34	0.34	0.34	0.55	0.79
1035	2020-05-05 14:30:11	0.34	0.43	0.43	0.34	0.81
1040	2020-05-05 14:30:36	0.34	0.55	0.55	0.43	0.81
1045	2020-05-05 14:31:01	0.43	0.55	0.34	0.43	0.74
1050	2020-05-05 14:31:26	0.43	0.55	0.43	0.55	0.74
1055	2020-05-05 14:31:51	0.55	0.43	0.34	0.34	0.74
1060	2020-05-05 14:32:16	0.34	0.34	0.55	0.34	0.85
1061	2020-05-05 14:32:21	0.43	0.43	0.43	0.34	0.74
1062	2020-05-05 14:32:26	0.55	0.55	0.34	0.34	0.9
1063	2020-05-05 14:32:31	0.43	0.55	0.34	0.55	0.74
1064	2020-05-05 14:32:36	0.34	0.43	0.43	0.55	0.85
1065	2020-05-05 14:32:41	0.55	0.34	0.55	0.34	0.85
1066	2020-05-05 14:32:46	0.55	0.55	0.34	0.34	0.81
1067	2020-05-05 14:32:51	0.43	0.55	0.55	0.55	0.81
1068	2020-05-05 14:32:56	0.43	0.55	0.55	0.43	0.85
1069	2020-05-05 14:33:01	0.55	0.34	0.55	0.43	0.81
1070	2020-05-05 14:33:06	0.34	0.34	0.34	0.34	0.74
1071	2020-05-05 14:33:11	0.34	0.34	0.43	0.43	0.85
1072	2020-05-05 14:33:16	0.43	0.43	0.43	0.34	0.79
1073	2020-05-05 14:33:21	0.55	0.55	0.55	0.34	0.81
1074	2020-05-05 14:33:26	0.43	0.43	0.55	0.43	0.73
1075	2020-05-05 14:33:31	0.34	0.55	0.55	0.43	0.73
1076	2020-05-05 14:33:36	0.43	0.34	0.43	0.55	0.73
1077	2020-05-05 14:33:41	0.55	0.43	0.55	0.43	0.74
1078	2020-05-05 14:33:46	0.55	0.34	0.34	0.34	0.85
1079	2020-05-05 14:33:51	0.43	0.55	0.43	0.34	0.9
1080	2020-05-05 14:33:56	0.34	0.43	0.43	0.55	0.79
1081	2020-05-05 14:34:01	0.34	0.55	0.34	0.55	0.79
1082	2020-05-05 14:34:06	0.55	0.43	0.43	0.55	0.74
1083	2020-05-05 14:34:11	0.55	0.55	0.55	0.43	0.73
1084	2020-05-05 14:34:16	0.34	0.55	0.34	0.34	0.9
1085	2020-05-05 14:34:21	0.34	0.43	0.34	0.34	0.81
1086	2020-05-05 14:34:26	0.34	0.43	0.34	0.43	0.85
1087	2020-05-05 14:34:31	0.34	0.34	0.43	0.34	0.9
1088	2020-05-05 14:34:36	0.55	0.55	0.34	0.43	0.9
1089	2020-05-05 14:34:41	0.55	0.34	0.34	0.55	0.85
1090	2020-05-05 14:34:46	0.55	0.55	0.43	0.43	0.9
1091	2020-05-05 14:34:51	0.43	0.55	0.43	0.43	0.9
1092	2020-05-05 14:34:56	0.55	0.55	0.43	0.43	0.79
1093	2020-05-05 14:35:01	0.55	0.55	0.43	0.55	0.73
1094	2020-05-05 14:35:06	0.55	0.55	0.34	0.43	0.9
1095	2020-05-05 14:35:11	0.34	0.43	0.55	0.43	0.74
1096	2020-05-05 14:35:16	0.43	0.43	0.43	0.55	0.85
1097	2020-05-05 14:35:21	0.34	0.43	0.55	0.34	0.85
1098	2020-05-05 14:35:26	0.43	0.55	0.55	0.34	0.85
1099	2020-05-05 14:35:31	0.43	0.55	0.34	0.55	0.74
1100	2020-05-05 14:35:36	0.55	0.34	0.34	0.43	0.85
1101	2020-05-05 14:35:41	0.43	0.55	0.43	0.34	0.79
1102	2020-05-05 14:35:46	0.55	0.34	0.43	0.34	0.9
1103	2020-05-05 14:35:51	0.34	0.34	0.34	0.34	0.85
1104	2020-05-05 14:35:56	0.43	0.34	0.43	0.43	0.9
1105	2020-05-05 14:36:01	0.55	0.55	0.55	0.55	0.79
1106	2020-05-05 14:36:06	0.55	0.43	0.43	0.34	0.73
1107	2020-05-05 14:36:11	0.34	0.43	0.43	0.34	0.74
1108	2020-05-05 14:36:16	0.34	0.34	0.34	0.34	0.73
1109	2020-05-05 14:36:21	0.43	0.34	0.43	0.55	0.81
1110	2020-05-05 14:36:26	0.43	0.55	0.34	0.34	0.74
1111	2020-05-05 14:36:31	0.34	0.34	0.55	0.34	0.81
1112	2020-05-05 14:36:36	0.34	0.55	0.55	0.55	0.9
1113	2020-05-05 14:36:41	0.55	0.34	0.43	0.55	0.73
1114	2020-05-05 14:36:46	0.55	0.55	0.34	0.55	0.79
1115	2020-05-05 14:36:51	0.34	0.55	0.43	0.43	0.73
1116	2020-05-05 14:36:56	0.43	0.43	0.43	0.55	0.79
1117	2020-05-05 14:37:01	0.43	0.34	0.43	0.34	0.73
1118	2020-05-05 14:37:06	0.34	0.55	0.55	0.43	0.73
1119	2020-05-05 14:37:11	0.34	0.43	0.34	0.55	0.73
1120	2020-05-05 14:37:16	0.43	0.43	0.34	0.55	0.73
1121	2020-05-05 14:37:21	0.43	0.55	0.43	0.34	0.79
1122	2020-05-05 14:37:26	0.43	0.55	0.55	0.55	0.85
1123	2020-05-05 14:37:31	0.55	0.55	0.43	0.55	0.74
1124	2020-05-05 14:37:36	0.43	0.34	0.55	0.34	0.85
1125	2020-05-05 14:37:41	0.34	0.34	0.43	0.55	0.9
1126	2020-05-05 14:37:46	0.34	0.34	0.34	0.55	0.85
1127	2020-05-05 14:37:51	0.34	0.43	0.34	0.43	0.9
1128	2020-05-05 14:37:56	0.43	0.34	0.34	0.34	0.74
1129	2020-05-05 14:38:01	0.43	0.55	0.34	0.34	0.73
1130	2020-05-05 14:38:06	0.34	0.34	0.55	0.55	0.73
1131	2020-05-05 14:38:11	0.43	0.34	0.43	0.55	0.9
1132	2020-05-05 14:38:16	0.34	0.34	0.34	0.34	0.73
1133	2020-05-05 14:38:21	0.43	0.43	0.43	0.55	0.74
1134	2020-05-05 14:38:26	0.43	0.34	0.43	0.55	0.73
1135	2020-05-05 14:38:31	0.43	0.55	0.34	0.43	0.81
1136	2020-05-05 14:38:36	0.34	0.34	0.55	0.34	0.81
1137	2020-05-05 14:38:41	0.43	0.55	0.34	0.43	0.85
1138	2020-05-05 14:38:46	0.43	0.34	0.43	0.34	0.81
1139	2020-05-05 14:38:51	0.43	0.43	0.34	0.43	0.79
1140	2020-05-05 14:38:56	0.34	0.43	0.34	0.43	0.9
1141	2020-05-05 14:39:01	0.34	0.34	0.43	0.55	0.85
1142	2020-05-05 14:39:06	0.43	0.55	0.55	0.43	0.79
1143	2020-05-05 14:39:11	0.55	0.55	0.34	0.55	0.79
1144	2020-05-05 14:39:16	0.34	0.43	0.43	0.34	0.9
1145	2020-05-05 14:39:21	0.34	0.34	0.34	0.55	0.74
1146	2020-05-05 14:39:26	0.55	0.43	0.34	0.43	0.85
1147	2020-05-05 14:39:31	0.55	0.55	0.43	0.55	0.81
1148	2020-05-05 14:39:36	0.55	0.43	0.43	0.43	0.9
1149	2020-05-05 14:39:41	0.55	0.55	0.34	0.34	0.73
1150	2020-05-05 14:39:46	0.34	0.34	0.55	0.34	0.73
1151	2020-05-05 14:39:51	0.34	0.34	0.34	0.55	0.79
1152	2020-05-05 14:39:56	0.43	0.55	0.55	0.43	0.73
1153	2020-05-05 14:40:01	0.34	0.55	0.43	0.55	0.81
1154	2020-05-05 14:40:06	0.34	0.43	0.34	0.34	0.85
1155	2020-05-05 14:40:11	0.43	0.55	0.55	0.43	0.85
1156	2020-05-05 14:40:16	0.34	0.55	0.55	0.34	0.9
1157	2020-05-05 14:40:21	0.55	0.34	0.55	0.34	0.85
1158	2020-05-05 14:40:26	0.43	0.43	0.34	0.55	0.9
1159	2020-05-05 14:40:31	0.55	0.55	0.55	0.55	0.73
1160	2020-05-05 14:40:36	0.34	0.43	0.55	0.43	0.73
1161	2020-05-05 14:40:41	0.34	0.34	0.55	0.55	0.79
1162	2020-05-05 14:40:46	0.43	0.34	0.34	0.43	0.9
1167	2020-05-05 14:41:11	0.34	0.34	0.43	0.55	0.74
1172	2020-05-05 14:41:36	0.43	0.55	0.43	0.43	0.81
1177	2020-05-05 14:42:01	0.34	0.34	0.43	0.43	0.9
1182	2020-05-05 14:42:26	0.55	0.43	0.43	0.55	0.74
1187	2020-05-05 14:42:51	0.34	0.55	0.43	0.43	0.81
1192	2020-05-05 14:43:16	0.34	0.34	0.34	0.43	0.74
1197	2020-05-05 14:43:42	0.43	0.43	0.43	0.55	0.79
1202	2020-05-05 14:44:07	0.43	0.43	0.43	0.34	0.73
1207	2020-05-05 14:44:32	0.34	0.34	0.34	0.55	0.85
1212	2020-05-05 14:44:57	0.34	0.55	0.34	0.55	0.85
1163	2020-05-05 14:40:51	0.43	0.55	0.43	0.43	0.81
1168	2020-05-05 14:41:16	0.34	0.43	0.43	0.34	0.81
1173	2020-05-05 14:41:41	0.43	0.43	0.55	0.55	0.73
1178	2020-05-05 14:42:06	0.55	0.43	0.55	0.34	0.74
1183	2020-05-05 14:42:31	0.55	0.34	0.55	0.43	0.73
1188	2020-05-05 14:42:56	0.55	0.34	0.43	0.55	0.79
1193	2020-05-05 14:43:21	0.34	0.34	0.43	0.55	0.73
1198	2020-05-05 14:43:47	0.43	0.55	0.55	0.34	0.74
1203	2020-05-05 14:44:12	0.43	0.55	0.55	0.55	0.81
1208	2020-05-05 14:44:37	0.43	0.34	0.34	0.43	0.9
1213	2020-05-05 14:45:02	0.34	0.43	0.55	0.55	0.81
1164	2020-05-05 14:40:56	0.34	0.34	0.34	0.55	0.73
1169	2020-05-05 14:41:21	0.55	0.43	0.43	0.43	0.85
1174	2020-05-05 14:41:46	0.55	0.43	0.34	0.43	0.79
1179	2020-05-05 14:42:11	0.34	0.43	0.34	0.43	0.74
1184	2020-05-05 14:42:36	0.43	0.43	0.55	0.55	0.73
1189	2020-05-05 14:43:01	0.43	0.43	0.55	0.43	0.73
1194	2020-05-05 14:43:27	0.55	0.43	0.55	0.55	0.74
1199	2020-05-05 14:43:52	0.55	0.34	0.34	0.34	0.74
1204	2020-05-05 14:44:17	0.43	0.34	0.43	0.43	0.74
1209	2020-05-05 14:44:42	0.55	0.34	0.55	0.55	0.9
1214	2020-05-05 14:45:07	0.55	0.34	0.43	0.55	0.85
1165	2020-05-05 14:41:01	0.34	0.55	0.55	0.34	0.9
1170	2020-05-05 14:41:26	0.43	0.43	0.43	0.55	0.85
1175	2020-05-05 14:41:51	0.43	0.43	0.55	0.43	0.9
1180	2020-05-05 14:42:16	0.43	0.43	0.43	0.55	0.79
1185	2020-05-05 14:42:41	0.43	0.34	0.55	0.34	0.73
1190	2020-05-05 14:43:06	0.55	0.34	0.43	0.43	0.79
1195	2020-05-05 14:43:32	0.34	0.43	0.43	0.55	0.81
1200	2020-05-05 14:43:57	0.55	0.43	0.34	0.34	0.9
1205	2020-05-05 14:44:22	0.55	0.55	0.34	0.55	0.81
1210	2020-05-05 14:44:47	0.34	0.34	0.43	0.34	0.81
1215	2020-05-05 14:45:12	0.55	0.43	0.43	0.43	0.79
1166	2020-05-05 14:41:06	0.43	0.55	0.43	0.55	0.73
1171	2020-05-05 14:41:31	0.55	0.55	0.55	0.55	0.81
1176	2020-05-05 14:41:56	0.34	0.55	0.55	0.34	0.85
1181	2020-05-05 14:42:21	0.43	0.34	0.55	0.55	0.73
1186	2020-05-05 14:42:46	0.55	0.34	0.34	0.55	0.74
1191	2020-05-05 14:43:11	0.43	0.55	0.55	0.34	0.79
1196	2020-05-05 14:43:37	0.43	0.34	0.34	0.43	0.9
1201	2020-05-05 14:44:02	0.34	0.43	0.55	0.43	0.9
1206	2020-05-05 14:44:27	0.43	0.55	0.43	0.55	0.81
1211	2020-05-05 14:44:52	0.34	0.55	0.34	0.34	0.9
1216	2020-05-05 14:45:17	0.34	0.43	0.55	0.55	0.73
1217	2020-05-05 14:45:22	0.55	0.43	0.34	0.34	0.73
1218	2020-05-05 14:45:27	0.34	0.55	0.34	0.34	0.81
1219	2020-05-05 14:45:32	0.34	0.34	0.43	0.34	0.74
1220	2020-05-05 14:45:37	0.55	0.34	0.34	0.55	0.81
1221	2020-05-05 14:45:42	0.43	0.55	0.43	0.34	0.79
1222	2020-05-05 14:45:47	0.34	0.55	0.34	0.43	0.9
1223	2020-05-05 14:45:52	0.43	0.43	0.55	0.34	0.9
1224	2020-05-05 14:45:57	0.55	0.43	0.43	0.55	0.9
1225	2020-05-05 14:46:02	0.34	0.55	0.43	0.34	0.73
1226	2020-05-05 14:46:07	0.55	0.55	0.34	0.43	0.85
1227	2020-05-05 14:46:12	0.55	0.34	0.43	0.34	0.85
1228	2020-05-05 14:46:17	0.43	0.43	0.43	0.55	0.9
1229	2020-05-05 14:46:22	0.43	0.43	0.55	0.34	0.85
1230	2020-05-05 14:46:27	0.43	0.43	0.55	0.55	0.73
1231	2020-05-05 14:46:32	0.34	0.43	0.34	0.55	0.74
1232	2020-05-05 14:46:37	0.55	0.55	0.43	0.43	0.9
1233	2020-05-05 14:46:42	0.34	0.34	0.34	0.34	0.79
1234	2020-05-05 14:46:47	0.55	0.34	0.34	0.55	0.73
1235	2020-05-05 14:46:52	0.55	0.43	0.55	0.34	0.9
1236	2020-05-05 14:46:57	0.55	0.43	0.43	0.43	0.79
1237	2020-05-05 14:47:02	0.43	0.34	0.43	0.34	0.9
1238	2020-05-05 14:47:07	0.55	0.55	0.55	0.55	0.9
1239	2020-05-05 14:47:12	0.55	0.43	0.55	0.43	0.74
1240	2020-05-05 14:47:17	0.34	0.43	0.55	0.43	0.85
1241	2020-05-05 14:47:22	0.43	0.43	0.43	0.34	0.81
1242	2020-05-05 14:47:27	0.34	0.43	0.43	0.34	0.85
1243	2020-05-05 14:47:32	0.55	0.55	0.43	0.43	0.79
1244	2020-05-05 14:47:37	0.43	0.55	0.55	0.34	0.73
1245	2020-05-05 14:47:42	0.55	0.55	0.34	0.34	0.81
1246	2020-05-05 14:47:47	0.55	0.43	0.43	0.43	0.74
1247	2020-05-05 14:47:52	0.34	0.34	0.55	0.43	0.79
1248	2020-05-05 14:47:57	0.43	0.55	0.34	0.34	0.74
1249	2020-05-05 14:48:02	0.55	0.34	0.43	0.34	0.85
1250	2020-05-05 14:48:07	0.34	0.55	0.43	0.43	0.85
1251	2020-05-05 14:48:12	0.34	0.43	0.34	0.43	0.79
1252	2020-05-05 14:48:17	0.34	0.43	0.43	0.55	0.74
1253	2020-05-05 14:48:22	0.55	0.34	0.34	0.55	0.85
1254	2020-05-05 14:48:27	0.55	0.34	0.34	0.55	0.73
1255	2020-05-05 14:48:32	0.55	0.43	0.43	0.34	0.85
1256	2020-05-05 14:48:37	0.55	0.55	0.43	0.43	0.81
1257	2020-05-05 14:48:42	0.34	0.43	0.43	0.43	0.81
1258	2020-05-05 14:48:47	0.43	0.43	0.55	0.43	0.79
1259	2020-05-05 14:48:52	0.43	0.55	0.43	0.43	0.9
1260	2020-05-05 14:48:57	0.43	0.43	0.34	0.55	0.73
1261	2020-05-05 14:49:02	0.34	0.55	0.55	0.34	0.73
1262	2020-05-05 14:49:07	0.34	0.55	0.34	0.34	0.74
1263	2020-05-05 14:49:12	0.43	0.55	0.43	0.55	0.79
1264	2020-05-05 14:49:17	0.43	0.43	0.34	0.55	0.81
1265	2020-05-05 14:49:22	0.55	0.55	0.55	0.55	0.79
1266	2020-05-05 14:49:27	0.55	0.55	0.55	0.34	0.81
1267	2020-05-05 14:49:32	0.43	0.43	0.43	0.34	0.81
1268	2020-05-05 14:49:37	0.55	0.55	0.34	0.43	0.79
1269	2020-05-05 14:49:42	0.55	0.34	0.55	0.43	0.74
1270	2020-05-05 14:49:47	0.34	0.34	0.34	0.43	0.85
1271	2020-05-05 14:49:52	0.43	0.34	0.34	0.55	0.9
1272	2020-05-05 14:49:57	0.34	0.55	0.55	0.55	0.81
1273	2020-05-05 14:50:02	0.43	0.43	0.34	0.34	0.85
1274	2020-05-05 14:50:07	0.55	0.34	0.43	0.55	0.79
1275	2020-05-05 14:50:12	0.55	0.34	0.43	0.34	0.73
1276	2020-05-05 14:50:17	0.55	0.55	0.43	0.55	0.74
1277	2020-05-05 14:50:22	0.55	0.55	0.55	0.34	0.79
1278	2020-05-05 14:50:27	0.43	0.34	0.43	0.34	0.81
1279	2020-05-05 14:50:32	0.34	0.55	0.43	0.55	0.9
1280	2020-05-05 14:50:37	0.43	0.55	0.55	0.55	0.73
1281	2020-05-05 14:50:42	0.34	0.34	0.43	0.43	0.81
1282	2020-05-05 14:50:47	0.34	0.34	0.43	0.55	0.79
1283	2020-05-05 14:50:52	0.34	0.34	0.34	0.34	0.81
1284	2020-05-05 14:50:57	0.55	0.43	0.55	0.43	0.9
1285	2020-05-05 14:51:02	0.43	0.34	0.34	0.43	0.81
1286	2020-05-05 14:51:07	0.43	0.55	0.43	0.43	0.73
1287	2020-05-05 14:51:12	0.34	0.34	0.43	0.43	0.81
1288	2020-05-05 14:51:17	0.43	0.34	0.43	0.34	0.74
1289	2020-05-05 14:51:22	0.55	0.43	0.34	0.55	0.9
1290	2020-05-05 14:51:27	0.34	0.43	0.43	0.34	0.73
1291	2020-05-05 14:51:32	0.55	0.34	0.55	0.43	0.81
1292	2020-05-05 14:51:37	0.55	0.55	0.55	0.55	0.74
1293	2020-05-05 14:51:42	0.34	0.34	0.34	0.34	0.74
1294	2020-05-05 14:51:47	0.34	0.55	0.43	0.55	0.79
1295	2020-05-05 14:51:52	0.55	0.34	0.43	0.34	0.9
1296	2020-05-05 14:51:57	0.43	0.34	0.55	0.34	0.81
1297	2020-05-05 14:52:02	0.55	0.34	0.43	0.43	0.81
1298	2020-05-05 14:52:07	0.34	0.34	0.34	0.43	0.85
1299	2020-05-05 14:52:12	0.55	0.43	0.34	0.34	0.73
1300	2020-05-05 14:52:17	0.43	0.43	0.55	0.43	0.74
1301	2020-05-05 14:52:22	0.43	0.43	0.43	0.55	0.9
1302	2020-05-05 14:52:27	0.43	0.55	0.34	0.34	0.79
1303	2020-05-05 14:52:32	0.34	0.55	0.34	0.55	0.9
1304	2020-05-05 14:52:37	0.34	0.43	0.43	0.43	0.79
1305	2020-05-05 14:52:42	0.55	0.43	0.55	0.34	0.81
1306	2020-05-05 14:52:47	0.55	0.55	0.43	0.43	0.73
1307	2020-05-05 14:52:52	0.34	0.43	0.43	0.55	0.85
1308	2020-05-05 14:52:57	0.43	0.55	0.43	0.34	0.85
1309	2020-05-05 14:53:02	0.34	0.55	0.34	0.43	0.74
1310	2020-05-05 14:53:07	0.43	0.55	0.43	0.34	0.79
1311	2020-05-05 14:53:12	0.43	0.43	0.34	0.34	0.73
1312	2020-05-05 14:53:17	0.43	0.43	0.55	0.34	0.81
1313	2020-05-05 14:53:22	0.34	0.55	0.34	0.34	0.81
1314	2020-05-05 14:53:27	0.43	0.34	0.34	0.34	0.81
1315	2020-05-05 14:53:32	0.43	0.55	0.43	0.34	0.85
1320	2020-05-05 14:53:57	0.34	0.34	0.34	0.34	0.9
1325	2020-05-05 14:54:22	0.55	0.43	0.34	0.55	0.85
1330	2020-05-05 14:54:47	0.34	0.34	0.34	0.34	0.85
1335	2020-05-05 14:55:12	0.34	0.34	0.55	0.55	0.79
1340	2020-05-05 14:55:37	0.43	0.55	0.43	0.55	0.79
1345	2020-05-05 14:56:02	0.34	0.34	0.34	0.43	0.79
1350	2020-05-05 14:56:27	0.43	0.34	0.34	0.55	0.79
1355	2020-05-05 14:56:52	0.34	0.34	0.34	0.55	0.81
1360	2020-05-05 14:57:17	0.43	0.55	0.43	0.34	0.81
1365	2020-05-05 14:57:42	0.34	0.43	0.34	0.34	0.73
1370	2020-05-05 14:58:07	0.55	0.34	0.43	0.34	0.9
1375	2020-05-05 14:58:32	0.34	0.55	0.55	0.43	0.81
1380	2020-05-05 14:58:57	0.34	0.43	0.34	0.34	0.74
1385	2020-05-05 14:59:22	0.34	0.43	0.55	0.43	0.79
1390	2020-05-05 14:59:47	0.34	0.55	0.55	0.34	0.74
1395	2020-05-05 15:00:12	0.34	0.55	0.55	0.55	0.85
1316	2020-05-05 14:53:37	0.34	0.55	0.34	0.55	0.74
1321	2020-05-05 14:54:02	0.55	0.55	0.34	0.34	0.79
1326	2020-05-05 14:54:27	0.55	0.55	0.43	0.43	0.73
1331	2020-05-05 14:54:52	0.34	0.43	0.55	0.55	0.79
1336	2020-05-05 14:55:17	0.55	0.55	0.43	0.55	0.85
1341	2020-05-05 14:55:42	0.34	0.43	0.34	0.55	0.73
1346	2020-05-05 14:56:07	0.34	0.55	0.43	0.55	0.73
1351	2020-05-05 14:56:32	0.55	0.43	0.43	0.34	0.85
1356	2020-05-05 14:56:57	0.55	0.55	0.55	0.55	0.73
1361	2020-05-05 14:57:22	0.55	0.55	0.34	0.34	0.73
1366	2020-05-05 14:57:47	0.55	0.43	0.34	0.43	0.79
1371	2020-05-05 14:58:12	0.55	0.34	0.43	0.43	0.81
1376	2020-05-05 14:58:37	0.43	0.34	0.55	0.34	0.81
1381	2020-05-05 14:59:02	0.43	0.55	0.55	0.43	0.79
1386	2020-05-05 14:59:27	0.55	0.43	0.55	0.55	0.81
1391	2020-05-05 14:59:52	0.34	0.55	0.43	0.34	0.9
1396	2020-05-05 15:00:17	0.55	0.43	0.34	0.55	0.85
1317	2020-05-05 14:53:42	0.43	0.43	0.55	0.55	0.81
1322	2020-05-05 14:54:07	0.34	0.43	0.55	0.43	0.73
1327	2020-05-05 14:54:32	0.34	0.43	0.43	0.55	0.85
1332	2020-05-05 14:54:57	0.34	0.55	0.34	0.34	0.74
1337	2020-05-05 14:55:22	0.55	0.34	0.55	0.34	0.79
1342	2020-05-05 14:55:47	0.34	0.55	0.55	0.43	0.73
1347	2020-05-05 14:56:12	0.34	0.43	0.34	0.43	0.81
1352	2020-05-05 14:56:37	0.43	0.43	0.43	0.55	0.85
1357	2020-05-05 14:57:02	0.43	0.34	0.55	0.43	0.74
1362	2020-05-05 14:57:27	0.34	0.43	0.55	0.43	0.74
1367	2020-05-05 14:57:52	0.43	0.55	0.43	0.43	0.85
1372	2020-05-05 14:58:17	0.34	0.34	0.34	0.43	0.85
1377	2020-05-05 14:58:42	0.34	0.43	0.55	0.34	0.74
1382	2020-05-05 14:59:07	0.55	0.43	0.55	0.55	0.74
1387	2020-05-05 14:59:32	0.34	0.43	0.43	0.34	0.79
1392	2020-05-05 14:59:57	0.34	0.34	0.43	0.34	0.79
1318	2020-05-05 14:53:47	0.34	0.55	0.34	0.34	0.9
1323	2020-05-05 14:54:12	0.34	0.34	0.34	0.34	0.9
1328	2020-05-05 14:54:37	0.55	0.34	0.55	0.43	0.74
1333	2020-05-05 14:55:02	0.55	0.43	0.34	0.55	0.74
1338	2020-05-05 14:55:27	0.34	0.43	0.55	0.34	0.81
1343	2020-05-05 14:55:52	0.43	0.34	0.34	0.34	0.9
1348	2020-05-05 14:56:17	0.34	0.55	0.34	0.34	0.81
1353	2020-05-05 14:56:42	0.34	0.34	0.55	0.34	0.85
1358	2020-05-05 14:57:07	0.43	0.34	0.55	0.55	0.85
1363	2020-05-05 14:57:32	0.55	0.55	0.55	0.34	0.74
1368	2020-05-05 14:57:57	0.34	0.34	0.43	0.34	0.79
1373	2020-05-05 14:58:22	0.55	0.43	0.55	0.43	0.81
1378	2020-05-05 14:58:47	0.34	0.34	0.43	0.43	0.9
1383	2020-05-05 14:59:12	0.34	0.55	0.55	0.43	0.85
1388	2020-05-05 14:59:37	0.55	0.34	0.34	0.55	0.73
1393	2020-05-05 15:00:02	0.55	0.34	0.55	0.43	0.9
1319	2020-05-05 14:53:52	0.43	0.34	0.43	0.34	0.9
1324	2020-05-05 14:54:17	0.43	0.43	0.34	0.34	0.81
1329	2020-05-05 14:54:42	0.43	0.34	0.43	0.43	0.9
1334	2020-05-05 14:55:07	0.34	0.43	0.43	0.43	0.73
1339	2020-05-05 14:55:32	0.43	0.55	0.34	0.55	0.79
1344	2020-05-05 14:55:57	0.55	0.55	0.43	0.43	0.81
1349	2020-05-05 14:56:22	0.55	0.43	0.55	0.43	0.81
1354	2020-05-05 14:56:47	0.43	0.43	0.43	0.43	0.81
1359	2020-05-05 14:57:12	0.43	0.55	0.34	0.34	0.81
1364	2020-05-05 14:57:37	0.55	0.43	0.55	0.55	0.81
1369	2020-05-05 14:58:02	0.43	0.55	0.34	0.43	0.85
1374	2020-05-05 14:58:27	0.34	0.55	0.43	0.43	0.85
1379	2020-05-05 14:58:52	0.43	0.43	0.55	0.43	0.85
1384	2020-05-05 14:59:17	0.34	0.43	0.55	0.34	0.9
1389	2020-05-05 14:59:42	0.55	0.55	0.55	0.34	0.79
1394	2020-05-05 15:00:07	0.34	0.55	0.34	0.43	0.73
1397	2020-05-05 15:00:22	0.34	0.43	0.34	0.34	0.73
1398	2020-05-05 15:00:27	0.43	0.55	0.43	0.43	0.9
1399	2020-05-05 15:00:32	0.55	0.55	0.34	0.43	0.81
1400	2020-05-05 15:00:37	0.34	0.55	0.34	0.55	0.79
1401	2020-05-05 15:00:42	0.34	0.43	0.43	0.34	0.73
1402	2020-05-05 15:00:47	0.55	0.55	0.55	0.55	0.79
1403	2020-05-05 15:00:52	0.34	0.55	0.55	0.43	0.74
1404	2020-05-05 15:00:57	0.34	0.43	0.34	0.43	0.73
1405	2020-05-05 15:01:02	0.34	0.34	0.55	0.34	0.9
1406	2020-05-05 15:01:07	0.34	0.43	0.43	0.55	0.9
1407	2020-05-05 15:01:12	0.34	0.34	0.34	0.34	0.79
1408	2020-05-05 15:01:17	0.43	0.34	0.43	0.55	0.85
1409	2020-05-05 15:01:22	0.55	0.43	0.34	0.34	0.74
1410	2020-05-05 15:01:27	0.55	0.34	0.55	0.43	0.79
1411	2020-05-05 15:01:32	0.55	0.34	0.43	0.55	0.81
1412	2020-05-05 15:01:37	0.34	0.34	0.43	0.55	0.85
1413	2020-05-05 15:01:42	0.55	0.43	0.34	0.43	0.79
1414	2020-05-05 15:01:47	0.43	0.55	0.43	0.43	0.81
1415	2020-05-05 15:01:52	0.43	0.55	0.34	0.55	0.79
1416	2020-05-05 15:01:57	0.43	0.43	0.55	0.34	0.9
1417	2020-05-05 15:02:02	0.55	0.34	0.34	0.55	0.85
1418	2020-05-05 15:02:07	0.43	0.34	0.34	0.34	0.73
1419	2020-05-05 15:02:12	0.34	0.43	0.55	0.43	0.79
1420	2020-05-05 15:02:17	0.34	0.55	0.55	0.55	0.73
1421	2020-05-05 15:02:22	0.43	0.43	0.55	0.43	0.74
1422	2020-05-05 15:02:27	0.43	0.43	0.34	0.34	0.74
1423	2020-05-05 15:02:32	0.34	0.34	0.43	0.43	0.79
1424	2020-05-05 15:02:37	0.55	0.34	0.43	0.55	0.79
1425	2020-05-05 15:02:42	0.34	0.34	0.43	0.34	0.81
1426	2020-05-05 15:02:47	0.34	0.55	0.43	0.34	0.73
1427	2020-05-05 15:02:52	0.43	0.34	0.43	0.34	0.9
1428	2020-05-05 15:02:57	0.34	0.55	0.43	0.34	0.85
1429	2020-05-05 15:03:02	0.34	0.34	0.55	0.43	0.81
1430	2020-05-05 15:03:07	0.34	0.34	0.55	0.43	0.73
1431	2020-05-05 15:03:12	0.43	0.43	0.43	0.34	0.81
1432	2020-05-05 15:03:17	0.34	0.34	0.43	0.55	0.73
1433	2020-05-05 15:03:22	0.34	0.55	0.34	0.55	0.9
1434	2020-05-05 15:03:27	0.43	0.43	0.43	0.43	0.81
1435	2020-05-05 15:03:32	0.34	0.55	0.55	0.55	0.73
1436	2020-05-05 15:03:37	0.34	0.55	0.43	0.55	0.81
1437	2020-05-05 15:03:42	0.34	0.34	0.43	0.55	0.85
1438	2020-05-05 15:03:47	0.43	0.34	0.43	0.34	0.74
1439	2020-05-05 15:03:52	0.43	0.55	0.34	0.55	0.74
1440	2020-05-05 15:03:57	0.55	0.55	0.55	0.34	0.79
1441	2020-05-05 15:04:02	0.34	0.43	0.34	0.34	0.9
1442	2020-05-05 15:04:07	0.34	0.43	0.34	0.55	0.9
1443	2020-05-05 15:04:12	0.34	0.55	0.43	0.34	0.74
1444	2020-05-05 15:04:17	0.55	0.34	0.55	0.34	0.73
1445	2020-05-05 15:04:22	0.43	0.34	0.34	0.34	0.9
1446	2020-05-05 15:04:27	0.43	0.34	0.55	0.43	0.9
1447	2020-05-05 15:04:32	0.34	0.43	0.34	0.55	0.81
1448	2020-05-05 15:04:37	0.34	0.43	0.34	0.43	0.79
1449	2020-05-05 15:04:42	0.55	0.55	0.43	0.34	0.79
1450	2020-05-05 15:04:47	0.43	0.43	0.43	0.43	0.79
1451	2020-05-05 15:04:52	0.43	0.55	0.43	0.43	0.74
1452	2020-05-05 15:04:57	0.55	0.55	0.43	0.43	0.85
1453	2020-05-05 15:05:02	0.34	0.43	0.55	0.43	0.73
1454	2020-05-05 15:05:07	0.55	0.55	0.43	0.55	0.73
1455	2020-05-05 15:05:12	0.43	0.43	0.43	0.55	0.9
1456	2020-05-05 15:05:17	0.43	0.43	0.43	0.43	0.9
1457	2020-05-05 15:05:22	0.34	0.43	0.55	0.43	0.79
1458	2020-05-05 15:05:27	0.55	0.43	0.43	0.55	0.85
1459	2020-05-05 15:05:32	0.43	0.43	0.55	0.43	0.79
1460	2020-05-05 15:05:37	0.34	0.34	0.43	0.34	0.74
1461	2020-05-05 15:05:42	0.55	0.55	0.55	0.43	0.85
1462	2020-05-05 15:05:47	0.55	0.55	0.43	0.43	0.85
1463	2020-05-05 15:05:52	0.34	0.55	0.43	0.34	0.73
1464	2020-05-05 15:05:57	0.43	0.55	0.55	0.43	0.74
1465	2020-05-05 15:06:02	0.43	0.55	0.55	0.34	0.85
1466	2020-05-05 15:06:07	0.43	0.34	0.34	0.55	0.74
1467	2020-05-05 15:06:12	0.43	0.43	0.34	0.43	0.79
1468	2020-05-05 15:06:17	0.55	0.43	0.34	0.34	0.85
1469	2020-05-05 15:06:22	0.34	0.55	0.43	0.43	0.81
1470	2020-05-05 15:06:27	0.34	0.43	0.34	0.34	0.85
1471	2020-05-05 15:06:32	0.34	0.43	0.43	0.55	0.79
1472	2020-05-05 15:06:37	0.43	0.34	0.34	0.34	0.74
1473	2020-05-05 15:06:42	0.34	0.43	0.43	0.55	0.74
1474	2020-05-05 15:06:47	0.34	0.43	0.43	0.43	0.9
1475	2020-05-05 15:06:52	0.34	0.55	0.55	0.34	0.79
1476	2020-05-05 15:06:57	0.43	0.43	0.43	0.55	0.85
1477	2020-05-05 15:07:02	0.55	0.55	0.55	0.43	0.85
1478	2020-05-05 15:07:07	0.43	0.43	0.34	0.34	0.81
1479	2020-05-05 15:07:12	0.55	0.43	0.43	0.43	0.79
1480	2020-05-05 15:07:17	0.34	0.55	0.34	0.43	0.74
1481	2020-05-05 15:07:22	0.55	0.43	0.34	0.34	0.79
1482	2020-05-05 15:07:27	0.43	0.34	0.43	0.43	0.74
1483	2020-05-05 15:07:32	0.34	0.55	0.34	0.43	0.81
1484	2020-05-05 15:07:37	0.43	0.34	0.34	0.34	0.81
1485	2020-05-05 15:07:42	0.34	0.34	0.34	0.43	0.74
1486	2020-05-05 15:07:47	0.34	0.34	0.43	0.43	0.9
1487	2020-05-05 15:07:52	0.34	0.34	0.55	0.43	0.85
1488	2020-05-05 15:07:57	0.43	0.55	0.43	0.43	0.74
1489	2020-05-05 15:08:02	0.55	0.55	0.43	0.55	0.85
1490	2020-05-05 15:08:07	0.34	0.55	0.55	0.55	0.9
1495	2020-05-05 15:08:32	0.43	0.34	0.55	0.55	0.79
1500	2020-05-05 15:08:57	0.43	0.43	0.34	0.34	0.74
1505	2020-05-05 15:09:22	0.55	0.43	0.43	0.34	0.74
1510	2020-05-05 15:09:47	0.43	0.34	0.34	0.34	0.9
1515	2020-05-05 15:10:12	0.55	0.55	0.34	0.34	0.79
1520	2020-05-05 15:10:37	0.55	0.43	0.34	0.55	0.73
1525	2020-05-05 15:11:02	0.34	0.55	0.34	0.34	0.9
1530	2020-05-05 15:11:27	0.43	0.43	0.34	0.34	0.9
1535	2020-05-05 15:11:52	0.43	0.55	0.34	0.34	0.74
1540	2020-05-05 15:12:17	0.55	0.34	0.34	0.43	0.74
1545	2020-05-05 15:12:43	0.43	0.43	0.34	0.34	0.79
1550	2020-05-05 15:13:08	0.43	0.34	0.55	0.55	0.79
1555	2020-05-05 15:13:33	0.34	0.55	0.43	0.34	0.73
1560	2020-05-05 15:13:58	0.43	0.43	0.34	0.34	0.81
1565	2020-05-05 15:14:23	0.34	0.34	0.43	0.43	0.81
1570	2020-05-05 15:14:48	0.34	0.34	0.55	0.43	0.81
1575	2020-05-05 15:15:13	0.34	0.55	0.55	0.55	0.81
1580	2020-05-05 15:15:38	0.43	0.55	0.34	0.43	0.9
1585	2020-05-05 15:16:03	0.55	0.55	0.55	0.34	0.79
1491	2020-05-05 15:08:12	0.43	0.55	0.34	0.34	0.9
1496	2020-05-05 15:08:37	0.43	0.55	0.43	0.43	0.73
1501	2020-05-05 15:09:02	0.43	0.43	0.34	0.34	0.74
1506	2020-05-05 15:09:27	0.55	0.43	0.34	0.34	0.79
1511	2020-05-05 15:09:52	0.34	0.43	0.55	0.55	0.81
1516	2020-05-05 15:10:17	0.55	0.55	0.43	0.55	0.79
1521	2020-05-05 15:10:42	0.55	0.43	0.43	0.34	0.81
1526	2020-05-05 15:11:07	0.55	0.55	0.43	0.55	0.85
1531	2020-05-05 15:11:32	0.34	0.43	0.55	0.34	0.73
1536	2020-05-05 15:11:57	0.55	0.43	0.34	0.34	0.81
1541	2020-05-05 15:12:22	0.43	0.55	0.55	0.43	0.74
1546	2020-05-05 15:12:48	0.34	0.34	0.43	0.34	0.9
1551	2020-05-05 15:13:13	0.55	0.34	0.34	0.55	0.74
1556	2020-05-05 15:13:38	0.55	0.55	0.55	0.55	0.85
1561	2020-05-05 15:14:03	0.34	0.55	0.43	0.55	0.81
1566	2020-05-05 15:14:28	0.43	0.55	0.55	0.43	0.81
1571	2020-05-05 15:14:53	0.43	0.55	0.43	0.34	0.74
1576	2020-05-05 15:15:18	0.55	0.43	0.55	0.43	0.74
1581	2020-05-05 15:15:43	0.55	0.34	0.55	0.55	0.81
1586	2020-05-05 15:16:08	0.34	0.55	0.34	0.55	0.79
1492	2020-05-05 15:08:17	0.34	0.34	0.34	0.55	0.81
1497	2020-05-05 15:08:42	0.43	0.43	0.43	0.34	0.85
1502	2020-05-05 15:09:07	0.34	0.43	0.55	0.55	0.73
1507	2020-05-05 15:09:32	0.55	0.55	0.34	0.55	0.9
1512	2020-05-05 15:09:57	0.34	0.55	0.43	0.55	0.79
1517	2020-05-05 15:10:22	0.55	0.55	0.34	0.43	0.74
1522	2020-05-05 15:10:47	0.43	0.55	0.55	0.55	0.73
1527	2020-05-05 15:11:12	0.43	0.55	0.34	0.43	0.74
1532	2020-05-05 15:11:37	0.34	0.55	0.34	0.34	0.79
1537	2020-05-05 15:12:02	0.55	0.34	0.43	0.43	0.79
1542	2020-05-05 15:12:27	0.55	0.34	0.55	0.34	0.9
1547	2020-05-05 15:12:53	0.55	0.34	0.43	0.43	0.79
1552	2020-05-05 15:13:18	0.34	0.34	0.43	0.43	0.79
1557	2020-05-05 15:13:43	0.43	0.55	0.34	0.55	0.73
1562	2020-05-05 15:14:08	0.34	0.34	0.55	0.34	0.74
1567	2020-05-05 15:14:33	0.34	0.43	0.43	0.34	0.81
1572	2020-05-05 15:14:58	0.43	0.34	0.34	0.43	0.81
1577	2020-05-05 15:15:23	0.34	0.55	0.55	0.43	0.79
1582	2020-05-05 15:15:48	0.34	0.34	0.55	0.34	0.74
1587	2020-05-05 15:16:13	0.55	0.43	0.34	0.34	0.81
1493	2020-05-05 15:08:22	0.34	0.55	0.43	0.55	0.73
1498	2020-05-05 15:08:47	0.55	0.43	0.43	0.43	0.81
1503	2020-05-05 15:09:12	0.34	0.55	0.43	0.34	0.79
1508	2020-05-05 15:09:37	0.55	0.43	0.34	0.43	0.85
1513	2020-05-05 15:10:02	0.43	0.34	0.43	0.34	0.79
1518	2020-05-05 15:10:27	0.55	0.55	0.43	0.43	0.85
1523	2020-05-05 15:10:52	0.34	0.34	0.55	0.55	0.79
1528	2020-05-05 15:11:17	0.34	0.43	0.34	0.43	0.79
1533	2020-05-05 15:11:42	0.55	0.55	0.55	0.55	0.85
1538	2020-05-05 15:12:07	0.34	0.55	0.34	0.55	0.74
1543	2020-05-05 15:12:33	0.55	0.34	0.34	0.34	0.73
1548	2020-05-05 15:12:58	0.43	0.34	0.34	0.55	0.81
1553	2020-05-05 15:13:23	0.34	0.43	0.55	0.43	0.79
1558	2020-05-05 15:13:48	0.43	0.43	0.43	0.55	0.9
1563	2020-05-05 15:14:13	0.34	0.55	0.55	0.43	0.74
1568	2020-05-05 15:14:38	0.55	0.34	0.34	0.43	0.81
1573	2020-05-05 15:15:03	0.34	0.55	0.43	0.43	0.74
1578	2020-05-05 15:15:28	0.43	0.34	0.43	0.55	0.85
1583	2020-05-05 15:15:53	0.43	0.34	0.55	0.43	0.81
1588	2020-05-05 15:16:18	0.34	0.43	0.43	0.34	0.9
1494	2020-05-05 15:08:27	0.55	0.43	0.43	0.55	0.81
1499	2020-05-05 15:08:52	0.55	0.43	0.43	0.55	0.74
1504	2020-05-05 15:09:17	0.43	0.43	0.34	0.43	0.85
1509	2020-05-05 15:09:42	0.43	0.43	0.55	0.55	0.85
1514	2020-05-05 15:10:07	0.34	0.43	0.43	0.43	0.79
1519	2020-05-05 15:10:32	0.43	0.34	0.43	0.55	0.73
1524	2020-05-05 15:10:57	0.34	0.34	0.34	0.34	0.85
1529	2020-05-05 15:11:22	0.55	0.55	0.55	0.34	0.9
1534	2020-05-05 15:11:47	0.55	0.43	0.34	0.55	0.81
1539	2020-05-05 15:12:12	0.43	0.55	0.43	0.43	0.9
1544	2020-05-05 15:12:38	0.43	0.34	0.43	0.34	0.79
1549	2020-05-05 15:13:03	0.43	0.43	0.34	0.55	0.85
1554	2020-05-05 15:13:28	0.43	0.55	0.55	0.55	0.85
1559	2020-05-05 15:13:53	0.34	0.34	0.55	0.43	0.9
1564	2020-05-05 15:14:18	0.43	0.55	0.34	0.34	0.79
1569	2020-05-05 15:14:43	0.34	0.34	0.55	0.55	0.79
1574	2020-05-05 15:15:08	0.34	0.34	0.34	0.55	0.9
1579	2020-05-05 15:15:33	0.55	0.34	0.43	0.55	0.73
1584	2020-05-05 15:15:58	0.43	0.34	0.43	0.43	0.81
1589	2020-05-05 15:16:23	0.34	0.34	0.34	0.43	0.73
1590	2020-05-05 15:16:28	0.34	0.55	0.34	0.34	0.81
1591	2020-05-05 15:16:33	0.55	0.55	0.34	0.55	0.74
1592	2020-05-05 15:16:38	0.55	0.55	0.34	0.43	0.79
1593	2020-05-05 15:16:43	0.55	0.34	0.43	0.43	0.85
1594	2020-05-05 15:16:48	0.55	0.55	0.34	0.55	0.85
1595	2020-05-05 15:16:53	0.34	0.43	0.34	0.55	0.85
1596	2020-05-05 15:16:58	0.43	0.34	0.34	0.43	0.81
1597	2020-05-05 15:17:03	0.55	0.43	0.43	0.34	0.81
1598	2020-05-05 15:17:08	0.43	0.34	0.34	0.43	0.73
1599	2020-05-05 15:17:13	0.43	0.55	0.34	0.34	0.81
1600	2020-05-05 15:17:18	0.55	0.43	0.43	0.43	0.73
1601	2020-05-05 15:17:23	0.43	0.34	0.34	0.43	0.74
1602	2020-05-05 15:17:28	0.34	0.43	0.55	0.34	0.73
1603	2020-05-05 15:17:33	0.34	0.34	0.55	0.43	0.81
1604	2020-05-05 15:17:38	0.55	0.34	0.43	0.43	0.85
1605	2020-05-05 15:17:43	0.43	0.43	0.55	0.34	0.9
1606	2020-05-05 15:17:48	0.34	0.34	0.43	0.34	0.73
1607	2020-05-05 15:17:53	0.34	0.34	0.55	0.55	0.79
1608	2020-05-05 15:17:58	0.34	0.43	0.43	0.55	0.81
1609	2020-05-05 15:18:03	0.55	0.43	0.55	0.43	0.79
1610	2020-05-05 15:18:08	0.34	0.55	0.43	0.55	0.81
1611	2020-05-05 15:18:13	0.55	0.34	0.43	0.55	0.9
1612	2020-05-05 15:18:18	0.43	0.55	0.55	0.34	0.81
1613	2020-05-05 15:18:23	0.55	0.43	0.55	0.34	0.85
1614	2020-05-05 15:18:28	0.43	0.55	0.43	0.34	0.73
1615	2020-05-05 15:18:33	0.34	0.43	0.55	0.34	0.9
1616	2020-05-05 15:18:38	0.34	0.34	0.43	0.43	0.73
1617	2020-05-05 15:18:43	0.55	0.34	0.55	0.43	0.85
1618	2020-05-05 15:18:48	0.55	0.43	0.43	0.55	0.79
1619	2020-05-05 15:18:53	0.55	0.55	0.34	0.34	0.81
1620	2020-05-05 15:18:58	0.34	0.34	0.55	0.34	0.74
1621	2020-05-05 15:19:03	0.55	0.34	0.34	0.43	0.74
1622	2020-05-05 15:19:08	0.43	0.34	0.43	0.43	0.79
1623	2020-05-05 15:19:13	0.55	0.34	0.34	0.43	0.74
1624	2020-05-05 15:19:18	0.55	0.43	0.55	0.43	0.9
1625	2020-05-05 15:19:23	0.55	0.55	0.34	0.43	0.74
1626	2020-05-05 15:19:28	0.55	0.55	0.43	0.43	0.81
1627	2020-05-05 15:19:33	0.43	0.55	0.34	0.34	0.81
1628	2020-05-05 15:19:38	0.34	0.55	0.43	0.55	0.73
1629	2020-05-05 15:19:43	0.43	0.55	0.34	0.55	0.9
1630	2020-05-05 15:19:48	0.43	0.34	0.34	0.55	0.9
1631	2020-05-05 15:19:53	0.43	0.43	0.34	0.34	0.85
1632	2020-05-05 15:19:58	0.43	0.43	0.34	0.43	0.85
1633	2020-05-05 15:20:03	0.43	0.43	0.34	0.55	0.81
1634	2020-05-05 15:20:08	0.43	0.34	0.55	0.43	0.9
1635	2020-05-05 15:20:13	0.34	0.43	0.34	0.34	0.73
1636	2020-05-05 15:20:18	0.55	0.55	0.55	0.43	0.79
1637	2020-05-05 15:20:23	0.43	0.55	0.43	0.55	0.79
1638	2020-05-05 15:20:28	0.43	0.55	0.55	0.34	0.9
1639	2020-05-05 15:20:33	0.34	0.34	0.55	0.55	0.85
1640	2020-05-05 15:20:38	0.43	0.55	0.43	0.43	0.81
1641	2020-05-05 15:20:43	0.34	0.55	0.34	0.55	0.74
1642	2020-05-05 15:20:48	0.55	0.55	0.43	0.55	0.79
1643	2020-05-05 15:20:53	0.34	0.55	0.55	0.34	0.85
1644	2020-05-05 15:20:58	0.43	0.34	0.55	0.43	0.9
1645	2020-05-05 15:21:03	0.43	0.55	0.55	0.55	0.79
1646	2020-05-05 15:21:08	0.43	0.34	0.43	0.55	0.9
1647	2020-05-05 15:21:13	0.34	0.55	0.34	0.43	0.79
1648	2020-05-05 15:21:18	0.55	0.55	0.34	0.55	0.85
1649	2020-05-05 15:21:23	0.34	0.34	0.55	0.55	0.79
1650	2020-05-05 15:21:28	0.55	0.55	0.43	0.55	0.9
1651	2020-05-05 15:21:33	0.43	0.34	0.43	0.55	0.9
1652	2020-05-05 15:21:38	0.43	0.55	0.55	0.55	0.9
1653	2020-05-05 15:21:43	0.34	0.43	0.34	0.55	0.73
1654	2020-05-05 15:21:48	0.43	0.43	0.34	0.55	0.74
1655	2020-05-05 15:21:53	0.43	0.43	0.34	0.34	0.73
1656	2020-05-05 15:21:58	0.34	0.34	0.34	0.34	0.9
1657	2020-05-05 15:22:03	0.34	0.34	0.34	0.55	0.85
1658	2020-05-05 15:22:08	0.55	0.43	0.55	0.55	0.81
1659	2020-05-05 15:22:13	0.34	0.43	0.55	0.55	0.85
1660	2020-05-05 15:22:18	0.34	0.34	0.43	0.43	0.73
1661	2020-05-05 15:22:23	0.34	0.43	0.34	0.55	0.81
1662	2020-05-05 15:22:28	0.34	0.55	0.55	0.43	0.74
1663	2020-05-05 15:22:33	0.55	0.55	0.55	0.55	0.74
1664	2020-05-05 15:22:38	0.55	0.55	0.55	0.55	0.85
1665	2020-05-05 15:22:43	0.34	0.43	0.43	0.43	0.79
1666	2020-05-05 15:22:48	0.34	0.55	0.34	0.34	0.74
1667	2020-05-05 15:22:53	0.55	0.34	0.55	0.55	0.79
1668	2020-05-05 15:22:58	0.34	0.43	0.55	0.34	0.85
1669	2020-05-05 15:23:03	0.34	0.55	0.55	0.34	0.85
1670	2020-05-05 15:23:08	0.43	0.34	0.34	0.55	0.73
1671	2020-05-05 15:23:13	0.34	0.34	0.55	0.34	0.79
1672	2020-05-05 15:23:18	0.34	0.34	0.55	0.34	0.74
1673	2020-05-05 15:23:23	0.55	0.43	0.34	0.34	0.73
1674	2020-05-05 15:23:28	0.34	0.34	0.34	0.55	0.79
1675	2020-05-05 15:23:33	0.55	0.34	0.34	0.34	0.81
1676	2020-05-05 15:23:38	0.34	0.55	0.55	0.55	0.74
1677	2020-05-05 15:23:43	0.34	0.55	0.34	0.43	0.73
1678	2020-05-05 15:23:48	0.43	0.43	0.55	0.55	0.9
1679	2020-05-05 15:23:53	0.43	0.43	0.55	0.34	0.79
1684	2020-05-05 15:24:18	0.43	0.55	0.34	0.34	0.79
1689	2020-05-05 15:24:43	0.34	0.43	0.34	0.43	0.79
1694	2020-05-05 15:25:08	0.55	0.55	0.43	0.55	0.85
1699	2020-05-05 15:25:33	0.55	0.43	0.43	0.55	0.9
1704	2020-05-05 15:25:58	0.55	0.34	0.43	0.34	0.81
1709	2020-05-05 15:26:23	0.34	0.55	0.55	0.34	0.73
1714	2020-05-05 15:26:48	0.55	0.34	0.43	0.34	0.79
1719	2020-05-05 15:27:13	0.34	0.34	0.43	0.55	0.9
1724	2020-05-05 15:27:38	0.55	0.43	0.55	0.34	0.9
1729	2020-05-05 15:28:03	0.34	0.34	0.55	0.34	0.79
1734	2020-05-05 15:28:28	0.34	0.34	0.34	0.34	0.81
1739	2020-05-05 15:28:53	0.43	0.55	0.43	0.55	0.73
1744	2020-05-05 15:29:18	0.55	0.55	0.34	0.55	0.74
1749	2020-05-05 15:29:43	0.55	0.43	0.55	0.43	0.79
1754	2020-05-05 15:30:08	0.34	0.55	0.34	0.55	0.85
1759	2020-05-05 15:30:33	0.55	0.43	0.34	0.55	0.74
1764	2020-05-05 15:30:58	0.34	0.43	0.43	0.43	0.73
1769	2020-05-05 15:31:23	0.43	0.34	0.43	0.34	0.85
1774	2020-05-05 15:31:48	0.43	0.43	0.55	0.34	0.73
1779	2020-05-05 15:32:13	0.55	0.34	0.55	0.43	0.81
1784	2020-05-05 15:32:38	0.34	0.34	0.55	0.34	0.74
1789	2020-05-05 15:33:03	0.43	0.43	0.55	0.55	0.74
1794	2020-05-05 15:33:28	0.43	0.34	0.34	0.55	0.81
1799	2020-05-05 15:33:53	0.55	0.34	0.34	0.34	0.85
1804	2020-05-05 15:34:18	0.55	0.34	0.34	0.34	0.79
1680	2020-05-05 15:23:58	0.55	0.43	0.34	0.55	0.81
1685	2020-05-05 15:24:23	0.55	0.34	0.43	0.43	0.85
1690	2020-05-05 15:24:48	0.55	0.55	0.43	0.43	0.9
1695	2020-05-05 15:25:13	0.34	0.55	0.34	0.55	0.81
1700	2020-05-05 15:25:38	0.34	0.55	0.34	0.43	0.9
1705	2020-05-05 15:26:03	0.55	0.34	0.43	0.43	0.9
1710	2020-05-05 15:26:28	0.55	0.43	0.34	0.55	0.81
1715	2020-05-05 15:26:53	0.43	0.55	0.34	0.34	0.85
1720	2020-05-05 15:27:18	0.34	0.55	0.34	0.34	0.85
1725	2020-05-05 15:27:43	0.43	0.55	0.55	0.43	0.9
1730	2020-05-05 15:28:08	0.34	0.34	0.34	0.55	0.85
1735	2020-05-05 15:28:33	0.55	0.43	0.43	0.34	0.81
1740	2020-05-05 15:28:58	0.55	0.43	0.34	0.43	0.85
1745	2020-05-05 15:29:23	0.55	0.55	0.55	0.55	0.73
1750	2020-05-05 15:29:48	0.55	0.34	0.55	0.34	0.79
1755	2020-05-05 15:30:13	0.55	0.55	0.55	0.55	0.85
1760	2020-05-05 15:30:38	0.34	0.34	0.43	0.34	0.85
1765	2020-05-05 15:31:03	0.43	0.55	0.55	0.55	0.9
1770	2020-05-05 15:31:28	0.55	0.55	0.55	0.55	0.73
1775	2020-05-05 15:31:53	0.55	0.55	0.55	0.43	0.81
1780	2020-05-05 15:32:18	0.43	0.55	0.43	0.43	0.85
1785	2020-05-05 15:32:43	0.43	0.43	0.34	0.43	0.85
1790	2020-05-05 15:33:08	0.55	0.43	0.34	0.34	0.73
1795	2020-05-05 15:33:33	0.43	0.55	0.43	0.43	0.9
1800	2020-05-05 15:33:58	0.55	0.34	0.34	0.43	0.74
1805	2020-05-05 15:34:23	0.34	0.43	0.34	0.43	0.85
1681	2020-05-05 15:24:03	0.34	0.55	0.43	0.43	0.81
1686	2020-05-05 15:24:28	0.43	0.43	0.55	0.34	0.73
1691	2020-05-05 15:24:53	0.34	0.34	0.34	0.55	0.85
1696	2020-05-05 15:25:18	0.43	0.55	0.34	0.34	0.73
1701	2020-05-05 15:25:43	0.43	0.34	0.34	0.55	0.81
1706	2020-05-05 15:26:08	0.55	0.43	0.34	0.55	0.73
1711	2020-05-05 15:26:33	0.34	0.55	0.43	0.43	0.9
1716	2020-05-05 15:26:58	0.43	0.34	0.34	0.43	0.74
1721	2020-05-05 15:27:23	0.34	0.55	0.43	0.43	0.79
1726	2020-05-05 15:27:48	0.34	0.55	0.34	0.55	0.74
1731	2020-05-05 15:28:13	0.34	0.55	0.55	0.43	0.79
1736	2020-05-05 15:28:38	0.43	0.55	0.55	0.55	0.73
1741	2020-05-05 15:29:03	0.43	0.55	0.34	0.43	0.74
1746	2020-05-05 15:29:28	0.43	0.55	0.34	0.34	0.79
1751	2020-05-05 15:29:53	0.55	0.43	0.34	0.34	0.9
1756	2020-05-05 15:30:18	0.55	0.43	0.34	0.43	0.85
1761	2020-05-05 15:30:43	0.55	0.43	0.55	0.55	0.73
1766	2020-05-05 15:31:08	0.43	0.34	0.55	0.34	0.73
1771	2020-05-05 15:31:33	0.43	0.34	0.43	0.55	0.85
1776	2020-05-05 15:31:58	0.43	0.43	0.34	0.34	0.79
1781	2020-05-05 15:32:23	0.34	0.34	0.34	0.55	0.81
1786	2020-05-05 15:32:48	0.43	0.34	0.43	0.55	0.9
1791	2020-05-05 15:33:13	0.43	0.55	0.34	0.43	0.81
1796	2020-05-05 15:33:38	0.43	0.43	0.43	0.55	0.85
1801	2020-05-05 15:34:03	0.34	0.43	0.55	0.43	0.74
1806	2020-05-05 15:34:28	0.34	0.34	0.55	0.43	0.81
1682	2020-05-05 15:24:08	0.43	0.43	0.43	0.43	0.81
1687	2020-05-05 15:24:33	0.55	0.34	0.55	0.55	0.74
1692	2020-05-05 15:24:58	0.34	0.43	0.43	0.34	0.9
1697	2020-05-05 15:25:23	0.55	0.34	0.55	0.55	0.73
1702	2020-05-05 15:25:48	0.55	0.55	0.43	0.55	0.74
1707	2020-05-05 15:26:13	0.34	0.43	0.43	0.34	0.74
1712	2020-05-05 15:26:38	0.34	0.55	0.43	0.55	0.73
1717	2020-05-05 15:27:03	0.43	0.34	0.34	0.43	0.9
1722	2020-05-05 15:27:28	0.34	0.34	0.43	0.43	0.74
1727	2020-05-05 15:27:53	0.43	0.55	0.43	0.34	0.85
1732	2020-05-05 15:28:18	0.43	0.34	0.55	0.43	0.73
1737	2020-05-05 15:28:43	0.34	0.55	0.55	0.55	0.74
1742	2020-05-05 15:29:08	0.55	0.34	0.43	0.55	0.79
1747	2020-05-05 15:29:33	0.34	0.34	0.34	0.43	0.79
1752	2020-05-05 15:29:58	0.55	0.34	0.43	0.43	0.74
1757	2020-05-05 15:30:23	0.34	0.43	0.55	0.55	0.74
1762	2020-05-05 15:30:48	0.55	0.43	0.34	0.34	0.74
1767	2020-05-05 15:31:13	0.43	0.34	0.34	0.34	0.74
1772	2020-05-05 15:31:38	0.55	0.34	0.55	0.55	0.79
1777	2020-05-05 15:32:03	0.55	0.34	0.55	0.55	0.74
1782	2020-05-05 15:32:28	0.34	0.43	0.55	0.34	0.73
1787	2020-05-05 15:32:53	0.55	0.55	0.43	0.34	0.9
1792	2020-05-05 15:33:18	0.55	0.43	0.43	0.34	0.85
1797	2020-05-05 15:33:43	0.34	0.55	0.34	0.34	0.85
1802	2020-05-05 15:34:08	0.55	0.55	0.34	0.43	0.81
1807	2020-05-05 15:34:33	0.55	0.55	0.55	0.43	0.79
1683	2020-05-05 15:24:13	0.55	0.34	0.43	0.43	0.74
1688	2020-05-05 15:24:38	0.55	0.34	0.43	0.55	0.79
1693	2020-05-05 15:25:03	0.43	0.55	0.55	0.55	0.9
1698	2020-05-05 15:25:28	0.55	0.43	0.55	0.43	0.73
1703	2020-05-05 15:25:53	0.43	0.34	0.55	0.43	0.85
1708	2020-05-05 15:26:18	0.34	0.34	0.43	0.55	0.79
1713	2020-05-05 15:26:43	0.55	0.55	0.34	0.43	0.74
1718	2020-05-05 15:27:08	0.55	0.55	0.34	0.34	0.85
1723	2020-05-05 15:27:33	0.55	0.34	0.43	0.34	0.79
1728	2020-05-05 15:27:58	0.34	0.43	0.43	0.55	0.9
1733	2020-05-05 15:28:23	0.34	0.34	0.55	0.55	0.73
1738	2020-05-05 15:28:48	0.55	0.43	0.34	0.55	0.85
1743	2020-05-05 15:29:13	0.55	0.43	0.55	0.55	0.9
1748	2020-05-05 15:29:38	0.55	0.43	0.34	0.55	0.79
1753	2020-05-05 15:30:03	0.34	0.55	0.43	0.34	0.73
1758	2020-05-05 15:30:28	0.34	0.55	0.43	0.34	0.74
1763	2020-05-05 15:30:53	0.43	0.43	0.34	0.55	0.9
1768	2020-05-05 15:31:18	0.34	0.55	0.55	0.34	0.79
1773	2020-05-05 15:31:43	0.34	0.43	0.43	0.55	0.73
1778	2020-05-05 15:32:08	0.34	0.43	0.34	0.34	0.85
1783	2020-05-05 15:32:33	0.55	0.55	0.55	0.43	0.81
1788	2020-05-05 15:32:58	0.34	0.34	0.34	0.43	0.79
1793	2020-05-05 15:33:23	0.34	0.43	0.55	0.55	0.9
1798	2020-05-05 15:33:48	0.55	0.43	0.55	0.43	0.73
1803	2020-05-05 15:34:13	0.43	0.34	0.34	0.55	0.74
1808	2020-05-05 15:34:38	0.55	0.43	0.55	0.43	0.74
1809	2020-05-05 15:34:43	0.55	0.34	0.55	0.43	0.74
1810	2020-05-05 15:34:48	0.55	0.34	0.34	0.43	0.73
1811	2020-05-05 15:34:53	0.34	0.55	0.55	0.34	0.85
1812	2020-05-05 15:34:58	0.55	0.34	0.43	0.43	0.74
1813	2020-05-05 15:35:03	0.43	0.43	0.34	0.34	0.81
1814	2020-05-05 15:35:08	0.34	0.34	0.34	0.55	0.79
1815	2020-05-05 15:35:13	0.34	0.43	0.43	0.43	0.79
1816	2020-05-05 15:35:18	0.43	0.55	0.55	0.43	0.81
1817	2020-05-05 15:35:23	0.34	0.43	0.34	0.55	0.9
1818	2020-05-05 15:35:28	0.55	0.43	0.34	0.43	0.9
1819	2020-05-05 15:35:33	0.34	0.55	0.55	0.43	0.85
1820	2020-05-05 15:35:38	0.55	0.34	0.34	0.43	0.9
1821	2020-05-05 15:35:43	0.34	0.43	0.34	0.34	0.81
1822	2020-05-05 15:35:48	0.55	0.34	0.34	0.43	0.73
1823	2020-05-05 15:35:53	0.43	0.34	0.55	0.55	0.79
1824	2020-05-05 15:35:58	0.55	0.55	0.55	0.43	0.74
1825	2020-05-05 15:36:03	0.43	0.55	0.34	0.55	0.73
1826	2020-05-05 15:36:08	0.43	0.55	0.43	0.34	0.74
1827	2020-05-05 15:36:13	0.43	0.34	0.55	0.34	0.73
1828	2020-05-05 15:36:18	0.55	0.43	0.43	0.34	0.81
1829	2020-05-05 15:36:23	0.43	0.55	0.43	0.43	0.81
1830	2020-05-05 15:36:28	0.55	0.43	0.55	0.43	0.9
1831	2020-05-05 15:36:33	0.34	0.55	0.43	0.55	0.81
1832	2020-05-05 15:36:38	0.43	0.43	0.34	0.43	0.85
1833	2020-05-05 15:36:43	0.55	0.43	0.55	0.34	0.74
1834	2020-05-05 15:36:48	0.34	0.55	0.55	0.43	0.85
1835	2020-05-05 15:36:53	0.34	0.55	0.55	0.34	0.81
1836	2020-05-05 15:36:58	0.34	0.43	0.34	0.55	0.73
1837	2020-05-05 15:37:03	0.43	0.34	0.43	0.55	0.85
1838	2020-05-05 15:37:08	0.55	0.55	0.43	0.34	0.74
1839	2020-05-05 15:37:13	0.34	0.55	0.55	0.43	0.81
1840	2020-05-05 15:37:18	0.34	0.43	0.43	0.43	0.79
1841	2020-05-05 15:37:23	0.43	0.55	0.55	0.34	0.73
1842	2020-05-05 15:37:28	0.43	0.34	0.55	0.34	0.74
1843	2020-05-05 15:37:33	0.55	0.34	0.55	0.55	0.79
1844	2020-05-05 15:37:38	0.43	0.55	0.43	0.34	0.85
1845	2020-05-05 15:37:43	0.34	0.55	0.34	0.55	0.81
1846	2020-05-05 15:37:48	0.55	0.34	0.34	0.34	0.9
1847	2020-05-05 15:37:53	0.43	0.43	0.55	0.34	0.85
1848	2020-05-05 15:37:58	0.55	0.55	0.43	0.43	0.79
1849	2020-05-05 15:38:03	0.43	0.43	0.43	0.43	0.81
1850	2020-05-05 15:38:08	0.34	0.43	0.55	0.34	0.81
1851	2020-05-05 15:38:13	0.43	0.55	0.34	0.55	0.73
1852	2020-05-05 15:38:18	0.34	0.34	0.55	0.43	0.74
1853	2020-05-05 15:38:23	0.34	0.43	0.55	0.43	0.9
1854	2020-05-05 15:38:28	0.55	0.43	0.34	0.55	0.9
1855	2020-05-05 15:38:33	0.55	0.43	0.43	0.55	0.74
1856	2020-05-05 15:38:38	0.34	0.55	0.43	0.43	0.79
1857	2020-05-05 15:38:43	0.55	0.34	0.43	0.34	0.74
1858	2020-05-05 15:38:48	0.34	0.55	0.34	0.55	0.73
1859	2020-05-05 15:38:53	0.43	0.34	0.55	0.34	0.73
1860	2020-05-05 15:38:58	0.34	0.34	0.43	0.43	0.73
1861	2020-05-05 15:39:03	0.43	0.43	0.34	0.55	0.74
1862	2020-05-05 15:39:08	0.34	0.43	0.43	0.34	0.74
1863	2020-05-05 15:39:13	0.34	0.55	0.55	0.55	0.73
1864	2020-05-05 15:39:18	0.34	0.43	0.43	0.43	0.9
1865	2020-05-05 15:39:23	0.43	0.43	0.34	0.34	0.9
1866	2020-05-05 15:39:28	0.55	0.55	0.34	0.55	0.74
1867	2020-05-05 15:39:33	0.43	0.55	0.43	0.55	0.81
1868	2020-05-05 15:39:38	0.34	0.43	0.55	0.43	0.9
1869	2020-05-05 15:39:43	0.43	0.43	0.34	0.34	0.81
1870	2020-05-05 15:39:48	0.34	0.55	0.55	0.34	0.81
1871	2020-05-05 15:39:53	0.34	0.55	0.55	0.55	0.85
1872	2020-05-05 15:39:58	0.55	0.34	0.34	0.34	0.79
1873	2020-05-05 15:40:03	0.34	0.43	0.43	0.55	0.79
1874	2020-05-05 15:40:08	0.34	0.43	0.34	0.55	0.9
1875	2020-05-05 15:40:13	0.34	0.55	0.55	0.34	0.9
1876	2020-05-05 15:40:18	0.55	0.55	0.55	0.43	0.85
1877	2020-05-05 15:40:23	0.55	0.43	0.43	0.43	0.9
1878	2020-05-05 15:40:28	0.55	0.34	0.43	0.55	0.74
1879	2020-05-05 15:40:33	0.43	0.55	0.34	0.34	0.81
1880	2020-05-05 15:40:38	0.34	0.34	0.34	0.43	0.73
1881	2020-05-05 15:40:43	0.34	0.34	0.55	0.43	0.73
1882	2020-05-05 15:40:48	0.34	0.55	0.55	0.43	0.73
1883	2020-05-05 15:40:53	0.55	0.43	0.43	0.55	0.79
1884	2020-05-05 15:40:58	0.55	0.34	0.34	0.43	0.79
1885	2020-05-05 15:41:03	0.34	0.43	0.34	0.34	0.73
1886	2020-05-05 15:41:08	0.43	0.34	0.43	0.34	0.81
1887	2020-05-05 15:41:13	0.55	0.43	0.43	0.43	0.81
1888	2020-05-05 15:41:18	0.55	0.34	0.55	0.43	0.73
1889	2020-05-05 15:41:23	0.55	0.43	0.55	0.55	0.73
1890	2020-05-05 15:41:29	0.34	0.43	0.43	0.55	0.9
1891	2020-05-05 15:41:34	0.43	0.55	0.34	0.43	0.9
1892	2020-05-05 15:41:39	0.34	0.55	0.34	0.55	0.81
1897	2020-05-05 15:42:04	0.34	0.34	0.34	0.55	0.85
1902	2020-05-05 15:42:29	0.34	0.34	0.55	0.34	0.85
1907	2020-05-05 15:42:54	0.34	0.34	0.34	0.34	0.85
1912	2020-05-05 15:43:19	0.55	0.55	0.43	0.34	0.79
1917	2020-05-05 15:43:44	0.34	0.43	0.55	0.43	0.73
1922	2020-05-05 15:44:09	0.34	0.43	0.43	0.55	0.85
1927	2020-05-05 15:44:34	0.43	0.34	0.34	0.55	0.74
1932	2020-05-05 15:44:59	0.43	0.34	0.43	0.55	0.9
1937	2020-05-05 15:45:24	0.43	0.55	0.34	0.43	0.85
1942	2020-05-05 15:45:49	0.34	0.43	0.43	0.55	0.81
1947	2020-05-05 15:46:14	0.55	0.43	0.55	0.34	0.73
1952	2020-05-05 15:46:39	0.34	0.34	0.34	0.55	0.79
1957	2020-05-05 15:47:04	0.34	0.34	0.55	0.55	0.79
1962	2020-05-05 15:47:29	0.55	0.34	0.43	0.43	0.85
1967	2020-05-05 15:47:54	0.43	0.34	0.55	0.43	0.73
1972	2020-05-05 15:48:19	0.34	0.43	0.34	0.34	0.85
1977	2020-05-05 15:48:44	0.55	0.43	0.34	0.55	0.81
1982	2020-05-05 15:49:09	0.43	0.43	0.55	0.34	0.85
1987	2020-05-05 15:49:34	0.43	0.34	0.43	0.43	0.73
1992	2020-05-05 15:49:59	0.43	0.43	0.34	0.43	0.85
1997	2020-05-05 15:50:24	0.55	0.43	0.34	0.34	0.79
2002	2020-05-05 15:50:49	0.55	0.34	0.55	0.43	0.9
2007	2020-05-05 15:51:14	0.34	0.55	0.34	0.55	0.79
2012	2020-05-05 15:51:39	0.55	0.43	0.55	0.55	0.85
2017	2020-05-05 15:52:04	0.34	0.43	0.43	0.43	0.73
2022	2020-05-05 15:52:29	0.43	0.34	0.43	0.34	0.74
2027	2020-05-05 15:52:54	0.34	0.34	0.34	0.55	0.73
2032	2020-05-05 15:53:19	0.43	0.43	0.55	0.34	0.9
2037	2020-05-05 15:53:44	0.34	0.34	0.55	0.34	0.81
2042	2020-05-05 15:54:09	0.55	0.34	0.34	0.43	0.74
2047	2020-05-05 15:54:34	0.34	0.43	0.34	0.43	0.74
1893	2020-05-05 15:41:44	0.55	0.43	0.55	0.55	0.73
1898	2020-05-05 15:42:09	0.43	0.34	0.55	0.43	0.73
1903	2020-05-05 15:42:34	0.55	0.55	0.55	0.55	0.85
1908	2020-05-05 15:42:59	0.43	0.43	0.34	0.55	0.9
1913	2020-05-05 15:43:24	0.43	0.55	0.55	0.43	0.79
1918	2020-05-05 15:43:49	0.55	0.55	0.55	0.55	0.9
1923	2020-05-05 15:44:14	0.43	0.34	0.34	0.43	0.74
1928	2020-05-05 15:44:39	0.55	0.34	0.55	0.43	0.81
1933	2020-05-05 15:45:04	0.55	0.55	0.34	0.34	0.79
1938	2020-05-05 15:45:29	0.55	0.55	0.43	0.34	0.79
1943	2020-05-05 15:45:54	0.43	0.43	0.55	0.55	0.74
1948	2020-05-05 15:46:19	0.34	0.55	0.43	0.34	0.79
1953	2020-05-05 15:46:44	0.43	0.55	0.43	0.55	0.9
1958	2020-05-05 15:47:09	0.43	0.55	0.34	0.43	0.9
1963	2020-05-05 15:47:34	0.34	0.55	0.55	0.34	0.73
1968	2020-05-05 15:47:59	0.43	0.43	0.43	0.34	0.79
1973	2020-05-05 15:48:24	0.34	0.55	0.34	0.55	0.74
1978	2020-05-05 15:48:49	0.43	0.55	0.55	0.34	0.73
1983	2020-05-05 15:49:14	0.34	0.43	0.55	0.55	0.74
1988	2020-05-05 15:49:39	0.55	0.43	0.43	0.34	0.79
1993	2020-05-05 15:50:04	0.55	0.55	0.55	0.43	0.74
1998	2020-05-05 15:50:29	0.34	0.55	0.55	0.43	0.79
2003	2020-05-05 15:50:54	0.55	0.43	0.43	0.55	0.79
2008	2020-05-05 15:51:19	0.43	0.55	0.34	0.55	0.85
2013	2020-05-05 15:51:44	0.55	0.55	0.43	0.55	0.85
2018	2020-05-05 15:52:09	0.55	0.43	0.43	0.43	0.85
2023	2020-05-05 15:52:34	0.43	0.43	0.43	0.55	0.85
2028	2020-05-05 15:52:59	0.55	0.55	0.34	0.34	0.73
2033	2020-05-05 15:53:24	0.43	0.34	0.43	0.55	0.9
2038	2020-05-05 15:53:49	0.34	0.43	0.43	0.43	0.73
2043	2020-05-05 15:54:14	0.43	0.55	0.43	0.34	0.73
1894	2020-05-05 15:41:49	0.43	0.55	0.34	0.34	0.79
1899	2020-05-05 15:42:14	0.55	0.43	0.43	0.43	0.73
1904	2020-05-05 15:42:39	0.55	0.55	0.34	0.55	0.74
1909	2020-05-05 15:43:04	0.43	0.34	0.43	0.55	0.9
1914	2020-05-05 15:43:29	0.43	0.34	0.34	0.34	0.81
1919	2020-05-05 15:43:54	0.43	0.55	0.55	0.34	0.79
1924	2020-05-05 15:44:19	0.43	0.43	0.43	0.55	0.73
1929	2020-05-05 15:44:44	0.34	0.43	0.55	0.34	0.81
1934	2020-05-05 15:45:09	0.34	0.34	0.55	0.55	0.85
1939	2020-05-05 15:45:34	0.34	0.43	0.55	0.55	0.74
1944	2020-05-05 15:45:59	0.43	0.55	0.43	0.43	0.9
1949	2020-05-05 15:46:24	0.43	0.34	0.43	0.55	0.74
1954	2020-05-05 15:46:49	0.55	0.55	0.34	0.55	0.81
1959	2020-05-05 15:47:14	0.34	0.55	0.43	0.43	0.74
1964	2020-05-05 15:47:39	0.43	0.34	0.55	0.55	0.79
1969	2020-05-05 15:48:04	0.34	0.34	0.34	0.43	0.9
1974	2020-05-05 15:48:29	0.43	0.34	0.55	0.43	0.9
1979	2020-05-05 15:48:54	0.43	0.34	0.43	0.55	0.85
1984	2020-05-05 15:49:19	0.55	0.34	0.43	0.55	0.81
1989	2020-05-05 15:49:44	0.34	0.55	0.34	0.34	0.9
1994	2020-05-05 15:50:09	0.55	0.55	0.55	0.55	0.79
1999	2020-05-05 15:50:34	0.34	0.43	0.34	0.43	0.79
2004	2020-05-05 15:50:59	0.34	0.34	0.43	0.34	0.74
2009	2020-05-05 15:51:24	0.55	0.43	0.43	0.43	0.81
2014	2020-05-05 15:51:49	0.34	0.43	0.43	0.43	0.85
2019	2020-05-05 15:52:14	0.55	0.55	0.43	0.55	0.74
2024	2020-05-05 15:52:39	0.55	0.34	0.34	0.55	0.9
2029	2020-05-05 15:53:04	0.43	0.43	0.34	0.34	0.79
2034	2020-05-05 15:53:29	0.34	0.34	0.34	0.55	0.81
2039	2020-05-05 15:53:54	0.34	0.34	0.34	0.34	0.79
2044	2020-05-05 15:54:19	0.34	0.55	0.34	0.43	0.81
1895	2020-05-05 15:41:54	0.34	0.55	0.43	0.43	0.85
1900	2020-05-05 15:42:19	0.34	0.55	0.55	0.34	0.81
1905	2020-05-05 15:42:44	0.34	0.34	0.34	0.55	0.85
1910	2020-05-05 15:43:09	0.34	0.55	0.55	0.55	0.85
1915	2020-05-05 15:43:34	0.43	0.34	0.55	0.34	0.73
1920	2020-05-05 15:43:59	0.43	0.34	0.34	0.43	0.74
1925	2020-05-05 15:44:24	0.43	0.55	0.43	0.43	0.79
1930	2020-05-05 15:44:49	0.34	0.55	0.55	0.43	0.81
1935	2020-05-05 15:45:14	0.34	0.55	0.34	0.43	0.74
1940	2020-05-05 15:45:39	0.43	0.34	0.55	0.34	0.9
1945	2020-05-05 15:46:04	0.43	0.55	0.34	0.55	0.74
1950	2020-05-05 15:46:29	0.34	0.34	0.43	0.34	0.79
1955	2020-05-05 15:46:54	0.34	0.34	0.55	0.43	0.73
1960	2020-05-05 15:47:19	0.43	0.34	0.55	0.43	0.79
1965	2020-05-05 15:47:44	0.55	0.34	0.43	0.34	0.79
1970	2020-05-05 15:48:09	0.43	0.55	0.55	0.34	0.74
1975	2020-05-05 15:48:34	0.43	0.34	0.43	0.34	0.73
1980	2020-05-05 15:48:59	0.43	0.43	0.43	0.34	0.79
1985	2020-05-05 15:49:24	0.43	0.43	0.43	0.34	0.79
1990	2020-05-05 15:49:49	0.55	0.43	0.43	0.43	0.73
1995	2020-05-05 15:50:14	0.43	0.34	0.55	0.43	0.9
2000	2020-05-05 15:50:39	0.34	0.34	0.55	0.55	0.74
2005	2020-05-05 15:51:04	0.55	0.55	0.43	0.55	0.73
2010	2020-05-05 15:51:29	0.34	0.43	0.43	0.34	0.9
2015	2020-05-05 15:51:54	0.34	0.55	0.43	0.43	0.79
2020	2020-05-05 15:52:19	0.55	0.43	0.34	0.43	0.81
2025	2020-05-05 15:52:44	0.34	0.55	0.55	0.43	0.73
2030	2020-05-05 15:53:09	0.34	0.34	0.43	0.34	0.9
2035	2020-05-05 15:53:34	0.55	0.34	0.43	0.55	0.74
2040	2020-05-05 15:53:59	0.55	0.55	0.34	0.34	0.73
2045	2020-05-05 15:54:24	0.55	0.43	0.43	0.43	0.73
1896	2020-05-05 15:41:59	0.55	0.34	0.43	0.43	0.81
1901	2020-05-05 15:42:24	0.43	0.43	0.43	0.34	0.81
1906	2020-05-05 15:42:49	0.43	0.55	0.34	0.34	0.85
1911	2020-05-05 15:43:14	0.34	0.43	0.55	0.55	0.79
1916	2020-05-05 15:43:39	0.34	0.43	0.43	0.34	0.74
1921	2020-05-05 15:44:04	0.55	0.34	0.55	0.55	0.9
1926	2020-05-05 15:44:29	0.34	0.43	0.55	0.34	0.85
1931	2020-05-05 15:44:54	0.55	0.55	0.43	0.43	0.74
1936	2020-05-05 15:45:19	0.43	0.43	0.55	0.43	0.81
1941	2020-05-05 15:45:44	0.55	0.34	0.55	0.43	0.85
1946	2020-05-05 15:46:09	0.55	0.43	0.55	0.55	0.81
1951	2020-05-05 15:46:34	0.55	0.55	0.43	0.55	0.79
1956	2020-05-05 15:46:59	0.34	0.55	0.43	0.55	0.81
1961	2020-05-05 15:47:24	0.34	0.43	0.34	0.34	0.81
1966	2020-05-05 15:47:49	0.34	0.55	0.34	0.34	0.79
1971	2020-05-05 15:48:14	0.34	0.43	0.43	0.43	0.9
1976	2020-05-05 15:48:39	0.43	0.55	0.34	0.34	0.85
1981	2020-05-05 15:49:04	0.55	0.43	0.43	0.43	0.85
1986	2020-05-05 15:49:29	0.43	0.55	0.55	0.43	0.73
1991	2020-05-05 15:49:54	0.34	0.43	0.34	0.34	0.85
1996	2020-05-05 15:50:19	0.55	0.43	0.43	0.43	0.9
2001	2020-05-05 15:50:44	0.34	0.55	0.43	0.34	0.79
2006	2020-05-05 15:51:09	0.43	0.43	0.34	0.55	0.9
2011	2020-05-05 15:51:34	0.55	0.34	0.55	0.34	0.81
2016	2020-05-05 15:51:59	0.55	0.34	0.55	0.55	0.81
2021	2020-05-05 15:52:24	0.55	0.55	0.55	0.43	0.79
2026	2020-05-05 15:52:49	0.43	0.43	0.55	0.34	0.74
2031	2020-05-05 15:53:14	0.34	0.55	0.34	0.43	0.74
2036	2020-05-05 15:53:39	0.43	0.34	0.43	0.55	0.73
2041	2020-05-05 15:54:04	0.34	0.34	0.34	0.55	0.79
2046	2020-05-05 15:54:29	0.43	0.43	0.43	0.43	0.85
2048	2020-05-05 15:54:39	0.55	0.34	0.34	0.34	0.74
2049	2020-05-05 15:54:44	0.43	0.43	0.55	0.43	0.79
2050	2020-05-05 15:54:49	0.55	0.34	0.34	0.55	0.73
2051	2020-05-05 15:54:54	0.55	0.55	0.55	0.43	0.9
2052	2020-05-05 15:54:59	0.55	0.34	0.55	0.34	0.81
2053	2020-05-05 15:55:04	0.34	0.34	0.55	0.55	0.74
2054	2020-05-05 15:55:09	0.55	0.43	0.43	0.55	0.85
2055	2020-05-05 15:55:14	0.34	0.43	0.34	0.55	0.79
2056	2020-05-05 15:55:19	0.34	0.34	0.34	0.34	0.9
2057	2020-05-05 15:55:24	0.55	0.43	0.55	0.43	0.9
2058	2020-05-05 15:55:29	0.34	0.43	0.34	0.34	0.81
2059	2020-05-05 15:55:34	0.34	0.43	0.34	0.43	0.73
2060	2020-05-05 15:55:39	0.43	0.55	0.55	0.55	0.73
2061	2020-05-05 15:55:44	0.34	0.43	0.34	0.34	0.74
2062	2020-05-05 15:55:49	0.34	0.34	0.34	0.55	0.79
2063	2020-05-05 15:55:54	0.43	0.43	0.55	0.43	0.74
2064	2020-05-05 15:55:59	0.43	0.55	0.55	0.34	0.85
2065	2020-05-05 15:56:04	0.55	0.43	0.34	0.34	0.74
2066	2020-05-05 15:56:09	0.43	0.43	0.43	0.55	0.9
2067	2020-05-05 15:56:14	0.34	0.34	0.34	0.34	0.74
2068	2020-05-05 15:56:19	0.55	0.55	0.34	0.55	0.85
2069	2020-05-05 15:56:24	0.43	0.34	0.43	0.43	0.81
2070	2020-05-05 15:56:29	0.55	0.43	0.34	0.43	0.85
2071	2020-05-05 15:56:34	0.34	0.43	0.34	0.34	0.85
2072	2020-05-05 15:56:39	0.43	0.34	0.43	0.55	0.79
2073	2020-05-05 15:56:44	0.34	0.43	0.55	0.43	0.9
2074	2020-05-05 15:56:49	0.34	0.34	0.43	0.55	0.81
2075	2020-05-05 15:56:54	0.43	0.43	0.43	0.43	0.85
2076	2020-05-05 15:56:59	0.34	0.43	0.34	0.43	0.9
2077	2020-05-05 15:57:04	0.34	0.55	0.34	0.43	0.85
2078	2020-05-05 15:57:09	0.34	0.43	0.34	0.34	0.74
2079	2020-05-05 15:57:14	0.55	0.34	0.55	0.43	0.73
2080	2020-05-05 15:57:19	0.34	0.34	0.55	0.34	0.81
2081	2020-05-05 15:57:24	0.43	0.55	0.43	0.34	0.85
2082	2020-05-05 15:57:29	0.55	0.34	0.43	0.43	0.73
2083	2020-05-05 15:57:34	0.34	0.55	0.43	0.34	0.81
2084	2020-05-05 15:57:39	0.43	0.55	0.43	0.34	0.73
2085	2020-05-05 15:57:44	0.55	0.43	0.43	0.34	0.74
2086	2020-05-05 15:57:49	0.43	0.55	0.55	0.43	0.9
2087	2020-05-05 15:57:54	0.34	0.34	0.55	0.55	0.73
2088	2020-05-05 15:57:59	0.43	0.34	0.34	0.55	0.74
2089	2020-05-05 15:58:04	0.55	0.34	0.34	0.55	0.79
2090	2020-05-05 15:58:09	0.55	0.34	0.34	0.55	0.81
2091	2020-05-05 15:58:14	0.43	0.43	0.55	0.43	0.81
2092	2020-05-05 15:58:19	0.55	0.55	0.55	0.43	0.74
2093	2020-05-05 15:58:24	0.34	0.43	0.43	0.34	0.74
2094	2020-05-05 15:58:29	0.34	0.34	0.43	0.43	0.74
2095	2020-05-05 15:58:34	0.55	0.43	0.55	0.55	0.9
2096	2020-05-05 15:58:39	0.43	0.43	0.43	0.55	0.85
2097	2020-05-05 15:58:44	0.34	0.43	0.34	0.55	0.85
2098	2020-05-05 15:58:49	0.55	0.34	0.34	0.43	0.73
2099	2020-05-05 15:58:54	0.34	0.34	0.55	0.55	0.74
2100	2020-05-05 15:58:59	0.55	0.55	0.55	0.43	0.85
2101	2020-05-05 15:59:04	0.55	0.34	0.43	0.34	0.74
2102	2020-05-05 15:59:09	0.34	0.43	0.34	0.55	0.74
2103	2020-05-05 15:59:14	0.34	0.34	0.55	0.43	0.85
2104	2020-05-05 15:59:19	0.43	0.55	0.34	0.43	0.81
2105	2020-05-05 15:59:24	0.55	0.43	0.55	0.55	0.73
2106	2020-05-05 15:59:29	0.34	0.43	0.34	0.34	0.73
2107	2020-05-05 15:59:34	0.34	0.43	0.55	0.43	0.79
2108	2020-05-05 15:59:39	0.34	0.55	0.43	0.34	0.73
2109	2020-05-05 15:59:44	0.34	0.34	0.34	0.43	0.74
2110	2020-05-05 15:59:49	0.34	0.34	0.55	0.43	0.81
2111	2020-05-05 15:59:54	0.55	0.34	0.55	0.34	0.74
2112	2020-05-05 15:59:59	0.43	0.43	0.55	0.55	0.85
2113	2020-05-05 16:00:04	0.55	0.55	0.55	0.34	0.79
2114	2020-05-05 16:00:09	0.43	0.43	0.34	0.43	0.81
2115	2020-05-05 16:00:14	0.43	0.34	0.34	0.55	0.74
2116	2020-05-05 16:00:19	0.55	0.34	0.34	0.34	0.79
2117	2020-05-05 16:00:24	0.43	0.55	0.55	0.43	0.74
2118	2020-05-05 16:00:29	0.43	0.55	0.34	0.34	0.74
2119	2020-05-05 16:00:34	0.43	0.34	0.34	0.55	0.79
2120	2020-05-05 16:00:39	0.34	0.43	0.55	0.43	0.79
2121	2020-05-05 16:00:44	0.55	0.34	0.43	0.43	0.85
2122	2020-05-05 16:00:49	0.55	0.43	0.43	0.43	0.81
2123	2020-05-05 16:00:54	0.43	0.34	0.55	0.34	0.81
2124	2020-05-05 16:00:59	0.43	0.55	0.34	0.43	0.9
2125	2020-05-05 16:01:04	0.43	0.34	0.34	0.55	0.85
2130	2020-05-05 16:01:29	0.43	0.55	0.34	0.55	0.81
2135	2020-05-05 16:01:54	0.43	0.34	0.55	0.55	0.9
2140	2020-05-05 16:02:19	0.55	0.34	0.34	0.34	0.74
2145	2020-05-05 16:02:44	0.55	0.43	0.43	0.43	0.79
2150	2020-05-05 16:03:09	0.43	0.55	0.55	0.55	0.73
2155	2020-05-05 16:03:34	0.55	0.34	0.43	0.34	0.9
2160	2020-05-05 16:03:59	0.34	0.55	0.55	0.34	0.85
2165	2020-05-05 16:04:24	0.43	0.34	0.34	0.43	0.73
2170	2020-05-05 16:04:49	0.55	0.34	0.34	0.34	0.9
2175	2020-05-05 16:05:14	0.43	0.34	0.55	0.43	0.79
2180	2020-05-05 16:05:39	0.55	0.55	0.43	0.34	0.81
2185	2020-05-05 16:06:04	0.55	0.34	0.43	0.34	0.73
2190	2020-05-05 16:06:29	0.55	0.43	0.34	0.34	0.74
2195	2020-05-05 16:06:54	0.34	0.43	0.43	0.55	0.81
2200	2020-05-05 16:07:19	0.55	0.34	0.55	0.43	0.85
2205	2020-05-05 16:07:44	0.43	0.34	0.34	0.34	0.9
2210	2020-05-05 16:08:09	0.34	0.55	0.43	0.55	0.81
2215	2020-05-05 16:08:34	0.34	0.43	0.43	0.43	0.81
2220	2020-05-05 16:08:59	0.43	0.55	0.43	0.34	0.79
2225	2020-05-05 16:09:24	0.34	0.55	0.43	0.34	0.9
2230	2020-05-05 16:09:49	0.55	0.43	0.55	0.55	0.79
2235	2020-05-05 16:10:15	0.34	0.55	0.43	0.55	0.9
2240	2020-05-05 16:10:40	0.34	0.55	0.34	0.34	0.9
2245	2020-05-05 16:11:05	0.43	0.34	0.43	0.34	0.85
2250	2020-05-05 16:11:30	0.34	0.55	0.43	0.43	0.74
2255	2020-05-05 16:11:55	0.34	0.34	0.34	0.43	0.85
2260	2020-05-05 16:12:20	0.34	0.34	0.55	0.55	0.85
2265	2020-05-05 16:12:45	0.55	0.55	0.43	0.34	0.81
2270	2020-05-05 16:13:10	0.34	0.34	0.55	0.34	0.74
2275	2020-05-05 16:13:35	0.43	0.34	0.43	0.43	0.85
2280	2020-05-05 16:14:00	0.43	0.34	0.34	0.43	0.9
2285	2020-05-05 16:14:25	0.43	0.43	0.34	0.43	0.74
2290	2020-05-05 16:14:50	0.43	0.55	0.55	0.43	0.85
2295	2020-05-05 16:15:15	0.55	0.55	0.55	0.34	0.85
2300	2020-05-05 16:15:40	0.43	0.55	0.43	0.43	0.73
2305	2020-05-05 16:16:05	0.55	0.55	0.55	0.55	0.74
2310	2020-05-05 16:16:30	0.55	0.55	0.34	0.34	0.73
2126	2020-05-05 16:01:09	0.43	0.34	0.55	0.55	0.79
2131	2020-05-05 16:01:34	0.34	0.34	0.43	0.34	0.73
2136	2020-05-05 16:01:59	0.43	0.34	0.43	0.55	0.81
2141	2020-05-05 16:02:24	0.55	0.55	0.55	0.55	0.9
2146	2020-05-05 16:02:49	0.43	0.55	0.34	0.43	0.81
2151	2020-05-05 16:03:14	0.43	0.43	0.55	0.55	0.79
2156	2020-05-05 16:03:39	0.55	0.55	0.55	0.34	0.74
2161	2020-05-05 16:04:04	0.34	0.55	0.55	0.43	0.81
2166	2020-05-05 16:04:29	0.43	0.34	0.43	0.43	0.81
2171	2020-05-05 16:04:54	0.43	0.55	0.43	0.43	0.73
2176	2020-05-05 16:05:19	0.55	0.55	0.43	0.34	0.74
2181	2020-05-05 16:05:44	0.43	0.34	0.43	0.43	0.9
2186	2020-05-05 16:06:09	0.55	0.43	0.34	0.55	0.73
2191	2020-05-05 16:06:34	0.34	0.43	0.43	0.43	0.79
2196	2020-05-05 16:06:59	0.55	0.43	0.34	0.43	0.81
2201	2020-05-05 16:07:24	0.55	0.43	0.43	0.34	0.79
2206	2020-05-05 16:07:49	0.34	0.55	0.43	0.43	0.73
2211	2020-05-05 16:08:14	0.34	0.34	0.55	0.43	0.74
2216	2020-05-05 16:08:39	0.55	0.55	0.43	0.55	0.73
2221	2020-05-05 16:09:04	0.55	0.34	0.55	0.43	0.74
2226	2020-05-05 16:09:29	0.55	0.34	0.34	0.43	0.74
2231	2020-05-05 16:09:54	0.55	0.34	0.43	0.55	0.9
2236	2020-05-05 16:10:20	0.43	0.43	0.43	0.55	0.85
2241	2020-05-05 16:10:45	0.34	0.34	0.43	0.34	0.73
2246	2020-05-05 16:11:10	0.55	0.34	0.43	0.55	0.9
2251	2020-05-05 16:11:35	0.43	0.55	0.43	0.55	0.73
2256	2020-05-05 16:12:00	0.43	0.34	0.43	0.34	0.9
2261	2020-05-05 16:12:25	0.34	0.55	0.34	0.34	0.74
2266	2020-05-05 16:12:50	0.43	0.55	0.34	0.43	0.79
2271	2020-05-05 16:13:15	0.43	0.34	0.34	0.43	0.73
2276	2020-05-05 16:13:40	0.34	0.43	0.43	0.55	0.73
2281	2020-05-05 16:14:05	0.55	0.43	0.55	0.43	0.85
2286	2020-05-05 16:14:30	0.55	0.43	0.43	0.34	0.81
2291	2020-05-05 16:14:55	0.43	0.43	0.55	0.34	0.9
2296	2020-05-05 16:15:20	0.34	0.43	0.34	0.34	0.73
2301	2020-05-05 16:15:45	0.43	0.55	0.43	0.55	0.81
2306	2020-05-05 16:16:10	0.55	0.34	0.34	0.34	0.79
2311	2020-05-05 16:16:35	0.55	0.55	0.43	0.34	0.79
2127	2020-05-05 16:01:14	0.34	0.43	0.34	0.55	0.85
2132	2020-05-05 16:01:39	0.34	0.55	0.43	0.55	0.9
2137	2020-05-05 16:02:04	0.34	0.34	0.43	0.43	0.73
2142	2020-05-05 16:02:29	0.55	0.43	0.34	0.34	0.79
2147	2020-05-05 16:02:54	0.55	0.43	0.34	0.43	0.74
2152	2020-05-05 16:03:19	0.43	0.43	0.43	0.34	0.85
2157	2020-05-05 16:03:44	0.55	0.55	0.55	0.34	0.85
2162	2020-05-05 16:04:09	0.34	0.34	0.43	0.43	0.85
2167	2020-05-05 16:04:34	0.43	0.43	0.55	0.34	0.81
2172	2020-05-05 16:04:59	0.55	0.43	0.34	0.55	0.9
2177	2020-05-05 16:05:24	0.34	0.43	0.55	0.34	0.85
2182	2020-05-05 16:05:49	0.34	0.34	0.43	0.34	0.81
2187	2020-05-05 16:06:14	0.34	0.55	0.34	0.55	0.79
2192	2020-05-05 16:06:39	0.34	0.55	0.34	0.34	0.81
2197	2020-05-05 16:07:04	0.34	0.43	0.34	0.55	0.9
2202	2020-05-05 16:07:29	0.55	0.34	0.34	0.55	0.79
2207	2020-05-05 16:07:54	0.34	0.43	0.43	0.43	0.85
2212	2020-05-05 16:08:19	0.55	0.55	0.43	0.34	0.79
2217	2020-05-05 16:08:44	0.43	0.43	0.55	0.43	0.73
2222	2020-05-05 16:09:09	0.55	0.34	0.43	0.34	0.85
2227	2020-05-05 16:09:34	0.34	0.34	0.34	0.43	0.85
2232	2020-05-05 16:09:59	0.43	0.55	0.55	0.43	0.74
2237	2020-05-05 16:10:25	0.43	0.34	0.55	0.43	0.73
2242	2020-05-05 16:10:50	0.43	0.34	0.34	0.34	0.9
2247	2020-05-05 16:11:15	0.55	0.43	0.55	0.55	0.81
2252	2020-05-05 16:11:40	0.43	0.43	0.34	0.34	0.73
2257	2020-05-05 16:12:05	0.34	0.55	0.55	0.55	0.85
2262	2020-05-05 16:12:30	0.43	0.43	0.55	0.55	0.74
2267	2020-05-05 16:12:55	0.34	0.34	0.55	0.34	0.74
2272	2020-05-05 16:13:20	0.34	0.34	0.34	0.43	0.73
2277	2020-05-05 16:13:45	0.55	0.43	0.55	0.34	0.74
2282	2020-05-05 16:14:10	0.55	0.43	0.34	0.43	0.81
2287	2020-05-05 16:14:35	0.55	0.43	0.55	0.34	0.9
2292	2020-05-05 16:15:00	0.55	0.55	0.34	0.55	0.85
2297	2020-05-05 16:15:25	0.34	0.55	0.43	0.55	0.81
2302	2020-05-05 16:15:50	0.34	0.55	0.43	0.43	0.74
2307	2020-05-05 16:16:15	0.34	0.34	0.55	0.34	0.9
2128	2020-05-05 16:01:19	0.34	0.43	0.43	0.43	0.9
2133	2020-05-05 16:01:44	0.43	0.34	0.43	0.43	0.85
2138	2020-05-05 16:02:09	0.43	0.55	0.34	0.34	0.81
2143	2020-05-05 16:02:34	0.34	0.34	0.43	0.34	0.74
2148	2020-05-05 16:02:59	0.55	0.34	0.55	0.34	0.9
2153	2020-05-05 16:03:24	0.34	0.34	0.55	0.55	0.73
2158	2020-05-05 16:03:49	0.55	0.55	0.34	0.34	0.81
2163	2020-05-05 16:04:14	0.55	0.34	0.34	0.34	0.74
2168	2020-05-05 16:04:39	0.55	0.55	0.34	0.34	0.81
2173	2020-05-05 16:05:04	0.43	0.43	0.55	0.34	0.81
2178	2020-05-05 16:05:29	0.34	0.55	0.43	0.43	0.9
2183	2020-05-05 16:05:54	0.55	0.34	0.43	0.55	0.85
2188	2020-05-05 16:06:19	0.55	0.55	0.43	0.34	0.79
2193	2020-05-05 16:06:44	0.43	0.55	0.55	0.43	0.85
2198	2020-05-05 16:07:09	0.55	0.55	0.55	0.55	0.85
2203	2020-05-05 16:07:34	0.43	0.34	0.55	0.43	0.79
2208	2020-05-05 16:07:59	0.43	0.34	0.55	0.55	0.74
2213	2020-05-05 16:08:24	0.34	0.55	0.43	0.55	0.73
2218	2020-05-05 16:08:49	0.43	0.55	0.55	0.34	0.74
2223	2020-05-05 16:09:14	0.55	0.55	0.43	0.43	0.73
2228	2020-05-05 16:09:39	0.55	0.43	0.55	0.55	0.85
2233	2020-05-05 16:10:05	0.34	0.43	0.34	0.34	0.81
2238	2020-05-05 16:10:30	0.43	0.34	0.34	0.34	0.73
2243	2020-05-05 16:10:55	0.34	0.55	0.43	0.34	0.85
2248	2020-05-05 16:11:20	0.34	0.34	0.55	0.55	0.73
2253	2020-05-05 16:11:45	0.34	0.55	0.55	0.34	0.73
2258	2020-05-05 16:12:10	0.55	0.55	0.43	0.55	0.79
2263	2020-05-05 16:12:35	0.43	0.34	0.43	0.55	0.9
2268	2020-05-05 16:13:00	0.55	0.43	0.55	0.34	0.85
2273	2020-05-05 16:13:25	0.34	0.34	0.43	0.55	0.81
2278	2020-05-05 16:13:50	0.43	0.43	0.34	0.34	0.9
2283	2020-05-05 16:14:15	0.43	0.43	0.55	0.43	0.9
2288	2020-05-05 16:14:40	0.43	0.43	0.34	0.55	0.79
2293	2020-05-05 16:15:05	0.34	0.55	0.34	0.55	0.74
2298	2020-05-05 16:15:30	0.55	0.55	0.43	0.43	0.73
2303	2020-05-05 16:15:55	0.55	0.55	0.43	0.34	0.9
2308	2020-05-05 16:16:20	0.55	0.34	0.43	0.55	0.79
2129	2020-05-05 16:01:24	0.43	0.34	0.34	0.43	0.79
2134	2020-05-05 16:01:49	0.55	0.55	0.34	0.34	0.73
2139	2020-05-05 16:02:14	0.55	0.43	0.55	0.55	0.73
2144	2020-05-05 16:02:39	0.43	0.55	0.43	0.34	0.74
2149	2020-05-05 16:03:04	0.55	0.43	0.34	0.34	0.85
2154	2020-05-05 16:03:29	0.34	0.55	0.34	0.55	0.9
2159	2020-05-05 16:03:54	0.43	0.55	0.34	0.34	0.81
2164	2020-05-05 16:04:19	0.43	0.43	0.43	0.43	0.79
2169	2020-05-05 16:04:44	0.34	0.55	0.43	0.34	0.79
2174	2020-05-05 16:05:09	0.43	0.34	0.55	0.55	0.9
2179	2020-05-05 16:05:34	0.43	0.55	0.43	0.34	0.73
2184	2020-05-05 16:05:59	0.34	0.55	0.43	0.34	0.73
2189	2020-05-05 16:06:24	0.34	0.43	0.43	0.43	0.79
2194	2020-05-05 16:06:49	0.55	0.34	0.43	0.55	0.74
2199	2020-05-05 16:07:14	0.34	0.43	0.43	0.43	0.9
2204	2020-05-05 16:07:39	0.34	0.43	0.55	0.34	0.81
2209	2020-05-05 16:08:04	0.55	0.55	0.43	0.34	0.79
2214	2020-05-05 16:08:29	0.34	0.55	0.34	0.43	0.73
2219	2020-05-05 16:08:54	0.34	0.43	0.55	0.43	0.79
2224	2020-05-05 16:09:19	0.43	0.34	0.55	0.55	0.85
2229	2020-05-05 16:09:44	0.55	0.43	0.55	0.34	0.79
2234	2020-05-05 16:10:10	0.43	0.43	0.43	0.34	0.73
2239	2020-05-05 16:10:35	0.55	0.34	0.34	0.55	0.85
2244	2020-05-05 16:11:00	0.34	0.55	0.55	0.43	0.79
2249	2020-05-05 16:11:25	0.43	0.34	0.34	0.43	0.79
2254	2020-05-05 16:11:50	0.43	0.55	0.34	0.55	0.73
2259	2020-05-05 16:12:15	0.55	0.55	0.43	0.55	0.79
2264	2020-05-05 16:12:40	0.55	0.55	0.43	0.34	0.81
2269	2020-05-05 16:13:05	0.34	0.34	0.34	0.34	0.9
2274	2020-05-05 16:13:30	0.43	0.34	0.34	0.55	0.79
2279	2020-05-05 16:13:55	0.43	0.34	0.55	0.34	0.9
2284	2020-05-05 16:14:20	0.55	0.34	0.34	0.34	0.73
2289	2020-05-05 16:14:45	0.43	0.43	0.43	0.55	0.79
2294	2020-05-05 16:15:10	0.34	0.34	0.43	0.43	0.81
2299	2020-05-05 16:15:35	0.34	0.55	0.55	0.43	0.73
2304	2020-05-05 16:16:00	0.34	0.43	0.34	0.55	0.73
2309	2020-05-05 16:16:25	0.34	0.34	0.34	0.34	0.73
2312	2020-05-05 16:16:40	0.55	0.55	0.55	0.43	0.79
2313	2020-05-05 16:16:45	0.34	0.34	0.34	0.55	0.9
2314	2020-05-05 16:16:50	0.34	0.34	0.34	0.55	0.74
2315	2020-05-05 16:16:55	0.55	0.55	0.34	0.43	0.79
2316	2020-05-05 16:17:00	0.55	0.55	0.43	0.43	0.73
2317	2020-05-05 16:17:05	0.34	0.34	0.43	0.55	0.81
2318	2020-05-05 16:17:10	0.34	0.34	0.43	0.55	0.81
2319	2020-05-05 16:17:15	0.34	0.43	0.55	0.55	0.74
2320	2020-05-05 16:17:20	0.34	0.55	0.55	0.34	0.73
2321	2020-05-05 16:17:25	0.55	0.34	0.34	0.55	0.9
2322	2020-05-05 16:17:30	0.34	0.55	0.43	0.34	0.73
2323	2020-05-05 16:17:35	0.34	0.43	0.34	0.34	0.81
2324	2020-05-05 16:17:40	0.34	0.34	0.43	0.43	0.85
2325	2020-05-05 16:17:45	0.34	0.43	0.55	0.34	0.73
2326	2020-05-05 16:17:50	0.55	0.43	0.43	0.55	0.81
2327	2020-05-05 16:17:55	0.43	0.55	0.34	0.55	0.79
2328	2020-05-05 16:18:00	0.55	0.34	0.55	0.34	0.79
2329	2020-05-05 16:18:05	0.55	0.55	0.55	0.55	0.81
2330	2020-05-05 16:18:10	0.34	0.34	0.43	0.55	0.73
2331	2020-05-05 16:18:15	0.43	0.55	0.43	0.34	0.74
2332	2020-05-05 16:18:20	0.43	0.55	0.55	0.55	0.73
2333	2020-05-05 16:18:25	0.43	0.34	0.34	0.43	0.73
2334	2020-05-05 16:18:30	0.34	0.55	0.43	0.55	0.79
2335	2020-05-05 16:18:35	0.55	0.34	0.34	0.43	0.9
2336	2020-05-05 16:18:40	0.55	0.34	0.55	0.55	0.85
2337	2020-05-05 16:18:45	0.34	0.55	0.34	0.34	0.73
2338	2020-05-05 16:18:50	0.43	0.43	0.55	0.43	0.85
2339	2020-05-05 16:18:55	0.55	0.55	0.43	0.34	0.79
2340	2020-05-05 16:19:00	0.34	0.34	0.43	0.43	0.81
2341	2020-05-05 16:19:05	0.34	0.43	0.43	0.55	0.74
2342	2020-05-05 16:19:10	0.55	0.34	0.34	0.55	0.81
2343	2020-05-05 16:19:15	0.34	0.43	0.43	0.55	0.85
2344	2020-05-05 16:19:20	0.55	0.43	0.34	0.43	0.9
2345	2020-05-05 16:19:25	0.34	0.34	0.43	0.55	0.73
2346	2020-05-05 16:19:30	0.55	0.43	0.55	0.43	0.73
2347	2020-05-05 16:19:35	0.43	0.34	0.55	0.55	0.74
2348	2020-05-05 16:19:40	0.34	0.43	0.34	0.43	0.79
2349	2020-05-05 16:19:45	0.34	0.34	0.55	0.43	0.74
2350	2020-05-05 16:19:50	0.55	0.43	0.43	0.55	0.73
2351	2020-05-05 16:19:55	0.43	0.55	0.43	0.55	0.9
2352	2020-05-05 16:20:00	0.55	0.34	0.55	0.55	0.73
2353	2020-05-05 16:20:05	0.55	0.34	0.55	0.55	0.74
2354	2020-05-05 16:20:10	0.55	0.34	0.43	0.43	0.73
2355	2020-05-05 16:20:15	0.43	0.55	0.34	0.34	0.81
2356	2020-05-05 16:20:20	0.34	0.34	0.43	0.43	0.81
2357	2020-05-05 16:20:25	0.55	0.34	0.55	0.43	0.74
2358	2020-05-05 16:20:30	0.43	0.34	0.55	0.43	0.81
2359	2020-05-05 16:20:35	0.43	0.43	0.34	0.34	0.73
2360	2020-05-05 16:20:40	0.34	0.55	0.34	0.43	0.74
2361	2020-05-05 16:20:45	0.34	0.43	0.34	0.34	0.79
2362	2020-05-05 16:20:50	0.43	0.34	0.34	0.34	0.85
2363	2020-05-05 16:20:55	0.55	0.43	0.55	0.34	0.79
2364	2020-05-05 16:21:00	0.43	0.55	0.34	0.43	0.81
2365	2020-05-05 16:21:05	0.55	0.55	0.43	0.43	0.79
2366	2020-05-05 16:21:10	0.43	0.43	0.34	0.34	0.85
2367	2020-05-05 16:21:15	0.34	0.43	0.55	0.55	0.73
2368	2020-05-05 16:21:20	0.43	0.34	0.43	0.43	0.74
2369	2020-05-05 16:21:25	0.43	0.34	0.43	0.43	0.73
2370	2020-05-05 16:21:30	0.34	0.34	0.43	0.55	0.85
2371	2020-05-05 16:21:35	0.43	0.34	0.34	0.43	0.9
2372	2020-05-05 16:21:40	0.34	0.43	0.43	0.34	0.79
2373	2020-05-05 16:21:45	0.55	0.55	0.34	0.34	0.9
2374	2020-05-05 16:21:50	0.43	0.55	0.34	0.43	0.79
2375	2020-05-05 16:21:55	0.43	0.34	0.43	0.55	0.81
2376	2020-05-05 16:22:00	0.34	0.43	0.55	0.34	0.73
2377	2020-05-05 16:22:05	0.43	0.34	0.43	0.55	0.79
2378	2020-05-05 16:22:10	0.34	0.34	0.43	0.55	0.81
2379	2020-05-05 16:22:15	0.34	0.55	0.43	0.34	0.73
2380	2020-05-05 16:22:20	0.43	0.55	0.34	0.43	0.85
2381	2020-05-05 16:22:25	0.34	0.34	0.34	0.43	0.74
2382	2020-05-05 16:22:30	0.55	0.34	0.43	0.43	0.74
2383	2020-05-05 16:22:35	0.34	0.34	0.34	0.34	0.9
2388	2020-05-05 16:23:00	0.34	0.43	0.43	0.55	0.74
2393	2020-05-05 16:23:25	0.34	0.34	0.55	0.34	0.85
2398	2020-05-05 16:23:50	0.34	0.55	0.55	0.34	0.73
2403	2020-05-05 16:24:15	0.34	0.55	0.43	0.43	0.85
2408	2020-05-05 16:24:40	0.43	0.43	0.55	0.55	0.9
2413	2020-05-05 16:25:05	0.34	0.43	0.43	0.34	0.73
2418	2020-05-05 16:25:30	0.55	0.55	0.55	0.34	0.85
2423	2020-05-05 16:25:55	0.43	0.43	0.55	0.43	0.79
2428	2020-05-05 16:26:20	0.55	0.55	0.34	0.34	0.9
2433	2020-05-05 16:26:45	0.34	0.34	0.34	0.55	0.73
2438	2020-05-05 16:27:10	0.34	0.34	0.43	0.43	0.73
2443	2020-05-05 16:27:35	0.34	0.34	0.43	0.55	0.85
2448	2020-05-05 16:28:00	0.43	0.34	0.43	0.34	0.9
2453	2020-05-05 16:28:25	0.55	0.34	0.55	0.43	0.9
2458	2020-05-05 16:28:50	0.34	0.34	0.43	0.55	0.79
2463	2020-05-05 16:29:15	0.43	0.43	0.55	0.55	0.9
2468	2020-05-05 16:29:40	0.43	0.55	0.55	0.43	0.81
2473	2020-05-05 16:30:05	0.55	0.34	0.43	0.55	0.79
2478	2020-05-05 16:30:30	0.55	0.43	0.43	0.55	0.81
2483	2020-05-05 16:30:55	0.43	0.43	0.34	0.34	0.81
2488	2020-05-05 16:31:20	0.34	0.55	0.34	0.34	0.81
2493	2020-05-05 16:31:45	0.43	0.55	0.55	0.34	0.73
2498	2020-05-05 16:32:10	0.43	0.55	0.43	0.34	0.74
2503	2020-05-05 16:32:35	0.55	0.43	0.55	0.43	0.73
2508	2020-05-05 16:33:00	0.55	0.34	0.43	0.34	0.74
2513	2020-05-05 16:33:25	0.34	0.43	0.34	0.34	0.79
2518	2020-05-05 16:33:50	0.34	0.34	0.55	0.55	0.81
2523	2020-05-05 16:34:15	0.43	0.55	0.43	0.43	0.85
2528	2020-05-05 16:34:40	0.34	0.43	0.34	0.43	0.9
2533	2020-05-05 16:35:05	0.43	0.43	0.55	0.34	0.85
2538	2020-05-05 16:35:30	0.43	0.34	0.34	0.43	0.85
2543	2020-05-05 16:35:55	0.34	0.55	0.55	0.34	0.73
2548	2020-05-05 16:36:20	0.43	0.34	0.34	0.55	0.74
2553	2020-05-05 16:36:45	0.34	0.43	0.43	0.43	0.81
2558	2020-05-05 16:37:10	0.43	0.55	0.55	0.43	0.73
2563	2020-05-05 16:37:35	0.34	0.34	0.43	0.55	0.81
2568	2020-05-05 16:38:00	0.43	0.43	0.34	0.34	0.79
2573	2020-05-05 16:38:25	0.43	0.43	0.34	0.43	0.81
2578	2020-05-05 16:38:50	0.43	0.43	0.34	0.43	0.74
2583	2020-05-05 16:39:16	0.34	0.34	0.34	0.43	0.74
2588	2020-05-05 16:39:41	0.34	0.34	0.55	0.34	0.81
2593	2020-05-05 16:40:06	0.43	0.34	0.34	0.43	0.9
2598	2020-05-05 16:40:31	0.43	0.43	0.34	0.43	0.74
2384	2020-05-05 16:22:40	0.34	0.34	0.43	0.55	0.85
2389	2020-05-05 16:23:05	0.43	0.43	0.55	0.34	0.85
2394	2020-05-05 16:23:30	0.55	0.43	0.55	0.34	0.73
2399	2020-05-05 16:23:55	0.43	0.34	0.34	0.55	0.9
2404	2020-05-05 16:24:20	0.43	0.43	0.34	0.34	0.79
2409	2020-05-05 16:24:45	0.34	0.55	0.34	0.34	0.73
2414	2020-05-05 16:25:10	0.43	0.55	0.43	0.34	0.85
2419	2020-05-05 16:25:35	0.55	0.34	0.43	0.43	0.85
2424	2020-05-05 16:26:00	0.34	0.55	0.34	0.55	0.9
2429	2020-05-05 16:26:25	0.55	0.55	0.34	0.34	0.73
2434	2020-05-05 16:26:50	0.55	0.34	0.34	0.43	0.79
2439	2020-05-05 16:27:15	0.43	0.34	0.43	0.34	0.9
2444	2020-05-05 16:27:40	0.43	0.55	0.55	0.34	0.74
2449	2020-05-05 16:28:05	0.34	0.34	0.55	0.43	0.79
2454	2020-05-05 16:28:30	0.43	0.43	0.55	0.43	0.73
2459	2020-05-05 16:28:55	0.34	0.43	0.43	0.43	0.81
2464	2020-05-05 16:29:20	0.34	0.43	0.43	0.34	0.79
2469	2020-05-05 16:29:45	0.34	0.34	0.43	0.55	0.9
2474	2020-05-05 16:30:10	0.55	0.55	0.43	0.34	0.81
2479	2020-05-05 16:30:35	0.43	0.43	0.34	0.43	0.79
2484	2020-05-05 16:31:00	0.55	0.43	0.55	0.55	0.79
2489	2020-05-05 16:31:25	0.43	0.55	0.43	0.43	0.73
2494	2020-05-05 16:31:50	0.34	0.43	0.34	0.55	0.85
2499	2020-05-05 16:32:15	0.55	0.55	0.43	0.34	0.81
2504	2020-05-05 16:32:40	0.43	0.55	0.34	0.55	0.79
2509	2020-05-05 16:33:05	0.43	0.55	0.34	0.55	0.81
2514	2020-05-05 16:33:30	0.55	0.43	0.55	0.55	0.73
2519	2020-05-05 16:33:55	0.34	0.34	0.55	0.43	0.81
2524	2020-05-05 16:34:20	0.43	0.43	0.55	0.43	0.9
2529	2020-05-05 16:34:45	0.34	0.43	0.34	0.43	0.85
2534	2020-05-05 16:35:10	0.43	0.55	0.34	0.43	0.79
2539	2020-05-05 16:35:35	0.34	0.55	0.34	0.55	0.9
2544	2020-05-05 16:36:00	0.43	0.34	0.55	0.55	0.79
2549	2020-05-05 16:36:25	0.34	0.43	0.43	0.43	0.73
2554	2020-05-05 16:36:50	0.55	0.43	0.34	0.55	0.79
2559	2020-05-05 16:37:15	0.43	0.34	0.34	0.55	0.9
2564	2020-05-05 16:37:40	0.34	0.34	0.43	0.43	0.79
2569	2020-05-05 16:38:05	0.43	0.43	0.34	0.55	0.73
2574	2020-05-05 16:38:30	0.34	0.43	0.34	0.34	0.74
2579	2020-05-05 16:38:55	0.55	0.34	0.43	0.55	0.9
2584	2020-05-05 16:39:21	0.43	0.55	0.34	0.55	0.74
2589	2020-05-05 16:39:46	0.34	0.43	0.34	0.43	0.9
2594	2020-05-05 16:40:11	0.34	0.34	0.55	0.34	0.9
2599	2020-05-05 16:40:36	0.43	0.43	0.34	0.34	0.9
2385	2020-05-05 16:22:45	0.43	0.55	0.34	0.34	0.81
2390	2020-05-05 16:23:10	0.55	0.34	0.43	0.55	0.81
2395	2020-05-05 16:23:35	0.43	0.43	0.43	0.43	0.74
2400	2020-05-05 16:24:00	0.43	0.55	0.34	0.43	0.9
2405	2020-05-05 16:24:25	0.55	0.55	0.43	0.55	0.73
2410	2020-05-05 16:24:50	0.34	0.43	0.55	0.34	0.81
2415	2020-05-05 16:25:15	0.34	0.34	0.34	0.43	0.85
2420	2020-05-05 16:25:40	0.43	0.43	0.55	0.55	0.79
2425	2020-05-05 16:26:05	0.43	0.55	0.43	0.55	0.81
2430	2020-05-05 16:26:30	0.55	0.43	0.55	0.34	0.74
2435	2020-05-05 16:26:55	0.55	0.55	0.34	0.34	0.81
2440	2020-05-05 16:27:20	0.43	0.34	0.34	0.55	0.73
2445	2020-05-05 16:27:45	0.55	0.55	0.55	0.43	0.74
2450	2020-05-05 16:28:10	0.55	0.55	0.55	0.55	0.74
2455	2020-05-05 16:28:35	0.55	0.55	0.55	0.34	0.74
2460	2020-05-05 16:29:00	0.55	0.55	0.55	0.43	0.73
2465	2020-05-05 16:29:25	0.43	0.55	0.55	0.55	0.81
2470	2020-05-05 16:29:50	0.43	0.43	0.43	0.43	0.85
2475	2020-05-05 16:30:15	0.55	0.43	0.43	0.55	0.73
2480	2020-05-05 16:30:40	0.34	0.34	0.34	0.34	0.85
2485	2020-05-05 16:31:05	0.43	0.43	0.43	0.34	0.74
2490	2020-05-05 16:31:30	0.34	0.34	0.34	0.43	0.79
2495	2020-05-05 16:31:55	0.34	0.34	0.43	0.34	0.85
2500	2020-05-05 16:32:20	0.55	0.34	0.43	0.34	0.79
2505	2020-05-05 16:32:45	0.43	0.34	0.34	0.34	0.85
2510	2020-05-05 16:33:10	0.43	0.55	0.34	0.34	0.9
2515	2020-05-05 16:33:35	0.55	0.55	0.55	0.43	0.9
2520	2020-05-05 16:34:00	0.55	0.34	0.43	0.34	0.81
2525	2020-05-05 16:34:25	0.34	0.55	0.34	0.34	0.79
2530	2020-05-05 16:34:50	0.55	0.34	0.34	0.43	0.85
2535	2020-05-05 16:35:15	0.43	0.43	0.43	0.55	0.79
2540	2020-05-05 16:35:40	0.55	0.34	0.43	0.43	0.74
2545	2020-05-05 16:36:05	0.55	0.34	0.43	0.34	0.74
2550	2020-05-05 16:36:30	0.55	0.34	0.55	0.43	0.73
2555	2020-05-05 16:36:55	0.43	0.55	0.43	0.34	0.74
2560	2020-05-05 16:37:20	0.43	0.34	0.34	0.43	0.9
2565	2020-05-05 16:37:45	0.34	0.34	0.55	0.43	0.85
2570	2020-05-05 16:38:10	0.43	0.55	0.34	0.55	0.74
2575	2020-05-05 16:38:35	0.43	0.34	0.55	0.43	0.81
2580	2020-05-05 16:39:01	0.43	0.34	0.43	0.55	0.85
2585	2020-05-05 16:39:26	0.55	0.43	0.34	0.43	0.81
2590	2020-05-05 16:39:51	0.55	0.43	0.34	0.43	0.9
2595	2020-05-05 16:40:16	0.43	0.43	0.55	0.34	0.9
2386	2020-05-05 16:22:50	0.43	0.55	0.43	0.55	0.9
2391	2020-05-05 16:23:15	0.55	0.55	0.43	0.34	0.85
2396	2020-05-05 16:23:40	0.34	0.43	0.34	0.55	0.85
2401	2020-05-05 16:24:05	0.43	0.34	0.55	0.34	0.85
2406	2020-05-05 16:24:30	0.43	0.43	0.34	0.34	0.85
2411	2020-05-05 16:24:55	0.43	0.34	0.43	0.34	0.79
2416	2020-05-05 16:25:20	0.55	0.43	0.34	0.34	0.74
2421	2020-05-05 16:25:45	0.55	0.34	0.34	0.55	0.81
2426	2020-05-05 16:26:10	0.43	0.43	0.55	0.55	0.74
2431	2020-05-05 16:26:35	0.34	0.55	0.43	0.34	0.85
2436	2020-05-05 16:27:00	0.55	0.34	0.34	0.43	0.81
2441	2020-05-05 16:27:25	0.55	0.34	0.55	0.34	0.73
2446	2020-05-05 16:27:50	0.43	0.55	0.34	0.43	0.74
2451	2020-05-05 16:28:15	0.43	0.34	0.55	0.34	0.73
2456	2020-05-05 16:28:40	0.43	0.43	0.34	0.43	0.74
2461	2020-05-05 16:29:05	0.43	0.43	0.43	0.34	0.9
2466	2020-05-05 16:29:30	0.34	0.34	0.55	0.34	0.81
2471	2020-05-05 16:29:55	0.43	0.55	0.43	0.34	0.85
2476	2020-05-05 16:30:20	0.43	0.43	0.43	0.43	0.85
2481	2020-05-05 16:30:45	0.55	0.34	0.34	0.34	0.79
2486	2020-05-05 16:31:10	0.43	0.34	0.43	0.34	0.9
2491	2020-05-05 16:31:35	0.34	0.34	0.43	0.34	0.74
2496	2020-05-05 16:32:00	0.55	0.55	0.34	0.55	0.85
2501	2020-05-05 16:32:25	0.43	0.55	0.43	0.55	0.9
2506	2020-05-05 16:32:50	0.34	0.55	0.34	0.34	0.73
2511	2020-05-05 16:33:15	0.55	0.55	0.34	0.55	0.85
2516	2020-05-05 16:33:40	0.43	0.43	0.34	0.55	0.74
2521	2020-05-05 16:34:05	0.43	0.43	0.55	0.55	0.81
2526	2020-05-05 16:34:30	0.34	0.55	0.55	0.55	0.74
2531	2020-05-05 16:34:55	0.43	0.43	0.43	0.43	0.74
2536	2020-05-05 16:35:20	0.43	0.55	0.55	0.55	0.73
2541	2020-05-05 16:35:45	0.34	0.34	0.43	0.55	0.79
2546	2020-05-05 16:36:10	0.55	0.34	0.55	0.34	0.85
2551	2020-05-05 16:36:35	0.43	0.55	0.55	0.43	0.81
2556	2020-05-05 16:37:00	0.34	0.43	0.34	0.43	0.79
2561	2020-05-05 16:37:25	0.55	0.34	0.55	0.34	0.81
2566	2020-05-05 16:37:50	0.34	0.43	0.34	0.55	0.9
2571	2020-05-05 16:38:15	0.43	0.55	0.55	0.55	0.85
2576	2020-05-05 16:38:40	0.55	0.55	0.55	0.34	0.73
2581	2020-05-05 16:39:06	0.34	0.55	0.43	0.43	0.73
2586	2020-05-05 16:39:31	0.34	0.55	0.55	0.43	0.79
2591	2020-05-05 16:39:56	0.55	0.43	0.43	0.55	0.79
2596	2020-05-05 16:40:21	0.55	0.55	0.55	0.55	0.79
2387	2020-05-05 16:22:55	0.55	0.55	0.43	0.34	0.74
2392	2020-05-05 16:23:20	0.34	0.34	0.55	0.43	0.81
2397	2020-05-05 16:23:45	0.43	0.43	0.43	0.55	0.74
2402	2020-05-05 16:24:10	0.34	0.34	0.34	0.34	0.81
2407	2020-05-05 16:24:35	0.55	0.43	0.34	0.34	0.9
2412	2020-05-05 16:25:00	0.43	0.34	0.43	0.34	0.73
2417	2020-05-05 16:25:25	0.43	0.43	0.43	0.55	0.85
2422	2020-05-05 16:25:50	0.55	0.43	0.43	0.55	0.9
2427	2020-05-05 16:26:15	0.43	0.43	0.43	0.43	0.79
2432	2020-05-05 16:26:40	0.34	0.34	0.43	0.55	0.81
2437	2020-05-05 16:27:05	0.43	0.55	0.43	0.43	0.79
2442	2020-05-05 16:27:30	0.55	0.43	0.43	0.34	0.73
2447	2020-05-05 16:27:55	0.55	0.34	0.43	0.34	0.81
2452	2020-05-05 16:28:20	0.55	0.55	0.55	0.34	0.81
2457	2020-05-05 16:28:45	0.34	0.34	0.55	0.55	0.81
2462	2020-05-05 16:29:10	0.55	0.43	0.34	0.34	0.81
2467	2020-05-05 16:29:35	0.43	0.34	0.55	0.34	0.85
2472	2020-05-05 16:30:00	0.43	0.55	0.43	0.34	0.81
2477	2020-05-05 16:30:25	0.34	0.43	0.43	0.34	0.79
2482	2020-05-05 16:30:50	0.43	0.43	0.55	0.43	0.74
2487	2020-05-05 16:31:15	0.55	0.43	0.55	0.55	0.85
2492	2020-05-05 16:31:40	0.55	0.34	0.55	0.34	0.79
2497	2020-05-05 16:32:05	0.55	0.55	0.43	0.34	0.81
2502	2020-05-05 16:32:30	0.43	0.55	0.55	0.43	0.73
2507	2020-05-05 16:32:55	0.34	0.34	0.43	0.55	0.74
2512	2020-05-05 16:33:20	0.55	0.55	0.55	0.34	0.9
2517	2020-05-05 16:33:45	0.55	0.34	0.34	0.43	0.74
2522	2020-05-05 16:34:10	0.43	0.34	0.34	0.55	0.74
2527	2020-05-05 16:34:35	0.43	0.55	0.43	0.43	0.85
2532	2020-05-05 16:35:00	0.34	0.43	0.34	0.34	0.73
2537	2020-05-05 16:35:25	0.55	0.34	0.55	0.34	0.73
2542	2020-05-05 16:35:50	0.43	0.34	0.55	0.55	0.74
2547	2020-05-05 16:36:15	0.34	0.55	0.43	0.43	0.79
2552	2020-05-05 16:36:40	0.34	0.34	0.34	0.34	0.85
2557	2020-05-05 16:37:05	0.34	0.55	0.43	0.43	0.74
2562	2020-05-05 16:37:30	0.34	0.43	0.43	0.34	0.73
2567	2020-05-05 16:37:55	0.43	0.34	0.34	0.34	0.85
2572	2020-05-05 16:38:20	0.55	0.55	0.43	0.43	0.79
2577	2020-05-05 16:38:45	0.55	0.55	0.55	0.55	0.79
2582	2020-05-05 16:39:11	0.34	0.34	0.55	0.55	0.81
2587	2020-05-05 16:39:36	0.34	0.34	0.34	0.43	0.81
2592	2020-05-05 16:40:01	0.55	0.34	0.55	0.55	0.74
2597	2020-05-05 16:40:26	0.43	0.55	0.43	0.55	0.81
2600	2020-05-05 16:40:41	0.55	0.34	0.55	0.55	0.73
2601	2020-05-05 16:40:46	0.34	0.43	0.55	0.34	0.81
2602	2020-05-05 16:40:51	0.55	0.34	0.55	0.43	0.81
2603	2020-05-05 16:40:56	0.34	0.43	0.34	0.34	0.74
2604	2020-05-05 16:41:01	0.34	0.55	0.34	0.34	0.74
2605	2020-05-05 16:41:06	0.55	0.55	0.34	0.43	0.9
2606	2020-05-05 16:41:11	0.55	0.55	0.34	0.55	0.85
2607	2020-05-05 16:41:16	0.55	0.55	0.55	0.34	0.85
2608	2020-05-05 16:41:21	0.43	0.55	0.55	0.55	0.9
2609	2020-05-05 16:41:26	0.43	0.34	0.55	0.43	0.73
2610	2020-05-05 16:41:31	0.55	0.34	0.55	0.55	0.79
2611	2020-05-05 16:41:36	0.34	0.34	0.43	0.34	0.74
2612	2020-05-05 16:41:41	0.43	0.43	0.34	0.55	0.9
2613	2020-05-05 16:41:46	0.34	0.34	0.34	0.43	0.79
2614	2020-05-05 16:41:51	0.43	0.43	0.34	0.43	0.74
2615	2020-05-05 16:41:56	0.43	0.34	0.43	0.34	0.9
2616	2020-05-05 16:42:01	0.55	0.55	0.43	0.34	0.73
2617	2020-05-05 16:42:06	0.43	0.34	0.34	0.55	0.9
2618	2020-05-05 16:42:11	0.34	0.55	0.34	0.34	0.73
2619	2020-05-05 16:42:16	0.34	0.43	0.34	0.43	0.85
2620	2020-05-05 16:42:21	0.43	0.34	0.55	0.34	0.81
2621	2020-05-05 16:42:26	0.34	0.55	0.34	0.34	0.85
2622	2020-05-05 16:42:31	0.34	0.55	0.55	0.55	0.73
2623	2020-05-05 16:42:36	0.43	0.55	0.43	0.34	0.79
2624	2020-05-05 16:42:41	0.55	0.43	0.43	0.43	0.9
2625	2020-05-05 16:42:46	0.34	0.34	0.34	0.55	0.85
2626	2020-05-05 16:42:51	0.55	0.55	0.55	0.55	0.85
2627	2020-05-05 16:42:56	0.55	0.55	0.34	0.55	0.81
2628	2020-05-05 16:43:01	0.43	0.43	0.34	0.34	0.81
2629	2020-05-05 16:43:06	0.34	0.43	0.34	0.55	0.74
2630	2020-05-05 16:43:11	0.55	0.55	0.34	0.55	0.79
2631	2020-05-05 16:43:16	0.43	0.43	0.34	0.55	0.9
2632	2020-05-05 16:43:21	0.43	0.43	0.34	0.43	0.74
2633	2020-05-05 16:43:26	0.34	0.55	0.43	0.55	0.81
2634	2020-05-05 16:43:31	0.43	0.55	0.34	0.34	0.9
2635	2020-05-05 16:43:36	0.55	0.34	0.34	0.34	0.9
2636	2020-05-05 16:43:41	0.55	0.43	0.43	0.55	0.85
2637	2020-05-05 16:43:46	0.55	0.55	0.34	0.43	0.81
2638	2020-05-05 16:43:51	0.34	0.34	0.55	0.55	0.73
2639	2020-05-05 16:43:56	0.43	0.34	0.43	0.34	0.73
2640	2020-05-05 16:44:01	0.43	0.43	0.34	0.55	0.9
2641	2020-05-05 16:44:06	0.55	0.34	0.55	0.55	0.79
2642	2020-05-05 16:44:11	0.34	0.34	0.43	0.43	0.85
2643	2020-05-05 16:44:16	0.43	0.55	0.55	0.43	0.74
2644	2020-05-05 16:44:21	0.43	0.55	0.34	0.43	0.73
2645	2020-05-05 16:44:26	0.34	0.43	0.55	0.34	0.85
2646	2020-05-05 16:44:31	0.34	0.34	0.34	0.55	0.85
2647	2020-05-05 16:44:36	0.55	0.55	0.34	0.43	0.73
2648	2020-05-05 16:44:41	0.55	0.55	0.55	0.34	0.85
2649	2020-05-05 16:44:46	0.43	0.55	0.43	0.34	0.81
2650	2020-05-05 16:44:51	0.34	0.34	0.34	0.43	0.81
2651	2020-05-05 16:44:56	0.43	0.43	0.55	0.34	0.74
2652	2020-05-05 16:45:01	0.34	0.34	0.43	0.34	0.9
2653	2020-05-05 16:45:06	0.55	0.34	0.34	0.34	0.74
2654	2020-05-05 16:45:11	0.43	0.34	0.43	0.55	0.85
2655	2020-05-05 16:45:16	0.55	0.34	0.55	0.43	0.85
2656	2020-05-05 16:45:21	0.43	0.55	0.43	0.34	0.9
2657	2020-05-05 16:45:26	0.55	0.55	0.34	0.43	0.73
2658	2020-05-05 16:45:31	0.43	0.43	0.34	0.34	0.79
2659	2020-05-05 16:45:36	0.34	0.55	0.34	0.43	0.74
2660	2020-05-05 16:45:41	0.43	0.55	0.55	0.34	0.79
2661	2020-05-05 16:45:46	0.34	0.43	0.43	0.43	0.81
2662	2020-05-05 16:45:51	0.43	0.43	0.34	0.55	0.9
2663	2020-05-05 16:45:56	0.55	0.43	0.34	0.34	0.85
2664	2020-05-05 16:46:01	0.55	0.34	0.55	0.34	0.73
2665	2020-05-05 16:46:06	0.55	0.34	0.43	0.34	0.74
2666	2020-05-05 16:46:11	0.55	0.55	0.55	0.43	0.74
2671	2020-05-05 16:46:36	0.43	0.34	0.34	0.34	0.74
2676	2020-05-05 16:47:01	0.43	0.34	0.43	0.55	0.73
2681	2020-05-05 16:47:26	0.34	0.55	0.55	0.55	0.74
2686	2020-05-05 16:47:51	0.55	0.55	0.34	0.34	0.79
2691	2020-05-05 16:48:16	0.55	0.34	0.34	0.43	0.81
2696	2020-05-05 16:48:41	0.43	0.43	0.43	0.43	0.74
2701	2020-05-05 16:49:06	0.43	0.55	0.43	0.55	0.79
2706	2020-05-05 16:49:31	0.34	0.43	0.34	0.55	0.79
2711	2020-05-05 16:49:56	0.43	0.55	0.34	0.43	0.81
2716	2020-05-05 16:50:21	0.34	0.43	0.55	0.34	0.81
2721	2020-05-05 16:50:46	0.43	0.34	0.43	0.55	0.81
2726	2020-05-05 16:51:11	0.34	0.55	0.55	0.34	0.79
2731	2020-05-05 16:51:36	0.55	0.55	0.34	0.55	0.79
2736	2020-05-05 16:52:01	0.43	0.55	0.55	0.43	0.79
2741	2020-05-05 16:52:26	0.34	0.55	0.55	0.43	0.74
2746	2020-05-05 16:52:51	0.43	0.43	0.55	0.43	0.73
2751	2020-05-05 16:53:16	0.55	0.55	0.43	0.55	0.74
2756	2020-05-05 16:53:41	0.43	0.55	0.55	0.43	0.85
2761	2020-05-05 16:54:06	0.34	0.55	0.34	0.34	0.79
2766	2020-05-05 16:54:31	0.34	0.34	0.55	0.43	0.79
2771	2020-05-05 16:54:56	0.55	0.43	0.55	0.55	0.81
2776	2020-05-05 16:55:21	0.43	0.55	0.43	0.55	0.79
2781	2020-05-05 16:55:46	0.55	0.55	0.34	0.43	0.79
2786	2020-05-05 16:56:11	0.55	0.34	0.43	0.34	0.74
2791	2020-05-05 16:56:36	0.43	0.55	0.43	0.43	0.74
2796	2020-05-05 16:57:01	0.55	0.55	0.43	0.34	0.85
2801	2020-05-05 16:57:26	0.43	0.55	0.34	0.34	0.73
2806	2020-05-05 16:57:51	0.43	0.34	0.43	0.34	0.81
2811	2020-05-05 16:58:16	0.34	0.34	0.55	0.55	0.9
2816	2020-05-05 16:58:41	0.43	0.55	0.34	0.55	0.85
2821	2020-05-05 16:59:06	0.34	0.43	0.55	0.43	0.9
2826	2020-05-05 16:59:31	0.43	0.55	0.43	0.55	0.73
2831	2020-05-05 16:59:56	0.55	0.55	0.43	0.34	0.74
2836	2020-05-05 17:00:21	0.34	0.55	0.34	0.34	0.74
2841	2020-05-05 17:00:46	0.34	0.34	0.34	0.55	0.85
2846	2020-05-05 17:01:11	0.43	0.34	0.43	0.43	0.79
2851	2020-05-05 17:01:36	0.34	0.55	0.34	0.34	0.9
2856	2020-05-05 17:02:01	0.55	0.34	0.55	0.43	0.81
2861	2020-05-05 17:02:26	0.55	0.34	0.55	0.43	0.74
2866	2020-05-05 17:02:51	0.55	0.55	0.55	0.55	0.81
2871	2020-05-05 17:03:16	0.43	0.55	0.34	0.34	0.73
2876	2020-05-05 17:03:41	0.55	0.34	0.55	0.34	0.9
2881	2020-05-05 17:04:06	0.34	0.43	0.43	0.55	0.9
2886	2020-05-05 17:04:31	0.55	0.34	0.43	0.34	0.74
2891	2020-05-05 17:04:56	0.34	0.55	0.43	0.43	0.9
2896	2020-05-05 17:05:21	0.55	0.43	0.55	0.34	0.74
2901	2020-05-05 17:05:46	0.34	0.34	0.55	0.34	0.85
2906	2020-05-05 17:06:11	0.34	0.43	0.34	0.55	0.9
2911	2020-05-05 17:06:36	0.55	0.55	0.34	0.34	0.9
2667	2020-05-05 16:46:16	0.55	0.43	0.55	0.43	0.9
2672	2020-05-05 16:46:41	0.34	0.55	0.43	0.34	0.9
2677	2020-05-05 16:47:06	0.43	0.34	0.34	0.55	0.81
2682	2020-05-05 16:47:31	0.55	0.55	0.34	0.34	0.9
2687	2020-05-05 16:47:56	0.43	0.43	0.55	0.43	0.85
2692	2020-05-05 16:48:21	0.43	0.43	0.34	0.43	0.79
2697	2020-05-05 16:48:46	0.43	0.55	0.43	0.55	0.79
2702	2020-05-05 16:49:11	0.43	0.34	0.43	0.43	0.79
2707	2020-05-05 16:49:36	0.43	0.34	0.43	0.34	0.85
2712	2020-05-05 16:50:01	0.43	0.55	0.43	0.55	0.81
2717	2020-05-05 16:50:26	0.55	0.43	0.43	0.34	0.73
2722	2020-05-05 16:50:51	0.34	0.34	0.55	0.43	0.79
2727	2020-05-05 16:51:16	0.34	0.43	0.55	0.43	0.85
2732	2020-05-05 16:51:41	0.55	0.43	0.43	0.55	0.81
2737	2020-05-05 16:52:06	0.43	0.55	0.43	0.34	0.73
2742	2020-05-05 16:52:31	0.34	0.34	0.34	0.43	0.81
2747	2020-05-05 16:52:56	0.34	0.55	0.55	0.34	0.79
2752	2020-05-05 16:53:21	0.43	0.43	0.34	0.43	0.9
2757	2020-05-05 16:53:46	0.55	0.55	0.34	0.43	0.74
2762	2020-05-05 16:54:11	0.55	0.43	0.43	0.34	0.79
2767	2020-05-05 16:54:36	0.43	0.55	0.55	0.55	0.81
2772	2020-05-05 16:55:01	0.43	0.43	0.55	0.43	0.85
2777	2020-05-05 16:55:26	0.55	0.34	0.34	0.34	0.79
2782	2020-05-05 16:55:51	0.43	0.34	0.34	0.43	0.73
2787	2020-05-05 16:56:16	0.43	0.55	0.55	0.55	0.74
2792	2020-05-05 16:56:41	0.34	0.55	0.55	0.55	0.74
2797	2020-05-05 16:57:06	0.43	0.34	0.34	0.55	0.81
2802	2020-05-05 16:57:31	0.34	0.34	0.34	0.43	0.79
2807	2020-05-05 16:57:56	0.55	0.55	0.43	0.34	0.81
2812	2020-05-05 16:58:21	0.43	0.34	0.34	0.43	0.79
2817	2020-05-05 16:58:46	0.55	0.43	0.34	0.55	0.85
2822	2020-05-05 16:59:11	0.43	0.34	0.55	0.43	0.9
2827	2020-05-05 16:59:36	0.34	0.55	0.43	0.43	0.9
2832	2020-05-05 17:00:01	0.43	0.34	0.34	0.55	0.85
2837	2020-05-05 17:00:26	0.43	0.34	0.34	0.43	0.74
2842	2020-05-05 17:00:51	0.34	0.55	0.34	0.34	0.9
2847	2020-05-05 17:01:16	0.34	0.34	0.55	0.43	0.73
2852	2020-05-05 17:01:41	0.34	0.55	0.43	0.43	0.9
2857	2020-05-05 17:02:06	0.43	0.34	0.34	0.55	0.73
2862	2020-05-05 17:02:31	0.55	0.43	0.43	0.34	0.85
2867	2020-05-05 17:02:56	0.34	0.43	0.34	0.55	0.85
2872	2020-05-05 17:03:21	0.55	0.43	0.43	0.34	0.74
2877	2020-05-05 17:03:46	0.34	0.34	0.43	0.55	0.79
2882	2020-05-05 17:04:11	0.55	0.43	0.34	0.43	0.81
2887	2020-05-05 17:04:36	0.55	0.55	0.55	0.43	0.9
2892	2020-05-05 17:05:01	0.43	0.34	0.43	0.55	0.79
2897	2020-05-05 17:05:26	0.55	0.55	0.43	0.34	0.73
2902	2020-05-05 17:05:51	0.55	0.43	0.43	0.55	0.74
2907	2020-05-05 17:06:16	0.34	0.34	0.34	0.55	0.74
2668	2020-05-05 16:46:21	0.55	0.43	0.55	0.34	0.79
2673	2020-05-05 16:46:46	0.55	0.34	0.55	0.55	0.73
2678	2020-05-05 16:47:11	0.55	0.34	0.43	0.55	0.81
2683	2020-05-05 16:47:36	0.34	0.34	0.34	0.34	0.9
2688	2020-05-05 16:48:01	0.34	0.55	0.34	0.34	0.85
2693	2020-05-05 16:48:26	0.43	0.43	0.43	0.34	0.81
2698	2020-05-05 16:48:51	0.43	0.55	0.34	0.34	0.74
2703	2020-05-05 16:49:16	0.43	0.43	0.55	0.55	0.79
2708	2020-05-05 16:49:41	0.43	0.34	0.55	0.55	0.81
2713	2020-05-05 16:50:06	0.55	0.43	0.43	0.34	0.85
2718	2020-05-05 16:50:31	0.34	0.55	0.55	0.55	0.79
2723	2020-05-05 16:50:56	0.34	0.34	0.43	0.55	0.81
2728	2020-05-05 16:51:21	0.55	0.43	0.55	0.34	0.73
2733	2020-05-05 16:51:46	0.55	0.55	0.55	0.34	0.73
2738	2020-05-05 16:52:11	0.55	0.34	0.55	0.34	0.9
2743	2020-05-05 16:52:36	0.43	0.55	0.34	0.55	0.73
2748	2020-05-05 16:53:01	0.34	0.55	0.55	0.43	0.85
2753	2020-05-05 16:53:26	0.43	0.34	0.43	0.55	0.73
2758	2020-05-05 16:53:51	0.34	0.34	0.55	0.55	0.9
2763	2020-05-05 16:54:16	0.34	0.34	0.43	0.55	0.81
2768	2020-05-05 16:54:41	0.55	0.55	0.34	0.43	0.85
2773	2020-05-05 16:55:06	0.55	0.43	0.43	0.34	0.9
2778	2020-05-05 16:55:31	0.55	0.55	0.43	0.55	0.73
2783	2020-05-05 16:55:56	0.34	0.55	0.43	0.34	0.9
2788	2020-05-05 16:56:21	0.34	0.34	0.55	0.34	0.79
2793	2020-05-05 16:56:46	0.55	0.34	0.55	0.43	0.85
2798	2020-05-05 16:57:11	0.55	0.34	0.55	0.34	0.85
2803	2020-05-05 16:57:36	0.55	0.43	0.43	0.34	0.81
2808	2020-05-05 16:58:01	0.55	0.43	0.55	0.55	0.79
2813	2020-05-05 16:58:26	0.43	0.34	0.55	0.34	0.79
2818	2020-05-05 16:58:51	0.43	0.43	0.34	0.43	0.85
2823	2020-05-05 16:59:16	0.43	0.34	0.55	0.55	0.74
2828	2020-05-05 16:59:41	0.34	0.55	0.55	0.43	0.81
2833	2020-05-05 17:00:06	0.34	0.34	0.34	0.43	0.79
2838	2020-05-05 17:00:31	0.43	0.43	0.34	0.34	0.73
2843	2020-05-05 17:00:56	0.55	0.34	0.55	0.34	0.79
2848	2020-05-05 17:01:21	0.34	0.55	0.55	0.55	0.79
2853	2020-05-05 17:01:46	0.55	0.34	0.43	0.55	0.81
2858	2020-05-05 17:02:11	0.55	0.34	0.55	0.34	0.73
2863	2020-05-05 17:02:36	0.55	0.34	0.34	0.34	0.73
2868	2020-05-05 17:03:01	0.43	0.43	0.43	0.43	0.81
2873	2020-05-05 17:03:26	0.43	0.55	0.55	0.55	0.79
2878	2020-05-05 17:03:51	0.55	0.34	0.55	0.43	0.9
2883	2020-05-05 17:04:16	0.43	0.55	0.43	0.34	0.85
2888	2020-05-05 17:04:41	0.34	0.43	0.43	0.34	0.9
2893	2020-05-05 17:05:06	0.55	0.34	0.55	0.34	0.74
2898	2020-05-05 17:05:31	0.43	0.55	0.34	0.55	0.79
2903	2020-05-05 17:05:56	0.34	0.34	0.55	0.34	0.85
2908	2020-05-05 17:06:21	0.43	0.55	0.55	0.34	0.74
2669	2020-05-05 16:46:26	0.55	0.43	0.55	0.34	0.73
2674	2020-05-05 16:46:51	0.43	0.55	0.43	0.43	0.81
2679	2020-05-05 16:47:16	0.34	0.55	0.55	0.43	0.85
2684	2020-05-05 16:47:41	0.55	0.43	0.34	0.43	0.85
2689	2020-05-05 16:48:06	0.43	0.34	0.43	0.55	0.74
2694	2020-05-05 16:48:31	0.55	0.43	0.55	0.34	0.81
2699	2020-05-05 16:48:56	0.43	0.34	0.43	0.43	0.85
2704	2020-05-05 16:49:21	0.55	0.34	0.55	0.34	0.74
2709	2020-05-05 16:49:46	0.43	0.34	0.34	0.55	0.73
2714	2020-05-05 16:50:11	0.34	0.34	0.34	0.43	0.74
2719	2020-05-05 16:50:36	0.34	0.55	0.34	0.43	0.79
2724	2020-05-05 16:51:01	0.55	0.43	0.34	0.34	0.9
2729	2020-05-05 16:51:26	0.43	0.43	0.55	0.55	0.81
2734	2020-05-05 16:51:51	0.55	0.55	0.43	0.43	0.81
2739	2020-05-05 16:52:16	0.34	0.34	0.55	0.43	0.81
2744	2020-05-05 16:52:41	0.55	0.34	0.43	0.34	0.74
2749	2020-05-05 16:53:06	0.55	0.43	0.34	0.34	0.79
2754	2020-05-05 16:53:31	0.43	0.55	0.55	0.55	0.79
2759	2020-05-05 16:53:56	0.43	0.43	0.55	0.55	0.79
2764	2020-05-05 16:54:21	0.34	0.43	0.34	0.43	0.9
2769	2020-05-05 16:54:46	0.34	0.55	0.55	0.43	0.74
2774	2020-05-05 16:55:11	0.34	0.34	0.43	0.55	0.73
2779	2020-05-05 16:55:36	0.55	0.55	0.34	0.34	0.79
2784	2020-05-05 16:56:01	0.34	0.34	0.34	0.34	0.79
2789	2020-05-05 16:56:26	0.34	0.34	0.34	0.43	0.79
2794	2020-05-05 16:56:51	0.43	0.34	0.43	0.55	0.9
2799	2020-05-05 16:57:16	0.55	0.34	0.55	0.43	0.9
2804	2020-05-05 16:57:41	0.43	0.55	0.43	0.55	0.81
2809	2020-05-05 16:58:06	0.55	0.43	0.55	0.43	0.73
2814	2020-05-05 16:58:31	0.55	0.43	0.55	0.55	0.9
2819	2020-05-05 16:58:56	0.43	0.55	0.34	0.43	0.85
2824	2020-05-05 16:59:21	0.34	0.43	0.55	0.55	0.79
2829	2020-05-05 16:59:46	0.43	0.43	0.43	0.43	0.74
2834	2020-05-05 17:00:11	0.43	0.43	0.55	0.55	0.81
2839	2020-05-05 17:00:36	0.55	0.34	0.34	0.34	0.85
2844	2020-05-05 17:01:01	0.34	0.43	0.34	0.34	0.85
2849	2020-05-05 17:01:26	0.55	0.55	0.43	0.55	0.81
2854	2020-05-05 17:01:51	0.55	0.43	0.34	0.34	0.79
2859	2020-05-05 17:02:16	0.34	0.55	0.34	0.43	0.81
2864	2020-05-05 17:02:41	0.55	0.43	0.43	0.55	0.85
2869	2020-05-05 17:03:06	0.55	0.55	0.55	0.34	0.81
2874	2020-05-05 17:03:31	0.43	0.34	0.43	0.34	0.81
2879	2020-05-05 17:03:56	0.43	0.43	0.55	0.34	0.85
2884	2020-05-05 17:04:21	0.43	0.43	0.34	0.55	0.81
2889	2020-05-05 17:04:46	0.55	0.34	0.55	0.55	0.81
2894	2020-05-05 17:05:11	0.55	0.43	0.43	0.55	0.81
2899	2020-05-05 17:05:36	0.43	0.43	0.43	0.34	0.79
2904	2020-05-05 17:06:01	0.55	0.43	0.55	0.43	0.9
2909	2020-05-05 17:06:26	0.34	0.55	0.34	0.43	0.74
2670	2020-05-05 16:46:31	0.43	0.43	0.55	0.43	0.81
2675	2020-05-05 16:46:56	0.34	0.55	0.43	0.43	0.9
2680	2020-05-05 16:47:21	0.43	0.55	0.55	0.55	0.81
2685	2020-05-05 16:47:46	0.43	0.55	0.34	0.34	0.73
2690	2020-05-05 16:48:11	0.43	0.43	0.43	0.55	0.74
2695	2020-05-05 16:48:36	0.43	0.55	0.43	0.34	0.73
2700	2020-05-05 16:49:01	0.55	0.34	0.43	0.34	0.85
2705	2020-05-05 16:49:26	0.34	0.43	0.43	0.34	0.74
2710	2020-05-05 16:49:51	0.55	0.55	0.43	0.43	0.79
2715	2020-05-05 16:50:16	0.55	0.34	0.43	0.55	0.73
2720	2020-05-05 16:50:41	0.55	0.43	0.34	0.55	0.74
2725	2020-05-05 16:51:06	0.34	0.55	0.43	0.43	0.9
2730	2020-05-05 16:51:31	0.34	0.43	0.43	0.43	0.73
2735	2020-05-05 16:51:56	0.43	0.34	0.34	0.43	0.85
2740	2020-05-05 16:52:21	0.34	0.43	0.34	0.34	0.85
2745	2020-05-05 16:52:46	0.55	0.34	0.55	0.34	0.85
2750	2020-05-05 16:53:11	0.34	0.43	0.43	0.43	0.74
2755	2020-05-05 16:53:36	0.55	0.55	0.43	0.34	0.73
2760	2020-05-05 16:54:01	0.43	0.43	0.43	0.55	0.74
2765	2020-05-05 16:54:26	0.34	0.43	0.34	0.55	0.9
2770	2020-05-05 16:54:51	0.43	0.55	0.34	0.55	0.81
2775	2020-05-05 16:55:16	0.43	0.43	0.55	0.34	0.85
2780	2020-05-05 16:55:41	0.43	0.34	0.55	0.34	0.79
2785	2020-05-05 16:56:06	0.55	0.34	0.34	0.34	0.81
2790	2020-05-05 16:56:31	0.34	0.34	0.55	0.34	0.73
2795	2020-05-05 16:56:56	0.55	0.55	0.34	0.34	0.74
2800	2020-05-05 16:57:21	0.55	0.34	0.43	0.55	0.74
2805	2020-05-05 16:57:46	0.43	0.43	0.34	0.34	0.85
2810	2020-05-05 16:58:11	0.43	0.34	0.55	0.34	0.74
2815	2020-05-05 16:58:36	0.43	0.34	0.34	0.55	0.9
2820	2020-05-05 16:59:01	0.43	0.55	0.34	0.55	0.9
2825	2020-05-05 16:59:26	0.55	0.55	0.34	0.55	0.74
2830	2020-05-05 16:59:51	0.55	0.34	0.55	0.55	0.79
2835	2020-05-05 17:00:16	0.43	0.55	0.55	0.55	0.85
2840	2020-05-05 17:00:41	0.55	0.55	0.55	0.34	0.73
2845	2020-05-05 17:01:06	0.43	0.34	0.55	0.43	0.74
2850	2020-05-05 17:01:31	0.34	0.55	0.34	0.55	0.9
2855	2020-05-05 17:01:56	0.43	0.55	0.55	0.55	0.74
2860	2020-05-05 17:02:21	0.34	0.43	0.55	0.55	0.74
2865	2020-05-05 17:02:46	0.55	0.43	0.55	0.55	0.74
2870	2020-05-05 17:03:11	0.34	0.34	0.55	0.43	0.73
2875	2020-05-05 17:03:36	0.55	0.55	0.55	0.55	0.9
2880	2020-05-05 17:04:01	0.43	0.55	0.43	0.55	0.73
2885	2020-05-05 17:04:26	0.55	0.43	0.55	0.55	0.81
2890	2020-05-05 17:04:51	0.34	0.34	0.34	0.34	0.74
2895	2020-05-05 17:05:16	0.55	0.55	0.43	0.43	0.81
2900	2020-05-05 17:05:41	0.43	0.55	0.43	0.34	0.81
2905	2020-05-05 17:06:06	0.43	0.55	0.55	0.34	0.73
2910	2020-05-05 17:06:31	0.55	0.55	0.43	0.43	0.81
2912	2020-05-05 17:06:41	0.43	0.55	0.34	0.43	0.79
2913	2020-05-05 17:06:46	0.55	0.43	0.34	0.34	0.73
2914	2020-05-05 17:06:51	0.34	0.34	0.55	0.55	0.79
2915	2020-05-05 17:06:56	0.55	0.55	0.55	0.34	0.74
2916	2020-05-05 17:07:01	0.43	0.43	0.55	0.34	0.79
2917	2020-05-05 17:07:06	0.43	0.43	0.34	0.34	0.9
2918	2020-05-05 17:07:11	0.55	0.55	0.43	0.34	0.73
2919	2020-05-05 17:07:16	0.55	0.55	0.43	0.55	0.73
2920	2020-05-05 17:07:21	0.55	0.55	0.34	0.55	0.79
2921	2020-05-05 17:07:26	0.55	0.34	0.43	0.55	0.73
2922	2020-05-05 17:07:31	0.55	0.34	0.34	0.55	0.73
2923	2020-05-05 17:07:36	0.34	0.34	0.55	0.55	0.85
2924	2020-05-05 17:07:41	0.43	0.34	0.55	0.43	0.73
2925	2020-05-05 17:07:46	0.43	0.55	0.34	0.43	0.85
2926	2020-05-05 17:07:51	0.34	0.55	0.55	0.43	0.85
2927	2020-05-05 17:07:56	0.34	0.43	0.34	0.55	0.85
2928	2020-05-05 17:08:01	0.34	0.34	0.55	0.55	0.81
2929	2020-05-05 17:08:06	0.55	0.43	0.34	0.55	0.74
2930	2020-05-05 17:08:11	0.55	0.43	0.34	0.43	0.81
2931	2020-05-05 17:08:17	0.55	0.55	0.43	0.55	0.74
2932	2020-05-05 17:08:22	0.34	0.55	0.55	0.34	0.73
2933	2020-05-05 17:08:27	0.55	0.55	0.34	0.55	0.73
2934	2020-05-05 17:08:32	0.55	0.43	0.55	0.55	0.79
2935	2020-05-05 17:08:37	0.43	0.43	0.34	0.34	0.85
2936	2020-05-05 17:08:42	0.55	0.43	0.34	0.55	0.9
2937	2020-05-05 17:08:47	0.55	0.55	0.43	0.43	0.81
2938	2020-05-05 17:08:52	0.34	0.55	0.43	0.55	0.79
2939	2020-05-05 17:08:57	0.43	0.34	0.43	0.34	0.73
2940	2020-05-05 17:09:02	0.43	0.34	0.43	0.43	0.74
2941	2020-05-05 17:09:07	0.43	0.43	0.43	0.43	0.73
2942	2020-05-05 17:09:12	0.34	0.43	0.55	0.34	0.73
2943	2020-05-05 17:09:17	0.34	0.43	0.55	0.55	0.9
2944	2020-05-05 17:09:22	0.55	0.55	0.43	0.43	0.85
2945	2020-05-05 17:09:27	0.34	0.34	0.34	0.43	0.9
2946	2020-05-05 17:09:32	0.55	0.55	0.34	0.34	0.85
2947	2020-05-05 17:09:37	0.34	0.55	0.55	0.43	0.85
2948	2020-05-05 17:09:42	0.43	0.43	0.55	0.34	0.73
2949	2020-05-05 17:09:47	0.43	0.34	0.55	0.43	0.73
2950	2020-05-05 17:09:52	0.43	0.34	0.34	0.34	0.9
2951	2020-05-05 17:09:57	0.43	0.55	0.34	0.43	0.9
2952	2020-05-05 17:10:02	0.55	0.34	0.34	0.55	0.74
2953	2020-05-05 17:10:07	0.43	0.55	0.55	0.34	0.9
2954	2020-05-05 17:10:12	0.43	0.34	0.34	0.34	0.9
2955	2020-05-05 17:10:17	0.55	0.55	0.43	0.43	0.79
2956	2020-05-05 17:10:22	0.43	0.55	0.34	0.55	0.79
2957	2020-05-05 17:10:27	0.55	0.34	0.43	0.55	0.85
2958	2020-05-05 17:10:32	0.55	0.34	0.34	0.55	0.85
2959	2020-05-05 17:10:37	0.34	0.55	0.43	0.34	0.74
2960	2020-05-05 17:10:42	0.55	0.43	0.43	0.55	0.81
2961	2020-05-05 17:10:47	0.43	0.55	0.34	0.55	0.73
2962	2020-05-05 17:10:52	0.43	0.34	0.55	0.55	0.81
2963	2020-05-05 17:10:57	0.55	0.43	0.43	0.43	0.74
2964	2020-05-05 17:11:02	0.34	0.55	0.55	0.43	0.74
2965	2020-05-05 17:11:07	0.34	0.55	0.43	0.34	0.74
2966	2020-05-05 17:11:12	0.55	0.34	0.43	0.34	0.79
2967	2020-05-05 17:11:17	0.55	0.55	0.34	0.34	0.85
2968	2020-05-05 17:11:22	0.43	0.34	0.34	0.34	0.81
2969	2020-05-05 17:11:27	0.43	0.34	0.34	0.34	0.81
2970	2020-05-05 17:11:32	0.34	0.34	0.34	0.55	0.74
2971	2020-05-05 17:11:37	0.34	0.43	0.34	0.34	0.74
2972	2020-05-05 17:11:42	0.43	0.55	0.55	0.43	0.85
2977	2020-05-05 17:12:07	0.43	0.55	0.43	0.34	0.79
2982	2020-05-05 17:12:32	0.34	0.34	0.34	0.55	0.74
2987	2020-05-05 17:12:57	0.43	0.55	0.34	0.43	0.74
2992	2020-05-05 17:13:22	0.34	0.43	0.43	0.34	0.81
2997	2020-05-05 17:13:47	0.34	0.55	0.55	0.43	0.9
3002	2020-05-05 17:14:12	0.34	0.43	0.55	0.34	0.85
3007	2020-05-05 17:14:37	0.55	0.55	0.34	0.55	0.74
3012	2020-05-05 17:15:02	0.34	0.43	0.55	0.55	0.9
3017	2020-05-05 17:15:27	0.55	0.43	0.34	0.43	0.74
3022	2020-05-05 17:15:52	0.43	0.55	0.34	0.43	0.73
3027	2020-05-05 17:16:17	0.55	0.55	0.34	0.34	0.81
3032	2020-05-05 17:16:42	0.55	0.55	0.43	0.34	0.79
3037	2020-05-05 17:17:07	0.43	0.43	0.43	0.43	0.9
3042	2020-05-05 17:17:32	0.55	0.34	0.34	0.55	0.81
3047	2020-05-05 17:17:57	0.43	0.34	0.34	0.34	0.81
3052	2020-05-05 17:18:22	0.55	0.55	0.55	0.43	0.85
3057	2020-05-05 17:18:47	0.55	0.55	0.34	0.55	0.85
3062	2020-05-05 17:19:12	0.34	0.43	0.55	0.55	0.9
3067	2020-05-05 17:19:37	0.34	0.34	0.55	0.55	0.73
3072	2020-05-05 17:20:02	0.55	0.43	0.43	0.34	0.85
3077	2020-05-05 17:20:27	0.43	0.55	0.55	0.34	0.81
3082	2020-05-05 17:20:52	0.55	0.34	0.34	0.43	0.74
3087	2020-05-05 17:21:17	0.34	0.43	0.55	0.55	0.85
3092	2020-05-05 17:21:42	0.43	0.55	0.34	0.34	0.81
3097	2020-05-05 17:22:07	0.55	0.43	0.55	0.55	0.9
3102	2020-05-05 17:22:32	0.34	0.43	0.55	0.55	0.81
3107	2020-05-05 17:22:57	0.55	0.43	0.55	0.55	0.81
3112	2020-05-05 17:23:22	0.34	0.34	0.43	0.43	0.73
3117	2020-05-05 17:23:47	0.34	0.55	0.34	0.34	0.79
3122	2020-05-05 17:24:12	0.34	0.34	0.34	0.43	0.9
3127	2020-05-05 17:24:37	0.34	0.34	0.43	0.55	0.79
3132	2020-05-05 17:25:02	0.55	0.34	0.43	0.55	0.81
3137	2020-05-05 17:25:27	0.43	0.55	0.55	0.34	0.9
3142	2020-05-05 17:25:52	0.43	0.55	0.34	0.43	0.9
3147	2020-05-05 17:26:17	0.43	0.55	0.34	0.43	0.73
3152	2020-05-05 17:26:42	0.43	0.55	0.43	0.34	0.9
3157	2020-05-05 17:27:07	0.43	0.43	0.55	0.55	0.85
3162	2020-05-05 17:27:32	0.43	0.55	0.55	0.43	0.74
3167	2020-05-05 17:27:57	0.55	0.55	0.34	0.43	0.79
3172	2020-05-05 17:28:22	0.43	0.34	0.34	0.55	0.73
3177	2020-05-05 17:28:47	0.34	0.43	0.43	0.34	0.85
3182	2020-05-05 17:29:12	0.43	0.55	0.55	0.43	0.81
3187	2020-05-05 17:29:37	0.34	0.34	0.55	0.43	0.79
3192	2020-05-05 17:30:02	0.34	0.34	0.43	0.55	0.9
3197	2020-05-05 17:30:27	0.55	0.55	0.34	0.43	0.81
3202	2020-05-05 17:30:52	0.55	0.55	0.34	0.43	0.81
3207	2020-05-05 17:31:17	0.34	0.43	0.55	0.43	0.79
3212	2020-05-05 17:31:42	0.55	0.43	0.55	0.55	0.85
3217	2020-05-05 17:32:07	0.43	0.55	0.34	0.55	0.74
3222	2020-05-05 17:32:32	0.55	0.55	0.43	0.43	0.9
3227	2020-05-05 17:32:57	0.55	0.43	0.55	0.55	0.9
3232	2020-05-05 17:33:22	0.43	0.34	0.43	0.34	0.79
3237	2020-05-05 17:33:47	0.55	0.55	0.55	0.34	0.74
3242	2020-05-05 17:34:12	0.43	0.43	0.55	0.43	0.81
3247	2020-05-05 17:34:37	0.55	0.55	0.34	0.55	0.81
3252	2020-05-05 17:35:02	0.34	0.34	0.43	0.43	0.81
3257	2020-05-05 17:35:27	0.55	0.34	0.43	0.34	0.79
3262	2020-05-05 17:35:52	0.55	0.43	0.55	0.34	0.79
2973	2020-05-05 17:11:47	0.34	0.43	0.34	0.55	0.73
2978	2020-05-05 17:12:12	0.43	0.34	0.55	0.43	0.79
2983	2020-05-05 17:12:37	0.55	0.43	0.34	0.34	0.85
2988	2020-05-05 17:13:02	0.55	0.34	0.43	0.34	0.9
2993	2020-05-05 17:13:27	0.55	0.55	0.43	0.34	0.9
2998	2020-05-05 17:13:52	0.55	0.43	0.34	0.34	0.79
3003	2020-05-05 17:14:17	0.34	0.55	0.34	0.34	0.74
3008	2020-05-05 17:14:42	0.55	0.43	0.43	0.43	0.85
3013	2020-05-05 17:15:07	0.55	0.34	0.43	0.43	0.73
3018	2020-05-05 17:15:32	0.55	0.55	0.43	0.55	0.81
3023	2020-05-05 17:15:57	0.34	0.55	0.55	0.43	0.81
3028	2020-05-05 17:16:22	0.34	0.55	0.43	0.43	0.73
3033	2020-05-05 17:16:47	0.43	0.55	0.34	0.34	0.81
3038	2020-05-05 17:17:12	0.55	0.55	0.34	0.55	0.73
3043	2020-05-05 17:17:37	0.43	0.43	0.43	0.34	0.9
3048	2020-05-05 17:18:02	0.43	0.43	0.55	0.34	0.79
3053	2020-05-05 17:18:27	0.55	0.34	0.34	0.43	0.74
3058	2020-05-05 17:18:52	0.34	0.34	0.55	0.55	0.85
3063	2020-05-05 17:19:17	0.55	0.55	0.43	0.34	0.81
3068	2020-05-05 17:19:42	0.55	0.34	0.43	0.55	0.79
3073	2020-05-05 17:20:07	0.55	0.55	0.55	0.55	0.85
3078	2020-05-05 17:20:32	0.34	0.43	0.55	0.55	0.74
3083	2020-05-05 17:20:57	0.43	0.34	0.34	0.55	0.73
3088	2020-05-05 17:21:22	0.43	0.34	0.34	0.34	0.81
3093	2020-05-05 17:21:47	0.43	0.34	0.34	0.43	0.85
3098	2020-05-05 17:22:12	0.43	0.55	0.43	0.43	0.74
3103	2020-05-05 17:22:37	0.55	0.55	0.43	0.34	0.73
3108	2020-05-05 17:23:02	0.34	0.34	0.43	0.43	0.9
3113	2020-05-05 17:23:27	0.34	0.34	0.55	0.55	0.73
3118	2020-05-05 17:23:52	0.34	0.43	0.34	0.43	0.85
3123	2020-05-05 17:24:17	0.34	0.43	0.34	0.34	0.79
3128	2020-05-05 17:24:42	0.43	0.34	0.55	0.34	0.85
3133	2020-05-05 17:25:07	0.43	0.43	0.55	0.43	0.81
3138	2020-05-05 17:25:32	0.55	0.55	0.55	0.55	0.81
3143	2020-05-05 17:25:57	0.34	0.43	0.55	0.43	0.85
3148	2020-05-05 17:26:22	0.34	0.34	0.34	0.34	0.9
3153	2020-05-05 17:26:47	0.43	0.34	0.34	0.55	0.81
3158	2020-05-05 17:27:12	0.55	0.34	0.34	0.34	0.81
3163	2020-05-05 17:27:37	0.43	0.55	0.55	0.43	0.79
3168	2020-05-05 17:28:02	0.43	0.55	0.43	0.55	0.81
3173	2020-05-05 17:28:27	0.43	0.55	0.34	0.34	0.9
3178	2020-05-05 17:28:52	0.43	0.55	0.43	0.34	0.81
3183	2020-05-05 17:29:17	0.43	0.55	0.34	0.55	0.81
3188	2020-05-05 17:29:42	0.55	0.43	0.43	0.34	0.85
3193	2020-05-05 17:30:07	0.55	0.34	0.43	0.43	0.9
3198	2020-05-05 17:30:32	0.43	0.55	0.55	0.43	0.85
3203	2020-05-05 17:30:57	0.55	0.55	0.55	0.34	0.9
3208	2020-05-05 17:31:22	0.55	0.43	0.34	0.43	0.79
3213	2020-05-05 17:31:47	0.34	0.55	0.43	0.34	0.9
3218	2020-05-05 17:32:12	0.43	0.34	0.55	0.55	0.73
3223	2020-05-05 17:32:37	0.55	0.34	0.43	0.34	0.74
3228	2020-05-05 17:33:02	0.34	0.34	0.43	0.43	0.9
3233	2020-05-05 17:33:27	0.55	0.34	0.55	0.55	0.85
3238	2020-05-05 17:33:52	0.34	0.55	0.55	0.55	0.79
3243	2020-05-05 17:34:17	0.55	0.43	0.34	0.43	0.73
3248	2020-05-05 17:34:42	0.55	0.55	0.43	0.43	0.79
3253	2020-05-05 17:35:07	0.55	0.55	0.34	0.34	0.85
3258	2020-05-05 17:35:32	0.55	0.55	0.55	0.55	0.79
2974	2020-05-05 17:11:52	0.43	0.55	0.43	0.55	0.81
2979	2020-05-05 17:12:17	0.43	0.34	0.43	0.34	0.73
2984	2020-05-05 17:12:42	0.34	0.43	0.55	0.43	0.73
2989	2020-05-05 17:13:07	0.43	0.55	0.34	0.43	0.85
2994	2020-05-05 17:13:32	0.55	0.34	0.43	0.34	0.74
2999	2020-05-05 17:13:57	0.55	0.43	0.43	0.43	0.74
3004	2020-05-05 17:14:22	0.55	0.55	0.34	0.55	0.74
3009	2020-05-05 17:14:47	0.55	0.34	0.55	0.55	0.73
3014	2020-05-05 17:15:12	0.43	0.43	0.43	0.55	0.9
3019	2020-05-05 17:15:37	0.34	0.43	0.34	0.34	0.81
3024	2020-05-05 17:16:02	0.34	0.43	0.55	0.34	0.73
3029	2020-05-05 17:16:27	0.34	0.55	0.34	0.55	0.85
3034	2020-05-05 17:16:52	0.43	0.34	0.43	0.55	0.81
3039	2020-05-05 17:17:17	0.43	0.34	0.43	0.55	0.74
3044	2020-05-05 17:17:42	0.34	0.43	0.55	0.34	0.81
3049	2020-05-05 17:18:07	0.43	0.43	0.34	0.34	0.79
3054	2020-05-05 17:18:32	0.55	0.43	0.34	0.55	0.79
3059	2020-05-05 17:18:57	0.43	0.43	0.43	0.55	0.85
3064	2020-05-05 17:19:22	0.55	0.34	0.43	0.43	0.81
3069	2020-05-05 17:19:47	0.43	0.34	0.43	0.55	0.85
3074	2020-05-05 17:20:12	0.55	0.43	0.43	0.43	0.74
3079	2020-05-05 17:20:37	0.43	0.55	0.34	0.43	0.74
3084	2020-05-05 17:21:02	0.55	0.55	0.34	0.55	0.74
3089	2020-05-05 17:21:27	0.43	0.34	0.55	0.55	0.79
3094	2020-05-05 17:21:52	0.55	0.43	0.43	0.43	0.9
3099	2020-05-05 17:22:17	0.34	0.34	0.43	0.43	0.74
3104	2020-05-05 17:22:42	0.55	0.55	0.34	0.43	0.79
3109	2020-05-05 17:23:07	0.55	0.34	0.34	0.43	0.81
3114	2020-05-05 17:23:32	0.55	0.34	0.43	0.34	0.73
3119	2020-05-05 17:23:57	0.43	0.34	0.55	0.34	0.79
3124	2020-05-05 17:24:22	0.43	0.34	0.34	0.43	0.74
3129	2020-05-05 17:24:47	0.55	0.55	0.43	0.43	0.81
3134	2020-05-05 17:25:12	0.34	0.43	0.43	0.34	0.9
3139	2020-05-05 17:25:37	0.43	0.34	0.43	0.34	0.74
3144	2020-05-05 17:26:02	0.34	0.43	0.55	0.43	0.81
3149	2020-05-05 17:26:27	0.34	0.34	0.34	0.55	0.74
3154	2020-05-05 17:26:52	0.55	0.43	0.55	0.34	0.81
3159	2020-05-05 17:27:17	0.34	0.34	0.55	0.43	0.74
3164	2020-05-05 17:27:42	0.43	0.55	0.34	0.43	0.73
3169	2020-05-05 17:28:07	0.55	0.34	0.55	0.43	0.73
3174	2020-05-05 17:28:32	0.34	0.55	0.55	0.34	0.79
3179	2020-05-05 17:28:57	0.34	0.34	0.55	0.43	0.74
3184	2020-05-05 17:29:22	0.55	0.43	0.43	0.34	0.73
3189	2020-05-05 17:29:47	0.55	0.43	0.55	0.55	0.81
3194	2020-05-05 17:30:12	0.34	0.34	0.34	0.55	0.73
3199	2020-05-05 17:30:37	0.43	0.43	0.55	0.43	0.79
3204	2020-05-05 17:31:02	0.34	0.55	0.34	0.55	0.9
3209	2020-05-05 17:31:27	0.55	0.43	0.43	0.43	0.74
3214	2020-05-05 17:31:52	0.55	0.34	0.55	0.43	0.79
3219	2020-05-05 17:32:17	0.34	0.43	0.55	0.55	0.85
3224	2020-05-05 17:32:42	0.43	0.43	0.34	0.43	0.9
3229	2020-05-05 17:33:07	0.43	0.43	0.34	0.34	0.81
3234	2020-05-05 17:33:32	0.34	0.55	0.55	0.55	0.73
3239	2020-05-05 17:33:57	0.55	0.55	0.43	0.55	0.85
3244	2020-05-05 17:34:22	0.34	0.55	0.43	0.43	0.9
3249	2020-05-05 17:34:47	0.43	0.43	0.43	0.43	0.73
3254	2020-05-05 17:35:12	0.43	0.55	0.34	0.34	0.9
3259	2020-05-05 17:35:37	0.34	0.55	0.55	0.34	0.74
2975	2020-05-05 17:11:57	0.55	0.43	0.43	0.55	0.81
2980	2020-05-05 17:12:22	0.55	0.34	0.34	0.43	0.73
2985	2020-05-05 17:12:47	0.55	0.55	0.55	0.34	0.85
2990	2020-05-05 17:13:12	0.55	0.34	0.34	0.34	0.9
2995	2020-05-05 17:13:37	0.55	0.43	0.43	0.43	0.85
3000	2020-05-05 17:14:02	0.34	0.34	0.55	0.43	0.74
3005	2020-05-05 17:14:27	0.43	0.43	0.55	0.34	0.79
3010	2020-05-05 17:14:52	0.34	0.55	0.55	0.55	0.74
3015	2020-05-05 17:15:17	0.55	0.34	0.55	0.43	0.9
3020	2020-05-05 17:15:42	0.55	0.34	0.43	0.34	0.79
3025	2020-05-05 17:16:07	0.34	0.43	0.43	0.55	0.85
3030	2020-05-05 17:16:32	0.55	0.34	0.43	0.34	0.74
3035	2020-05-05 17:16:57	0.43	0.55	0.55	0.34	0.79
3040	2020-05-05 17:17:22	0.55	0.34	0.43	0.55	0.79
3045	2020-05-05 17:17:47	0.43	0.55	0.55	0.43	0.85
3050	2020-05-05 17:18:12	0.34	0.55	0.34	0.43	0.81
3055	2020-05-05 17:18:37	0.43	0.34	0.55	0.55	0.79
3060	2020-05-05 17:19:02	0.55	0.34	0.34	0.55	0.81
3065	2020-05-05 17:19:27	0.43	0.34	0.43	0.34	0.81
3070	2020-05-05 17:19:52	0.55	0.34	0.55	0.55	0.79
3075	2020-05-05 17:20:17	0.34	0.34	0.55	0.34	0.85
3080	2020-05-05 17:20:42	0.34	0.55	0.43	0.34	0.81
3085	2020-05-05 17:21:07	0.34	0.55	0.43	0.43	0.79
3090	2020-05-05 17:21:32	0.34	0.34	0.43	0.43	0.73
3095	2020-05-05 17:21:57	0.55	0.55	0.43	0.55	0.81
3100	2020-05-05 17:22:22	0.55	0.34	0.34	0.43	0.85
3105	2020-05-05 17:22:47	0.43	0.43	0.43	0.34	0.73
3110	2020-05-05 17:23:12	0.34	0.34	0.43	0.55	0.73
3115	2020-05-05 17:23:37	0.34	0.43	0.43	0.43	0.74
3120	2020-05-05 17:24:02	0.43	0.55	0.34	0.55	0.85
3125	2020-05-05 17:24:27	0.43	0.55	0.43	0.34	0.73
3130	2020-05-05 17:24:52	0.43	0.43	0.55	0.43	0.79
3135	2020-05-05 17:25:17	0.43	0.43	0.43	0.34	0.73
3140	2020-05-05 17:25:42	0.34	0.34	0.34	0.43	0.9
3145	2020-05-05 17:26:07	0.55	0.34	0.55	0.55	0.73
3150	2020-05-05 17:26:32	0.55	0.34	0.43	0.43	0.74
3155	2020-05-05 17:26:57	0.55	0.43	0.34	0.43	0.85
3160	2020-05-05 17:27:22	0.43	0.34	0.43	0.43	0.73
3165	2020-05-05 17:27:47	0.55	0.55	0.34	0.55	0.79
3170	2020-05-05 17:28:12	0.43	0.55	0.34	0.34	0.81
3175	2020-05-05 17:28:37	0.34	0.34	0.55	0.43	0.79
3180	2020-05-05 17:29:02	0.43	0.34	0.34	0.34	0.9
3185	2020-05-05 17:29:27	0.55	0.43	0.43	0.34	0.74
3190	2020-05-05 17:29:52	0.43	0.55	0.43	0.55	0.73
3195	2020-05-05 17:30:17	0.55	0.55	0.55	0.34	0.81
3200	2020-05-05 17:30:42	0.55	0.55	0.34	0.43	0.85
3205	2020-05-05 17:31:07	0.34	0.55	0.43	0.34	0.9
3210	2020-05-05 17:31:32	0.34	0.34	0.34	0.34	0.73
3215	2020-05-05 17:31:57	0.55	0.43	0.43	0.34	0.81
3220	2020-05-05 17:32:22	0.34	0.34	0.43	0.43	0.74
3225	2020-05-05 17:32:47	0.43	0.34	0.43	0.43	0.79
3230	2020-05-05 17:33:12	0.55	0.43	0.55	0.55	0.9
3235	2020-05-05 17:33:37	0.55	0.55	0.43	0.34	0.85
3240	2020-05-05 17:34:02	0.43	0.55	0.55	0.43	0.9
3245	2020-05-05 17:34:27	0.55	0.43	0.43	0.43	0.81
3250	2020-05-05 17:34:52	0.55	0.43	0.34	0.43	0.9
3255	2020-05-05 17:35:17	0.55	0.34	0.43	0.55	0.9
3260	2020-05-05 17:35:42	0.43	0.34	0.55	0.34	0.79
2976	2020-05-05 17:12:02	0.43	0.55	0.34	0.34	0.79
2981	2020-05-05 17:12:27	0.43	0.34	0.55	0.55	0.9
2986	2020-05-05 17:12:52	0.43	0.55	0.55	0.43	0.85
2991	2020-05-05 17:13:17	0.55	0.34	0.55	0.55	0.73
2996	2020-05-05 17:13:42	0.43	0.43	0.43	0.55	0.73
3001	2020-05-05 17:14:07	0.43	0.43	0.43	0.34	0.79
3006	2020-05-05 17:14:32	0.43	0.43	0.43	0.43	0.85
3011	2020-05-05 17:14:57	0.55	0.55	0.55	0.55	0.74
3016	2020-05-05 17:15:22	0.34	0.34	0.34	0.55	0.74
3021	2020-05-05 17:15:47	0.43	0.43	0.55	0.43	0.9
3026	2020-05-05 17:16:12	0.34	0.55	0.55	0.43	0.81
3031	2020-05-05 17:16:37	0.55	0.55	0.34	0.43	0.79
3036	2020-05-05 17:17:02	0.43	0.55	0.34	0.43	0.79
3041	2020-05-05 17:17:27	0.34	0.55	0.55	0.34	0.74
3046	2020-05-05 17:17:52	0.43	0.55	0.55	0.34	0.73
3051	2020-05-05 17:18:17	0.55	0.43	0.43	0.34	0.9
3056	2020-05-05 17:18:42	0.43	0.34	0.34	0.34	0.85
3061	2020-05-05 17:19:07	0.55	0.34	0.34	0.43	0.9
3066	2020-05-05 17:19:32	0.34	0.43	0.43	0.55	0.74
3071	2020-05-05 17:19:57	0.55	0.43	0.34	0.55	0.85
3076	2020-05-05 17:20:22	0.55	0.43	0.34	0.34	0.79
3081	2020-05-05 17:20:47	0.43	0.43	0.43	0.34	0.79
3086	2020-05-05 17:21:12	0.55	0.55	0.34	0.34	0.73
3091	2020-05-05 17:21:37	0.43	0.34	0.55	0.43	0.81
3096	2020-05-05 17:22:02	0.55	0.43	0.55	0.55	0.81
3101	2020-05-05 17:22:27	0.55	0.34	0.34	0.34	0.81
3106	2020-05-05 17:22:52	0.43	0.34	0.43	0.34	0.9
3111	2020-05-05 17:23:17	0.55	0.34	0.34	0.43	0.74
3116	2020-05-05 17:23:42	0.55	0.55	0.43	0.34	0.85
3121	2020-05-05 17:24:07	0.55	0.55	0.43	0.34	0.85
3126	2020-05-05 17:24:32	0.55	0.43	0.43	0.34	0.85
3131	2020-05-05 17:24:57	0.34	0.34	0.55	0.43	0.73
3136	2020-05-05 17:25:22	0.55	0.55	0.43	0.34	0.74
3141	2020-05-05 17:25:47	0.34	0.55	0.34	0.34	0.81
3146	2020-05-05 17:26:12	0.34	0.43	0.34	0.55	0.81
3151	2020-05-05 17:26:37	0.43	0.34	0.55	0.34	0.74
3156	2020-05-05 17:27:02	0.55	0.55	0.34	0.55	0.9
3161	2020-05-05 17:27:27	0.55	0.55	0.34	0.34	0.73
3166	2020-05-05 17:27:52	0.34	0.34	0.55	0.34	0.81
3171	2020-05-05 17:28:17	0.34	0.43	0.43	0.34	0.73
3176	2020-05-05 17:28:42	0.34	0.43	0.34	0.43	0.9
3181	2020-05-05 17:29:07	0.55	0.34	0.43	0.43	0.79
3186	2020-05-05 17:29:32	0.55	0.34	0.43	0.43	0.79
3191	2020-05-05 17:29:57	0.34	0.34	0.43	0.34	0.9
3196	2020-05-05 17:30:22	0.43	0.55	0.55	0.43	0.9
3201	2020-05-05 17:30:47	0.55	0.34	0.43	0.55	0.79
3206	2020-05-05 17:31:12	0.43	0.55	0.43	0.34	0.9
3211	2020-05-05 17:31:37	0.34	0.34	0.34	0.55	0.73
3216	2020-05-05 17:32:02	0.34	0.43	0.43	0.34	0.79
3221	2020-05-05 17:32:27	0.55	0.34	0.43	0.43	0.9
3226	2020-05-05 17:32:52	0.55	0.55	0.34	0.43	0.81
3231	2020-05-05 17:33:17	0.43	0.34	0.34	0.43	0.73
3236	2020-05-05 17:33:42	0.55	0.55	0.34	0.55	0.85
3241	2020-05-05 17:34:07	0.55	0.34	0.43	0.55	0.79
3246	2020-05-05 17:34:32	0.34	0.43	0.43	0.34	0.9
3251	2020-05-05 17:34:57	0.34	0.34	0.34	0.55	0.81
3256	2020-05-05 17:35:22	0.34	0.43	0.43	0.43	0.9
3261	2020-05-05 17:35:47	0.55	0.34	0.55	0.55	0.73
3263	2020-05-05 17:35:57	0.55	0.34	0.55	0.55	0.81
3264	2020-05-05 17:36:02	0.55	0.43	0.55	0.34	0.81
3265	2020-05-05 17:36:07	0.55	0.34	0.43	0.34	0.9
3266	2020-05-05 17:36:12	0.55	0.34	0.34	0.55	0.73
3267	2020-05-05 17:36:17	0.34	0.34	0.34	0.34	0.79
3268	2020-05-05 17:36:22	0.55	0.55	0.34	0.34	0.81
3269	2020-05-05 17:36:27	0.34	0.55	0.34	0.55	0.74
3270	2020-05-05 17:36:32	0.43	0.34	0.43	0.55	0.85
3271	2020-05-05 17:36:37	0.34	0.43	0.34	0.43	0.74
3272	2020-05-05 17:36:42	0.43	0.43	0.34	0.34	0.81
3273	2020-05-05 17:36:47	0.43	0.43	0.43	0.55	0.73
3274	2020-05-05 17:36:52	0.55	0.43	0.55	0.55	0.79
3275	2020-05-05 17:36:57	0.43	0.34	0.43	0.55	0.85
3276	2020-05-05 17:37:02	0.43	0.34	0.34	0.43	0.73
3277	2020-05-05 17:37:07	0.34	0.34	0.55	0.34	0.9
3278	2020-05-05 17:37:12	0.34	0.34	0.34	0.55	0.85
3279	2020-05-05 17:37:18	0.55	0.55	0.55	0.34	0.9
3280	2020-05-05 17:37:23	0.34	0.43	0.43	0.43	0.74
3281	2020-05-05 17:37:28	0.34	0.55	0.43	0.55	0.74
3282	2020-05-05 17:37:33	0.55	0.43	0.34	0.34	0.85
3283	2020-05-05 17:37:38	0.43	0.34	0.34	0.43	0.85
3284	2020-05-05 17:37:43	0.43	0.55	0.55	0.55	0.85
3285	2020-05-05 17:37:48	0.55	0.55	0.55	0.55	0.85
3286	2020-05-05 17:37:53	0.43	0.55	0.43	0.43	0.9
3287	2020-05-05 17:37:58	0.34	0.34	0.34	0.43	0.85
3288	2020-05-05 17:38:03	0.55	0.55	0.34	0.55	0.79
3289	2020-05-05 17:38:08	0.34	0.43	0.55	0.43	0.73
3290	2020-05-05 17:38:13	0.43	0.55	0.55	0.34	0.74
3291	2020-05-05 17:38:18	0.43	0.43	0.43	0.34	0.79
3292	2020-05-05 17:38:23	0.55	0.55	0.55	0.34	0.74
3293	2020-05-05 17:38:28	0.34	0.55	0.43	0.43	0.73
3294	2020-05-05 17:38:33	0.55	0.34	0.55	0.43	0.73
3295	2020-05-05 17:38:38	0.43	0.43	0.55	0.34	0.81
3296	2020-05-05 17:38:43	0.34	0.55	0.34	0.34	0.85
3297	2020-05-05 17:38:48	0.43	0.43	0.43	0.55	0.73
3298	2020-05-05 17:38:53	0.55	0.55	0.55	0.34	0.79
3299	2020-05-05 17:38:58	0.34	0.55	0.34	0.55	0.85
3300	2020-05-05 17:39:03	0.43	0.55	0.55	0.34	0.74
3301	2020-05-05 17:39:08	0.55	0.34	0.43	0.34	0.85
3302	2020-05-05 17:39:13	0.55	0.43	0.34	0.55	0.81
3303	2020-05-05 17:39:18	0.55	0.43	0.43	0.43	0.9
3304	2020-05-05 17:39:23	0.43	0.43	0.43	0.34	0.79
3305	2020-05-05 17:39:28	0.34	0.34	0.34	0.34	0.85
3306	2020-05-05 17:39:33	0.43	0.43	0.55	0.55	0.81
3307	2020-05-05 17:39:38	0.55	0.43	0.55	0.55	0.81
3308	2020-05-05 17:39:43	0.34	0.55	0.43	0.55	0.81
3309	2020-05-05 17:39:48	0.43	0.43	0.43	0.55	0.79
3310	2020-05-05 17:39:53	0.43	0.43	0.34	0.55	0.9
3311	2020-05-05 17:39:58	0.43	0.43	0.43	0.34	0.74
3312	2020-05-05 17:40:03	0.34	0.43	0.55	0.55	0.81
3313	2020-05-05 17:40:08	0.55	0.34	0.43	0.34	0.79
3314	2020-05-05 17:40:13	0.55	0.55	0.43	0.55	0.73
3319	2020-05-05 17:40:38	0.55	0.43	0.34	0.55	0.9
3324	2020-05-05 17:41:03	0.43	0.55	0.43	0.43	0.73
3329	2020-05-05 17:41:28	0.55	0.43	0.34	0.34	0.79
3334	2020-05-05 17:41:53	0.34	0.43	0.34	0.43	0.79
3339	2020-05-05 17:42:18	0.34	0.55	0.55	0.43	0.81
3344	2020-05-05 17:42:43	0.43	0.43	0.55	0.55	0.85
3349	2020-05-05 17:43:08	0.34	0.34	0.43	0.34	0.9
3354	2020-05-05 17:43:33	0.55	0.55	0.43	0.34	0.81
3359	2020-05-05 17:43:58	0.55	0.55	0.34	0.43	0.73
3364	2020-05-05 17:44:23	0.55	0.43	0.55	0.43	0.9
3369	2020-05-05 17:44:48	0.55	0.34	0.34	0.34	0.85
3374	2020-05-05 17:45:13	0.55	0.55	0.43	0.43	0.81
3379	2020-05-05 17:45:38	0.43	0.43	0.43	0.55	0.9
3384	2020-05-05 17:46:03	0.43	0.55	0.34	0.34	0.85
3389	2020-05-05 17:46:28	0.34	0.43	0.34	0.34	0.79
3394	2020-05-05 17:46:53	0.34	0.43	0.43	0.55	0.9
3399	2020-05-05 17:47:18	0.55	0.55	0.34	0.55	0.9
3404	2020-05-05 17:47:43	0.43	0.34	0.55	0.55	0.85
3409	2020-05-05 17:48:08	0.43	0.34	0.55	0.55	0.74
3414	2020-05-05 17:48:33	0.43	0.34	0.43	0.55	0.9
3419	2020-05-05 17:48:58	0.55	0.34	0.43	0.34	0.74
3424	2020-05-05 17:49:23	0.43	0.55	0.43	0.55	0.9
3429	2020-05-05 17:49:48	0.43	0.34	0.34	0.34	0.9
3434	2020-05-05 17:50:13	0.55	0.55	0.55	0.34	0.79
3439	2020-05-05 17:50:38	0.34	0.55	0.34	0.34	0.79
3444	2020-05-05 17:51:03	0.43	0.34	0.43	0.55	0.73
3449	2020-05-05 17:51:28	0.55	0.34	0.34	0.43	0.74
3454	2020-05-05 17:51:53	0.43	0.55	0.34	0.43	0.74
3459	2020-05-05 17:52:18	0.34	0.55	0.34	0.34	0.85
3464	2020-05-05 17:52:43	0.55	0.55	0.34	0.43	0.73
3469	2020-05-05 17:53:08	0.55	0.55	0.43	0.43	0.79
3474	2020-05-05 17:53:33	0.34	0.43	0.34	0.55	0.79
3479	2020-05-05 17:53:58	0.34	0.34	0.34	0.34	0.79
3484	2020-05-05 17:54:23	0.34	0.43	0.43	0.55	0.74
3489	2020-05-05 17:54:48	0.55	0.43	0.43	0.55	0.81
3494	2020-05-05 17:55:13	0.55	0.43	0.43	0.43	0.9
3499	2020-05-05 17:55:38	0.55	0.55	0.55	0.43	0.9
3504	2020-05-05 17:56:03	0.43	0.34	0.43	0.34	0.73
3509	2020-05-05 17:56:28	0.43	0.43	0.43	0.55	0.85
3514	2020-05-05 17:56:53	0.43	0.43	0.34	0.34	0.81
3519	2020-05-05 17:57:18	0.34	0.34	0.55	0.43	0.81
3524	2020-05-05 17:57:43	0.43	0.34	0.34	0.43	0.74
3529	2020-05-05 17:58:08	0.34	0.55	0.43	0.34	0.85
3534	2020-05-05 17:58:33	0.34	0.55	0.43	0.43	0.79
3539	2020-05-05 17:58:58	0.43	0.34	0.55	0.55	0.74
3544	2020-05-05 17:59:23	0.43	0.43	0.43	0.34	0.73
3549	2020-05-05 17:59:48	0.43	0.34	0.34	0.34	0.9
3554	2020-05-05 18:00:13	0.34	0.34	0.55	0.34	0.81
3559	2020-05-05 18:00:38	0.34	0.43	0.55	0.55	0.74
3564	2020-05-05 18:01:03	0.34	0.55	0.34	0.34	0.9
3569	2020-05-05 18:01:28	0.34	0.43	0.43	0.55	0.9
3574	2020-05-05 18:01:53	0.34	0.43	0.43	0.43	0.9
3579	2020-05-05 18:02:18	0.55	0.34	0.43	0.55	0.74
3584	2020-05-05 18:02:43	0.43	0.55	0.34	0.34	0.79
3589	2020-05-05 18:03:08	0.55	0.43	0.55	0.43	0.9
3594	2020-05-05 18:03:33	0.43	0.55	0.55	0.34	0.79
3599	2020-05-05 18:03:58	0.43	0.43	0.55	0.43	0.9
3604	2020-05-05 18:04:23	0.43	0.43	0.34	0.55	0.81
3609	2020-05-05 18:04:48	0.43	0.34	0.43	0.43	0.9
3614	2020-05-05 18:05:13	0.55	0.34	0.34	0.34	0.73
3619	2020-05-05 18:05:38	0.55	0.55	0.34	0.34	0.79
3624	2020-05-05 18:06:03	0.34	0.34	0.43	0.43	0.9
3629	2020-05-05 18:06:29	0.34	0.34	0.43	0.55	0.9
3634	2020-05-05 18:06:54	0.55	0.43	0.55	0.55	0.81
3639	2020-05-05 18:07:19	0.55	0.55	0.43	0.43	0.85
3644	2020-05-05 18:07:44	0.43	0.55	0.55	0.43	0.81
3315	2020-05-05 17:40:18	0.34	0.34	0.55	0.55	0.81
3320	2020-05-05 17:40:43	0.34	0.34	0.43	0.43	0.85
3325	2020-05-05 17:41:08	0.55	0.43	0.55	0.55	0.81
3330	2020-05-05 17:41:33	0.55	0.34	0.34	0.34	0.73
3335	2020-05-05 17:41:58	0.55	0.34	0.34	0.34	0.81
3340	2020-05-05 17:42:23	0.43	0.55	0.43	0.34	0.81
3345	2020-05-05 17:42:48	0.34	0.55	0.55	0.55	0.9
3350	2020-05-05 17:43:13	0.43	0.55	0.34	0.34	0.74
3355	2020-05-05 17:43:38	0.43	0.55	0.34	0.43	0.73
3360	2020-05-05 17:44:03	0.34	0.34	0.34	0.43	0.85
3365	2020-05-05 17:44:28	0.55	0.34	0.55	0.43	0.79
3370	2020-05-05 17:44:53	0.34	0.55	0.43	0.55	0.79
3375	2020-05-05 17:45:18	0.34	0.55	0.34	0.34	0.9
3380	2020-05-05 17:45:43	0.43	0.34	0.55	0.55	0.73
3385	2020-05-05 17:46:08	0.43	0.55	0.55	0.34	0.85
3390	2020-05-05 17:46:33	0.55	0.43	0.34	0.55	0.9
3395	2020-05-05 17:46:58	0.55	0.55	0.55	0.55	0.74
3400	2020-05-05 17:47:23	0.34	0.55	0.43	0.43	0.79
3405	2020-05-05 17:47:48	0.34	0.55	0.43	0.43	0.74
3410	2020-05-05 17:48:13	0.34	0.43	0.43	0.55	0.79
3415	2020-05-05 17:48:38	0.43	0.34	0.34	0.34	0.74
3420	2020-05-05 17:49:03	0.34	0.34	0.43	0.43	0.79
3425	2020-05-05 17:49:28	0.55	0.55	0.34	0.55	0.9
3430	2020-05-05 17:49:53	0.34	0.43	0.43	0.43	0.73
3435	2020-05-05 17:50:18	0.55	0.43	0.43	0.43	0.9
3440	2020-05-05 17:50:43	0.43	0.43	0.34	0.34	0.81
3445	2020-05-05 17:51:08	0.34	0.34	0.34	0.34	0.74
3450	2020-05-05 17:51:33	0.43	0.55	0.34	0.55	0.79
3455	2020-05-05 17:51:58	0.34	0.34	0.34	0.55	0.79
3460	2020-05-05 17:52:23	0.55	0.55	0.43	0.43	0.74
3465	2020-05-05 17:52:48	0.34	0.55	0.34	0.34	0.85
3470	2020-05-05 17:53:13	0.55	0.55	0.34	0.34	0.81
3475	2020-05-05 17:53:38	0.55	0.43	0.55	0.43	0.79
3480	2020-05-05 17:54:03	0.34	0.55	0.43	0.34	0.79
3485	2020-05-05 17:54:28	0.34	0.55	0.34	0.43	0.79
3490	2020-05-05 17:54:53	0.43	0.43	0.34	0.55	0.73
3495	2020-05-05 17:55:18	0.43	0.55	0.55	0.55	0.73
3500	2020-05-05 17:55:43	0.43	0.43	0.34	0.34	0.73
3505	2020-05-05 17:56:08	0.34	0.55	0.55	0.55	0.85
3510	2020-05-05 17:56:33	0.34	0.43	0.34	0.55	0.9
3515	2020-05-05 17:56:58	0.43	0.43	0.55	0.55	0.74
3520	2020-05-05 17:57:23	0.43	0.43	0.43	0.55	0.73
3525	2020-05-05 17:57:48	0.34	0.43	0.55	0.43	0.85
3530	2020-05-05 17:58:13	0.34	0.55	0.34	0.34	0.79
3535	2020-05-05 17:58:38	0.55	0.55	0.55	0.43	0.74
3540	2020-05-05 17:59:03	0.43	0.34	0.43	0.43	0.81
3545	2020-05-05 17:59:28	0.43	0.34	0.43	0.43	0.85
3550	2020-05-05 17:59:53	0.34	0.55	0.43	0.34	0.79
3555	2020-05-05 18:00:18	0.55	0.43	0.43	0.43	0.9
3560	2020-05-05 18:00:43	0.43	0.34	0.55	0.34	0.74
3565	2020-05-05 18:01:08	0.34	0.55	0.34	0.34	0.79
3570	2020-05-05 18:01:33	0.34	0.34	0.55	0.55	0.9
3575	2020-05-05 18:01:58	0.34	0.34	0.34	0.34	0.74
3580	2020-05-05 18:02:23	0.55	0.43	0.55	0.34	0.85
3585	2020-05-05 18:02:48	0.34	0.55	0.43	0.55	0.9
3590	2020-05-05 18:03:13	0.34	0.43	0.55	0.43	0.74
3595	2020-05-05 18:03:38	0.34	0.55	0.34	0.43	0.9
3600	2020-05-05 18:04:03	0.34	0.34	0.55	0.55	0.73
3605	2020-05-05 18:04:28	0.43	0.34	0.34	0.43	0.74
3610	2020-05-05 18:04:53	0.43	0.34	0.34	0.34	0.9
3615	2020-05-05 18:05:18	0.43	0.55	0.43	0.34	0.9
3620	2020-05-05 18:05:43	0.34	0.34	0.43	0.34	0.79
3625	2020-05-05 18:06:08	0.34	0.43	0.43	0.43	0.74
3630	2020-05-05 18:06:34	0.34	0.55	0.34	0.34	0.73
3635	2020-05-05 18:06:59	0.55	0.34	0.43	0.55	0.73
3640	2020-05-05 18:07:24	0.43	0.55	0.55	0.55	0.74
3645	2020-05-05 18:07:49	0.43	0.34	0.43	0.55	0.85
3316	2020-05-05 17:40:23	0.55	0.34	0.55	0.34	0.81
3321	2020-05-05 17:40:48	0.34	0.55	0.43	0.43	0.81
3326	2020-05-05 17:41:13	0.43	0.43	0.34	0.43	0.73
3331	2020-05-05 17:41:38	0.55	0.55	0.43	0.43	0.85
3336	2020-05-05 17:42:03	0.43	0.34	0.34	0.34	0.79
3341	2020-05-05 17:42:28	0.55	0.43	0.34	0.55	0.81
3346	2020-05-05 17:42:53	0.43	0.34	0.55	0.34	0.85
3351	2020-05-05 17:43:18	0.34	0.34	0.55	0.43	0.9
3356	2020-05-05 17:43:43	0.55	0.34	0.34	0.43	0.79
3361	2020-05-05 17:44:08	0.43	0.34	0.55	0.55	0.9
3366	2020-05-05 17:44:33	0.43	0.34	0.34	0.34	0.9
3371	2020-05-05 17:44:58	0.34	0.34	0.43	0.55	0.79
3376	2020-05-05 17:45:23	0.43	0.43	0.34	0.43	0.79
3381	2020-05-05 17:45:48	0.34	0.34	0.55	0.43	0.73
3386	2020-05-05 17:46:13	0.43	0.34	0.34	0.55	0.79
3391	2020-05-05 17:46:38	0.34	0.43	0.43	0.34	0.85
3396	2020-05-05 17:47:03	0.55	0.43	0.34	0.55	0.79
3401	2020-05-05 17:47:28	0.34	0.43	0.43	0.34	0.9
3406	2020-05-05 17:47:53	0.34	0.43	0.55	0.43	0.81
3411	2020-05-05 17:48:18	0.55	0.34	0.34	0.55	0.9
3416	2020-05-05 17:48:43	0.34	0.34	0.43	0.34	0.79
3421	2020-05-05 17:49:08	0.43	0.34	0.34	0.34	0.81
3426	2020-05-05 17:49:33	0.55	0.43	0.43	0.43	0.74
3431	2020-05-05 17:49:58	0.55	0.55	0.43	0.55	0.79
3436	2020-05-05 17:50:23	0.55	0.43	0.43	0.55	0.73
3441	2020-05-05 17:50:48	0.55	0.43	0.34	0.55	0.73
3446	2020-05-05 17:51:13	0.55	0.34	0.55	0.43	0.73
3451	2020-05-05 17:51:38	0.55	0.34	0.55	0.34	0.9
3456	2020-05-05 17:52:03	0.34	0.43	0.55	0.55	0.9
3461	2020-05-05 17:52:28	0.55	0.55	0.34	0.34	0.74
3466	2020-05-05 17:52:53	0.55	0.43	0.34	0.43	0.85
3471	2020-05-05 17:53:18	0.43	0.34	0.34	0.55	0.79
3476	2020-05-05 17:53:43	0.55	0.43	0.34	0.34	0.73
3481	2020-05-05 17:54:08	0.43	0.43	0.34	0.34	0.81
3486	2020-05-05 17:54:33	0.55	0.34	0.55	0.43	0.9
3491	2020-05-05 17:54:58	0.34	0.34	0.34	0.43	0.79
3496	2020-05-05 17:55:23	0.43	0.34	0.43	0.43	0.85
3501	2020-05-05 17:55:48	0.43	0.34	0.55	0.34	0.79
3506	2020-05-05 17:56:13	0.34	0.55	0.43	0.34	0.79
3511	2020-05-05 17:56:38	0.55	0.43	0.34	0.43	0.79
3516	2020-05-05 17:57:03	0.34	0.34	0.34	0.55	0.85
3521	2020-05-05 17:57:28	0.34	0.34	0.43	0.34	0.81
3526	2020-05-05 17:57:53	0.55	0.43	0.43	0.55	0.73
3531	2020-05-05 17:58:18	0.55	0.34	0.55	0.34	0.73
3536	2020-05-05 17:58:43	0.55	0.55	0.55	0.34	0.85
3541	2020-05-05 17:59:08	0.34	0.55	0.43	0.55	0.85
3546	2020-05-05 17:59:33	0.55	0.55	0.34	0.55	0.79
3551	2020-05-05 17:59:58	0.34	0.43	0.43	0.34	0.79
3556	2020-05-05 18:00:23	0.43	0.55	0.55	0.55	0.73
3561	2020-05-05 18:00:48	0.55	0.34	0.43	0.34	0.9
3566	2020-05-05 18:01:13	0.43	0.34	0.34	0.55	0.9
3571	2020-05-05 18:01:38	0.43	0.34	0.43	0.34	0.73
3576	2020-05-05 18:02:03	0.55	0.55	0.55	0.43	0.9
3581	2020-05-05 18:02:28	0.34	0.43	0.43	0.34	0.9
3586	2020-05-05 18:02:53	0.34	0.43	0.34	0.43	0.73
3591	2020-05-05 18:03:18	0.34	0.43	0.55	0.43	0.74
3596	2020-05-05 18:03:43	0.43	0.43	0.55	0.34	0.81
3601	2020-05-05 18:04:08	0.55	0.55	0.43	0.55	0.74
3606	2020-05-05 18:04:33	0.34	0.43	0.34	0.55	0.9
3611	2020-05-05 18:04:58	0.43	0.43	0.55	0.43	0.79
3616	2020-05-05 18:05:23	0.43	0.34	0.43	0.43	0.9
3621	2020-05-05 18:05:48	0.34	0.43	0.43	0.55	0.85
3626	2020-05-05 18:06:13	0.55	0.43	0.34	0.43	0.79
3631	2020-05-05 18:06:39	0.43	0.43	0.55	0.34	0.79
3636	2020-05-05 18:07:04	0.43	0.43	0.34	0.43	0.9
3641	2020-05-05 18:07:29	0.34	0.43	0.43	0.55	0.85
3646	2020-05-05 18:07:54	0.34	0.34	0.43	0.55	0.85
3317	2020-05-05 17:40:28	0.55	0.43	0.55	0.43	0.85
3322	2020-05-05 17:40:53	0.34	0.55	0.43	0.34	0.9
3327	2020-05-05 17:41:18	0.43	0.43	0.34	0.34	0.9
3332	2020-05-05 17:41:43	0.34	0.34	0.34	0.34	0.9
3337	2020-05-05 17:42:08	0.43	0.43	0.55	0.43	0.9
3342	2020-05-05 17:42:33	0.55	0.55	0.55	0.55	0.73
3347	2020-05-05 17:42:58	0.34	0.34	0.34	0.34	0.81
3352	2020-05-05 17:43:23	0.34	0.55	0.43	0.34	0.9
3357	2020-05-05 17:43:48	0.43	0.43	0.43	0.43	0.74
3362	2020-05-05 17:44:13	0.43	0.34	0.43	0.34	0.85
3367	2020-05-05 17:44:38	0.43	0.55	0.43	0.55	0.73
3372	2020-05-05 17:45:03	0.55	0.34	0.55	0.55	0.73
3377	2020-05-05 17:45:28	0.34	0.55	0.34	0.43	0.74
3382	2020-05-05 17:45:53	0.43	0.43	0.34	0.43	0.9
3387	2020-05-05 17:46:18	0.34	0.34	0.55	0.34	0.73
3392	2020-05-05 17:46:43	0.43	0.34	0.55	0.55	0.85
3397	2020-05-05 17:47:08	0.43	0.34	0.55	0.34	0.81
3402	2020-05-05 17:47:33	0.34	0.43	0.43	0.34	0.79
3407	2020-05-05 17:47:58	0.34	0.43	0.34	0.34	0.9
3412	2020-05-05 17:48:23	0.34	0.55	0.55	0.43	0.73
3417	2020-05-05 17:48:48	0.34	0.55	0.55	0.55	0.73
3422	2020-05-05 17:49:13	0.55	0.43	0.34	0.43	0.73
3427	2020-05-05 17:49:38	0.55	0.43	0.43	0.55	0.73
3432	2020-05-05 17:50:03	0.34	0.43	0.43	0.34	0.85
3437	2020-05-05 17:50:28	0.43	0.43	0.43	0.43	0.74
3442	2020-05-05 17:50:53	0.34	0.43	0.43	0.43	0.74
3447	2020-05-05 17:51:18	0.43	0.34	0.43	0.43	0.81
3452	2020-05-05 17:51:43	0.43	0.43	0.43	0.34	0.9
3457	2020-05-05 17:52:08	0.34	0.55	0.55	0.55	0.73
3462	2020-05-05 17:52:33	0.43	0.55	0.55	0.43	0.73
3467	2020-05-05 17:52:58	0.43	0.34	0.55	0.34	0.81
3472	2020-05-05 17:53:23	0.55	0.34	0.55	0.43	0.81
3477	2020-05-05 17:53:48	0.55	0.34	0.34	0.43	0.85
3482	2020-05-05 17:54:13	0.43	0.43	0.55	0.34	0.85
3487	2020-05-05 17:54:38	0.34	0.34	0.55	0.34	0.81
3492	2020-05-05 17:55:03	0.55	0.34	0.55	0.43	0.81
3497	2020-05-05 17:55:28	0.43	0.34	0.34	0.43	0.9
3502	2020-05-05 17:55:53	0.34	0.34	0.55	0.55	0.73
3507	2020-05-05 17:56:18	0.55	0.43	0.34	0.43	0.79
3512	2020-05-05 17:56:43	0.55	0.43	0.55	0.43	0.81
3517	2020-05-05 17:57:08	0.43	0.55	0.43	0.43	0.74
3522	2020-05-05 17:57:33	0.34	0.34	0.34	0.43	0.81
3527	2020-05-05 17:57:58	0.55	0.55	0.55	0.55	0.79
3532	2020-05-05 17:58:23	0.43	0.34	0.34	0.55	0.81
3537	2020-05-05 17:58:48	0.43	0.43	0.55	0.34	0.9
3542	2020-05-05 17:59:13	0.43	0.43	0.43	0.43	0.81
3547	2020-05-05 17:59:38	0.55	0.55	0.55	0.55	0.74
3552	2020-05-05 18:00:03	0.34	0.43	0.34	0.34	0.74
3557	2020-05-05 18:00:28	0.55	0.34	0.43	0.43	0.73
3562	2020-05-05 18:00:53	0.43	0.43	0.43	0.43	0.9
3567	2020-05-05 18:01:18	0.43	0.34	0.43	0.55	0.9
3572	2020-05-05 18:01:43	0.55	0.43	0.55	0.55	0.9
3577	2020-05-05 18:02:08	0.34	0.34	0.34	0.55	0.81
3582	2020-05-05 18:02:33	0.34	0.34	0.34	0.34	0.81
3587	2020-05-05 18:02:58	0.43	0.43	0.43	0.43	0.79
3592	2020-05-05 18:03:23	0.55	0.55	0.34	0.34	0.74
3597	2020-05-05 18:03:48	0.55	0.55	0.34	0.55	0.79
3602	2020-05-05 18:04:13	0.34	0.34	0.34	0.34	0.74
3607	2020-05-05 18:04:38	0.55	0.34	0.43	0.34	0.85
3612	2020-05-05 18:05:03	0.34	0.43	0.34	0.55	0.9
3617	2020-05-05 18:05:28	0.55	0.34	0.43	0.34	0.73
3622	2020-05-05 18:05:53	0.43	0.34	0.55	0.34	0.79
3627	2020-05-05 18:06:18	0.34	0.43	0.34	0.43	0.81
3632	2020-05-05 18:06:44	0.43	0.34	0.34	0.43	0.85
3637	2020-05-05 18:07:09	0.43	0.55	0.43	0.43	0.73
3642	2020-05-05 18:07:34	0.34	0.34	0.55	0.43	0.79
3647	2020-05-05 18:07:59	0.55	0.43	0.34	0.55	0.9
3318	2020-05-05 17:40:33	0.55	0.34	0.34	0.43	0.9
3323	2020-05-05 17:40:58	0.34	0.55	0.43	0.43	0.79
3328	2020-05-05 17:41:23	0.43	0.43	0.55	0.34	0.81
3333	2020-05-05 17:41:48	0.55	0.55	0.34	0.55	0.74
3338	2020-05-05 17:42:13	0.34	0.55	0.55	0.55	0.81
3343	2020-05-05 17:42:38	0.43	0.34	0.43	0.43	0.85
3348	2020-05-05 17:43:03	0.34	0.34	0.43	0.34	0.81
3353	2020-05-05 17:43:28	0.55	0.43	0.55	0.43	0.73
3358	2020-05-05 17:43:53	0.55	0.43	0.55	0.43	0.81
3363	2020-05-05 17:44:18	0.43	0.55	0.34	0.43	0.79
3368	2020-05-05 17:44:43	0.55	0.34	0.43	0.55	0.9
3373	2020-05-05 17:45:08	0.43	0.43	0.55	0.34	0.74
3378	2020-05-05 17:45:33	0.43	0.43	0.43	0.55	0.85
3383	2020-05-05 17:45:58	0.55	0.34	0.55	0.34	0.79
3388	2020-05-05 17:46:23	0.34	0.55	0.43	0.55	0.85
3393	2020-05-05 17:46:48	0.55	0.55	0.55	0.55	0.81
3398	2020-05-05 17:47:13	0.34	0.34	0.55	0.55	0.74
3403	2020-05-05 17:47:38	0.34	0.55	0.55	0.43	0.74
3408	2020-05-05 17:48:03	0.43	0.43	0.55	0.55	0.9
3413	2020-05-05 17:48:28	0.34	0.34	0.55	0.55	0.79
3418	2020-05-05 17:48:53	0.55	0.43	0.43	0.43	0.79
3423	2020-05-05 17:49:18	0.43	0.34	0.43	0.55	0.81
3428	2020-05-05 17:49:43	0.34	0.34	0.34	0.34	0.9
3433	2020-05-05 17:50:08	0.43	0.34	0.55	0.55	0.73
3438	2020-05-05 17:50:33	0.43	0.34	0.55	0.43	0.81
3443	2020-05-05 17:50:58	0.34	0.55	0.55	0.43	0.81
3448	2020-05-05 17:51:23	0.43	0.43	0.43	0.43	0.81
3453	2020-05-05 17:51:48	0.43	0.34	0.34	0.55	0.79
3458	2020-05-05 17:52:13	0.55	0.43	0.55	0.55	0.73
3463	2020-05-05 17:52:38	0.55	0.43	0.43	0.43	0.9
3468	2020-05-05 17:53:03	0.43	0.34	0.43	0.34	0.81
3473	2020-05-05 17:53:28	0.55	0.43	0.34	0.43	0.73
3478	2020-05-05 17:53:53	0.55	0.34	0.43	0.55	0.73
3483	2020-05-05 17:54:18	0.34	0.34	0.55	0.34	0.9
3488	2020-05-05 17:54:43	0.34	0.34	0.34	0.43	0.73
3493	2020-05-05 17:55:08	0.43	0.55	0.55	0.55	0.81
3498	2020-05-05 17:55:33	0.34	0.43	0.55	0.34	0.79
3503	2020-05-05 17:55:58	0.34	0.55	0.43	0.43	0.85
3508	2020-05-05 17:56:23	0.43	0.55	0.34	0.34	0.9
3513	2020-05-05 17:56:48	0.55	0.55	0.34	0.55	0.9
3518	2020-05-05 17:57:13	0.55	0.43	0.34	0.55	0.81
3523	2020-05-05 17:57:38	0.34	0.43	0.34	0.34	0.79
3528	2020-05-05 17:58:03	0.43	0.55	0.34	0.55	0.85
3533	2020-05-05 17:58:28	0.34	0.34	0.43	0.43	0.85
3538	2020-05-05 17:58:53	0.34	0.34	0.34	0.43	0.73
3543	2020-05-05 17:59:18	0.43	0.55	0.43	0.43	0.85
3548	2020-05-05 17:59:43	0.43	0.43	0.55	0.43	0.85
3553	2020-05-05 18:00:08	0.43	0.55	0.43	0.55	0.81
3558	2020-05-05 18:00:33	0.34	0.55	0.34	0.55	0.9
3563	2020-05-05 18:00:58	0.34	0.43	0.34	0.34	0.9
3568	2020-05-05 18:01:23	0.34	0.43	0.43	0.55	0.74
3573	2020-05-05 18:01:48	0.34	0.55	0.43	0.55	0.73
3578	2020-05-05 18:02:13	0.34	0.55	0.43	0.43	0.9
3583	2020-05-05 18:02:38	0.34	0.43	0.43	0.34	0.85
3588	2020-05-05 18:03:03	0.43	0.34	0.55	0.34	0.74
3593	2020-05-05 18:03:28	0.34	0.43	0.34	0.55	0.9
3598	2020-05-05 18:03:53	0.43	0.55	0.55	0.43	0.79
3603	2020-05-05 18:04:18	0.34	0.55	0.43	0.55	0.74
3608	2020-05-05 18:04:43	0.43	0.55	0.34	0.43	0.81
3613	2020-05-05 18:05:08	0.55	0.43	0.55	0.43	0.9
3618	2020-05-05 18:05:33	0.34	0.55	0.55	0.43	0.79
3623	2020-05-05 18:05:58	0.43	0.55	0.55	0.34	0.81
3628	2020-05-05 18:06:24	0.43	0.43	0.55	0.55	0.73
3633	2020-05-05 18:06:49	0.43	0.43	0.43	0.34	0.73
3638	2020-05-05 18:07:14	0.43	0.55	0.55	0.55	0.81
3643	2020-05-05 18:07:39	0.43	0.55	0.34	0.55	0.85
3648	2020-05-05 18:08:04	0.43	0.55	0.43	0.55	0.85
3649	2020-05-05 18:08:09	0.34	0.34	0.34	0.55	0.79
3650	2020-05-05 18:08:14	0.43	0.43	0.55	0.34	0.85
3651	2020-05-05 18:08:19	0.34	0.34	0.55	0.55	0.79
3652	2020-05-05 18:08:24	0.34	0.34	0.55	0.55	0.73
3653	2020-05-05 18:08:29	0.55	0.55	0.34	0.55	0.79
3654	2020-05-05 18:08:34	0.55	0.34	0.55	0.34	0.81
3655	2020-05-05 18:08:39	0.34	0.43	0.34	0.34	0.73
3656	2020-05-05 18:08:44	0.43	0.34	0.34	0.55	0.85
3657	2020-05-05 18:08:49	0.55	0.34	0.43	0.55	0.79
3658	2020-05-05 18:08:54	0.34	0.34	0.43	0.34	0.79
3659	2020-05-05 18:08:59	0.43	0.55	0.34	0.43	0.85
3660	2020-05-05 18:09:04	0.55	0.55	0.34	0.43	0.79
3661	2020-05-05 18:09:09	0.55	0.34	0.34	0.43	0.74
3662	2020-05-05 18:09:14	0.34	0.43	0.34	0.34	0.81
3663	2020-05-05 18:09:19	0.34	0.43	0.55	0.34	0.73
3664	2020-05-05 18:09:24	0.34	0.43	0.55	0.43	0.9
3665	2020-05-05 18:09:29	0.34	0.55	0.43	0.43	0.79
3666	2020-05-05 18:09:34	0.43	0.55	0.55	0.55	0.74
3667	2020-05-05 18:09:39	0.34	0.55	0.43	0.34	0.74
3668	2020-05-05 18:09:44	0.43	0.34	0.34	0.55	0.9
3669	2020-05-05 18:09:49	0.34	0.34	0.34	0.43	0.85
3670	2020-05-05 18:09:54	0.43	0.43	0.55	0.34	0.85
3671	2020-05-05 18:09:59	0.34	0.55	0.55	0.55	0.9
3672	2020-05-05 18:10:04	0.43	0.34	0.34	0.34	0.73
3673	2020-05-05 18:10:09	0.43	0.34	0.34	0.34	0.81
3674	2020-05-05 18:10:14	0.55	0.55	0.34	0.34	0.81
3675	2020-05-05 18:10:19	0.55	0.43	0.55	0.34	0.81
3676	2020-05-05 18:10:24	0.34	0.43	0.34	0.43	0.74
3677	2020-05-05 18:10:29	0.34	0.34	0.43	0.43	0.9
3678	2020-05-05 18:10:34	0.55	0.43	0.43	0.34	0.79
3679	2020-05-05 18:10:39	0.55	0.43	0.55	0.34	0.85
3680	2020-05-05 18:10:44	0.34	0.55	0.55	0.43	0.74
3681	2020-05-05 18:10:49	0.43	0.43	0.34	0.43	0.79
3682	2020-05-05 18:10:54	0.43	0.43	0.34	0.34	0.79
3683	2020-05-05 18:10:59	0.43	0.34	0.43	0.55	0.74
3684	2020-05-05 18:11:04	0.43	0.34	0.43	0.34	0.73
3685	2020-05-05 18:11:09	0.43	0.34	0.55	0.55	0.74
3686	2020-05-05 18:11:14	0.55	0.55	0.55	0.43	0.79
3687	2020-05-05 18:11:19	0.34	0.55	0.43	0.55	0.74
3688	2020-05-05 18:11:24	0.43	0.34	0.55	0.34	0.85
3689	2020-05-05 18:11:29	0.34	0.43	0.43	0.34	0.79
3690	2020-05-05 18:11:34	0.43	0.55	0.34	0.55	0.79
3691	2020-05-05 18:11:39	0.55	0.55	0.43	0.55	0.85
3696	2020-05-05 18:12:04	0.55	0.55	0.55	0.55	0.9
3701	2020-05-05 18:12:29	0.55	0.55	0.34	0.34	0.85
3706	2020-05-05 18:12:54	0.43	0.43	0.43	0.55	0.9
3711	2020-05-05 18:13:19	0.43	0.34	0.55	0.43	0.81
3716	2020-05-05 18:13:44	0.55	0.43	0.55	0.34	0.74
3721	2020-05-05 18:14:09	0.55	0.43	0.43	0.55	0.81
3726	2020-05-05 18:14:34	0.55	0.43	0.43	0.43	0.85
3731	2020-05-05 18:14:59	0.34	0.34	0.55	0.34	0.9
3736	2020-05-05 18:15:24	0.43	0.43	0.55	0.43	0.73
3741	2020-05-05 18:15:49	0.34	0.55	0.43	0.43	0.9
3746	2020-05-05 18:16:14	0.43	0.34	0.34	0.34	0.74
3751	2020-05-05 18:16:39	0.43	0.34	0.55	0.55	0.81
3756	2020-05-05 18:17:04	0.43	0.34	0.55	0.55	0.79
3761	2020-05-05 18:17:29	0.55	0.43	0.55	0.43	0.79
3766	2020-05-05 18:17:54	0.43	0.34	0.55	0.43	0.85
3771	2020-05-05 18:18:19	0.34	0.43	0.34	0.55	0.74
3776	2020-05-05 18:18:44	0.55	0.55	0.34	0.34	0.9
3781	2020-05-05 18:19:09	0.55	0.55	0.55	0.34	0.79
3786	2020-05-05 18:19:34	0.55	0.43	0.55	0.43	0.73
3791	2020-05-05 18:19:59	0.43	0.55	0.55	0.43	0.9
3796	2020-05-05 18:20:24	0.34	0.43	0.34	0.43	0.79
3801	2020-05-05 18:20:49	0.55	0.34	0.55	0.43	0.73
3806	2020-05-05 18:21:14	0.43	0.34	0.55	0.55	0.73
3811	2020-05-05 18:21:39	0.43	0.55	0.55	0.43	0.9
3816	2020-05-05 18:22:04	0.43	0.43	0.34	0.43	0.73
3821	2020-05-05 18:22:29	0.34	0.43	0.55	0.34	0.74
3826	2020-05-05 18:22:54	0.43	0.34	0.43	0.43	0.81
3831	2020-05-05 18:23:19	0.43	0.34	0.34	0.34	0.9
3836	2020-05-05 18:23:44	0.34	0.55	0.43	0.55	0.74
3841	2020-05-05 18:24:09	0.43	0.55	0.34	0.55	0.9
3846	2020-05-05 18:24:34	0.43	0.34	0.55	0.55	0.73
3851	2020-05-05 18:24:59	0.43	0.43	0.43	0.34	0.9
3856	2020-05-05 18:25:24	0.34	0.43	0.43	0.34	0.73
3861	2020-05-05 18:25:49	0.55	0.34	0.43	0.34	0.81
3866	2020-05-05 18:26:14	0.34	0.34	0.43	0.55	0.9
3871	2020-05-05 18:26:39	0.34	0.43	0.43	0.43	0.81
3876	2020-05-05 18:27:04	0.43	0.43	0.43	0.34	0.74
3881	2020-05-05 18:27:29	0.34	0.34	0.55	0.43	0.79
3886	2020-05-05 18:27:54	0.43	0.55	0.43	0.55	0.74
3891	2020-05-05 18:28:19	0.34	0.55	0.43	0.43	0.9
3896	2020-05-05 18:28:44	0.55	0.55	0.43	0.55	0.81
3901	2020-05-05 18:29:09	0.55	0.34	0.34	0.55	0.9
3906	2020-05-05 18:29:34	0.34	0.55	0.55	0.43	0.79
3911	2020-05-05 18:29:59	0.55	0.34	0.34	0.55	0.9
3916	2020-05-05 18:30:24	0.43	0.55	0.34	0.34	0.9
3921	2020-05-05 18:30:49	0.43	0.43	0.43	0.55	0.74
3926	2020-05-05 18:31:14	0.43	0.55	0.55	0.34	0.81
3931	2020-05-05 18:31:39	0.34	0.55	0.55	0.43	0.73
3936	2020-05-05 18:32:04	0.55	0.43	0.43	0.43	0.85
3941	2020-05-05 18:32:29	0.43	0.43	0.34	0.43	0.74
3946	2020-05-05 18:32:54	0.34	0.55	0.34	0.55	0.9
3951	2020-05-05 18:33:19	0.43	0.43	0.55	0.43	0.85
3956	2020-05-05 18:33:44	0.55	0.55	0.34	0.34	0.73
3961	2020-05-05 18:34:09	0.55	0.43	0.34	0.34	0.79
3966	2020-05-05 18:34:34	0.43	0.43	0.43	0.43	0.9
3971	2020-05-05 18:34:59	0.43	0.43	0.55	0.43	0.9
3976	2020-05-05 18:35:25	0.55	0.43	0.43	0.43	0.73
3981	2020-05-05 18:35:50	0.34	0.34	0.43	0.55	0.73
3986	2020-05-05 18:36:15	0.55	0.34	0.43	0.55	0.85
3991	2020-05-05 18:36:40	0.34	0.55	0.34	0.43	0.73
3996	2020-05-05 18:37:05	0.43	0.43	0.34	0.55	0.79
4001	2020-05-05 18:37:30	0.34	0.55	0.34	0.34	0.9
4006	2020-05-05 18:37:55	0.34	0.43	0.43	0.43	0.74
4011	2020-05-05 18:38:20	0.43	0.34	0.34	0.43	0.74
4016	2020-05-05 18:38:45	0.43	0.55	0.34	0.55	0.85
4021	2020-05-05 18:39:10	0.43	0.34	0.34	0.34	0.73
4026	2020-05-05 18:39:35	0.55	0.43	0.55	0.43	0.79
4031	2020-05-05 18:40:00	0.34	0.43	0.55	0.55	0.81
4036	2020-05-05 18:40:25	0.34	0.55	0.55	0.55	0.85
4041	2020-05-05 18:40:50	0.55	0.34	0.34	0.55	0.81
4046	2020-05-05 18:41:15	0.55	0.34	0.55	0.55	0.81
4051	2020-05-05 18:41:40	0.43	0.34	0.34	0.43	0.9
4056	2020-05-05 18:42:05	0.55	0.55	0.34	0.43	0.79
4061	2020-05-05 18:42:30	0.34	0.43	0.43	0.34	0.81
4066	2020-05-05 18:42:55	0.55	0.55	0.34	0.43	0.73
3692	2020-05-05 18:11:44	0.55	0.34	0.34	0.43	0.9
3697	2020-05-05 18:12:09	0.43	0.43	0.55	0.55	0.79
3702	2020-05-05 18:12:34	0.55	0.43	0.34	0.34	0.85
3707	2020-05-05 18:12:59	0.55	0.34	0.55	0.55	0.81
3712	2020-05-05 18:13:24	0.43	0.55	0.43	0.34	0.9
3717	2020-05-05 18:13:49	0.55	0.43	0.34	0.55	0.73
3722	2020-05-05 18:14:14	0.34	0.55	0.34	0.43	0.81
3727	2020-05-05 18:14:39	0.43	0.34	0.34	0.55	0.73
3732	2020-05-05 18:15:04	0.43	0.55	0.55	0.55	0.85
3737	2020-05-05 18:15:29	0.34	0.43	0.43	0.34	0.73
3742	2020-05-05 18:15:54	0.43	0.43	0.43	0.43	0.9
3747	2020-05-05 18:16:19	0.43	0.34	0.43	0.43	0.81
3752	2020-05-05 18:16:44	0.43	0.55	0.55	0.34	0.74
3757	2020-05-05 18:17:09	0.55	0.55	0.34	0.34	0.81
3762	2020-05-05 18:17:34	0.34	0.34	0.55	0.55	0.74
3767	2020-05-05 18:17:59	0.34	0.43	0.55	0.34	0.85
3772	2020-05-05 18:18:24	0.55	0.43	0.34	0.34	0.79
3777	2020-05-05 18:18:49	0.55	0.55	0.55	0.34	0.9
3782	2020-05-05 18:19:14	0.55	0.34	0.43	0.43	0.85
3787	2020-05-05 18:19:39	0.55	0.55	0.43	0.55	0.74
3792	2020-05-05 18:20:04	0.34	0.55	0.34	0.34	0.85
3797	2020-05-05 18:20:29	0.43	0.43	0.34	0.55	0.85
3802	2020-05-05 18:20:54	0.43	0.34	0.34	0.55	0.74
3807	2020-05-05 18:21:19	0.55	0.55	0.34	0.43	0.79
3812	2020-05-05 18:21:44	0.34	0.34	0.55	0.43	0.81
3817	2020-05-05 18:22:09	0.55	0.55	0.55	0.34	0.81
3822	2020-05-05 18:22:34	0.55	0.34	0.55	0.34	0.73
3827	2020-05-05 18:22:59	0.43	0.55	0.43	0.34	0.74
3832	2020-05-05 18:23:24	0.43	0.34	0.34	0.34	0.79
3837	2020-05-05 18:23:49	0.43	0.55	0.55	0.34	0.74
3842	2020-05-05 18:24:14	0.43	0.43	0.43	0.43	0.85
3847	2020-05-05 18:24:39	0.43	0.34	0.43	0.55	0.85
3852	2020-05-05 18:25:04	0.34	0.43	0.43	0.34	0.81
3857	2020-05-05 18:25:29	0.34	0.43	0.34	0.34	0.9
3862	2020-05-05 18:25:54	0.55	0.34	0.55	0.43	0.9
3867	2020-05-05 18:26:19	0.43	0.55	0.43	0.43	0.79
3872	2020-05-05 18:26:44	0.34	0.55	0.43	0.43	0.81
3877	2020-05-05 18:27:09	0.43	0.55	0.34	0.43	0.9
3882	2020-05-05 18:27:34	0.55	0.55	0.34	0.55	0.79
3887	2020-05-05 18:27:59	0.55	0.43	0.34	0.55	0.9
3892	2020-05-05 18:28:24	0.34	0.55	0.43	0.34	0.85
3897	2020-05-05 18:28:49	0.34	0.55	0.55	0.43	0.9
3902	2020-05-05 18:29:14	0.34	0.43	0.34	0.34	0.79
3907	2020-05-05 18:29:39	0.34	0.34	0.55	0.34	0.74
3912	2020-05-05 18:30:04	0.55	0.34	0.43	0.43	0.79
3917	2020-05-05 18:30:29	0.55	0.43	0.34	0.55	0.73
3922	2020-05-05 18:30:54	0.43	0.34	0.43	0.43	0.85
3927	2020-05-05 18:31:19	0.55	0.55	0.43	0.55	0.74
3932	2020-05-05 18:31:44	0.55	0.34	0.55	0.43	0.81
3937	2020-05-05 18:32:09	0.43	0.55	0.34	0.43	0.85
3942	2020-05-05 18:32:34	0.43	0.43	0.34	0.43	0.81
3947	2020-05-05 18:32:59	0.55	0.43	0.55	0.34	0.9
3952	2020-05-05 18:33:24	0.43	0.55	0.43	0.43	0.85
3957	2020-05-05 18:33:49	0.55	0.55	0.55	0.43	0.73
3962	2020-05-05 18:34:14	0.43	0.43	0.43	0.34	0.85
3967	2020-05-05 18:34:39	0.55	0.43	0.43	0.34	0.85
3972	2020-05-05 18:35:04	0.55	0.34	0.55	0.43	0.74
3977	2020-05-05 18:35:30	0.43	0.34	0.55	0.55	0.85
3982	2020-05-05 18:35:55	0.43	0.34	0.55	0.43	0.73
3987	2020-05-05 18:36:20	0.34	0.34	0.43	0.43	0.85
3992	2020-05-05 18:36:45	0.34	0.43	0.34	0.43	0.85
3997	2020-05-05 18:37:10	0.55	0.55	0.55	0.43	0.9
4002	2020-05-05 18:37:35	0.55	0.34	0.55	0.43	0.79
4007	2020-05-05 18:38:00	0.43	0.34	0.43	0.34	0.79
4012	2020-05-05 18:38:25	0.55	0.34	0.55	0.34	0.74
4017	2020-05-05 18:38:50	0.43	0.34	0.55	0.55	0.9
4022	2020-05-05 18:39:15	0.34	0.34	0.43	0.34	0.85
4027	2020-05-05 18:39:40	0.43	0.34	0.55	0.55	0.73
4032	2020-05-05 18:40:05	0.55	0.34	0.43	0.43	0.79
4037	2020-05-05 18:40:30	0.55	0.43	0.34	0.43	0.73
4042	2020-05-05 18:40:55	0.55	0.34	0.55	0.43	0.73
4047	2020-05-05 18:41:20	0.55	0.43	0.34	0.43	0.9
4052	2020-05-05 18:41:45	0.43	0.43	0.43	0.55	0.79
4057	2020-05-05 18:42:10	0.55	0.55	0.34	0.55	0.85
4062	2020-05-05 18:42:35	0.34	0.55	0.43	0.43	0.81
4067	2020-05-05 18:43:00	0.34	0.55	0.34	0.55	0.85
3693	2020-05-05 18:11:49	0.34	0.43	0.34	0.34	0.81
3698	2020-05-05 18:12:14	0.43	0.34	0.34	0.55	0.85
3703	2020-05-05 18:12:39	0.43	0.34	0.34	0.55	0.81
3708	2020-05-05 18:13:04	0.34	0.55	0.34	0.43	0.79
3713	2020-05-05 18:13:29	0.34	0.43	0.43	0.43	0.9
3718	2020-05-05 18:13:54	0.43	0.43	0.34	0.43	0.73
3723	2020-05-05 18:14:19	0.55	0.43	0.34	0.55	0.79
3728	2020-05-05 18:14:44	0.43	0.55	0.43	0.43	0.9
3733	2020-05-05 18:15:09	0.55	0.43	0.34	0.43	0.9
3738	2020-05-05 18:15:34	0.34	0.55	0.43	0.43	0.73
3743	2020-05-05 18:15:59	0.43	0.34	0.43	0.34	0.81
3748	2020-05-05 18:16:24	0.55	0.43	0.43	0.43	0.74
3753	2020-05-05 18:16:49	0.34	0.43	0.43	0.43	0.74
3758	2020-05-05 18:17:14	0.34	0.43	0.34	0.43	0.81
3763	2020-05-05 18:17:39	0.34	0.55	0.55	0.55	0.79
3768	2020-05-05 18:18:04	0.55	0.55	0.43	0.34	0.9
3773	2020-05-05 18:18:29	0.34	0.43	0.43	0.55	0.79
3778	2020-05-05 18:18:54	0.55	0.55	0.43	0.43	0.73
3783	2020-05-05 18:19:19	0.43	0.34	0.34	0.43	0.9
3788	2020-05-05 18:19:44	0.55	0.55	0.55	0.55	0.81
3793	2020-05-05 18:20:09	0.55	0.55	0.55	0.43	0.74
3798	2020-05-05 18:20:34	0.43	0.34	0.55	0.55	0.81
3803	2020-05-05 18:20:59	0.55	0.55	0.34	0.43	0.79
3808	2020-05-05 18:21:24	0.34	0.55	0.43	0.43	0.81
3813	2020-05-05 18:21:49	0.34	0.34	0.43	0.55	0.74
3818	2020-05-05 18:22:14	0.43	0.55	0.55	0.43	0.9
3823	2020-05-05 18:22:39	0.34	0.34	0.34	0.43	0.81
3828	2020-05-05 18:23:04	0.43	0.43	0.43	0.43	0.85
3833	2020-05-05 18:23:29	0.55	0.34	0.34	0.55	0.73
3838	2020-05-05 18:23:54	0.43	0.34	0.34	0.34	0.81
3843	2020-05-05 18:24:19	0.34	0.43	0.34	0.34	0.85
3848	2020-05-05 18:24:44	0.34	0.34	0.55	0.43	0.73
3853	2020-05-05 18:25:09	0.43	0.43	0.43	0.34	0.74
3858	2020-05-05 18:25:34	0.55	0.43	0.43	0.34	0.73
3863	2020-05-05 18:25:59	0.34	0.43	0.55	0.55	0.74
3868	2020-05-05 18:26:24	0.43	0.55	0.55	0.55	0.73
3873	2020-05-05 18:26:49	0.43	0.55	0.34	0.43	0.73
3878	2020-05-05 18:27:14	0.55	0.55	0.34	0.34	0.73
3883	2020-05-05 18:27:39	0.55	0.34	0.43	0.43	0.79
3888	2020-05-05 18:28:04	0.55	0.55	0.43	0.55	0.74
3893	2020-05-05 18:28:29	0.55	0.43	0.43	0.43	0.85
3898	2020-05-05 18:28:54	0.34	0.34	0.55	0.55	0.85
3903	2020-05-05 18:29:19	0.55	0.43	0.55	0.34	0.9
3908	2020-05-05 18:29:44	0.34	0.55	0.55	0.43	0.73
3913	2020-05-05 18:30:09	0.34	0.34	0.43	0.34	0.85
3918	2020-05-05 18:30:34	0.43	0.34	0.43	0.43	0.9
3923	2020-05-05 18:30:59	0.34	0.43	0.55	0.34	0.73
3928	2020-05-05 18:31:24	0.55	0.55	0.34	0.55	0.85
3933	2020-05-05 18:31:49	0.55	0.55	0.55	0.55	0.74
3938	2020-05-05 18:32:14	0.34	0.34	0.34	0.34	0.85
3943	2020-05-05 18:32:39	0.43	0.55	0.34	0.34	0.73
3948	2020-05-05 18:33:04	0.34	0.43	0.34	0.55	0.85
3953	2020-05-05 18:33:29	0.43	0.34	0.43	0.55	0.85
3958	2020-05-05 18:33:54	0.43	0.43	0.34	0.43	0.85
3963	2020-05-05 18:34:19	0.34	0.43	0.43	0.34	0.79
3968	2020-05-05 18:34:44	0.43	0.43	0.55	0.43	0.73
3973	2020-05-05 18:35:09	0.55	0.43	0.43	0.55	0.9
3978	2020-05-05 18:35:35	0.34	0.34	0.34	0.55	0.73
3983	2020-05-05 18:36:00	0.43	0.43	0.34	0.34	0.74
3988	2020-05-05 18:36:25	0.43	0.43	0.34	0.55	0.85
3993	2020-05-05 18:36:50	0.34	0.43	0.43	0.34	0.81
3998	2020-05-05 18:37:15	0.55	0.43	0.34	0.43	0.74
4003	2020-05-05 18:37:40	0.55	0.55	0.43	0.43	0.85
4008	2020-05-05 18:38:05	0.55	0.55	0.43	0.55	0.81
4013	2020-05-05 18:38:30	0.34	0.34	0.34	0.55	0.9
4018	2020-05-05 18:38:55	0.43	0.43	0.55	0.43	0.79
4023	2020-05-05 18:39:20	0.43	0.43	0.34	0.43	0.73
4028	2020-05-05 18:39:45	0.55	0.34	0.43	0.55	0.81
4033	2020-05-05 18:40:10	0.43	0.43	0.34	0.55	0.9
4038	2020-05-05 18:40:35	0.55	0.43	0.34	0.34	0.9
4043	2020-05-05 18:41:00	0.43	0.43	0.55	0.43	0.79
4048	2020-05-05 18:41:25	0.34	0.34	0.43	0.34	0.79
4053	2020-05-05 18:41:50	0.43	0.34	0.55	0.34	0.81
4058	2020-05-05 18:42:15	0.55	0.55	0.43	0.43	0.81
4063	2020-05-05 18:42:40	0.43	0.34	0.34	0.34	0.79
4068	2020-05-05 18:43:05	0.43	0.34	0.55	0.43	0.85
3694	2020-05-05 18:11:54	0.55	0.34	0.43	0.55	0.73
3699	2020-05-05 18:12:19	0.55	0.43	0.34	0.55	0.73
3704	2020-05-05 18:12:44	0.43	0.55	0.34	0.43	0.79
3709	2020-05-05 18:13:09	0.34	0.55	0.55	0.34	0.73
3714	2020-05-05 18:13:34	0.43	0.43	0.55	0.34	0.73
3719	2020-05-05 18:13:59	0.43	0.55	0.55	0.43	0.73
3724	2020-05-05 18:14:24	0.43	0.43	0.43	0.43	0.79
3729	2020-05-05 18:14:49	0.55	0.34	0.43	0.55	0.81
3734	2020-05-05 18:15:14	0.43	0.55	0.34	0.43	0.73
3739	2020-05-05 18:15:39	0.43	0.55	0.34	0.55	0.79
3744	2020-05-05 18:16:04	0.43	0.34	0.34	0.43	0.85
3749	2020-05-05 18:16:29	0.34	0.34	0.43	0.55	0.74
3754	2020-05-05 18:16:54	0.55	0.34	0.55	0.55	0.9
3759	2020-05-05 18:17:19	0.55	0.43	0.43	0.43	0.79
3764	2020-05-05 18:17:44	0.55	0.55	0.55	0.34	0.9
3769	2020-05-05 18:18:09	0.55	0.43	0.34	0.43	0.74
3774	2020-05-05 18:18:34	0.43	0.43	0.34	0.55	0.85
3779	2020-05-05 18:18:59	0.43	0.34	0.34	0.43	0.73
3784	2020-05-05 18:19:24	0.34	0.34	0.55	0.34	0.74
3789	2020-05-05 18:19:49	0.55	0.34	0.43	0.43	0.85
3794	2020-05-05 18:20:14	0.34	0.43	0.55	0.55	0.79
3799	2020-05-05 18:20:39	0.34	0.55	0.34	0.55	0.74
3804	2020-05-05 18:21:04	0.55	0.34	0.43	0.43	0.85
3809	2020-05-05 18:21:29	0.34	0.55	0.55	0.55	0.74
3814	2020-05-05 18:21:54	0.55	0.43	0.34	0.55	0.79
3819	2020-05-05 18:22:19	0.34	0.43	0.43	0.34	0.74
3824	2020-05-05 18:22:44	0.55	0.43	0.55	0.43	0.73
3829	2020-05-05 18:23:09	0.34	0.34	0.43	0.43	0.74
3834	2020-05-05 18:23:34	0.43	0.55	0.55	0.43	0.81
3839	2020-05-05 18:23:59	0.55	0.43	0.34	0.55	0.85
3844	2020-05-05 18:24:24	0.43	0.55	0.55	0.55	0.81
3849	2020-05-05 18:24:49	0.34	0.43	0.55	0.55	0.73
3854	2020-05-05 18:25:14	0.55	0.34	0.34	0.55	0.79
3859	2020-05-05 18:25:39	0.55	0.55	0.43	0.43	0.9
3864	2020-05-05 18:26:04	0.55	0.55	0.34	0.34	0.81
3869	2020-05-05 18:26:29	0.43	0.55	0.43	0.43	0.74
3874	2020-05-05 18:26:54	0.55	0.55	0.34	0.43	0.85
3879	2020-05-05 18:27:19	0.55	0.34	0.43	0.55	0.79
3884	2020-05-05 18:27:44	0.55	0.43	0.55	0.43	0.85
3889	2020-05-05 18:28:09	0.43	0.55	0.34	0.55	0.85
3894	2020-05-05 18:28:34	0.55	0.34	0.34	0.43	0.85
3899	2020-05-05 18:28:59	0.55	0.43	0.34	0.34	0.81
3904	2020-05-05 18:29:24	0.43	0.55	0.43	0.55	0.9
3909	2020-05-05 18:29:49	0.43	0.43	0.34	0.55	0.73
3914	2020-05-05 18:30:14	0.34	0.43	0.55	0.34	0.74
3919	2020-05-05 18:30:39	0.55	0.55	0.34	0.55	0.79
3924	2020-05-05 18:31:04	0.43	0.43	0.55	0.55	0.73
3929	2020-05-05 18:31:29	0.55	0.55	0.43	0.34	0.79
3934	2020-05-05 18:31:54	0.34	0.43	0.34	0.43	0.85
3939	2020-05-05 18:32:19	0.43	0.43	0.34	0.55	0.9
3944	2020-05-05 18:32:44	0.55	0.34	0.55	0.55	0.79
3949	2020-05-05 18:33:09	0.55	0.43	0.34	0.34	0.79
3954	2020-05-05 18:33:34	0.43	0.43	0.43	0.43	0.73
3959	2020-05-05 18:33:59	0.55	0.55	0.34	0.43	0.79
3964	2020-05-05 18:34:24	0.34	0.34	0.34	0.34	0.73
3969	2020-05-05 18:34:49	0.34	0.34	0.34	0.34	0.79
3974	2020-05-05 18:35:14	0.34	0.43	0.34	0.43	0.79
3979	2020-05-05 18:35:40	0.43	0.34	0.55	0.43	0.81
3984	2020-05-05 18:36:05	0.55	0.34	0.34	0.55	0.74
3989	2020-05-05 18:36:30	0.55	0.55	0.34	0.55	0.81
3994	2020-05-05 18:36:55	0.34	0.43	0.43	0.43	0.79
3999	2020-05-05 18:37:20	0.55	0.55	0.55	0.34	0.79
4004	2020-05-05 18:37:45	0.43	0.43	0.43	0.34	0.79
4009	2020-05-05 18:38:10	0.43	0.43	0.43	0.55	0.73
4014	2020-05-05 18:38:35	0.55	0.55	0.34	0.34	0.74
4019	2020-05-05 18:39:00	0.55	0.43	0.55	0.34	0.73
4024	2020-05-05 18:39:25	0.43	0.43	0.55	0.55	0.81
4029	2020-05-05 18:39:50	0.34	0.34	0.55	0.43	0.79
4034	2020-05-05 18:40:15	0.43	0.34	0.43	0.34	0.81
4039	2020-05-05 18:40:40	0.43	0.34	0.34	0.34	0.9
4044	2020-05-05 18:41:05	0.34	0.43	0.55	0.55	0.9
4049	2020-05-05 18:41:30	0.55	0.43	0.34	0.43	0.9
4054	2020-05-05 18:41:55	0.55	0.55	0.34	0.43	0.79
4059	2020-05-05 18:42:20	0.55	0.55	0.43	0.55	0.85
4064	2020-05-05 18:42:45	0.43	0.55	0.43	0.55	0.79
4069	2020-05-05 18:43:10	0.43	0.34	0.55	0.43	0.85
3695	2020-05-05 18:11:59	0.34	0.34	0.34	0.43	0.79
3700	2020-05-05 18:12:24	0.34	0.43	0.34	0.43	0.85
3705	2020-05-05 18:12:49	0.34	0.55	0.55	0.43	0.85
3710	2020-05-05 18:13:14	0.55	0.43	0.43	0.43	0.79
3715	2020-05-05 18:13:39	0.55	0.43	0.43	0.43	0.79
3720	2020-05-05 18:14:04	0.55	0.34	0.43	0.55	0.85
3725	2020-05-05 18:14:29	0.55	0.55	0.55	0.55	0.74
3730	2020-05-05 18:14:54	0.43	0.43	0.55	0.34	0.74
3735	2020-05-05 18:15:19	0.43	0.34	0.43	0.55	0.73
3740	2020-05-05 18:15:44	0.34	0.43	0.55	0.43	0.85
3745	2020-05-05 18:16:09	0.43	0.55	0.34	0.43	0.85
3750	2020-05-05 18:16:34	0.34	0.43	0.55	0.55	0.79
3755	2020-05-05 18:16:59	0.43	0.34	0.55	0.34	0.73
3760	2020-05-05 18:17:24	0.55	0.43	0.55	0.43	0.79
3765	2020-05-05 18:17:49	0.43	0.43	0.34	0.43	0.81
3770	2020-05-05 18:18:14	0.34	0.34	0.43	0.34	0.79
3775	2020-05-05 18:18:39	0.43	0.55	0.43	0.55	0.85
3780	2020-05-05 18:19:04	0.43	0.55	0.55	0.34	0.9
3785	2020-05-05 18:19:29	0.34	0.34	0.34	0.55	0.74
3790	2020-05-05 18:19:54	0.43	0.34	0.34	0.55	0.85
3795	2020-05-05 18:20:19	0.43	0.43	0.34	0.55	0.81
3800	2020-05-05 18:20:44	0.55	0.55	0.34	0.55	0.73
3805	2020-05-05 18:21:09	0.34	0.43	0.43	0.34	0.85
3810	2020-05-05 18:21:34	0.55	0.34	0.34	0.55	0.79
3815	2020-05-05 18:21:59	0.43	0.43	0.34	0.43	0.85
3820	2020-05-05 18:22:24	0.43	0.55	0.43	0.34	0.85
3825	2020-05-05 18:22:49	0.43	0.34	0.55	0.34	0.74
3830	2020-05-05 18:23:14	0.43	0.34	0.43	0.34	0.9
3835	2020-05-05 18:23:39	0.55	0.43	0.43	0.55	0.73
3840	2020-05-05 18:24:04	0.55	0.43	0.43	0.55	0.85
3845	2020-05-05 18:24:29	0.43	0.55	0.43	0.43	0.73
3850	2020-05-05 18:24:54	0.55	0.55	0.34	0.55	0.81
3855	2020-05-05 18:25:19	0.55	0.43	0.55	0.55	0.73
3860	2020-05-05 18:25:44	0.34	0.55	0.55	0.43	0.9
3865	2020-05-05 18:26:09	0.34	0.34	0.34	0.43	0.74
3870	2020-05-05 18:26:34	0.34	0.34	0.55	0.43	0.74
3875	2020-05-05 18:26:59	0.43	0.43	0.34	0.34	0.85
3880	2020-05-05 18:27:24	0.34	0.34	0.34	0.55	0.73
3885	2020-05-05 18:27:49	0.55	0.34	0.34	0.34	0.73
3890	2020-05-05 18:28:14	0.55	0.43	0.43	0.55	0.74
3895	2020-05-05 18:28:39	0.55	0.55	0.55	0.34	0.79
3900	2020-05-05 18:29:04	0.43	0.34	0.34	0.34	0.79
3905	2020-05-05 18:29:29	0.43	0.43	0.55	0.55	0.9
3910	2020-05-05 18:29:54	0.55	0.34	0.43	0.43	0.81
3915	2020-05-05 18:30:19	0.34	0.34	0.34	0.34	0.79
3920	2020-05-05 18:30:44	0.34	0.55	0.43	0.43	0.81
3925	2020-05-05 18:31:09	0.34	0.43	0.34	0.34	0.85
3930	2020-05-05 18:31:34	0.43	0.43	0.55	0.55	0.85
3935	2020-05-05 18:31:59	0.43	0.34	0.55	0.55	0.85
3940	2020-05-05 18:32:24	0.34	0.34	0.43	0.34	0.81
3945	2020-05-05 18:32:49	0.55	0.55	0.55	0.43	0.85
3950	2020-05-05 18:33:14	0.34	0.34	0.55	0.55	0.81
3955	2020-05-05 18:33:39	0.55	0.43	0.55	0.55	0.81
3960	2020-05-05 18:34:04	0.43	0.55	0.55	0.34	0.9
3965	2020-05-05 18:34:29	0.43	0.34	0.34	0.55	0.73
3970	2020-05-05 18:34:54	0.55	0.55	0.34	0.43	0.9
3975	2020-05-05 18:35:20	0.34	0.43	0.43	0.34	0.73
3980	2020-05-05 18:35:45	0.43	0.43	0.55	0.55	0.74
3985	2020-05-05 18:36:10	0.43	0.34	0.55	0.43	0.79
3990	2020-05-05 18:36:35	0.34	0.43	0.34	0.43	0.74
3995	2020-05-05 18:37:00	0.55	0.43	0.55	0.34	0.85
4000	2020-05-05 18:37:25	0.43	0.55	0.34	0.55	0.81
4005	2020-05-05 18:37:50	0.55	0.34	0.43	0.34	0.9
4010	2020-05-05 18:38:15	0.43	0.34	0.34	0.55	0.9
4015	2020-05-05 18:38:40	0.34	0.43	0.55	0.43	0.81
4020	2020-05-05 18:39:05	0.34	0.55	0.34	0.34	0.73
4025	2020-05-05 18:39:30	0.43	0.34	0.34	0.55	0.73
4030	2020-05-05 18:39:55	0.55	0.34	0.55	0.43	0.74
4035	2020-05-05 18:40:20	0.55	0.43	0.43	0.43	0.81
4040	2020-05-05 18:40:45	0.55	0.55	0.55	0.34	0.81
4045	2020-05-05 18:41:10	0.34	0.34	0.43	0.43	0.74
4050	2020-05-05 18:41:35	0.55	0.43	0.34	0.55	0.73
4055	2020-05-05 18:42:00	0.34	0.43	0.43	0.43	0.73
4060	2020-05-05 18:42:25	0.55	0.43	0.55	0.55	0.85
4065	2020-05-05 18:42:50	0.55	0.55	0.55	0.55	0.74
4070	2020-05-05 18:43:15	0.43	0.34	0.55	0.34	0.81
4071	2020-05-05 18:43:20	0.43	0.55	0.43	0.55	0.85
4072	2020-05-05 18:43:25	0.55	0.34	0.55	0.43	0.85
4073	2020-05-05 18:43:30	0.55	0.34	0.43	0.34	0.9
4074	2020-05-05 18:43:35	0.43	0.43	0.55	0.43	0.79
4075	2020-05-05 18:43:40	0.34	0.43	0.34	0.43	0.81
4076	2020-05-05 18:43:45	0.34	0.43	0.55	0.55	0.79
4077	2020-05-05 18:43:50	0.34	0.43	0.34	0.55	0.73
4078	2020-05-05 18:43:55	0.55	0.34	0.43	0.43	0.79
4079	2020-05-05 18:44:00	0.43	0.55	0.43	0.55	0.79
4080	2020-05-05 18:44:05	0.34	0.43	0.43	0.55	0.79
4081	2020-05-05 18:44:10	0.34	0.43	0.43	0.43	0.73
4082	2020-05-05 18:44:15	0.43	0.55	0.34	0.34	0.79
4083	2020-05-05 18:44:20	0.55	0.55	0.34	0.55	0.79
4084	2020-05-05 18:44:25	0.34	0.43	0.34	0.43	0.74
4085	2020-05-05 18:44:30	0.55	0.43	0.55	0.34	0.9
4086	2020-05-05 18:44:35	0.34	0.43	0.43	0.43	0.81
4087	2020-05-05 18:44:40	0.43	0.34	0.55	0.43	0.73
4088	2020-05-05 18:44:45	0.55	0.43	0.43	0.43	0.85
4089	2020-05-05 18:44:50	0.34	0.34	0.34	0.55	0.73
4090	2020-05-05 18:44:55	0.55	0.34	0.34	0.55	0.9
4091	2020-05-05 18:45:00	0.34	0.34	0.34	0.43	0.74
4092	2020-05-05 18:45:05	0.43	0.55	0.43	0.55	0.81
4093	2020-05-05 18:45:10	0.55	0.43	0.43	0.34	0.74
4094	2020-05-05 18:45:15	0.55	0.43	0.43	0.43	0.85
4095	2020-05-05 18:45:20	0.55	0.43	0.34	0.55	0.79
4096	2020-05-05 18:45:25	0.34	0.43	0.34	0.55	0.74
4097	2020-05-05 18:45:30	0.55	0.34	0.34	0.55	0.85
4098	2020-05-05 18:45:35	0.34	0.55	0.34	0.55	0.85
4099	2020-05-05 18:45:40	0.34	0.43	0.55	0.55	0.79
4100	2020-05-05 18:45:45	0.34	0.43	0.43	0.55	0.74
4101	2020-05-05 18:45:50	0.34	0.55	0.43	0.34	0.73
4102	2020-05-05 18:45:55	0.34	0.43	0.55	0.43	0.85
4103	2020-05-05 18:46:00	0.55	0.43	0.34	0.43	0.81
4108	2020-05-05 18:46:25	0.55	0.34	0.34	0.43	0.9
4113	2020-05-05 18:46:50	0.34	0.55	0.43	0.55	0.9
4118	2020-05-05 18:47:15	0.43	0.34	0.55	0.34	0.85
4123	2020-05-05 18:47:40	0.34	0.43	0.43	0.43	0.81
4128	2020-05-05 18:48:05	0.55	0.34	0.34	0.34	0.81
4133	2020-05-05 18:48:30	0.34	0.43	0.34	0.34	0.85
4138	2020-05-05 18:48:55	0.55	0.43	0.34	0.55	0.9
4143	2020-05-05 18:49:20	0.43	0.55	0.34	0.55	0.79
4148	2020-05-05 18:49:45	0.55	0.34	0.34	0.34	0.74
4153	2020-05-05 18:50:10	0.55	0.43	0.55	0.43	0.81
4158	2020-05-05 18:50:35	0.55	0.34	0.34	0.55	0.79
4163	2020-05-05 18:51:00	0.43	0.34	0.34	0.43	0.81
4168	2020-05-05 18:51:25	0.34	0.43	0.55	0.55	0.79
4173	2020-05-05 18:51:50	0.34	0.43	0.55	0.43	0.9
4178	2020-05-05 18:52:15	0.34	0.55	0.34	0.55	0.81
4183	2020-05-05 18:52:40	0.55	0.43	0.43	0.55	0.9
4188	2020-05-05 18:53:05	0.34	0.43	0.43	0.55	0.85
4193	2020-05-05 18:53:30	0.34	0.34	0.43	0.43	0.85
4198	2020-05-05 18:53:55	0.43	0.34	0.55	0.55	0.74
4203	2020-05-05 18:54:20	0.55	0.34	0.55	0.34	0.9
4208	2020-05-05 18:54:45	0.43	0.34	0.55	0.55	0.73
4213	2020-05-05 18:55:10	0.34	0.34	0.34	0.55	0.9
4218	2020-05-05 18:55:35	0.55	0.55	0.34	0.55	0.74
4223	2020-05-05 18:56:00	0.34	0.34	0.34	0.43	0.73
4228	2020-05-05 18:56:25	0.55	0.43	0.34	0.43	0.79
4233	2020-05-05 18:56:50	0.55	0.43	0.43	0.34	0.74
4238	2020-05-05 18:57:15	0.34	0.55	0.34	0.55	0.85
4243	2020-05-05 18:57:40	0.55	0.43	0.43	0.43	0.73
4248	2020-05-05 18:58:05	0.55	0.55	0.55	0.55	0.9
4253	2020-05-05 18:58:30	0.55	0.55	0.34	0.55	0.81
4258	2020-05-05 18:58:55	0.34	0.34	0.43	0.34	0.85
4263	2020-05-05 18:59:20	0.55	0.55	0.55	0.55	0.79
4268	2020-05-05 18:59:45	0.55	0.34	0.34	0.55	0.85
4273	2020-05-05 19:00:10	0.34	0.34	0.34	0.55	0.74
4278	2020-05-05 19:00:35	0.34	0.55	0.55	0.34	0.79
4283	2020-05-05 19:01:00	0.34	0.43	0.34	0.55	0.79
4288	2020-05-05 19:01:25	0.55	0.55	0.43	0.34	0.81
4293	2020-05-05 19:01:50	0.55	0.34	0.34	0.34	0.85
4298	2020-05-05 19:02:15	0.34	0.55	0.34	0.43	0.74
4303	2020-05-05 19:02:40	0.55	0.43	0.43	0.55	0.74
4308	2020-05-05 19:03:05	0.55	0.55	0.34	0.43	0.74
4313	2020-05-05 19:03:30	0.43	0.55	0.55	0.55	0.81
4318	2020-05-05 19:03:55	0.55	0.34	0.43	0.55	0.79
4323	2020-05-05 19:04:21	0.34	0.55	0.34	0.34	0.74
4328	2020-05-05 19:04:46	0.55	0.43	0.34	0.34	0.74
4333	2020-05-05 19:05:11	0.43	0.43	0.34	0.34	0.81
4338	2020-05-05 19:05:36	0.34	0.55	0.55	0.55	0.81
4343	2020-05-05 19:06:01	0.55	0.55	0.55	0.55	0.81
4348	2020-05-05 19:06:26	0.34	0.55	0.34	0.55	0.85
4353	2020-05-05 19:06:51	0.55	0.43	0.43	0.43	0.85
4358	2020-05-05 19:07:16	0.55	0.43	0.55	0.55	0.85
4363	2020-05-05 19:07:41	0.43	0.34	0.55	0.55	0.81
4368	2020-05-05 19:08:06	0.34	0.43	0.43	0.55	0.85
4373	2020-05-05 19:08:31	0.43	0.43	0.34	0.55	0.74
4378	2020-05-05 19:08:56	0.55	0.43	0.43	0.43	0.74
4383	2020-05-05 19:09:21	0.43	0.55	0.55	0.55	0.81
4388	2020-05-05 19:09:46	0.55	0.34	0.43	0.55	0.9
4393	2020-05-05 19:10:11	0.55	0.55	0.55	0.34	0.81
4398	2020-05-05 19:10:36	0.55	0.43	0.55	0.55	0.85
4403	2020-05-05 19:11:01	0.34	0.34	0.34	0.55	0.79
4408	2020-05-05 19:11:26	0.55	0.55	0.34	0.55	0.74
4413	2020-05-05 19:11:51	0.43	0.43	0.55	0.43	0.73
4418	2020-05-05 19:12:16	0.55	0.55	0.34	0.55	0.81
4423	2020-05-05 19:12:41	0.34	0.43	0.34	0.43	0.73
4428	2020-05-05 19:13:06	0.55	0.43	0.43	0.43	0.74
4433	2020-05-05 19:13:31	0.34	0.43	0.34	0.43	0.73
4438	2020-05-05 19:13:56	0.43	0.34	0.55	0.43	0.9
4443	2020-05-05 19:14:21	0.43	0.55	0.43	0.43	0.73
4448	2020-05-05 19:14:46	0.43	0.55	0.43	0.55	0.9
4453	2020-05-05 19:15:11	0.34	0.34	0.43	0.55	0.81
4458	2020-05-05 19:15:36	0.34	0.43	0.43	0.43	0.79
4463	2020-05-05 19:16:01	0.43	0.34	0.34	0.43	0.9
4468	2020-05-05 19:16:26	0.34	0.43	0.34	0.43	0.81
4473	2020-05-05 19:16:51	0.43	0.55	0.55	0.43	0.73
4478	2020-05-05 19:17:16	0.34	0.43	0.43	0.55	0.79
4483	2020-05-05 19:17:41	0.43	0.55	0.55	0.34	0.79
4488	2020-05-05 19:18:06	0.43	0.55	0.55	0.43	0.74
4493	2020-05-05 19:18:31	0.34	0.55	0.43	0.34	0.73
4498	2020-05-05 19:18:56	0.43	0.55	0.55	0.34	0.9
4503	2020-05-05 19:19:21	0.34	0.55	0.34	0.43	0.81
4508	2020-05-05 19:19:46	0.55	0.43	0.55	0.43	0.81
4513	2020-05-05 19:20:11	0.34	0.34	0.55	0.55	0.74
4518	2020-05-05 19:20:36	0.55	0.43	0.43	0.55	0.85
4523	2020-05-05 19:21:01	0.43	0.43	0.55	0.55	0.74
4104	2020-05-05 18:46:05	0.43	0.43	0.55	0.34	0.85
4109	2020-05-05 18:46:30	0.55	0.55	0.34	0.43	0.81
4114	2020-05-05 18:46:55	0.34	0.34	0.43	0.34	0.79
4119	2020-05-05 18:47:20	0.43	0.55	0.43	0.43	0.73
4124	2020-05-05 18:47:45	0.55	0.43	0.34	0.43	0.73
4129	2020-05-05 18:48:10	0.34	0.34	0.43	0.55	0.9
4134	2020-05-05 18:48:35	0.34	0.55	0.55	0.34	0.79
4139	2020-05-05 18:49:00	0.34	0.34	0.34	0.34	0.79
4144	2020-05-05 18:49:25	0.55	0.43	0.34	0.55	0.81
4149	2020-05-05 18:49:50	0.43	0.43	0.43	0.43	0.81
4154	2020-05-05 18:50:15	0.55	0.55	0.55	0.43	0.85
4159	2020-05-05 18:50:40	0.43	0.34	0.55	0.43	0.73
4164	2020-05-05 18:51:05	0.43	0.43	0.55	0.43	0.81
4169	2020-05-05 18:51:30	0.55	0.55	0.43	0.55	0.74
4174	2020-05-05 18:51:55	0.34	0.34	0.55	0.34	0.73
4179	2020-05-05 18:52:20	0.43	0.43	0.34	0.43	0.81
4184	2020-05-05 18:52:45	0.34	0.34	0.55	0.43	0.73
4189	2020-05-05 18:53:10	0.34	0.43	0.43	0.55	0.81
4194	2020-05-05 18:53:35	0.55	0.55	0.43	0.55	0.9
4199	2020-05-05 18:54:00	0.55	0.55	0.34	0.55	0.85
4204	2020-05-05 18:54:25	0.34	0.34	0.55	0.43	0.9
4209	2020-05-05 18:54:50	0.43	0.34	0.55	0.55	0.85
4214	2020-05-05 18:55:15	0.55	0.55	0.34	0.55	0.81
4219	2020-05-05 18:55:40	0.34	0.55	0.43	0.43	0.85
4224	2020-05-05 18:56:05	0.43	0.43	0.43	0.34	0.74
4229	2020-05-05 18:56:30	0.55	0.43	0.43	0.34	0.81
4234	2020-05-05 18:56:55	0.43	0.55	0.34	0.55	0.85
4239	2020-05-05 18:57:20	0.43	0.43	0.55	0.55	0.81
4244	2020-05-05 18:57:45	0.55	0.34	0.34	0.34	0.85
4249	2020-05-05 18:58:10	0.43	0.55	0.34	0.55	0.85
4254	2020-05-05 18:58:35	0.34	0.34	0.43	0.55	0.81
4259	2020-05-05 18:59:00	0.34	0.43	0.34	0.34	0.85
4264	2020-05-05 18:59:25	0.55	0.43	0.43	0.55	0.85
4269	2020-05-05 18:59:50	0.43	0.43	0.34	0.34	0.85
4274	2020-05-05 19:00:15	0.34	0.34	0.34	0.34	0.79
4279	2020-05-05 19:00:40	0.34	0.55	0.43	0.55	0.81
4284	2020-05-05 19:01:05	0.43	0.43	0.43	0.34	0.79
4289	2020-05-05 19:01:30	0.55	0.34	0.34	0.55	0.85
4294	2020-05-05 19:01:55	0.55	0.34	0.34	0.43	0.73
4299	2020-05-05 19:02:20	0.34	0.34	0.43	0.43	0.74
4304	2020-05-05 19:02:45	0.55	0.34	0.55	0.34	0.85
4309	2020-05-05 19:03:10	0.34	0.34	0.55	0.55	0.9
4314	2020-05-05 19:03:35	0.43	0.43	0.34	0.43	0.81
4319	2020-05-05 19:04:00	0.43	0.55	0.43	0.34	0.79
4324	2020-05-05 19:04:26	0.43	0.43	0.55	0.43	0.81
4329	2020-05-05 19:04:51	0.43	0.43	0.43	0.43	0.9
4334	2020-05-05 19:05:16	0.34	0.55	0.34	0.55	0.9
4339	2020-05-05 19:05:41	0.43	0.55	0.43	0.34	0.9
4344	2020-05-05 19:06:06	0.34	0.34	0.43	0.34	0.81
4349	2020-05-05 19:06:31	0.55	0.55	0.43	0.34	0.79
4354	2020-05-05 19:06:56	0.43	0.34	0.55	0.55	0.79
4359	2020-05-05 19:07:21	0.55	0.55	0.55	0.43	0.79
4364	2020-05-05 19:07:46	0.55	0.43	0.55	0.55	0.81
4369	2020-05-05 19:08:11	0.43	0.43	0.43	0.43	0.79
4374	2020-05-05 19:08:36	0.55	0.43	0.43	0.55	0.73
4379	2020-05-05 19:09:01	0.34	0.43	0.55	0.34	0.74
4384	2020-05-05 19:09:26	0.55	0.55	0.34	0.55	0.81
4389	2020-05-05 19:09:51	0.55	0.43	0.43	0.43	0.79
4394	2020-05-05 19:10:16	0.34	0.43	0.55	0.55	0.73
4399	2020-05-05 19:10:41	0.55	0.34	0.34	0.43	0.85
4404	2020-05-05 19:11:06	0.55	0.34	0.43	0.34	0.73
4409	2020-05-05 19:11:31	0.34	0.34	0.55	0.55	0.85
4414	2020-05-05 19:11:56	0.34	0.43	0.43	0.34	0.79
4419	2020-05-05 19:12:21	0.43	0.34	0.55	0.43	0.81
4424	2020-05-05 19:12:46	0.55	0.43	0.34	0.34	0.74
4429	2020-05-05 19:13:11	0.34	0.34	0.55	0.34	0.73
4434	2020-05-05 19:13:36	0.34	0.34	0.34	0.43	0.79
4439	2020-05-05 19:14:01	0.43	0.34	0.43	0.43	0.74
4444	2020-05-05 19:14:26	0.43	0.55	0.55	0.55	0.81
4449	2020-05-05 19:14:51	0.43	0.55	0.34	0.55	0.79
4454	2020-05-05 19:15:16	0.34	0.43	0.43	0.43	0.79
4459	2020-05-05 19:15:41	0.34	0.34	0.55	0.34	0.9
4464	2020-05-05 19:16:06	0.55	0.43	0.55	0.34	0.73
4469	2020-05-05 19:16:31	0.55	0.55	0.43	0.43	0.85
4474	2020-05-05 19:16:56	0.34	0.43	0.34	0.55	0.73
4479	2020-05-05 19:17:21	0.43	0.34	0.55	0.34	0.79
4484	2020-05-05 19:17:46	0.55	0.43	0.55	0.43	0.74
4489	2020-05-05 19:18:11	0.55	0.34	0.55	0.55	0.9
4494	2020-05-05 19:18:36	0.43	0.43	0.55	0.34	0.79
4499	2020-05-05 19:19:01	0.34	0.34	0.34	0.34	0.79
4504	2020-05-05 19:19:26	0.34	0.55	0.43	0.43	0.81
4509	2020-05-05 19:19:51	0.55	0.34	0.43	0.34	0.74
4514	2020-05-05 19:20:16	0.55	0.34	0.55	0.55	0.73
4519	2020-05-05 19:20:41	0.43	0.34	0.55	0.55	0.9
4524	2020-05-05 19:21:06	0.43	0.55	0.43	0.34	0.81
4105	2020-05-05 18:46:10	0.55	0.55	0.34	0.55	0.9
4110	2020-05-05 18:46:35	0.34	0.55	0.34	0.43	0.79
4115	2020-05-05 18:47:00	0.34	0.34	0.55	0.34	0.79
4120	2020-05-05 18:47:25	0.43	0.55	0.34	0.55	0.79
4125	2020-05-05 18:47:50	0.43	0.34	0.34	0.34	0.79
4130	2020-05-05 18:48:15	0.34	0.55	0.34	0.55	0.79
4135	2020-05-05 18:48:40	0.43	0.43	0.34	0.34	0.74
4140	2020-05-05 18:49:05	0.34	0.55	0.34	0.43	0.9
4145	2020-05-05 18:49:30	0.55	0.43	0.34	0.55	0.74
4150	2020-05-05 18:49:55	0.34	0.55	0.43	0.55	0.73
4155	2020-05-05 18:50:20	0.34	0.43	0.55	0.34	0.79
4160	2020-05-05 18:50:45	0.34	0.55	0.55	0.43	0.9
4165	2020-05-05 18:51:10	0.34	0.55	0.34	0.55	0.9
4170	2020-05-05 18:51:35	0.43	0.55	0.55	0.34	0.73
4175	2020-05-05 18:52:00	0.43	0.55	0.55	0.55	0.85
4180	2020-05-05 18:52:25	0.55	0.43	0.43	0.34	0.81
4185	2020-05-05 18:52:50	0.55	0.34	0.43	0.34	0.9
4190	2020-05-05 18:53:15	0.43	0.34	0.55	0.55	0.79
4195	2020-05-05 18:53:40	0.55	0.43	0.55	0.43	0.85
4200	2020-05-05 18:54:05	0.43	0.43	0.43	0.55	0.9
4205	2020-05-05 18:54:30	0.55	0.43	0.34	0.34	0.85
4210	2020-05-05 18:54:55	0.55	0.34	0.55	0.43	0.85
4215	2020-05-05 18:55:20	0.43	0.34	0.34	0.43	0.79
4220	2020-05-05 18:55:45	0.43	0.34	0.34	0.34	0.85
4225	2020-05-05 18:56:10	0.55	0.34	0.43	0.55	0.9
4230	2020-05-05 18:56:35	0.43	0.34	0.55	0.55	0.9
4235	2020-05-05 18:57:00	0.55	0.34	0.34	0.34	0.81
4240	2020-05-05 18:57:25	0.34	0.43	0.55	0.55	0.9
4245	2020-05-05 18:57:50	0.55	0.43	0.55	0.34	0.85
4250	2020-05-05 18:58:15	0.43	0.34	0.55	0.55	0.74
4255	2020-05-05 18:58:40	0.43	0.34	0.55	0.34	0.79
4260	2020-05-05 18:59:05	0.55	0.34	0.55	0.55	0.81
4265	2020-05-05 18:59:30	0.43	0.34	0.34	0.43	0.74
4270	2020-05-05 18:59:55	0.34	0.43	0.55	0.43	0.74
4275	2020-05-05 19:00:20	0.55	0.55	0.34	0.34	0.81
4280	2020-05-05 19:00:45	0.43	0.43	0.43	0.55	0.85
4285	2020-05-05 19:01:10	0.55	0.43	0.43	0.43	0.73
4290	2020-05-05 19:01:35	0.55	0.34	0.34	0.34	0.79
4295	2020-05-05 19:02:00	0.55	0.34	0.34	0.55	0.81
4300	2020-05-05 19:02:25	0.34	0.34	0.55	0.43	0.74
4305	2020-05-05 19:02:50	0.43	0.43	0.34	0.43	0.79
4310	2020-05-05 19:03:15	0.55	0.55	0.43	0.43	0.81
4315	2020-05-05 19:03:40	0.43	0.55	0.34	0.34	0.74
4320	2020-05-05 19:04:05	0.55	0.43	0.55	0.43	0.74
4325	2020-05-05 19:04:31	0.55	0.34	0.43	0.55	0.9
4330	2020-05-05 19:04:56	0.43	0.55	0.43	0.55	0.9
4335	2020-05-05 19:05:21	0.55	0.43	0.34	0.34	0.73
4340	2020-05-05 19:05:46	0.43	0.34	0.43	0.43	0.73
4345	2020-05-05 19:06:11	0.43	0.43	0.43	0.34	0.81
4350	2020-05-05 19:06:36	0.55	0.55	0.43	0.55	0.9
4355	2020-05-05 19:07:01	0.34	0.43	0.34	0.43	0.74
4360	2020-05-05 19:07:26	0.55	0.55	0.43	0.43	0.79
4365	2020-05-05 19:07:51	0.55	0.55	0.55	0.55	0.9
4370	2020-05-05 19:08:16	0.43	0.34	0.34	0.55	0.74
4375	2020-05-05 19:08:41	0.43	0.34	0.34	0.34	0.73
4380	2020-05-05 19:09:06	0.34	0.43	0.55	0.55	0.9
4385	2020-05-05 19:09:31	0.43	0.55	0.55	0.43	0.85
4390	2020-05-05 19:09:56	0.55	0.43	0.43	0.43	0.74
4395	2020-05-05 19:10:21	0.34	0.43	0.55	0.34	0.81
4400	2020-05-05 19:10:46	0.55	0.43	0.43	0.34	0.73
4405	2020-05-05 19:11:11	0.34	0.43	0.34	0.55	0.79
4410	2020-05-05 19:11:36	0.43	0.43	0.34	0.43	0.79
4415	2020-05-05 19:12:01	0.55	0.43	0.43	0.43	0.81
4420	2020-05-05 19:12:26	0.55	0.55	0.55	0.55	0.81
4425	2020-05-05 19:12:51	0.34	0.55	0.34	0.55	0.9
4430	2020-05-05 19:13:16	0.55	0.55	0.34	0.43	0.73
4435	2020-05-05 19:13:41	0.34	0.43	0.55	0.34	0.79
4440	2020-05-05 19:14:06	0.43	0.55	0.55	0.55	0.85
4445	2020-05-05 19:14:31	0.43	0.34	0.43	0.34	0.81
4450	2020-05-05 19:14:56	0.55	0.55	0.34	0.43	0.9
4455	2020-05-05 19:15:21	0.34	0.43	0.55	0.34	0.9
4460	2020-05-05 19:15:46	0.55	0.43	0.55	0.43	0.81
4465	2020-05-05 19:16:11	0.55	0.34	0.55	0.34	0.81
4470	2020-05-05 19:16:36	0.43	0.34	0.43	0.55	0.74
4475	2020-05-05 19:17:01	0.55	0.55	0.55	0.55	0.73
4480	2020-05-05 19:17:26	0.34	0.55	0.43	0.55	0.81
4485	2020-05-05 19:17:51	0.55	0.34	0.43	0.34	0.9
4490	2020-05-05 19:18:16	0.34	0.43	0.55	0.34	0.9
4495	2020-05-05 19:18:41	0.43	0.34	0.43	0.55	0.73
4500	2020-05-05 19:19:06	0.43	0.43	0.34	0.55	0.85
4505	2020-05-05 19:19:31	0.55	0.55	0.43	0.43	0.9
4510	2020-05-05 19:19:56	0.43	0.55	0.34	0.55	0.85
4515	2020-05-05 19:20:21	0.34	0.34	0.43	0.34	0.9
4520	2020-05-05 19:20:46	0.34	0.34	0.55	0.55	0.74
4525	2020-05-05 19:21:11	0.43	0.55	0.55	0.34	0.9
4106	2020-05-05 18:46:15	0.43	0.34	0.43	0.43	0.73
4111	2020-05-05 18:46:40	0.55	0.55	0.55	0.34	0.9
4116	2020-05-05 18:47:05	0.55	0.43	0.34	0.55	0.73
4121	2020-05-05 18:47:30	0.55	0.34	0.55	0.43	0.74
4126	2020-05-05 18:47:55	0.34	0.34	0.34	0.34	0.74
4131	2020-05-05 18:48:20	0.55	0.34	0.55	0.43	0.85
4136	2020-05-05 18:48:45	0.55	0.43	0.43	0.43	0.85
4141	2020-05-05 18:49:10	0.34	0.34	0.34	0.43	0.81
4146	2020-05-05 18:49:35	0.55	0.43	0.43	0.34	0.73
4151	2020-05-05 18:50:00	0.55	0.43	0.43	0.43	0.9
4156	2020-05-05 18:50:25	0.34	0.34	0.34	0.43	0.81
4161	2020-05-05 18:50:50	0.43	0.43	0.43	0.34	0.79
4166	2020-05-05 18:51:15	0.55	0.55	0.55	0.34	0.81
4171	2020-05-05 18:51:40	0.34	0.34	0.55	0.55	0.9
4176	2020-05-05 18:52:05	0.55	0.34	0.55	0.43	0.74
4181	2020-05-05 18:52:30	0.43	0.34	0.34	0.43	0.9
4186	2020-05-05 18:52:55	0.34	0.43	0.34	0.34	0.81
4191	2020-05-05 18:53:20	0.55	0.43	0.43	0.34	0.73
4196	2020-05-05 18:53:45	0.55	0.34	0.34	0.43	0.74
4201	2020-05-05 18:54:10	0.34	0.55	0.34	0.43	0.9
4206	2020-05-05 18:54:35	0.55	0.55	0.34	0.34	0.85
4211	2020-05-05 18:55:00	0.55	0.34	0.55	0.55	0.9
4216	2020-05-05 18:55:25	0.34	0.55	0.43	0.34	0.9
4221	2020-05-05 18:55:50	0.55	0.43	0.55	0.34	0.85
4226	2020-05-05 18:56:15	0.43	0.34	0.43	0.43	0.79
4231	2020-05-05 18:56:40	0.34	0.43	0.55	0.43	0.79
4236	2020-05-05 18:57:05	0.43	0.34	0.43	0.55	0.85
4241	2020-05-05 18:57:30	0.43	0.43	0.55	0.43	0.9
4246	2020-05-05 18:57:55	0.55	0.43	0.43	0.34	0.74
4251	2020-05-05 18:58:20	0.34	0.55	0.34	0.43	0.81
4256	2020-05-05 18:58:45	0.55	0.55	0.55	0.34	0.74
4261	2020-05-05 18:59:10	0.55	0.55	0.55	0.43	0.9
4266	2020-05-05 18:59:35	0.55	0.55	0.34	0.34	0.73
4271	2020-05-05 19:00:00	0.55	0.34	0.34	0.43	0.79
4276	2020-05-05 19:00:25	0.55	0.43	0.34	0.55	0.73
4281	2020-05-05 19:00:50	0.43	0.34	0.43	0.43	0.81
4286	2020-05-05 19:01:15	0.55	0.34	0.34	0.34	0.81
4291	2020-05-05 19:01:40	0.55	0.43	0.55	0.55	0.81
4296	2020-05-05 19:02:05	0.55	0.43	0.43	0.55	0.81
4301	2020-05-05 19:02:30	0.34	0.34	0.34	0.43	0.73
4306	2020-05-05 19:02:55	0.34	0.43	0.55	0.55	0.74
4311	2020-05-05 19:03:20	0.43	0.55	0.34	0.55	0.73
4316	2020-05-05 19:03:45	0.55	0.34	0.43	0.55	0.81
4321	2020-05-05 19:04:10	0.55	0.55	0.34	0.55	0.74
4326	2020-05-05 19:04:36	0.55	0.34	0.55	0.34	0.73
4331	2020-05-05 19:05:01	0.43	0.43	0.55	0.43	0.73
4336	2020-05-05 19:05:26	0.43	0.43	0.34	0.43	0.81
4341	2020-05-05 19:05:51	0.34	0.34	0.43	0.55	0.79
4346	2020-05-05 19:06:16	0.34	0.55	0.34	0.55	0.74
4351	2020-05-05 19:06:41	0.43	0.43	0.34	0.43	0.74
4356	2020-05-05 19:07:06	0.55	0.34	0.34	0.55	0.9
4361	2020-05-05 19:07:31	0.34	0.43	0.34	0.43	0.79
4366	2020-05-05 19:07:56	0.34	0.43	0.34	0.34	0.79
4371	2020-05-05 19:08:21	0.34	0.43	0.55	0.55	0.74
4376	2020-05-05 19:08:46	0.43	0.34	0.55	0.55	0.85
4381	2020-05-05 19:09:11	0.55	0.43	0.43	0.55	0.79
4386	2020-05-05 19:09:36	0.55	0.55	0.43	0.43	0.79
4391	2020-05-05 19:10:01	0.34	0.34	0.34	0.34	0.9
4396	2020-05-05 19:10:26	0.34	0.55	0.55	0.55	0.74
4401	2020-05-05 19:10:51	0.43	0.34	0.43	0.34	0.85
4406	2020-05-05 19:11:16	0.34	0.55	0.43	0.43	0.85
4411	2020-05-05 19:11:41	0.55	0.43	0.34	0.34	0.74
4416	2020-05-05 19:12:06	0.43	0.34	0.34	0.34	0.81
4421	2020-05-05 19:12:31	0.43	0.34	0.43	0.55	0.9
4426	2020-05-05 19:12:56	0.34	0.43	0.34	0.34	0.74
4431	2020-05-05 19:13:21	0.55	0.43	0.34	0.55	0.74
4436	2020-05-05 19:13:46	0.34	0.34	0.34	0.43	0.81
4441	2020-05-05 19:14:11	0.34	0.43	0.43	0.43	0.74
4446	2020-05-05 19:14:36	0.43	0.55	0.55	0.34	0.79
4451	2020-05-05 19:15:01	0.43	0.55	0.55	0.34	0.85
4456	2020-05-05 19:15:26	0.34	0.43	0.34	0.34	0.74
4461	2020-05-05 19:15:51	0.34	0.55	0.55	0.43	0.79
4466	2020-05-05 19:16:16	0.43	0.43	0.55	0.43	0.73
4471	2020-05-05 19:16:41	0.34	0.34	0.34	0.55	0.81
4476	2020-05-05 19:17:06	0.34	0.34	0.43	0.55	0.73
4481	2020-05-05 19:17:31	0.34	0.55	0.34	0.43	0.81
4486	2020-05-05 19:17:56	0.34	0.55	0.34	0.43	0.74
4491	2020-05-05 19:18:21	0.34	0.43	0.55	0.55	0.81
4496	2020-05-05 19:18:46	0.43	0.43	0.34	0.43	0.73
4501	2020-05-05 19:19:11	0.55	0.43	0.34	0.55	0.81
4506	2020-05-05 19:19:36	0.34	0.43	0.55	0.55	0.9
4511	2020-05-05 19:20:01	0.43	0.55	0.43	0.34	0.9
4516	2020-05-05 19:20:26	0.43	0.34	0.34	0.43	0.74
4521	2020-05-05 19:20:51	0.55	0.34	0.43	0.34	0.73
4526	2020-05-05 19:21:16	0.34	0.34	0.43	0.34	0.85
4107	2020-05-05 18:46:20	0.34	0.34	0.43	0.34	0.73
4112	2020-05-05 18:46:45	0.55	0.43	0.43	0.43	0.81
4117	2020-05-05 18:47:10	0.34	0.55	0.34	0.43	0.73
4122	2020-05-05 18:47:35	0.43	0.43	0.43	0.55	0.73
4127	2020-05-05 18:48:00	0.34	0.43	0.55	0.55	0.73
4132	2020-05-05 18:48:25	0.55	0.55	0.43	0.34	0.81
4137	2020-05-05 18:48:50	0.55	0.34	0.34	0.43	0.9
4142	2020-05-05 18:49:15	0.34	0.43	0.43	0.55	0.74
4147	2020-05-05 18:49:40	0.55	0.34	0.55	0.34	0.79
4152	2020-05-05 18:50:05	0.55	0.43	0.43	0.43	0.9
4157	2020-05-05 18:50:30	0.34	0.43	0.55	0.55	0.85
4162	2020-05-05 18:50:55	0.55	0.34	0.34	0.55	0.73
4167	2020-05-05 18:51:20	0.43	0.34	0.43	0.43	0.85
4172	2020-05-05 18:51:45	0.34	0.55	0.34	0.34	0.73
4177	2020-05-05 18:52:10	0.43	0.34	0.55	0.34	0.74
4182	2020-05-05 18:52:35	0.55	0.34	0.43	0.43	0.79
4187	2020-05-05 18:53:00	0.43	0.43	0.34	0.43	0.74
4192	2020-05-05 18:53:25	0.43	0.55	0.55	0.34	0.9
4197	2020-05-05 18:53:50	0.43	0.34	0.55	0.43	0.81
4202	2020-05-05 18:54:15	0.34	0.55	0.34	0.34	0.81
4207	2020-05-05 18:54:40	0.55	0.55	0.55	0.43	0.81
4212	2020-05-05 18:55:05	0.55	0.43	0.34	0.55	0.85
4217	2020-05-05 18:55:30	0.34	0.34	0.55	0.43	0.85
4222	2020-05-05 18:55:55	0.34	0.55	0.55	0.43	0.81
4227	2020-05-05 18:56:20	0.34	0.55	0.55	0.34	0.81
4232	2020-05-05 18:56:45	0.43	0.55	0.55	0.55	0.85
4237	2020-05-05 18:57:10	0.43	0.34	0.55	0.34	0.85
4242	2020-05-05 18:57:35	0.34	0.55	0.55	0.55	0.74
4247	2020-05-05 18:58:00	0.43	0.34	0.55	0.55	0.73
4252	2020-05-05 18:58:25	0.43	0.34	0.34	0.34	0.73
4257	2020-05-05 18:58:50	0.34	0.55	0.55	0.43	0.81
4262	2020-05-05 18:59:15	0.55	0.34	0.43	0.43	0.81
4267	2020-05-05 18:59:40	0.55	0.43	0.43	0.43	0.85
4272	2020-05-05 19:00:05	0.34	0.43	0.43	0.43	0.85
4277	2020-05-05 19:00:30	0.43	0.34	0.55	0.55	0.81
4282	2020-05-05 19:00:55	0.34	0.55	0.43	0.55	0.79
4287	2020-05-05 19:01:20	0.43	0.43	0.43	0.55	0.9
4292	2020-05-05 19:01:45	0.43	0.43	0.55	0.55	0.9
4297	2020-05-05 19:02:10	0.43	0.34	0.34	0.55	0.85
4302	2020-05-05 19:02:35	0.34	0.55	0.55	0.55	0.81
4307	2020-05-05 19:03:00	0.34	0.43	0.43	0.43	0.79
4312	2020-05-05 19:03:25	0.34	0.55	0.34	0.34	0.81
4317	2020-05-05 19:03:50	0.43	0.55	0.34	0.43	0.74
4322	2020-05-05 19:04:15	0.55	0.34	0.43	0.55	0.9
4327	2020-05-05 19:04:41	0.55	0.55	0.43	0.34	0.85
4332	2020-05-05 19:05:06	0.43	0.55	0.34	0.55	0.74
4337	2020-05-05 19:05:31	0.34	0.43	0.34	0.55	0.79
4342	2020-05-05 19:05:56	0.55	0.34	0.43	0.34	0.9
4347	2020-05-05 19:06:21	0.55	0.34	0.43	0.34	0.81
4352	2020-05-05 19:06:46	0.34	0.55	0.55	0.34	0.81
4357	2020-05-05 19:07:11	0.55	0.43	0.55	0.55	0.9
4362	2020-05-05 19:07:36	0.43	0.55	0.55	0.34	0.81
4367	2020-05-05 19:08:01	0.55	0.43	0.55	0.55	0.9
4372	2020-05-05 19:08:26	0.34	0.43	0.55	0.55	0.74
4377	2020-05-05 19:08:51	0.34	0.43	0.43	0.34	0.9
4382	2020-05-05 19:09:16	0.55	0.34	0.55	0.34	0.85
4387	2020-05-05 19:09:41	0.55	0.43	0.34	0.55	0.81
4392	2020-05-05 19:10:06	0.55	0.34	0.43	0.34	0.85
4397	2020-05-05 19:10:31	0.43	0.55	0.34	0.55	0.85
4402	2020-05-05 19:10:56	0.55	0.34	0.34	0.34	0.74
4407	2020-05-05 19:11:21	0.55	0.34	0.43	0.43	0.9
4412	2020-05-05 19:11:46	0.34	0.43	0.43	0.34	0.85
4417	2020-05-05 19:12:11	0.55	0.34	0.55	0.34	0.79
4422	2020-05-05 19:12:36	0.34	0.34	0.34	0.34	0.85
4427	2020-05-05 19:13:01	0.43	0.55	0.34	0.34	0.85
4432	2020-05-05 19:13:26	0.34	0.55	0.55	0.34	0.85
4437	2020-05-05 19:13:51	0.55	0.43	0.34	0.34	0.73
4442	2020-05-05 19:14:16	0.43	0.34	0.55	0.43	0.73
4447	2020-05-05 19:14:41	0.55	0.43	0.43	0.43	0.9
4452	2020-05-05 19:15:06	0.55	0.34	0.34	0.55	0.79
4457	2020-05-05 19:15:31	0.34	0.43	0.34	0.43	0.73
4462	2020-05-05 19:15:56	0.43	0.43	0.34	0.55	0.85
4467	2020-05-05 19:16:21	0.34	0.34	0.34	0.34	0.73
4472	2020-05-05 19:16:46	0.43	0.55	0.34	0.43	0.74
4477	2020-05-05 19:17:11	0.55	0.43	0.55	0.43	0.85
4482	2020-05-05 19:17:36	0.34	0.55	0.55	0.34	0.73
4487	2020-05-05 19:18:01	0.43	0.43	0.34	0.43	0.73
4492	2020-05-05 19:18:26	0.34	0.43	0.55	0.55	0.9
4497	2020-05-05 19:18:51	0.55	0.43	0.55	0.43	0.85
4502	2020-05-05 19:19:16	0.34	0.43	0.43	0.34	0.79
4507	2020-05-05 19:19:41	0.43	0.34	0.55	0.55	0.81
4512	2020-05-05 19:20:06	0.34	0.34	0.55	0.34	0.79
4517	2020-05-05 19:20:31	0.34	0.43	0.34	0.34	0.74
4522	2020-05-05 19:20:56	0.43	0.55	0.43	0.43	0.74
4527	2020-05-05 19:21:21	0.43	0.55	0.55	0.34	0.74
4528	2020-05-05 19:21:26	0.34	0.55	0.34	0.55	0.85
4529	2020-05-05 19:21:31	0.34	0.43	0.43	0.34	0.9
4530	2020-05-05 19:21:36	0.43	0.43	0.34	0.55	0.81
4531	2020-05-05 19:21:41	0.43	0.55	0.43	0.55	0.73
4532	2020-05-05 19:21:46	0.55	0.43	0.34	0.43	0.81
4533	2020-05-05 19:21:51	0.34	0.55	0.55	0.43	0.74
4534	2020-05-05 19:21:56	0.55	0.43	0.55	0.55	0.79
4535	2020-05-05 19:22:01	0.43	0.43	0.55	0.43	0.85
4536	2020-05-05 19:22:06	0.43	0.34	0.55	0.55	0.79
4537	2020-05-05 19:22:11	0.43	0.43	0.43	0.55	0.85
4538	2020-05-05 19:22:16	0.55	0.55	0.34	0.34	0.81
4539	2020-05-05 19:22:21	0.34	0.55	0.43	0.43	0.9
4540	2020-05-05 19:22:26	0.43	0.34	0.34	0.55	0.81
4541	2020-05-05 19:22:31	0.34	0.55	0.43	0.43	0.73
4542	2020-05-05 19:22:36	0.34	0.55	0.34	0.43	0.79
4543	2020-05-05 19:22:41	0.34	0.55	0.34	0.34	0.74
4544	2020-05-05 19:22:46	0.43	0.34	0.55	0.55	0.9
4545	2020-05-05 19:22:51	0.43	0.34	0.43	0.55	0.79
4546	2020-05-05 19:22:56	0.34	0.43	0.43	0.34	0.81
4547	2020-05-05 19:23:01	0.43	0.55	0.34	0.34	0.79
4548	2020-05-05 19:23:06	0.55	0.43	0.34	0.43	0.73
4549	2020-05-05 19:23:11	0.43	0.43	0.34	0.55	0.81
4550	2020-05-05 19:23:16	0.43	0.43	0.55	0.43	0.9
4551	2020-05-05 19:23:21	0.43	0.34	0.43	0.34	0.81
4552	2020-05-05 19:23:26	0.43	0.43	0.55	0.34	0.85
4557	2020-05-05 19:23:51	0.43	0.34	0.55	0.34	0.74
4562	2020-05-05 19:24:16	0.55	0.55	0.55	0.43	0.9
4567	2020-05-05 19:24:41	0.55	0.55	0.43	0.34	0.74
4572	2020-05-05 19:25:06	0.34	0.55	0.34	0.55	0.81
4577	2020-05-05 19:25:31	0.43	0.34	0.55	0.55	0.9
4582	2020-05-05 19:25:56	0.43	0.55	0.34	0.43	0.74
4587	2020-05-05 19:26:21	0.43	0.55	0.43	0.55	0.73
4592	2020-05-05 19:26:46	0.55	0.43	0.34	0.55	0.81
4597	2020-05-05 19:27:11	0.43	0.55	0.55	0.43	0.74
4602	2020-05-05 19:27:36	0.43	0.55	0.34	0.43	0.81
4607	2020-05-05 19:28:01	0.43	0.55	0.43	0.34	0.85
4612	2020-05-05 19:28:26	0.55	0.55	0.43	0.34	0.73
4617	2020-05-05 19:28:51	0.43	0.43	0.55	0.55	0.81
4622	2020-05-05 19:29:16	0.34	0.55	0.34	0.55	0.74
4627	2020-05-05 19:29:41	0.43	0.55	0.34	0.55	0.79
4632	2020-05-05 19:30:06	0.43	0.55	0.55	0.43	0.79
4637	2020-05-05 19:30:31	0.34	0.55	0.43	0.43	0.74
4642	2020-05-05 19:30:56	0.34	0.43	0.55	0.34	0.73
4647	2020-05-05 19:31:21	0.43	0.34	0.55	0.55	0.74
4652	2020-05-05 19:31:46	0.34	0.55	0.55	0.34	0.74
4657	2020-05-05 19:32:11	0.34	0.34	0.43	0.34	0.73
4662	2020-05-05 19:32:36	0.55	0.55	0.34	0.43	0.79
4667	2020-05-05 19:33:01	0.43	0.43	0.43	0.34	0.73
4672	2020-05-05 19:33:27	0.55	0.43	0.55	0.55	0.74
4677	2020-05-05 19:33:52	0.43	0.43	0.34	0.43	0.9
4682	2020-05-05 19:34:17	0.34	0.43	0.55	0.43	0.85
4687	2020-05-05 19:34:42	0.34	0.55	0.34	0.55	0.73
4692	2020-05-05 19:35:07	0.43	0.55	0.34	0.34	0.85
4697	2020-05-05 19:35:32	0.55	0.43	0.43	0.55	0.79
4702	2020-05-05 19:35:57	0.55	0.55	0.43	0.43	0.81
4707	2020-05-05 19:36:22	0.34	0.55	0.55	0.55	0.74
4712	2020-05-05 19:36:47	0.43	0.43	0.34	0.34	0.81
4717	2020-05-05 19:37:12	0.43	0.34	0.34	0.34	0.85
4722	2020-05-05 19:37:37	0.34	0.55	0.55	0.43	0.79
4727	2020-05-05 19:38:02	0.43	0.55	0.34	0.34	0.73
4732	2020-05-05 19:38:27	0.43	0.34	0.43	0.34	0.9
4737	2020-05-05 19:38:52	0.55	0.55	0.55	0.55	0.74
4742	2020-05-05 19:39:17	0.34	0.34	0.34	0.34	0.85
4747	2020-05-05 19:39:42	0.43	0.43	0.34	0.34	0.79
4752	2020-05-05 19:40:07	0.43	0.34	0.55	0.55	0.81
4757	2020-05-05 19:40:32	0.34	0.34	0.34	0.34	0.79
4762	2020-05-05 19:40:57	0.34	0.34	0.55	0.34	0.79
4767	2020-05-05 19:41:22	0.34	0.34	0.43	0.55	0.74
4772	2020-05-05 19:41:47	0.55	0.55	0.43	0.34	0.73
4777	2020-05-05 19:42:12	0.55	0.34	0.43	0.55	0.73
4782	2020-05-05 19:42:37	0.43	0.34	0.55	0.43	0.81
4787	2020-05-05 19:43:02	0.43	0.43	0.55	0.34	0.74
4792	2020-05-05 19:43:27	0.55	0.55	0.34	0.34	0.74
4797	2020-05-05 19:43:52	0.43	0.34	0.43	0.55	0.85
4802	2020-05-05 19:44:17	0.34	0.43	0.43	0.55	0.9
4807	2020-05-05 19:44:42	0.34	0.34	0.34	0.43	0.81
4812	2020-05-05 19:45:07	0.43	0.55	0.34	0.55	0.74
4817	2020-05-05 19:45:32	0.43	0.43	0.43	0.34	0.81
4822	2020-05-05 19:45:57	0.34	0.55	0.43	0.34	0.74
4827	2020-05-05 19:46:22	0.55	0.55	0.43	0.43	0.79
4832	2020-05-05 19:46:47	0.55	0.43	0.43	0.55	0.81
4837	2020-05-05 19:47:12	0.55	0.43	0.43	0.43	0.73
4842	2020-05-05 19:47:37	0.43	0.55	0.34	0.43	0.74
4847	2020-05-05 19:48:02	0.34	0.34	0.55	0.34	0.81
4852	2020-05-05 19:48:27	0.55	0.34	0.34	0.55	0.85
4857	2020-05-05 19:48:52	0.55	0.34	0.34	0.34	0.85
4862	2020-05-05 19:49:17	0.43	0.43	0.55	0.55	0.9
4867	2020-05-05 19:49:42	0.34	0.55	0.34	0.43	0.9
4872	2020-05-05 19:50:07	0.34	0.55	0.34	0.34	0.74
4877	2020-05-05 19:50:32	0.55	0.43	0.43	0.55	0.73
4882	2020-05-05 19:50:57	0.34	0.43	0.34	0.55	0.85
4887	2020-05-05 19:51:22	0.34	0.55	0.55	0.43	0.81
4892	2020-05-05 19:51:47	0.34	0.55	0.34	0.43	0.81
4897	2020-05-05 19:52:12	0.43	0.43	0.34	0.43	0.81
4902	2020-05-05 19:52:37	0.43	0.55	0.55	0.34	0.81
4907	2020-05-05 19:53:02	0.55	0.34	0.55	0.34	0.85
4912	2020-05-05 19:53:27	0.55	0.55	0.43	0.55	0.79
4917	2020-05-05 19:53:52	0.55	0.43	0.34	0.34	0.85
4922	2020-05-05 19:54:17	0.55	0.43	0.43	0.43	0.9
4927	2020-05-05 19:54:42	0.55	0.34	0.55	0.34	0.9
4932	2020-05-05 19:55:07	0.34	0.43	0.55	0.55	0.85
4937	2020-05-05 19:55:32	0.43	0.55	0.55	0.34	0.79
4942	2020-05-05 19:55:57	0.43	0.55	0.34	0.55	0.85
4947	2020-05-05 19:56:22	0.55	0.43	0.55	0.43	0.9
4952	2020-05-05 19:56:47	0.43	0.34	0.34	0.43	0.85
4957	2020-05-05 19:57:12	0.43	0.43	0.55	0.34	0.85
4962	2020-05-05 19:57:37	0.34	0.55	0.55	0.43	0.73
4967	2020-05-05 19:58:02	0.55	0.55	0.43	0.43	0.81
4972	2020-05-05 19:58:27	0.34	0.34	0.43	0.34	0.85
4977	2020-05-05 19:58:52	0.55	0.55	0.34	0.55	0.73
4982	2020-05-05 19:59:17	0.43	0.43	0.55	0.55	0.73
4987	2020-05-05 19:59:42	0.43	0.34	0.34	0.55	0.81
4992	2020-05-05 20:00:07	0.43	0.55	0.43	0.43	0.74
4997	2020-05-05 20:00:32	0.34	0.43	0.55	0.43	0.85
5002	2020-05-05 20:00:57	0.34	0.43	0.34	0.43	0.9
5007	2020-05-05 20:01:22	0.43	0.34	0.43	0.55	0.73
5012	2020-05-05 20:01:47	0.55	0.43	0.43	0.43	0.81
5017	2020-05-05 20:02:12	0.43	0.34	0.43	0.43	0.73
5022	2020-05-05 20:02:37	0.43	0.55	0.55	0.43	0.74
5027	2020-05-05 20:03:03	0.43	0.43	0.43	0.34	0.73
4553	2020-05-05 19:23:31	0.43	0.55	0.55	0.34	0.81
4558	2020-05-05 19:23:56	0.43	0.43	0.55	0.55	0.74
4563	2020-05-05 19:24:21	0.34	0.43	0.43	0.43	0.74
4568	2020-05-05 19:24:46	0.34	0.55	0.34	0.43	0.81
4573	2020-05-05 19:25:11	0.55	0.55	0.43	0.43	0.73
4578	2020-05-05 19:25:36	0.34	0.43	0.34	0.34	0.81
4583	2020-05-05 19:26:01	0.43	0.43	0.43	0.43	0.74
4588	2020-05-05 19:26:26	0.34	0.34	0.43	0.43	0.85
4593	2020-05-05 19:26:51	0.43	0.43	0.34	0.55	0.73
4598	2020-05-05 19:27:16	0.34	0.43	0.34	0.43	0.81
4603	2020-05-05 19:27:41	0.55	0.43	0.34	0.55	0.79
4608	2020-05-05 19:28:06	0.43	0.43	0.55	0.43	0.73
4613	2020-05-05 19:28:31	0.43	0.34	0.34	0.43	0.85
4618	2020-05-05 19:28:56	0.43	0.55	0.43	0.43	0.9
4623	2020-05-05 19:29:21	0.43	0.34	0.55	0.55	0.73
4628	2020-05-05 19:29:46	0.55	0.43	0.55	0.55	0.73
4633	2020-05-05 19:30:11	0.34	0.43	0.43	0.55	0.85
4638	2020-05-05 19:30:36	0.55	0.55	0.55	0.55	0.79
4643	2020-05-05 19:31:01	0.43	0.43	0.34	0.43	0.74
4648	2020-05-05 19:31:26	0.43	0.43	0.55	0.34	0.9
4653	2020-05-05 19:31:51	0.43	0.34	0.43	0.43	0.9
4658	2020-05-05 19:32:16	0.55	0.55	0.43	0.43	0.81
4663	2020-05-05 19:32:41	0.55	0.43	0.34	0.34	0.85
4668	2020-05-05 19:33:06	0.55	0.34	0.34	0.55	0.79
4673	2020-05-05 19:33:32	0.55	0.43	0.43	0.55	0.9
4678	2020-05-05 19:33:57	0.34	0.55	0.55	0.55	0.74
4683	2020-05-05 19:34:22	0.34	0.55	0.55	0.43	0.85
4688	2020-05-05 19:34:47	0.34	0.34	0.43	0.34	0.85
4693	2020-05-05 19:35:12	0.34	0.34	0.43	0.55	0.73
4698	2020-05-05 19:35:37	0.43	0.55	0.34	0.55	0.73
4703	2020-05-05 19:36:02	0.34	0.43	0.34	0.43	0.85
4708	2020-05-05 19:36:27	0.55	0.34	0.43	0.34	0.85
4713	2020-05-05 19:36:52	0.55	0.34	0.55	0.55	0.9
4718	2020-05-05 19:37:17	0.34	0.34	0.55	0.34	0.81
4723	2020-05-05 19:37:42	0.34	0.55	0.34	0.55	0.85
4728	2020-05-05 19:38:07	0.34	0.55	0.34	0.34	0.9
4733	2020-05-05 19:38:32	0.55	0.43	0.34	0.55	0.85
4738	2020-05-05 19:38:57	0.55	0.43	0.34	0.55	0.79
4743	2020-05-05 19:39:22	0.34	0.43	0.43	0.55	0.9
4748	2020-05-05 19:39:47	0.43	0.55	0.43	0.55	0.9
4753	2020-05-05 19:40:12	0.43	0.55	0.34	0.43	0.9
4758	2020-05-05 19:40:37	0.43	0.43	0.43	0.55	0.74
4763	2020-05-05 19:41:02	0.43	0.43	0.43	0.55	0.81
4768	2020-05-05 19:41:27	0.43	0.55	0.43	0.34	0.79
4773	2020-05-05 19:41:52	0.43	0.34	0.55	0.34	0.73
4778	2020-05-05 19:42:17	0.55	0.34	0.34	0.55	0.81
4783	2020-05-05 19:42:42	0.34	0.43	0.34	0.43	0.81
4788	2020-05-05 19:43:07	0.34	0.55	0.34	0.43	0.74
4793	2020-05-05 19:43:32	0.55	0.55	0.34	0.55	0.85
4798	2020-05-05 19:43:57	0.55	0.43	0.55	0.55	0.74
4803	2020-05-05 19:44:22	0.34	0.55	0.43	0.34	0.73
4808	2020-05-05 19:44:47	0.43	0.34	0.55	0.34	0.81
4813	2020-05-05 19:45:12	0.43	0.43	0.55	0.43	0.85
4818	2020-05-05 19:45:37	0.55	0.34	0.55	0.34	0.79
4823	2020-05-05 19:46:02	0.34	0.55	0.34	0.55	0.81
4828	2020-05-05 19:46:27	0.43	0.34	0.55	0.43	0.81
4833	2020-05-05 19:46:52	0.43	0.43	0.55	0.43	0.85
4838	2020-05-05 19:47:17	0.43	0.43	0.34	0.43	0.81
4843	2020-05-05 19:47:42	0.43	0.55	0.34	0.34	0.9
4848	2020-05-05 19:48:07	0.43	0.34	0.34	0.34	0.74
4853	2020-05-05 19:48:32	0.34	0.55	0.43	0.34	0.81
4858	2020-05-05 19:48:57	0.55	0.34	0.34	0.34	0.73
4863	2020-05-05 19:49:22	0.34	0.55	0.55	0.43	0.9
4868	2020-05-05 19:49:47	0.34	0.34	0.55	0.34	0.81
4873	2020-05-05 19:50:12	0.34	0.55	0.34	0.55	0.81
4878	2020-05-05 19:50:37	0.43	0.43	0.43	0.43	0.85
4883	2020-05-05 19:51:02	0.34	0.43	0.55	0.55	0.9
4888	2020-05-05 19:51:27	0.43	0.55	0.34	0.43	0.74
4893	2020-05-05 19:51:52	0.43	0.43	0.43	0.34	0.85
4898	2020-05-05 19:52:17	0.43	0.34	0.55	0.43	0.79
4903	2020-05-05 19:52:42	0.43	0.55	0.34	0.34	0.73
4908	2020-05-05 19:53:07	0.43	0.43	0.43	0.43	0.9
4913	2020-05-05 19:53:32	0.55	0.34	0.43	0.55	0.85
4918	2020-05-05 19:53:57	0.43	0.43	0.34	0.34	0.9
4923	2020-05-05 19:54:22	0.34	0.43	0.34	0.43	0.79
4928	2020-05-05 19:54:47	0.43	0.55	0.43	0.43	0.79
4933	2020-05-05 19:55:12	0.55	0.34	0.43	0.43	0.9
4938	2020-05-05 19:55:37	0.55	0.43	0.34	0.34	0.74
4943	2020-05-05 19:56:02	0.43	0.55	0.55	0.43	0.9
4948	2020-05-05 19:56:27	0.43	0.55	0.55	0.34	0.9
4953	2020-05-05 19:56:52	0.34	0.55	0.55	0.55	0.85
4958	2020-05-05 19:57:17	0.43	0.34	0.43	0.43	0.73
4963	2020-05-05 19:57:42	0.43	0.34	0.34	0.34	0.74
4968	2020-05-05 19:58:07	0.34	0.55	0.55	0.55	0.73
4973	2020-05-05 19:58:32	0.43	0.55	0.43	0.43	0.81
4978	2020-05-05 19:58:57	0.55	0.43	0.34	0.55	0.74
4983	2020-05-05 19:59:22	0.43	0.34	0.55	0.43	0.9
4988	2020-05-05 19:59:47	0.43	0.55	0.55	0.55	0.85
4993	2020-05-05 20:00:12	0.34	0.55	0.55	0.43	0.74
4998	2020-05-05 20:00:37	0.55	0.55	0.55	0.43	0.81
5003	2020-05-05 20:01:02	0.55	0.43	0.34	0.34	0.74
5008	2020-05-05 20:01:27	0.43	0.55	0.43	0.43	0.73
5013	2020-05-05 20:01:52	0.43	0.43	0.55	0.34	0.74
5018	2020-05-05 20:02:17	0.55	0.34	0.43	0.34	0.79
5023	2020-05-05 20:02:43	0.34	0.43	0.34	0.55	0.79
5028	2020-05-05 20:03:08	0.43	0.34	0.55	0.43	0.85
4554	2020-05-05 19:23:36	0.34	0.34	0.55	0.55	0.81
4559	2020-05-05 19:24:01	0.55	0.34	0.34	0.55	0.85
4564	2020-05-05 19:24:26	0.43	0.55	0.43	0.34	0.81
4569	2020-05-05 19:24:51	0.43	0.34	0.34	0.43	0.81
4574	2020-05-05 19:25:16	0.43	0.55	0.43	0.34	0.81
4579	2020-05-05 19:25:41	0.34	0.34	0.55	0.34	0.74
4584	2020-05-05 19:26:06	0.43	0.55	0.55	0.34	0.81
4589	2020-05-05 19:26:31	0.55	0.43	0.43	0.34	0.79
4594	2020-05-05 19:26:56	0.34	0.43	0.55	0.34	0.79
4599	2020-05-05 19:27:21	0.55	0.55	0.43	0.43	0.79
4604	2020-05-05 19:27:46	0.34	0.43	0.55	0.43	0.81
4609	2020-05-05 19:28:11	0.34	0.43	0.43	0.34	0.73
4614	2020-05-05 19:28:36	0.55	0.43	0.34	0.55	0.73
4619	2020-05-05 19:29:01	0.43	0.55	0.43	0.43	0.73
4624	2020-05-05 19:29:26	0.55	0.43	0.55	0.55	0.9
4629	2020-05-05 19:29:51	0.43	0.55	0.43	0.55	0.73
4634	2020-05-05 19:30:16	0.34	0.34	0.34	0.34	0.81
4639	2020-05-05 19:30:41	0.43	0.55	0.34	0.34	0.9
4644	2020-05-05 19:31:06	0.34	0.43	0.55	0.43	0.9
4649	2020-05-05 19:31:31	0.34	0.55	0.43	0.34	0.81
4654	2020-05-05 19:31:56	0.43	0.34	0.34	0.43	0.79
4659	2020-05-05 19:32:21	0.43	0.34	0.34	0.34	0.81
4664	2020-05-05 19:32:46	0.34	0.34	0.55	0.43	0.81
4669	2020-05-05 19:33:12	0.34	0.34	0.55	0.43	0.73
4674	2020-05-05 19:33:37	0.55	0.43	0.34	0.34	0.79
4679	2020-05-05 19:34:02	0.43	0.43	0.34	0.34	0.79
4684	2020-05-05 19:34:27	0.34	0.34	0.43	0.34	0.79
4689	2020-05-05 19:34:52	0.34	0.43	0.43	0.34	0.81
4694	2020-05-05 19:35:17	0.55	0.43	0.34	0.55	0.73
4699	2020-05-05 19:35:42	0.34	0.55	0.34	0.55	0.79
4704	2020-05-05 19:36:07	0.43	0.34	0.55	0.43	0.79
4709	2020-05-05 19:36:32	0.34	0.34	0.43	0.43	0.73
4714	2020-05-05 19:36:57	0.43	0.55	0.43	0.34	0.74
4719	2020-05-05 19:37:22	0.34	0.55	0.55	0.34	0.74
4724	2020-05-05 19:37:47	0.43	0.43	0.55	0.34	0.81
4729	2020-05-05 19:38:12	0.55	0.34	0.55	0.55	0.85
4734	2020-05-05 19:38:37	0.43	0.55	0.55	0.55	0.81
4739	2020-05-05 19:39:02	0.34	0.55	0.34	0.34	0.85
4744	2020-05-05 19:39:27	0.34	0.34	0.55	0.55	0.74
4749	2020-05-05 19:39:52	0.55	0.34	0.55	0.34	0.79
4754	2020-05-05 19:40:17	0.34	0.43	0.34	0.34	0.81
4759	2020-05-05 19:40:42	0.43	0.43	0.55	0.34	0.85
4764	2020-05-05 19:41:07	0.55	0.43	0.34	0.43	0.81
4769	2020-05-05 19:41:32	0.43	0.34	0.43	0.55	0.85
4774	2020-05-05 19:41:57	0.34	0.55	0.43	0.55	0.9
4779	2020-05-05 19:42:22	0.34	0.55	0.55	0.55	0.74
4784	2020-05-05 19:42:47	0.55	0.43	0.55	0.43	0.9
4789	2020-05-05 19:43:12	0.43	0.34	0.43	0.34	0.79
4794	2020-05-05 19:43:37	0.55	0.34	0.43	0.43	0.9
4799	2020-05-05 19:44:02	0.55	0.34	0.34	0.34	0.81
4804	2020-05-05 19:44:27	0.43	0.34	0.34	0.55	0.9
4809	2020-05-05 19:44:52	0.43	0.55	0.43	0.34	0.9
4814	2020-05-05 19:45:17	0.43	0.55	0.34	0.55	0.85
4819	2020-05-05 19:45:42	0.34	0.43	0.43	0.34	0.79
4824	2020-05-05 19:46:07	0.43	0.43	0.34	0.34	0.74
4829	2020-05-05 19:46:32	0.34	0.34	0.43	0.55	0.79
4834	2020-05-05 19:46:57	0.55	0.34	0.34	0.43	0.85
4839	2020-05-05 19:47:22	0.43	0.43	0.55	0.43	0.73
4844	2020-05-05 19:47:47	0.55	0.43	0.43	0.34	0.73
4849	2020-05-05 19:48:12	0.43	0.34	0.34	0.34	0.73
4854	2020-05-05 19:48:37	0.55	0.34	0.34	0.34	0.79
4859	2020-05-05 19:49:02	0.43	0.55	0.43	0.43	0.85
4864	2020-05-05 19:49:27	0.55	0.43	0.43	0.43	0.79
4869	2020-05-05 19:49:52	0.34	0.43	0.43	0.34	0.73
4874	2020-05-05 19:50:17	0.34	0.34	0.55	0.43	0.81
4879	2020-05-05 19:50:42	0.55	0.55	0.55	0.34	0.73
4884	2020-05-05 19:51:07	0.55	0.43	0.43	0.55	0.74
4889	2020-05-05 19:51:32	0.34	0.55	0.55	0.55	0.85
4894	2020-05-05 19:51:57	0.55	0.55	0.43	0.43	0.73
4899	2020-05-05 19:52:22	0.43	0.55	0.43	0.43	0.73
4904	2020-05-05 19:52:47	0.34	0.34	0.34	0.34	0.9
4909	2020-05-05 19:53:12	0.34	0.55	0.55	0.34	0.85
4914	2020-05-05 19:53:37	0.55	0.34	0.55	0.34	0.9
4919	2020-05-05 19:54:02	0.43	0.34	0.55	0.55	0.74
4924	2020-05-05 19:54:27	0.55	0.55	0.34	0.43	0.81
4929	2020-05-05 19:54:52	0.43	0.34	0.55	0.34	0.85
4934	2020-05-05 19:55:17	0.55	0.55	0.34	0.34	0.81
4939	2020-05-05 19:55:42	0.43	0.34	0.55	0.34	0.74
4944	2020-05-05 19:56:07	0.34	0.55	0.43	0.43	0.9
4949	2020-05-05 19:56:32	0.43	0.34	0.43	0.34	0.73
4954	2020-05-05 19:56:57	0.34	0.34	0.43	0.43	0.74
4959	2020-05-05 19:57:22	0.43	0.43	0.55	0.43	0.85
4964	2020-05-05 19:57:47	0.34	0.43	0.34	0.34	0.81
4969	2020-05-05 19:58:12	0.34	0.43	0.43	0.34	0.85
4974	2020-05-05 19:58:37	0.55	0.55	0.43	0.55	0.85
4979	2020-05-05 19:59:02	0.55	0.34	0.34	0.55	0.9
4984	2020-05-05 19:59:27	0.43	0.43	0.55	0.43	0.81
4989	2020-05-05 19:59:52	0.34	0.34	0.34	0.43	0.85
4994	2020-05-05 20:00:17	0.34	0.43	0.43	0.34	0.85
4999	2020-05-05 20:00:42	0.43	0.55	0.34	0.55	0.74
5004	2020-05-05 20:01:07	0.43	0.34	0.43	0.34	0.85
5009	2020-05-05 20:01:32	0.43	0.43	0.55	0.34	0.79
5014	2020-05-05 20:01:57	0.43	0.34	0.55	0.43	0.74
5019	2020-05-05 20:02:22	0.34	0.43	0.55	0.43	0.73
5024	2020-05-05 20:02:48	0.43	0.43	0.55	0.34	0.74
5029	2020-05-05 20:03:13	0.55	0.43	0.55	0.55	0.79
4555	2020-05-05 19:23:41	0.55	0.34	0.43	0.43	0.85
4560	2020-05-05 19:24:06	0.55	0.43	0.43	0.43	0.9
4565	2020-05-05 19:24:31	0.34	0.34	0.34	0.55	0.73
4570	2020-05-05 19:24:56	0.43	0.34	0.55	0.55	0.74
4575	2020-05-05 19:25:21	0.34	0.55	0.43	0.34	0.85
4580	2020-05-05 19:25:46	0.55	0.55	0.55	0.43	0.85
4585	2020-05-05 19:26:11	0.34	0.34	0.34	0.34	0.85
4590	2020-05-05 19:26:36	0.43	0.34	0.55	0.34	0.73
4595	2020-05-05 19:27:01	0.43	0.43	0.55	0.43	0.9
4600	2020-05-05 19:27:26	0.55	0.34	0.43	0.34	0.81
4605	2020-05-05 19:27:51	0.55	0.55	0.34	0.43	0.79
4610	2020-05-05 19:28:16	0.55	0.34	0.43	0.55	0.85
4615	2020-05-05 19:28:41	0.55	0.55	0.55	0.34	0.73
4620	2020-05-05 19:29:06	0.34	0.43	0.55	0.55	0.79
4625	2020-05-05 19:29:31	0.34	0.34	0.43	0.55	0.79
4630	2020-05-05 19:29:56	0.34	0.43	0.55	0.34	0.85
4635	2020-05-05 19:30:21	0.34	0.43	0.34	0.43	0.85
4640	2020-05-05 19:30:46	0.55	0.34	0.43	0.43	0.85
4645	2020-05-05 19:31:11	0.34	0.34	0.34	0.55	0.85
4650	2020-05-05 19:31:36	0.43	0.34	0.43	0.55	0.81
4655	2020-05-05 19:32:01	0.34	0.43	0.43	0.43	0.81
4660	2020-05-05 19:32:26	0.55	0.34	0.55	0.55	0.79
4665	2020-05-05 19:32:51	0.34	0.34	0.43	0.34	0.81
4670	2020-05-05 19:33:17	0.55	0.43	0.43	0.43	0.74
4675	2020-05-05 19:33:42	0.34	0.55	0.34	0.34	0.9
4680	2020-05-05 19:34:07	0.34	0.55	0.43	0.43	0.79
4685	2020-05-05 19:34:32	0.34	0.43	0.55	0.34	0.81
4690	2020-05-05 19:34:57	0.34	0.55	0.55	0.55	0.9
4695	2020-05-05 19:35:22	0.43	0.55	0.55	0.55	0.73
4700	2020-05-05 19:35:47	0.55	0.55	0.55	0.34	0.85
4705	2020-05-05 19:36:12	0.55	0.43	0.55	0.43	0.73
4710	2020-05-05 19:36:37	0.43	0.34	0.55	0.34	0.74
4715	2020-05-05 19:37:02	0.55	0.43	0.43	0.55	0.79
4720	2020-05-05 19:37:27	0.34	0.43	0.34	0.34	0.85
4725	2020-05-05 19:37:52	0.34	0.55	0.34	0.55	0.79
4730	2020-05-05 19:38:17	0.43	0.34	0.55	0.55	0.85
4735	2020-05-05 19:38:42	0.55	0.34	0.55	0.55	0.9
4740	2020-05-05 19:39:07	0.43	0.43	0.43	0.43	0.81
4745	2020-05-05 19:39:32	0.55	0.55	0.55	0.43	0.74
4750	2020-05-05 19:39:57	0.43	0.43	0.43	0.55	0.81
4755	2020-05-05 19:40:22	0.55	0.34	0.34	0.34	0.9
4760	2020-05-05 19:40:47	0.34	0.43	0.43	0.34	0.79
4765	2020-05-05 19:41:12	0.55	0.34	0.55	0.43	0.9
4770	2020-05-05 19:41:37	0.43	0.55	0.43	0.55	0.73
4775	2020-05-05 19:42:02	0.34	0.43	0.55	0.55	0.79
4780	2020-05-05 19:42:27	0.34	0.43	0.55	0.34	0.73
4785	2020-05-05 19:42:52	0.43	0.43	0.55	0.43	0.81
4790	2020-05-05 19:43:17	0.34	0.55	0.43	0.55	0.81
4795	2020-05-05 19:43:42	0.34	0.34	0.55	0.34	0.73
4800	2020-05-05 19:44:07	0.43	0.55	0.34	0.55	0.74
4805	2020-05-05 19:44:32	0.34	0.55	0.55	0.55	0.85
4810	2020-05-05 19:44:57	0.43	0.34	0.55	0.34	0.85
4815	2020-05-05 19:45:22	0.34	0.43	0.43	0.34	0.85
4820	2020-05-05 19:45:47	0.55	0.43	0.55	0.55	0.85
4825	2020-05-05 19:46:12	0.34	0.55	0.34	0.55	0.73
4830	2020-05-05 19:46:37	0.43	0.34	0.43	0.34	0.73
4835	2020-05-05 19:47:02	0.43	0.43	0.55	0.43	0.73
4840	2020-05-05 19:47:27	0.55	0.43	0.43	0.43	0.73
4845	2020-05-05 19:47:52	0.43	0.34	0.34	0.34	0.9
4850	2020-05-05 19:48:17	0.34	0.34	0.55	0.34	0.81
4855	2020-05-05 19:48:42	0.43	0.43	0.43	0.34	0.85
4860	2020-05-05 19:49:07	0.43	0.55	0.43	0.34	0.85
4865	2020-05-05 19:49:32	0.55	0.34	0.55	0.55	0.73
4870	2020-05-05 19:49:57	0.55	0.43	0.34	0.34	0.74
4875	2020-05-05 19:50:22	0.34	0.55	0.34	0.55	0.74
4880	2020-05-05 19:50:47	0.55	0.34	0.34	0.55	0.9
4885	2020-05-05 19:51:12	0.55	0.43	0.43	0.34	0.73
4890	2020-05-05 19:51:37	0.34	0.55	0.34	0.43	0.73
4895	2020-05-05 19:52:02	0.34	0.55	0.34	0.34	0.74
4900	2020-05-05 19:52:27	0.43	0.34	0.43	0.34	0.79
4905	2020-05-05 19:52:52	0.34	0.43	0.34	0.43	0.73
4910	2020-05-05 19:53:17	0.43	0.43	0.55	0.43	0.9
4915	2020-05-05 19:53:42	0.43	0.34	0.55	0.34	0.73
4920	2020-05-05 19:54:07	0.55	0.43	0.34	0.55	0.79
4925	2020-05-05 19:54:32	0.43	0.55	0.55	0.34	0.81
4930	2020-05-05 19:54:57	0.34	0.34	0.34	0.34	0.9
4935	2020-05-05 19:55:22	0.43	0.34	0.34	0.43	0.85
4940	2020-05-05 19:55:47	0.34	0.43	0.55	0.43	0.73
4945	2020-05-05 19:56:12	0.55	0.55	0.34	0.55	0.79
4950	2020-05-05 19:56:37	0.55	0.34	0.43	0.55	0.81
4955	2020-05-05 19:57:02	0.34	0.34	0.34	0.55	0.81
4960	2020-05-05 19:57:27	0.55	0.43	0.34	0.43	0.73
4965	2020-05-05 19:57:52	0.55	0.55	0.55	0.34	0.73
4970	2020-05-05 19:58:17	0.34	0.43	0.34	0.55	0.85
4975	2020-05-05 19:58:42	0.34	0.55	0.55	0.55	0.9
4980	2020-05-05 19:59:07	0.55	0.55	0.43	0.55	0.81
4985	2020-05-05 19:59:32	0.43	0.55	0.34	0.34	0.85
4990	2020-05-05 19:59:57	0.43	0.43	0.43	0.55	0.74
4995	2020-05-05 20:00:22	0.43	0.34	0.34	0.34	0.79
5000	2020-05-05 20:00:47	0.55	0.34	0.55	0.55	0.81
5005	2020-05-05 20:01:12	0.55	0.43	0.34	0.34	0.73
5010	2020-05-05 20:01:37	0.43	0.55	0.43	0.34	0.79
5015	2020-05-05 20:02:02	0.55	0.34	0.55	0.43	0.81
5020	2020-05-05 20:02:27	0.43	0.34	0.43	0.55	0.81
5025	2020-05-05 20:02:53	0.55	0.55	0.43	0.43	0.79
5030	2020-05-05 20:03:18	0.34	0.43	0.55	0.34	0.9
4556	2020-05-05 19:23:46	0.43	0.43	0.34	0.34	0.9
4561	2020-05-05 19:24:11	0.43	0.55	0.55	0.55	0.81
4566	2020-05-05 19:24:36	0.55	0.55	0.34	0.55	0.74
4571	2020-05-05 19:25:01	0.34	0.55	0.55	0.43	0.73
4576	2020-05-05 19:25:26	0.55	0.43	0.43	0.43	0.9
4581	2020-05-05 19:25:51	0.55	0.43	0.43	0.34	0.74
4586	2020-05-05 19:26:16	0.43	0.43	0.43	0.55	0.74
4591	2020-05-05 19:26:41	0.43	0.34	0.43	0.43	0.73
4596	2020-05-05 19:27:06	0.55	0.43	0.55	0.34	0.81
4601	2020-05-05 19:27:31	0.34	0.34	0.43	0.34	0.81
4606	2020-05-05 19:27:56	0.43	0.43	0.34	0.34	0.81
4611	2020-05-05 19:28:21	0.55	0.43	0.55	0.34	0.73
4616	2020-05-05 19:28:46	0.34	0.34	0.43	0.34	0.73
4621	2020-05-05 19:29:11	0.34	0.43	0.43	0.55	0.79
4626	2020-05-05 19:29:36	0.34	0.55	0.55	0.43	0.74
4631	2020-05-05 19:30:01	0.55	0.55	0.34	0.43	0.81
4636	2020-05-05 19:30:26	0.34	0.34	0.43	0.34	0.74
4641	2020-05-05 19:30:51	0.43	0.34	0.34	0.34	0.85
4646	2020-05-05 19:31:16	0.34	0.43	0.55	0.43	0.81
4651	2020-05-05 19:31:41	0.55	0.43	0.34	0.55	0.79
4656	2020-05-05 19:32:06	0.34	0.55	0.43	0.43	0.81
4661	2020-05-05 19:32:31	0.55	0.55	0.55	0.55	0.81
4666	2020-05-05 19:32:56	0.55	0.55	0.55	0.34	0.79
4671	2020-05-05 19:33:22	0.43	0.55	0.34	0.55	0.81
4676	2020-05-05 19:33:47	0.43	0.34	0.34	0.34	0.73
4681	2020-05-05 19:34:12	0.55	0.34	0.43	0.43	0.9
4686	2020-05-05 19:34:37	0.55	0.55	0.43	0.34	0.85
4691	2020-05-05 19:35:02	0.34	0.43	0.55	0.55	0.85
4696	2020-05-05 19:35:27	0.43	0.34	0.43	0.43	0.74
4701	2020-05-05 19:35:52	0.55	0.43	0.43	0.55	0.79
4706	2020-05-05 19:36:17	0.34	0.55	0.55	0.43	0.73
4711	2020-05-05 19:36:42	0.34	0.55	0.55	0.43	0.81
4716	2020-05-05 19:37:07	0.55	0.34	0.34	0.55	0.85
4721	2020-05-05 19:37:32	0.55	0.55	0.55	0.34	0.73
4726	2020-05-05 19:37:57	0.55	0.43	0.43	0.55	0.73
4731	2020-05-05 19:38:22	0.43	0.34	0.43	0.55	0.79
4736	2020-05-05 19:38:47	0.34	0.43	0.34	0.55	0.9
4741	2020-05-05 19:39:12	0.34	0.55	0.55	0.34	0.9
4746	2020-05-05 19:39:37	0.55	0.34	0.34	0.43	0.73
4751	2020-05-05 19:40:02	0.34	0.43	0.34	0.55	0.85
4756	2020-05-05 19:40:27	0.43	0.43	0.55	0.43	0.85
4761	2020-05-05 19:40:52	0.34	0.43	0.55	0.34	0.85
4766	2020-05-05 19:41:17	0.34	0.43	0.34	0.55	0.73
4771	2020-05-05 19:41:42	0.34	0.43	0.34	0.55	0.85
4776	2020-05-05 19:42:07	0.43	0.34	0.43	0.43	0.81
4781	2020-05-05 19:42:32	0.34	0.34	0.43	0.34	0.74
4786	2020-05-05 19:42:57	0.55	0.55	0.34	0.34	0.85
4791	2020-05-05 19:43:22	0.43	0.34	0.43	0.55	0.81
4796	2020-05-05 19:43:47	0.34	0.55	0.34	0.34	0.79
4801	2020-05-05 19:44:12	0.55	0.55	0.55	0.55	0.81
4806	2020-05-05 19:44:37	0.55	0.55	0.55	0.34	0.73
4811	2020-05-05 19:45:02	0.43	0.55	0.34	0.34	0.9
4816	2020-05-05 19:45:27	0.34	0.55	0.43	0.43	0.85
4821	2020-05-05 19:45:52	0.43	0.43	0.43	0.55	0.79
4826	2020-05-05 19:46:17	0.55	0.34	0.34	0.43	0.85
4831	2020-05-05 19:46:42	0.43	0.55	0.55	0.43	0.74
4836	2020-05-05 19:47:07	0.43	0.55	0.34	0.34	0.79
4841	2020-05-05 19:47:32	0.34	0.43	0.55	0.55	0.9
4846	2020-05-05 19:47:57	0.43	0.34	0.34	0.55	0.9
4851	2020-05-05 19:48:22	0.34	0.55	0.34	0.43	0.85
4856	2020-05-05 19:48:47	0.34	0.34	0.55	0.34	0.74
4861	2020-05-05 19:49:12	0.43	0.43	0.43	0.55	0.81
4866	2020-05-05 19:49:37	0.34	0.55	0.55	0.43	0.73
4871	2020-05-05 19:50:02	0.55	0.34	0.43	0.34	0.74
4876	2020-05-05 19:50:27	0.55	0.34	0.34	0.43	0.9
4881	2020-05-05 19:50:52	0.43	0.34	0.34	0.34	0.73
4886	2020-05-05 19:51:17	0.43	0.55	0.34	0.34	0.81
4891	2020-05-05 19:51:42	0.34	0.43	0.55	0.34	0.79
4896	2020-05-05 19:52:07	0.34	0.43	0.34	0.43	0.85
4901	2020-05-05 19:52:32	0.43	0.34	0.55	0.34	0.81
4906	2020-05-05 19:52:57	0.55	0.34	0.34	0.55	0.73
4911	2020-05-05 19:53:22	0.55	0.55	0.55	0.43	0.73
4916	2020-05-05 19:53:47	0.55	0.34	0.55	0.43	0.9
4921	2020-05-05 19:54:12	0.34	0.43	0.43	0.55	0.81
4926	2020-05-05 19:54:37	0.43	0.55	0.34	0.43	0.73
4931	2020-05-05 19:55:02	0.55	0.43	0.43	0.43	0.81
4936	2020-05-05 19:55:27	0.55	0.55	0.43	0.34	0.74
4941	2020-05-05 19:55:52	0.34	0.43	0.43	0.34	0.73
4946	2020-05-05 19:56:17	0.34	0.34	0.43	0.43	0.9
4951	2020-05-05 19:56:42	0.55	0.55	0.55	0.55	0.73
4956	2020-05-05 19:57:07	0.34	0.34	0.55	0.43	0.79
4961	2020-05-05 19:57:32	0.43	0.55	0.43	0.34	0.9
4966	2020-05-05 19:57:57	0.34	0.55	0.55	0.55	0.73
4971	2020-05-05 19:58:22	0.34	0.34	0.34	0.34	0.74
4976	2020-05-05 19:58:47	0.34	0.34	0.55	0.43	0.79
4981	2020-05-05 19:59:12	0.34	0.43	0.43	0.34	0.9
4986	2020-05-05 19:59:37	0.43	0.55	0.43	0.55	0.79
4991	2020-05-05 20:00:02	0.34	0.43	0.55	0.55	0.73
4996	2020-05-05 20:00:27	0.34	0.55	0.34	0.55	0.73
5001	2020-05-05 20:00:52	0.43	0.55	0.34	0.34	0.73
5006	2020-05-05 20:01:17	0.43	0.34	0.55	0.43	0.73
5011	2020-05-05 20:01:42	0.55	0.34	0.34	0.55	0.74
5016	2020-05-05 20:02:07	0.34	0.34	0.34	0.55	0.73
5021	2020-05-05 20:02:32	0.55	0.43	0.55	0.55	0.73
5026	2020-05-05 20:02:58	0.34	0.34	0.34	0.55	0.81
5031	2020-05-05 20:03:23	0.34	0.34	0.34	0.34	0.74
5032	2020-05-05 20:03:28	0.43	0.55	0.43	0.55	0.85
5033	2020-05-05 20:03:33	0.55	0.43	0.34	0.34	0.79
5034	2020-05-05 20:03:38	0.43	0.43	0.43	0.43	0.79
5035	2020-05-05 20:03:43	0.43	0.55	0.43	0.43	0.74
5036	2020-05-05 20:03:48	0.55	0.43	0.34	0.43	0.81
5037	2020-05-05 20:03:53	0.34	0.34	0.55	0.34	0.85
5038	2020-05-05 20:03:58	0.55	0.43	0.43	0.34	0.74
5039	2020-05-05 20:04:03	0.43	0.43	0.55	0.43	0.79
5040	2020-05-05 20:04:08	0.43	0.34	0.43	0.55	0.74
5041	2020-05-05 20:04:13	0.55	0.43	0.55	0.43	0.9
5042	2020-05-05 20:04:18	0.43	0.55	0.55	0.43	0.85
5043	2020-05-05 20:04:23	0.43	0.55	0.43	0.55	0.85
5592	2020-05-05 20:50:09	0.43	0.34	0.55	0.43	0.9
5044	2020-05-05 20:04:28	0.55	0.34	0.55	0.34	0.79
5049	2020-05-05 20:04:53	0.55	0.55	0.34	0.34	0.73
5054	2020-05-05 20:05:18	0.43	0.43	0.43	0.55	0.73
5059	2020-05-05 20:05:43	0.43	0.34	0.43	0.43	0.81
5064	2020-05-05 20:06:08	0.43	0.34	0.55	0.55	0.9
5069	2020-05-05 20:06:33	0.43	0.55	0.55	0.43	0.81
5074	2020-05-05 20:06:58	0.43	0.55	0.34	0.55	0.79
5079	2020-05-05 20:07:23	0.55	0.43	0.43	0.55	0.9
5084	2020-05-05 20:07:48	0.43	0.34	0.43	0.43	0.85
5089	2020-05-05 20:08:13	0.43	0.55	0.34	0.55	0.9
5094	2020-05-05 20:08:38	0.43	0.55	0.55	0.34	0.79
5099	2020-05-05 20:09:03	0.34	0.34	0.55	0.55	0.73
5104	2020-05-05 20:09:28	0.34	0.43	0.34	0.34	0.9
5109	2020-05-05 20:09:53	0.34	0.43	0.55	0.34	0.74
5114	2020-05-05 20:10:18	0.55	0.34	0.55	0.43	0.74
5119	2020-05-05 20:10:43	0.43	0.34	0.34	0.43	0.79
5124	2020-05-05 20:11:08	0.43	0.43	0.43	0.43	0.9
5129	2020-05-05 20:11:33	0.34	0.34	0.43	0.34	0.73
5134	2020-05-05 20:11:58	0.55	0.34	0.34	0.43	0.74
5139	2020-05-05 20:12:23	0.55	0.34	0.55	0.34	0.73
5144	2020-05-05 20:12:48	0.55	0.55	0.34	0.34	0.85
5149	2020-05-05 20:13:13	0.55	0.55	0.43	0.34	0.85
5154	2020-05-05 20:13:38	0.43	0.34	0.43	0.55	0.73
5159	2020-05-05 20:14:03	0.34	0.55	0.43	0.34	0.9
5164	2020-05-05 20:14:28	0.34	0.43	0.34	0.55	0.79
5169	2020-05-05 20:14:53	0.34	0.43	0.55	0.43	0.74
5174	2020-05-05 20:15:18	0.34	0.34	0.34	0.55	0.9
5179	2020-05-05 20:15:43	0.55	0.43	0.55	0.43	0.74
5184	2020-05-05 20:16:08	0.34	0.34	0.34	0.55	0.9
5189	2020-05-05 20:16:33	0.55	0.34	0.34	0.34	0.74
5194	2020-05-05 20:16:58	0.43	0.43	0.43	0.43	0.74
5199	2020-05-05 20:17:23	0.55	0.55	0.43	0.43	0.9
5204	2020-05-05 20:17:48	0.34	0.34	0.43	0.55	0.79
5209	2020-05-05 20:18:13	0.55	0.43	0.55	0.55	0.74
5214	2020-05-05 20:18:38	0.43	0.43	0.34	0.43	0.79
5219	2020-05-05 20:19:03	0.55	0.55	0.43	0.34	0.85
5224	2020-05-05 20:19:28	0.55	0.55	0.55	0.55	0.81
5229	2020-05-05 20:19:53	0.43	0.43	0.55	0.55	0.85
5234	2020-05-05 20:20:18	0.55	0.34	0.43	0.34	0.73
5239	2020-05-05 20:20:43	0.43	0.55	0.43	0.55	0.9
5244	2020-05-05 20:21:08	0.43	0.55	0.43	0.43	0.85
5249	2020-05-05 20:21:33	0.43	0.43	0.34	0.43	0.81
5254	2020-05-05 20:21:58	0.43	0.55	0.43	0.55	0.81
5259	2020-05-05 20:22:23	0.43	0.43	0.55	0.34	0.9
5264	2020-05-05 20:22:48	0.34	0.55	0.34	0.55	0.85
5269	2020-05-05 20:23:13	0.55	0.34	0.55	0.34	0.85
5274	2020-05-05 20:23:38	0.43	0.34	0.55	0.43	0.79
5279	2020-05-05 20:24:03	0.34	0.43	0.34	0.43	0.74
5284	2020-05-05 20:24:28	0.43	0.34	0.34	0.34	0.81
5289	2020-05-05 20:24:53	0.43	0.34	0.55	0.43	0.74
5294	2020-05-05 20:25:18	0.43	0.55	0.55	0.34	0.74
5299	2020-05-05 20:25:43	0.34	0.55	0.43	0.34	0.73
5304	2020-05-05 20:26:08	0.34	0.43	0.43	0.43	0.79
5309	2020-05-05 20:26:33	0.34	0.43	0.43	0.34	0.74
5314	2020-05-05 20:26:58	0.55	0.43	0.43	0.43	0.79
5319	2020-05-05 20:27:23	0.43	0.34	0.55	0.55	0.9
5324	2020-05-05 20:27:48	0.34	0.43	0.43	0.34	0.74
5329	2020-05-05 20:28:13	0.34	0.55	0.43	0.55	0.79
5334	2020-05-05 20:28:38	0.34	0.55	0.34	0.43	0.74
5339	2020-05-05 20:29:03	0.55	0.55	0.34	0.55	0.9
5344	2020-05-05 20:29:28	0.34	0.43	0.55	0.55	0.74
5349	2020-05-05 20:29:53	0.34	0.55	0.43	0.34	0.73
5354	2020-05-05 20:30:18	0.34	0.55	0.55	0.43	0.9
5359	2020-05-05 20:30:43	0.34	0.43	0.55	0.55	0.9
5364	2020-05-05 20:31:08	0.43	0.43	0.34	0.43	0.74
5369	2020-05-05 20:31:33	0.43	0.34	0.34	0.55	0.73
5374	2020-05-05 20:31:59	0.55	0.43	0.55	0.34	0.85
5379	2020-05-05 20:32:24	0.55	0.43	0.43	0.55	0.81
5384	2020-05-05 20:32:49	0.43	0.34	0.43	0.55	0.79
5389	2020-05-05 20:33:14	0.34	0.34	0.55	0.43	0.81
5394	2020-05-05 20:33:39	0.43	0.34	0.55	0.55	0.85
5399	2020-05-05 20:34:04	0.55	0.34	0.34	0.55	0.81
5404	2020-05-05 20:34:29	0.34	0.55	0.34	0.43	0.9
5409	2020-05-05 20:34:54	0.55	0.55	0.43	0.34	0.79
5414	2020-05-05 20:35:19	0.34	0.34	0.34	0.55	0.81
5419	2020-05-05 20:35:44	0.43	0.43	0.55	0.55	0.74
5424	2020-05-05 20:36:09	0.55	0.43	0.34	0.43	0.74
5429	2020-05-05 20:36:34	0.55	0.34	0.43	0.55	0.73
5434	2020-05-05 20:36:59	0.55	0.34	0.55	0.55	0.79
5439	2020-05-05 20:37:24	0.55	0.43	0.34	0.55	0.85
5444	2020-05-05 20:37:49	0.55	0.43	0.34	0.34	0.81
5449	2020-05-05 20:38:14	0.34	0.43	0.34	0.34	0.73
5454	2020-05-05 20:38:39	0.34	0.43	0.55	0.43	0.74
5459	2020-05-05 20:39:04	0.43	0.34	0.43	0.55	0.79
5464	2020-05-05 20:39:29	0.43	0.34	0.55	0.43	0.9
5469	2020-05-05 20:39:54	0.55	0.43	0.55	0.55	0.9
5474	2020-05-05 20:40:19	0.34	0.34	0.55	0.43	0.73
5479	2020-05-05 20:40:44	0.43	0.55	0.34	0.43	0.9
5484	2020-05-05 20:41:09	0.43	0.34	0.34	0.55	0.81
5489	2020-05-05 20:41:34	0.55	0.34	0.55	0.43	0.73
5494	2020-05-05 20:41:59	0.55	0.43	0.34	0.43	0.73
5499	2020-05-05 20:42:24	0.43	0.34	0.34	0.43	0.79
5504	2020-05-05 20:42:49	0.55	0.55	0.55	0.55	0.9
5509	2020-05-05 20:43:14	0.34	0.43	0.43	0.43	0.74
5514	2020-05-05 20:43:39	0.43	0.43	0.55	0.43	0.79
5519	2020-05-05 20:44:04	0.34	0.43	0.43	0.34	0.74
5524	2020-05-05 20:44:29	0.43	0.55	0.43	0.43	0.74
5529	2020-05-05 20:44:54	0.55	0.43	0.55	0.34	0.74
5534	2020-05-05 20:45:19	0.55	0.43	0.55	0.34	0.85
5539	2020-05-05 20:45:44	0.43	0.34	0.43	0.55	0.81
5544	2020-05-05 20:46:09	0.43	0.34	0.43	0.55	0.74
5549	2020-05-05 20:46:34	0.43	0.43	0.43	0.34	0.74
5554	2020-05-05 20:46:59	0.34	0.43	0.34	0.34	0.81
5559	2020-05-05 20:47:24	0.43	0.34	0.34	0.43	0.79
5564	2020-05-05 20:47:49	0.55	0.55	0.34	0.43	0.74
5569	2020-05-05 20:48:14	0.55	0.55	0.43	0.55	0.79
5574	2020-05-05 20:48:39	0.34	0.55	0.34	0.43	0.85
5579	2020-05-05 20:49:04	0.34	0.34	0.34	0.43	0.81
5584	2020-05-05 20:49:29	0.55	0.43	0.34	0.43	0.73
5045	2020-05-05 20:04:33	0.55	0.34	0.34	0.43	0.73
5050	2020-05-05 20:04:58	0.55	0.55	0.43	0.43	0.85
5055	2020-05-05 20:05:23	0.34	0.43	0.55	0.34	0.79
5060	2020-05-05 20:05:48	0.43	0.55	0.43	0.43	0.85
5065	2020-05-05 20:06:13	0.43	0.43	0.43	0.43	0.73
5070	2020-05-05 20:06:38	0.43	0.43	0.55	0.34	0.85
5075	2020-05-05 20:07:03	0.43	0.34	0.43	0.34	0.74
5080	2020-05-05 20:07:28	0.55	0.55	0.43	0.34	0.9
5085	2020-05-05 20:07:53	0.55	0.43	0.34	0.43	0.81
5090	2020-05-05 20:08:18	0.55	0.43	0.55	0.34	0.85
5095	2020-05-05 20:08:43	0.34	0.34	0.55	0.55	0.81
5100	2020-05-05 20:09:08	0.55	0.34	0.55	0.34	0.9
5105	2020-05-05 20:09:33	0.43	0.43	0.34	0.34	0.73
5110	2020-05-05 20:09:58	0.34	0.55	0.55	0.55	0.81
5115	2020-05-05 20:10:23	0.55	0.43	0.55	0.34	0.73
5120	2020-05-05 20:10:48	0.43	0.55	0.43	0.55	0.74
5125	2020-05-05 20:11:13	0.43	0.55	0.55	0.55	0.79
5130	2020-05-05 20:11:38	0.43	0.43	0.55	0.43	0.9
5135	2020-05-05 20:12:03	0.55	0.43	0.55	0.55	0.79
5140	2020-05-05 20:12:28	0.43	0.34	0.55	0.55	0.9
5145	2020-05-05 20:12:53	0.43	0.43	0.34	0.34	0.79
5150	2020-05-05 20:13:18	0.43	0.43	0.34	0.43	0.85
5155	2020-05-05 20:13:43	0.43	0.34	0.34	0.34	0.85
5160	2020-05-05 20:14:08	0.55	0.34	0.43	0.43	0.73
5165	2020-05-05 20:14:33	0.43	0.55	0.43	0.43	0.73
5170	2020-05-05 20:14:58	0.55	0.43	0.34	0.43	0.85
5175	2020-05-05 20:15:23	0.34	0.34	0.34	0.34	0.74
5180	2020-05-05 20:15:48	0.55	0.34	0.34	0.34	0.81
5185	2020-05-05 20:16:13	0.43	0.55	0.55	0.43	0.79
5190	2020-05-05 20:16:38	0.55	0.34	0.43	0.43	0.79
5195	2020-05-05 20:17:03	0.43	0.34	0.55	0.34	0.85
5200	2020-05-05 20:17:28	0.43	0.43	0.34	0.55	0.9
5205	2020-05-05 20:17:53	0.55	0.43	0.34	0.43	0.74
5210	2020-05-05 20:18:18	0.55	0.43	0.34	0.34	0.81
5215	2020-05-05 20:18:43	0.43	0.55	0.43	0.43	0.79
5220	2020-05-05 20:19:08	0.34	0.43	0.34	0.43	0.79
5225	2020-05-05 20:19:33	0.55	0.43	0.55	0.43	0.74
5230	2020-05-05 20:19:58	0.43	0.34	0.34	0.34	0.74
5235	2020-05-05 20:20:23	0.34	0.55	0.55	0.34	0.81
5240	2020-05-05 20:20:48	0.55	0.34	0.34	0.34	0.9
5245	2020-05-05 20:21:13	0.55	0.34	0.43	0.43	0.73
5250	2020-05-05 20:21:38	0.55	0.34	0.55	0.43	0.85
5255	2020-05-05 20:22:03	0.55	0.55	0.43	0.55	0.74
5260	2020-05-05 20:22:28	0.55	0.43	0.43	0.34	0.74
5265	2020-05-05 20:22:53	0.43	0.55	0.34	0.34	0.74
5270	2020-05-05 20:23:18	0.43	0.43	0.34	0.34	0.9
5275	2020-05-05 20:23:43	0.43	0.55	0.34	0.43	0.9
5280	2020-05-05 20:24:08	0.34	0.55	0.55	0.43	0.74
5285	2020-05-05 20:24:33	0.43	0.43	0.55	0.55	0.85
5290	2020-05-05 20:24:58	0.55	0.34	0.34	0.34	0.73
5295	2020-05-05 20:25:23	0.34	0.43	0.43	0.43	0.9
5300	2020-05-05 20:25:48	0.34	0.55	0.55	0.34	0.85
5305	2020-05-05 20:26:13	0.34	0.43	0.55	0.55	0.74
5310	2020-05-05 20:26:38	0.43	0.55	0.43	0.43	0.81
5315	2020-05-05 20:27:03	0.43	0.55	0.34	0.34	0.81
5320	2020-05-05 20:27:28	0.43	0.43	0.34	0.55	0.85
5325	2020-05-05 20:27:53	0.43	0.34	0.43	0.43	0.73
5330	2020-05-05 20:28:18	0.43	0.34	0.55	0.43	0.85
5335	2020-05-05 20:28:43	0.55	0.43	0.43	0.43	0.73
5340	2020-05-05 20:29:08	0.43	0.55	0.55	0.55	0.9
5345	2020-05-05 20:29:33	0.43	0.43	0.55	0.55	0.85
5350	2020-05-05 20:29:58	0.34	0.34	0.34	0.55	0.73
5355	2020-05-05 20:30:23	0.34	0.43	0.34	0.55	0.73
5360	2020-05-05 20:30:48	0.55	0.55	0.55	0.55	0.9
5365	2020-05-05 20:31:13	0.34	0.55	0.55	0.43	0.85
5370	2020-05-05 20:31:38	0.43	0.55	0.55	0.55	0.74
5375	2020-05-05 20:32:04	0.43	0.43	0.43	0.34	0.85
5380	2020-05-05 20:32:29	0.34	0.34	0.55	0.34	0.74
5385	2020-05-05 20:32:54	0.55	0.55	0.43	0.34	0.9
5390	2020-05-05 20:33:19	0.55	0.55	0.55	0.34	0.81
5395	2020-05-05 20:33:44	0.55	0.43	0.55	0.34	0.9
5400	2020-05-05 20:34:09	0.34	0.55	0.34	0.43	0.79
5405	2020-05-05 20:34:34	0.34	0.43	0.43	0.43	0.73
5410	2020-05-05 20:34:59	0.34	0.55	0.55	0.55	0.81
5415	2020-05-05 20:35:24	0.34	0.34	0.34	0.34	0.81
5420	2020-05-05 20:35:49	0.43	0.43	0.34	0.55	0.79
5425	2020-05-05 20:36:14	0.55	0.34	0.55	0.34	0.74
5430	2020-05-05 20:36:39	0.55	0.55	0.55	0.34	0.79
5435	2020-05-05 20:37:04	0.34	0.55	0.55	0.34	0.85
5440	2020-05-05 20:37:29	0.55	0.34	0.34	0.55	0.9
5445	2020-05-05 20:37:54	0.43	0.34	0.43	0.43	0.81
5450	2020-05-05 20:38:19	0.43	0.34	0.55	0.34	0.85
5455	2020-05-05 20:38:44	0.43	0.43	0.43	0.34	0.74
5460	2020-05-05 20:39:09	0.55	0.34	0.34	0.34	0.73
5465	2020-05-05 20:39:34	0.34	0.55	0.55	0.34	0.85
5470	2020-05-05 20:39:59	0.55	0.55	0.55	0.43	0.9
5475	2020-05-05 20:40:24	0.43	0.55	0.34	0.55	0.79
5480	2020-05-05 20:40:49	0.55	0.34	0.34	0.34	0.81
5485	2020-05-05 20:41:14	0.55	0.34	0.34	0.43	0.79
5490	2020-05-05 20:41:39	0.43	0.34	0.43	0.43	0.9
5495	2020-05-05 20:42:04	0.34	0.34	0.55	0.55	0.79
5500	2020-05-05 20:42:29	0.43	0.43	0.55	0.55	0.74
5505	2020-05-05 20:42:54	0.34	0.55	0.34	0.43	0.9
5510	2020-05-05 20:43:19	0.55	0.55	0.55	0.55	0.81
5515	2020-05-05 20:43:44	0.43	0.43	0.55	0.34	0.9
5520	2020-05-05 20:44:09	0.55	0.34	0.34	0.34	0.74
5525	2020-05-05 20:44:34	0.43	0.43	0.43	0.43	0.79
5530	2020-05-05 20:44:59	0.34	0.43	0.34	0.43	0.74
5535	2020-05-05 20:45:24	0.43	0.55	0.34	0.55	0.74
5540	2020-05-05 20:45:49	0.55	0.43	0.34	0.34	0.81
5545	2020-05-05 20:46:14	0.55	0.34	0.43	0.43	0.73
5550	2020-05-05 20:46:39	0.43	0.34	0.55	0.55	0.74
5555	2020-05-05 20:47:04	0.43	0.55	0.43	0.55	0.79
5560	2020-05-05 20:47:29	0.55	0.43	0.34	0.43	0.74
5565	2020-05-05 20:47:54	0.43	0.43	0.55	0.55	0.81
5570	2020-05-05 20:48:19	0.34	0.55	0.34	0.43	0.74
5575	2020-05-05 20:48:44	0.55	0.34	0.43	0.55	0.74
5580	2020-05-05 20:49:09	0.43	0.34	0.34	0.34	0.81
5585	2020-05-05 20:49:34	0.34	0.55	0.43	0.34	0.74
5046	2020-05-05 20:04:38	0.34	0.34	0.55	0.34	0.81
5051	2020-05-05 20:05:03	0.55	0.43	0.43	0.43	0.79
5056	2020-05-05 20:05:28	0.55	0.43	0.34	0.34	0.74
5061	2020-05-05 20:05:53	0.43	0.34	0.55	0.34	0.81
5066	2020-05-05 20:06:18	0.43	0.55	0.43	0.55	0.81
5071	2020-05-05 20:06:43	0.55	0.55	0.43	0.34	0.85
5076	2020-05-05 20:07:08	0.43	0.55	0.55	0.43	0.81
5081	2020-05-05 20:07:33	0.55	0.34	0.34	0.43	0.9
5086	2020-05-05 20:07:58	0.43	0.55	0.55	0.55	0.79
5091	2020-05-05 20:08:23	0.34	0.43	0.34	0.55	0.73
5096	2020-05-05 20:08:48	0.43	0.43	0.55	0.55	0.9
5101	2020-05-05 20:09:13	0.55	0.43	0.55	0.55	0.85
5106	2020-05-05 20:09:38	0.55	0.55	0.55	0.55	0.74
5111	2020-05-05 20:10:03	0.55	0.55	0.43	0.34	0.85
5116	2020-05-05 20:10:28	0.55	0.34	0.43	0.34	0.81
5121	2020-05-05 20:10:53	0.55	0.55	0.34	0.34	0.85
5126	2020-05-05 20:11:18	0.43	0.34	0.43	0.34	0.74
5131	2020-05-05 20:11:43	0.55	0.34	0.34	0.34	0.85
5136	2020-05-05 20:12:08	0.43	0.55	0.34	0.43	0.73
5141	2020-05-05 20:12:33	0.43	0.43	0.43	0.34	0.79
5146	2020-05-05 20:12:58	0.55	0.43	0.34	0.43	0.74
5151	2020-05-05 20:13:23	0.43	0.34	0.34	0.34	0.85
5156	2020-05-05 20:13:48	0.55	0.34	0.43	0.55	0.85
5161	2020-05-05 20:14:13	0.55	0.55	0.55	0.34	0.85
5166	2020-05-05 20:14:38	0.55	0.34	0.34	0.34	0.74
5171	2020-05-05 20:15:03	0.55	0.43	0.55	0.43	0.79
5176	2020-05-05 20:15:28	0.55	0.55	0.55	0.34	0.85
5181	2020-05-05 20:15:53	0.43	0.55	0.34	0.43	0.81
5186	2020-05-05 20:16:18	0.34	0.43	0.55	0.43	0.79
5191	2020-05-05 20:16:43	0.55	0.43	0.43	0.34	0.85
5196	2020-05-05 20:17:08	0.34	0.34	0.43	0.55	0.79
5201	2020-05-05 20:17:33	0.43	0.43	0.55	0.55	0.81
5206	2020-05-05 20:17:58	0.43	0.34	0.43	0.55	0.79
5211	2020-05-05 20:18:23	0.43	0.43	0.34	0.34	0.79
5216	2020-05-05 20:18:48	0.55	0.43	0.43	0.55	0.74
5221	2020-05-05 20:19:13	0.34	0.34	0.34	0.55	0.74
5226	2020-05-05 20:19:38	0.43	0.43	0.34	0.34	0.79
5231	2020-05-05 20:20:03	0.55	0.43	0.43	0.34	0.73
5236	2020-05-05 20:20:28	0.55	0.34	0.34	0.55	0.81
5241	2020-05-05 20:20:53	0.34	0.34	0.55	0.55	0.73
5246	2020-05-05 20:21:18	0.34	0.43	0.34	0.43	0.73
5251	2020-05-05 20:21:43	0.43	0.55	0.43	0.43	0.9
5256	2020-05-05 20:22:08	0.34	0.43	0.43	0.55	0.79
5261	2020-05-05 20:22:33	0.43	0.43	0.34	0.43	0.9
5266	2020-05-05 20:22:58	0.43	0.43	0.55	0.34	0.81
5271	2020-05-05 20:23:23	0.34	0.55	0.34	0.55	0.79
5276	2020-05-05 20:23:48	0.43	0.43	0.55	0.34	0.85
5281	2020-05-05 20:24:13	0.34	0.34	0.34	0.34	0.85
5286	2020-05-05 20:24:38	0.43	0.55	0.43	0.43	0.74
5291	2020-05-05 20:25:03	0.34	0.43	0.55	0.43	0.73
5296	2020-05-05 20:25:28	0.43	0.34	0.43	0.43	0.73
5301	2020-05-05 20:25:53	0.55	0.34	0.43	0.34	0.79
5306	2020-05-05 20:26:18	0.43	0.43	0.34	0.34	0.79
5311	2020-05-05 20:26:43	0.43	0.34	0.34	0.43	0.79
5316	2020-05-05 20:27:08	0.34	0.55	0.43	0.55	0.74
5321	2020-05-05 20:27:33	0.34	0.34	0.55	0.43	0.79
5326	2020-05-05 20:27:58	0.55	0.55	0.55	0.55	0.74
5331	2020-05-05 20:28:23	0.34	0.34	0.34	0.43	0.73
5336	2020-05-05 20:28:48	0.43	0.55	0.55	0.34	0.79
5341	2020-05-05 20:29:13	0.43	0.34	0.43	0.43	0.79
5346	2020-05-05 20:29:38	0.34	0.55	0.55	0.55	0.73
5351	2020-05-05 20:30:03	0.55	0.34	0.43	0.34	0.85
5356	2020-05-05 20:30:28	0.43	0.43	0.34	0.55	0.85
5361	2020-05-05 20:30:53	0.55	0.43	0.34	0.55	0.73
5366	2020-05-05 20:31:18	0.55	0.55	0.43	0.43	0.85
5371	2020-05-05 20:31:43	0.43	0.43	0.43	0.43	0.79
5376	2020-05-05 20:32:09	0.34	0.34	0.43	0.34	0.85
5381	2020-05-05 20:32:34	0.55	0.34	0.34	0.34	0.79
5386	2020-05-05 20:32:59	0.55	0.55	0.34	0.34	0.79
5391	2020-05-05 20:33:24	0.55	0.55	0.34	0.55	0.74
5396	2020-05-05 20:33:49	0.43	0.34	0.43	0.55	0.85
5401	2020-05-05 20:34:14	0.55	0.55	0.43	0.55	0.73
5406	2020-05-05 20:34:39	0.55	0.34	0.43	0.34	0.73
5411	2020-05-05 20:35:04	0.55	0.43	0.34	0.55	0.81
5416	2020-05-05 20:35:29	0.55	0.55	0.43	0.55	0.74
5421	2020-05-05 20:35:54	0.55	0.43	0.55	0.43	0.79
5426	2020-05-05 20:36:19	0.34	0.55	0.34	0.43	0.73
5431	2020-05-05 20:36:44	0.43	0.55	0.34	0.55	0.81
5436	2020-05-05 20:37:09	0.43	0.34	0.34	0.34	0.74
5441	2020-05-05 20:37:34	0.43	0.34	0.55	0.34	0.73
5446	2020-05-05 20:37:59	0.34	0.34	0.43	0.34	0.74
5451	2020-05-05 20:38:24	0.34	0.43	0.43	0.43	0.79
5456	2020-05-05 20:38:49	0.34	0.34	0.55	0.55	0.81
5461	2020-05-05 20:39:14	0.43	0.43	0.34	0.34	0.9
5466	2020-05-05 20:39:39	0.34	0.43	0.34	0.55	0.9
5471	2020-05-05 20:40:04	0.34	0.43	0.34	0.55	0.79
5476	2020-05-05 20:40:29	0.55	0.34	0.55	0.43	0.9
5481	2020-05-05 20:40:54	0.43	0.34	0.34	0.34	0.85
5486	2020-05-05 20:41:19	0.43	0.55	0.43	0.55	0.85
5491	2020-05-05 20:41:44	0.55	0.43	0.43	0.43	0.9
5496	2020-05-05 20:42:09	0.34	0.43	0.55	0.43	0.81
5501	2020-05-05 20:42:34	0.55	0.55	0.34	0.55	0.79
5506	2020-05-05 20:42:59	0.43	0.43	0.43	0.34	0.85
5511	2020-05-05 20:43:24	0.34	0.34	0.34	0.55	0.81
5516	2020-05-05 20:43:49	0.55	0.34	0.34	0.34	0.74
5521	2020-05-05 20:44:14	0.55	0.55	0.55	0.34	0.81
5526	2020-05-05 20:44:39	0.43	0.43	0.34	0.55	0.81
5531	2020-05-05 20:45:04	0.55	0.55	0.55	0.43	0.9
5536	2020-05-05 20:45:29	0.55	0.34	0.43	0.34	0.85
5541	2020-05-05 20:45:54	0.55	0.43	0.34	0.55	0.9
5546	2020-05-05 20:46:19	0.43	0.55	0.55	0.55	0.9
5551	2020-05-05 20:46:44	0.43	0.55	0.34	0.55	0.81
5556	2020-05-05 20:47:09	0.55	0.43	0.34	0.55	0.85
5561	2020-05-05 20:47:34	0.43	0.55	0.55	0.55	0.85
5566	2020-05-05 20:47:59	0.55	0.34	0.43	0.55	0.79
5571	2020-05-05 20:48:24	0.43	0.55	0.55	0.55	0.74
5576	2020-05-05 20:48:49	0.43	0.34	0.34	0.55	0.79
5581	2020-05-05 20:49:14	0.55	0.43	0.55	0.34	0.81
5047	2020-05-05 20:04:43	0.55	0.34	0.43	0.34	0.81
5052	2020-05-05 20:05:08	0.55	0.34	0.55	0.55	0.81
5057	2020-05-05 20:05:33	0.55	0.34	0.43	0.43	0.74
5062	2020-05-05 20:05:58	0.34	0.55	0.43	0.43	0.79
5067	2020-05-05 20:06:23	0.43	0.43	0.43	0.43	0.9
5072	2020-05-05 20:06:48	0.43	0.55	0.55	0.34	0.73
5077	2020-05-05 20:07:13	0.55	0.55	0.34	0.55	0.73
5082	2020-05-05 20:07:38	0.34	0.55	0.55	0.34	0.85
5087	2020-05-05 20:08:03	0.55	0.34	0.43	0.43	0.9
5092	2020-05-05 20:08:28	0.43	0.43	0.34	0.34	0.85
5097	2020-05-05 20:08:53	0.34	0.34	0.34	0.43	0.79
5102	2020-05-05 20:09:18	0.43	0.34	0.43	0.55	0.81
5107	2020-05-05 20:09:43	0.55	0.34	0.43	0.43	0.73
5112	2020-05-05 20:10:08	0.34	0.55	0.43	0.55	0.81
5117	2020-05-05 20:10:33	0.34	0.34	0.43	0.55	0.9
5122	2020-05-05 20:10:58	0.55	0.43	0.55	0.43	0.9
5127	2020-05-05 20:11:23	0.34	0.43	0.43	0.43	0.81
5132	2020-05-05 20:11:48	0.34	0.43	0.43	0.55	0.73
5137	2020-05-05 20:12:13	0.43	0.55	0.43	0.43	0.73
5142	2020-05-05 20:12:38	0.43	0.43	0.34	0.34	0.85
5147	2020-05-05 20:13:03	0.43	0.55	0.55	0.43	0.85
5152	2020-05-05 20:13:28	0.43	0.43	0.43	0.43	0.73
5157	2020-05-05 20:13:53	0.55	0.55	0.55	0.55	0.9
5162	2020-05-05 20:14:18	0.43	0.43	0.43	0.55	0.85
5167	2020-05-05 20:14:43	0.55	0.43	0.55	0.43	0.85
5172	2020-05-05 20:15:08	0.34	0.43	0.43	0.34	0.81
5177	2020-05-05 20:15:33	0.43	0.43	0.34	0.43	0.85
5182	2020-05-05 20:15:58	0.55	0.34	0.43	0.43	0.85
5187	2020-05-05 20:16:23	0.34	0.43	0.43	0.43	0.9
5192	2020-05-05 20:16:48	0.55	0.55	0.43	0.43	0.73
5197	2020-05-05 20:17:13	0.34	0.34	0.34	0.43	0.74
5202	2020-05-05 20:17:38	0.55	0.34	0.55	0.43	0.74
5207	2020-05-05 20:18:03	0.34	0.34	0.55	0.55	0.73
5212	2020-05-05 20:18:28	0.55	0.55	0.55	0.55	0.85
5217	2020-05-05 20:18:53	0.43	0.55	0.43	0.34	0.81
5222	2020-05-05 20:19:18	0.43	0.55	0.34	0.55	0.74
5227	2020-05-05 20:19:43	0.34	0.34	0.34	0.55	0.73
5232	2020-05-05 20:20:08	0.55	0.43	0.55	0.55	0.74
5237	2020-05-05 20:20:33	0.34	0.43	0.34	0.55	0.74
5242	2020-05-05 20:20:58	0.55	0.34	0.34	0.43	0.73
5247	2020-05-05 20:21:23	0.34	0.55	0.55	0.55	0.73
5252	2020-05-05 20:21:48	0.34	0.34	0.34	0.55	0.73
5257	2020-05-05 20:22:13	0.55	0.34	0.34	0.34	0.79
5262	2020-05-05 20:22:38	0.34	0.34	0.55	0.43	0.79
5267	2020-05-05 20:23:03	0.55	0.55	0.43	0.55	0.73
5272	2020-05-05 20:23:28	0.34	0.43	0.55	0.55	0.79
5277	2020-05-05 20:23:53	0.34	0.34	0.34	0.34	0.74
5282	2020-05-05 20:24:18	0.43	0.43	0.34	0.34	0.73
5287	2020-05-05 20:24:43	0.55	0.34	0.34	0.34	0.73
5292	2020-05-05 20:25:08	0.55	0.43	0.55	0.34	0.73
5297	2020-05-05 20:25:33	0.43	0.55	0.34	0.34	0.9
5302	2020-05-05 20:25:58	0.55	0.55	0.55	0.43	0.85
5307	2020-05-05 20:26:23	0.43	0.55	0.43	0.34	0.81
5312	2020-05-05 20:26:48	0.55	0.43	0.55	0.43	0.79
5317	2020-05-05 20:27:13	0.43	0.55	0.43	0.55	0.79
5322	2020-05-05 20:27:38	0.34	0.43	0.43	0.34	0.81
5327	2020-05-05 20:28:03	0.55	0.43	0.55	0.55	0.81
5332	2020-05-05 20:28:28	0.43	0.43	0.34	0.43	0.73
5337	2020-05-05 20:28:53	0.43	0.43	0.43	0.55	0.79
5342	2020-05-05 20:29:18	0.34	0.55	0.55	0.55	0.79
5347	2020-05-05 20:29:43	0.55	0.34	0.34	0.34	0.79
5352	2020-05-05 20:30:08	0.34	0.43	0.43	0.43	0.81
5357	2020-05-05 20:30:33	0.34	0.55	0.55	0.43	0.9
5362	2020-05-05 20:30:58	0.34	0.43	0.34	0.34	0.74
5367	2020-05-05 20:31:23	0.34	0.55	0.55	0.43	0.85
5372	2020-05-05 20:31:48	0.55	0.34	0.55	0.55	0.74
5377	2020-05-05 20:32:14	0.55	0.43	0.34	0.43	0.81
5382	2020-05-05 20:32:39	0.43	0.43	0.34	0.34	0.9
5387	2020-05-05 20:33:04	0.55	0.43	0.34	0.43	0.9
5392	2020-05-05 20:33:29	0.34	0.43	0.43	0.34	0.9
5397	2020-05-05 20:33:54	0.43	0.55	0.55	0.55	0.85
5402	2020-05-05 20:34:19	0.55	0.43	0.55	0.34	0.9
5407	2020-05-05 20:34:44	0.34	0.34	0.34	0.43	0.79
5412	2020-05-05 20:35:09	0.43	0.34	0.43	0.34	0.73
5417	2020-05-05 20:35:34	0.55	0.34	0.55	0.34	0.79
5422	2020-05-05 20:35:59	0.43	0.55	0.43	0.55	0.85
5427	2020-05-05 20:36:24	0.34	0.43	0.43	0.34	0.74
5432	2020-05-05 20:36:49	0.55	0.43	0.55	0.55	0.73
5437	2020-05-05 20:37:14	0.43	0.43	0.55	0.43	0.85
5442	2020-05-05 20:37:39	0.43	0.43	0.43	0.34	0.81
5447	2020-05-05 20:38:04	0.34	0.34	0.34	0.55	0.79
5452	2020-05-05 20:38:29	0.43	0.34	0.34	0.43	0.9
5457	2020-05-05 20:38:54	0.43	0.43	0.55	0.43	0.74
5462	2020-05-05 20:39:19	0.34	0.34	0.34	0.34	0.74
5467	2020-05-05 20:39:44	0.43	0.34	0.55	0.55	0.74
5472	2020-05-05 20:40:09	0.34	0.34	0.34	0.55	0.81
5477	2020-05-05 20:40:34	0.43	0.34	0.55	0.43	0.85
5482	2020-05-05 20:40:59	0.43	0.34	0.43	0.55	0.9
5487	2020-05-05 20:41:24	0.55	0.43	0.34	0.43	0.81
5492	2020-05-05 20:41:49	0.55	0.34	0.34	0.55	0.73
5497	2020-05-05 20:42:14	0.34	0.34	0.43	0.34	0.73
5502	2020-05-05 20:42:39	0.55	0.55	0.43	0.43	0.85
5507	2020-05-05 20:43:04	0.43	0.34	0.34	0.34	0.74
5512	2020-05-05 20:43:29	0.43	0.43	0.55	0.43	0.81
5517	2020-05-05 20:43:54	0.43	0.34	0.43	0.43	0.9
5522	2020-05-05 20:44:19	0.43	0.55	0.43	0.34	0.73
5527	2020-05-05 20:44:44	0.43	0.34	0.43	0.34	0.81
5532	2020-05-05 20:45:09	0.34	0.34	0.43	0.43	0.9
5537	2020-05-05 20:45:34	0.55	0.34	0.55	0.34	0.74
5542	2020-05-05 20:45:59	0.43	0.34	0.43	0.43	0.81
5547	2020-05-05 20:46:24	0.34	0.43	0.55	0.55	0.79
5552	2020-05-05 20:46:49	0.43	0.34	0.55	0.55	0.85
5557	2020-05-05 20:47:14	0.55	0.55	0.34	0.43	0.9
5562	2020-05-05 20:47:39	0.43	0.34	0.43	0.34	0.81
5567	2020-05-05 20:48:04	0.34	0.43	0.43	0.55	0.85
5572	2020-05-05 20:48:29	0.55	0.55	0.34	0.43	0.81
5577	2020-05-05 20:48:54	0.34	0.55	0.43	0.55	0.73
5582	2020-05-05 20:49:19	0.43	0.43	0.55	0.43	0.73
5587	2020-05-05 20:49:44	0.55	0.34	0.43	0.34	0.73
5048	2020-05-05 20:04:48	0.55	0.34	0.43	0.43	0.81
5053	2020-05-05 20:05:13	0.34	0.34	0.55	0.43	0.79
5058	2020-05-05 20:05:38	0.34	0.55	0.34	0.43	0.79
5063	2020-05-05 20:06:03	0.55	0.43	0.55	0.55	0.79
5068	2020-05-05 20:06:28	0.43	0.55	0.43	0.43	0.9
5073	2020-05-05 20:06:53	0.43	0.55	0.34	0.34	0.73
5078	2020-05-05 20:07:18	0.43	0.43	0.34	0.43	0.9
5083	2020-05-05 20:07:43	0.34	0.34	0.43	0.34	0.9
5088	2020-05-05 20:08:08	0.55	0.55	0.55	0.43	0.81
5093	2020-05-05 20:08:33	0.55	0.43	0.34	0.43	0.85
5098	2020-05-05 20:08:58	0.55	0.43	0.34	0.43	0.81
5103	2020-05-05 20:09:23	0.55	0.55	0.55	0.55	0.74
5108	2020-05-05 20:09:48	0.43	0.34	0.34	0.34	0.9
5113	2020-05-05 20:10:13	0.55	0.55	0.34	0.43	0.81
5118	2020-05-05 20:10:38	0.55	0.55	0.55	0.55	0.9
5123	2020-05-05 20:11:03	0.55	0.55	0.34	0.55	0.9
5128	2020-05-05 20:11:28	0.55	0.43	0.43	0.43	0.74
5133	2020-05-05 20:11:53	0.34	0.43	0.34	0.43	0.74
5138	2020-05-05 20:12:18	0.43	0.34	0.43	0.34	0.85
5143	2020-05-05 20:12:43	0.43	0.55	0.34	0.43	0.74
5148	2020-05-05 20:13:08	0.55	0.34	0.55	0.43	0.9
5153	2020-05-05 20:13:33	0.55	0.34	0.55	0.43	0.73
5158	2020-05-05 20:13:58	0.55	0.43	0.43	0.34	0.9
5163	2020-05-05 20:14:23	0.43	0.43	0.55	0.34	0.81
5168	2020-05-05 20:14:48	0.55	0.34	0.55	0.55	0.74
5173	2020-05-05 20:15:13	0.34	0.55	0.43	0.34	0.81
5178	2020-05-05 20:15:38	0.43	0.43	0.43	0.55	0.81
5183	2020-05-05 20:16:03	0.55	0.55	0.34	0.55	0.74
5188	2020-05-05 20:16:28	0.55	0.55	0.55	0.43	0.79
5193	2020-05-05 20:16:53	0.43	0.55	0.55	0.34	0.79
5198	2020-05-05 20:17:18	0.43	0.34	0.43	0.34	0.9
5203	2020-05-05 20:17:43	0.34	0.34	0.55	0.43	0.9
5208	2020-05-05 20:18:08	0.55	0.43	0.55	0.43	0.74
5213	2020-05-05 20:18:33	0.43	0.34	0.43	0.43	0.74
5218	2020-05-05 20:18:58	0.43	0.34	0.43	0.55	0.73
5223	2020-05-05 20:19:23	0.43	0.34	0.55	0.55	0.81
5228	2020-05-05 20:19:48	0.55	0.34	0.34	0.34	0.73
5233	2020-05-05 20:20:13	0.34	0.43	0.43	0.55	0.81
5238	2020-05-05 20:20:38	0.43	0.55	0.55	0.43	0.74
5243	2020-05-05 20:21:03	0.43	0.55	0.55	0.34	0.79
5248	2020-05-05 20:21:28	0.34	0.55	0.34	0.34	0.73
5253	2020-05-05 20:21:53	0.43	0.43	0.43	0.34	0.73
5258	2020-05-05 20:22:18	0.55	0.55	0.34	0.55	0.73
5263	2020-05-05 20:22:43	0.55	0.55	0.55	0.34	0.73
5268	2020-05-05 20:23:08	0.34	0.34	0.34	0.55	0.74
5273	2020-05-05 20:23:33	0.55	0.34	0.43	0.55	0.85
5278	2020-05-05 20:23:58	0.34	0.43	0.34	0.55	0.79
5283	2020-05-05 20:24:23	0.43	0.55	0.55	0.55	0.74
5288	2020-05-05 20:24:48	0.55	0.43	0.43	0.43	0.81
5293	2020-05-05 20:25:13	0.34	0.55	0.55	0.34	0.79
5298	2020-05-05 20:25:38	0.55	0.34	0.43	0.43	0.9
5303	2020-05-05 20:26:03	0.34	0.55	0.34	0.55	0.81
5308	2020-05-05 20:26:28	0.55	0.34	0.43	0.43	0.79
5313	2020-05-05 20:26:53	0.55	0.55	0.43	0.43	0.9
5318	2020-05-05 20:27:18	0.34	0.55	0.55	0.55	0.85
5323	2020-05-05 20:27:43	0.43	0.55	0.55	0.43	0.85
5328	2020-05-05 20:28:08	0.43	0.34	0.43	0.34	0.73
5333	2020-05-05 20:28:33	0.55	0.43	0.43	0.43	0.79
5338	2020-05-05 20:28:58	0.43	0.43	0.34	0.34	0.74
5343	2020-05-05 20:29:23	0.34	0.34	0.34	0.34	0.79
5348	2020-05-05 20:29:48	0.34	0.43	0.55	0.34	0.79
5353	2020-05-05 20:30:13	0.43	0.34	0.34	0.55	0.81
5358	2020-05-05 20:30:38	0.55	0.55	0.55	0.43	0.9
5363	2020-05-05 20:31:03	0.55	0.34	0.34	0.55	0.9
5368	2020-05-05 20:31:28	0.55	0.55	0.55	0.43	0.73
5373	2020-05-05 20:31:54	0.55	0.34	0.55	0.55	0.74
5378	2020-05-05 20:32:19	0.55	0.34	0.55	0.43	0.81
5383	2020-05-05 20:32:44	0.34	0.55	0.34	0.34	0.73
5388	2020-05-05 20:33:09	0.55	0.34	0.34	0.43	0.79
5393	2020-05-05 20:33:34	0.43	0.34	0.55	0.43	0.81
5398	2020-05-05 20:33:59	0.43	0.34	0.55	0.55	0.73
5403	2020-05-05 20:34:24	0.34	0.34	0.43	0.34	0.79
5408	2020-05-05 20:34:49	0.55	0.55	0.34	0.55	0.81
5413	2020-05-05 20:35:14	0.43	0.43	0.34	0.34	0.81
5418	2020-05-05 20:35:39	0.43	0.34	0.43	0.55	0.79
5423	2020-05-05 20:36:04	0.43	0.43	0.55	0.43	0.9
5428	2020-05-05 20:36:29	0.34	0.55	0.55	0.34	0.79
5433	2020-05-05 20:36:54	0.34	0.55	0.43	0.55	0.73
5438	2020-05-05 20:37:19	0.43	0.55	0.43	0.34	0.73
5443	2020-05-05 20:37:44	0.43	0.55	0.43	0.55	0.74
5448	2020-05-05 20:38:09	0.43	0.34	0.55	0.43	0.9
5453	2020-05-05 20:38:34	0.34	0.55	0.55	0.55	0.74
5458	2020-05-05 20:38:59	0.55	0.43	0.55	0.43	0.81
5463	2020-05-05 20:39:24	0.43	0.34	0.55	0.55	0.79
5468	2020-05-05 20:39:49	0.34	0.43	0.43	0.34	0.81
5473	2020-05-05 20:40:14	0.55	0.43	0.34	0.43	0.85
5478	2020-05-05 20:40:39	0.34	0.43	0.55	0.34	0.9
5483	2020-05-05 20:41:04	0.43	0.34	0.43	0.43	0.85
5488	2020-05-05 20:41:29	0.34	0.55	0.43	0.55	0.81
5493	2020-05-05 20:41:54	0.55	0.55	0.55	0.43	0.85
5498	2020-05-05 20:42:19	0.43	0.43	0.34	0.55	0.9
5503	2020-05-05 20:42:44	0.43	0.43	0.34	0.34	0.74
5508	2020-05-05 20:43:09	0.43	0.34	0.34	0.34	0.74
5513	2020-05-05 20:43:34	0.55	0.34	0.43	0.55	0.9
5518	2020-05-05 20:43:59	0.34	0.34	0.34	0.55	0.79
5523	2020-05-05 20:44:24	0.43	0.43	0.55	0.55	0.74
5528	2020-05-05 20:44:49	0.55	0.43	0.34	0.43	0.9
5533	2020-05-05 20:45:14	0.55	0.55	0.34	0.34	0.73
5538	2020-05-05 20:45:39	0.55	0.43	0.43	0.55	0.81
5543	2020-05-05 20:46:04	0.55	0.55	0.43	0.55	0.74
5548	2020-05-05 20:46:29	0.34	0.34	0.34	0.55	0.73
5553	2020-05-05 20:46:54	0.43	0.43	0.55	0.34	0.79
5558	2020-05-05 20:47:19	0.34	0.43	0.55	0.34	0.73
5563	2020-05-05 20:47:44	0.34	0.34	0.34	0.43	0.85
5568	2020-05-05 20:48:09	0.43	0.55	0.34	0.34	0.74
5573	2020-05-05 20:48:34	0.43	0.55	0.34	0.55	0.85
5578	2020-05-05 20:48:59	0.55	0.43	0.34	0.34	0.79
5583	2020-05-05 20:49:24	0.43	0.43	0.55	0.55	0.79
5588	2020-05-05 20:49:49	0.55	0.34	0.55	0.55	0.74
5586	2020-05-05 20:49:39	0.43	0.55	0.34	0.34	0.74
5591	2020-05-05 20:50:04	0.34	0.43	0.55	0.43	0.79
5589	2020-05-05 20:49:54	0.43	0.55	0.55	0.43	0.79
5594	2020-05-05 20:50:19	0.43	0.43	0.43	0.34	0.85
5590	2020-05-05 20:49:59	0.43	0.34	0.55	0.55	0.85
5595	2020-05-05 20:50:24	0.55	0.43	0.34	0.43	0.9
5593	2020-05-05 20:50:14	0.34	0.43	0.55	0.34	0.85
5596	2020-05-05 20:50:29	0.34	0.34	0.34	0.55	0.9
5597	2020-05-05 20:50:34	0.55	0.34	0.55	0.43	0.73
5598	2020-05-05 20:50:39	0.43	0.55	0.34	0.55	0.79
5599	2020-05-05 20:50:44	0.55	0.55	0.55	0.55	0.81
5600	2020-05-05 20:50:49	0.43	0.55	0.55	0.55	0.81
5601	2020-05-05 20:50:54	0.34	0.55	0.43	0.43	0.79
5602	2020-05-05 20:50:59	0.55	0.55	0.55	0.34	0.85
5603	2020-05-05 20:51:04	0.34	0.34	0.34	0.43	0.74
5604	2020-05-05 20:51:09	0.34	0.43	0.55	0.43	0.74
5605	2020-05-05 20:51:14	0.55	0.43	0.55	0.34	0.73
5606	2020-05-05 20:51:19	0.34	0.43	0.43	0.34	0.81
5607	2020-05-05 20:51:24	0.34	0.55	0.43	0.55	0.79
5608	2020-05-05 20:51:29	0.55	0.34	0.55	0.34	0.79
5609	2020-05-05 20:51:34	0.34	0.43	0.34	0.34	0.79
5610	2020-05-05 20:51:39	0.43	0.55	0.34	0.34	0.9
5611	2020-05-05 20:51:44	0.43	0.34	0.55	0.34	0.79
5612	2020-05-05 20:51:49	0.55	0.34	0.34	0.34	0.81
5613	2020-05-05 20:51:54	0.55	0.55	0.34	0.34	0.81
5614	2020-05-05 20:51:59	0.55	0.55	0.34	0.55	0.85
5615	2020-05-05 20:52:04	0.34	0.55	0.55	0.43	0.73
5616	2020-05-05 20:52:09	0.43	0.34	0.55	0.43	0.74
5617	2020-05-05 20:52:14	0.43	0.55	0.43	0.55	0.74
5618	2020-05-05 20:52:19	0.34	0.55	0.43	0.43	0.81
5619	2020-05-05 20:52:24	0.34	0.55	0.55	0.43	0.81
5620	2020-05-05 20:52:29	0.43	0.55	0.43	0.34	0.73
5621	2020-05-05 20:52:34	0.43	0.55	0.55	0.34	0.9
5622	2020-05-05 20:52:39	0.43	0.43	0.43	0.34	0.74
5623	2020-05-05 20:52:44	0.55	0.43	0.55	0.34	0.81
5624	2020-05-05 20:52:49	0.34	0.34	0.34	0.43	0.79
5625	2020-05-05 20:52:54	0.55	0.43	0.43	0.43	0.79
5626	2020-05-05 20:52:59	0.43	0.55	0.34	0.55	0.73
5627	2020-05-05 20:53:04	0.34	0.34	0.34	0.34	0.79
5628	2020-05-05 20:53:09	0.43	0.43	0.55	0.55	0.74
5629	2020-05-05 20:53:14	0.43	0.43	0.55	0.43	0.74
5630	2020-05-05 20:53:19	0.34	0.43	0.34	0.34	0.73
5631	2020-05-05 20:53:24	0.55	0.43	0.43	0.43	0.73
5632	2020-05-05 20:53:29	0.55	0.43	0.43	0.43	0.81
5633	2020-05-05 20:53:34	0.34	0.34	0.43	0.34	0.73
5634	2020-05-05 20:53:39	0.34	0.43	0.43	0.43	0.81
5635	2020-05-05 20:53:44	0.55	0.43	0.34	0.55	0.85
5636	2020-05-05 20:53:49	0.55	0.34	0.43	0.34	0.81
5637	2020-05-05 20:53:54	0.34	0.43	0.43	0.55	0.79
5638	2020-05-05 20:53:59	0.43	0.43	0.55	0.55	0.73
5639	2020-05-05 20:54:04	0.55	0.34	0.34	0.34	0.81
5640	2020-05-05 20:54:09	0.55	0.34	0.43	0.43	0.74
5641	2020-05-05 20:54:14	0.34	0.43	0.34	0.55	0.81
5642	2020-05-05 20:54:19	0.34	0.55	0.43	0.34	0.81
5643	2020-05-05 20:54:24	0.43	0.34	0.34	0.34	0.79
5644	2020-05-05 20:54:29	0.43	0.34	0.43	0.43	0.85
5645	2020-05-05 20:54:34	0.55	0.43	0.43	0.34	0.74
5646	2020-05-05 20:54:39	0.55	0.34	0.55	0.43	0.74
5647	2020-05-05 20:54:44	0.34	0.34	0.34	0.55	0.74
5648	2020-05-05 20:54:49	0.55	0.55	0.43	0.55	0.9
5649	2020-05-05 20:54:54	0.43	0.55	0.34	0.43	0.79
5650	2020-05-05 20:54:59	0.34	0.34	0.43	0.43	0.74
5651	2020-05-05 20:55:04	0.43	0.55	0.34	0.55	0.74
5652	2020-05-05 20:55:09	0.34	0.34	0.34	0.34	0.9
5653	2020-05-05 20:55:14	0.34	0.43	0.43	0.55	0.81
5654	2020-05-05 20:55:19	0.34	0.43	0.55	0.55	0.81
5655	2020-05-05 20:55:24	0.43	0.34	0.55	0.55	0.79
5656	2020-05-05 20:55:29	0.34	0.43	0.34	0.55	0.73
5657	2020-05-05 20:55:34	0.55	0.43	0.34	0.34	0.9
5658	2020-05-05 20:55:39	0.55	0.55	0.43	0.34	0.85
5659	2020-05-05 20:55:44	0.34	0.43	0.34	0.43	0.81
5660	2020-05-05 20:55:49	0.55	0.43	0.43	0.55	0.81
5661	2020-05-05 20:55:54	0.34	0.34	0.43	0.34	0.85
5662	2020-05-05 20:55:59	0.43	0.43	0.43	0.55	0.79
5663	2020-05-05 20:56:04	0.43	0.43	0.43	0.55	0.85
5664	2020-05-05 20:56:09	0.43	0.55	0.43	0.34	0.85
5665	2020-05-05 20:56:14	0.43	0.34	0.55	0.43	0.9
5666	2020-05-05 20:56:19	0.43	0.34	0.34	0.43	0.73
5667	2020-05-05 20:56:24	0.43	0.34	0.34	0.34	0.74
5668	2020-05-05 20:56:29	0.55	0.55	0.34	0.43	0.81
5669	2020-05-05 20:56:34	0.43	0.43	0.55	0.34	0.79
5670	2020-05-05 20:56:39	0.43	0.55	0.34	0.55	0.9
5671	2020-05-05 20:56:44	0.43	0.43	0.34	0.55	0.79
5672	2020-05-05 20:56:49	0.43	0.55	0.34	0.55	0.79
5673	2020-05-05 20:56:54	0.34	0.55	0.34	0.43	0.73
5674	2020-05-05 20:56:59	0.34	0.43	0.43	0.34	0.9
5675	2020-05-05 20:57:04	0.34	0.55	0.34	0.34	0.81
5676	2020-05-05 20:57:09	0.43	0.43	0.34	0.55	0.74
5677	2020-05-05 20:57:14	0.34	0.55	0.34	0.43	0.73
5678	2020-05-05 20:57:19	0.43	0.55	0.43	0.34	0.81
5679	2020-05-05 20:57:24	0.43	0.43	0.43	0.55	0.79
5680	2020-05-05 20:57:29	0.43	0.34	0.55	0.34	0.79
5681	2020-05-05 20:57:34	0.43	0.43	0.55	0.34	0.9
5682	2020-05-05 20:57:39	0.43	0.55	0.55	0.55	0.9
5683	2020-05-05 20:57:44	0.34	0.43	0.43	0.34	0.73
5684	2020-05-05 20:57:49	0.43	0.55	0.43	0.34	0.81
5685	2020-05-05 20:57:54	0.34	0.34	0.55	0.55	0.9
5686	2020-05-05 20:57:59	0.55	0.43	0.55	0.43	0.9
5687	2020-05-05 20:58:04	0.55	0.43	0.43	0.34	0.85
5688	2020-05-05 20:58:09	0.43	0.55	0.34	0.55	0.85
5689	2020-05-05 20:58:14	0.43	0.43	0.43	0.55	0.81
5690	2020-05-05 20:58:19	0.43	0.34	0.34	0.34	0.81
5691	2020-05-05 20:58:24	0.34	0.34	0.55	0.43	0.73
5692	2020-05-05 20:58:29	0.34	0.34	0.43	0.55	0.81
5693	2020-05-05 20:58:34	0.34	0.34	0.55	0.43	0.81
5694	2020-05-05 20:58:39	0.34	0.43	0.43	0.43	0.74
5695	2020-05-05 20:58:44	0.55	0.55	0.34	0.43	0.81
5696	2020-05-05 20:58:49	0.55	0.34	0.34	0.43	0.73
5697	2020-05-05 20:58:54	0.34	0.43	0.34	0.43	0.81
5698	2020-05-05 20:58:59	0.43	0.55	0.34	0.34	0.74
5699	2020-05-05 20:59:04	0.34	0.43	0.55	0.34	0.9
5700	2020-05-05 20:59:09	0.43	0.34	0.34	0.55	0.73
5701	2020-05-05 20:59:14	0.43	0.34	0.43	0.55	0.74
5702	2020-05-05 20:59:19	0.55	0.34	0.34	0.34	0.85
5705	2020-05-05 20:59:34	0.34	0.34	0.34	0.34	0.9
5703	2020-05-05 20:59:24	0.34	0.34	0.55	0.43	0.74
5708	2020-05-05 20:59:49	0.43	0.55	0.34	0.34	0.9
5713	2020-05-05 21:00:14	0.43	0.34	0.55	0.55	0.85
5718	2020-05-05 21:00:39	0.34	0.34	0.43	0.43	0.79
5723	2020-05-05 21:01:05	0.55	0.34	0.34	0.55	0.79
5728	2020-05-05 21:01:30	0.34	0.55	0.55	0.43	0.74
5733	2020-05-05 21:01:55	0.34	0.55	0.43	0.55	0.81
5738	2020-05-05 21:02:20	0.34	0.34	0.43	0.34	0.9
5743	2020-05-05 21:02:45	0.55	0.43	0.43	0.34	0.74
5748	2020-05-05 21:03:10	0.43	0.55	0.34	0.43	0.79
5753	2020-05-05 21:03:35	0.34	0.34	0.43	0.55	0.85
5758	2020-05-05 21:04:00	0.55	0.34	0.34	0.34	0.85
5763	2020-05-05 21:04:25	0.55	0.34	0.55	0.55	0.74
5768	2020-05-05 21:04:50	0.34	0.43	0.43	0.55	0.73
5773	2020-05-05 21:05:15	0.34	0.34	0.43	0.34	0.73
5778	2020-05-05 21:05:40	0.34	0.43	0.43	0.43	0.9
5783	2020-05-05 21:06:05	0.55	0.55	0.55	0.34	0.73
5788	2020-05-05 21:06:30	0.43	0.34	0.55	0.43	0.85
5793	2020-05-05 21:06:55	0.43	0.43	0.34	0.55	0.79
5798	2020-05-05 21:07:20	0.55	0.43	0.55	0.34	0.73
5803	2020-05-05 21:07:45	0.43	0.43	0.43	0.43	0.81
5808	2020-05-05 21:08:10	0.34	0.43	0.43	0.43	0.73
5813	2020-05-05 21:08:35	0.43	0.43	0.43	0.34	0.81
5818	2020-05-05 21:09:00	0.34	0.55	0.55	0.34	0.73
5823	2020-05-05 21:09:25	0.43	0.43	0.34	0.55	0.73
5828	2020-05-05 21:09:50	0.43	0.55	0.55	0.43	0.81
5833	2020-05-05 21:10:15	0.43	0.43	0.43	0.55	0.79
5838	2020-05-05 21:10:40	0.55	0.55	0.43	0.55	0.73
5843	2020-05-05 21:11:05	0.55	0.43	0.43	0.55	0.81
5848	2020-05-05 21:11:30	0.43	0.43	0.55	0.55	0.81
5853	2020-05-05 21:11:55	0.55	0.34	0.34	0.43	0.79
5858	2020-05-05 21:12:20	0.43	0.34	0.34	0.55	0.9
5863	2020-05-05 21:12:45	0.43	0.34	0.43	0.55	0.74
5868	2020-05-05 21:13:10	0.43	0.55	0.55	0.43	0.81
5873	2020-05-05 21:13:35	0.55	0.34	0.34	0.55	0.85
5878	2020-05-05 21:14:00	0.55	0.55	0.34	0.43	0.74
5883	2020-05-05 21:14:25	0.43	0.55	0.55	0.43	0.9
5888	2020-05-05 21:14:50	0.55	0.34	0.55	0.34	0.9
5893	2020-05-05 21:15:15	0.55	0.55	0.43	0.55	0.81
5898	2020-05-05 21:15:40	0.55	0.43	0.43	0.34	0.9
5903	2020-05-05 21:16:05	0.34	0.55	0.34	0.43	0.74
5908	2020-05-05 21:16:30	0.43	0.55	0.34	0.43	0.73
5913	2020-05-05 21:16:55	0.34	0.43	0.43	0.34	0.74
5918	2020-05-05 21:17:20	0.34	0.43	0.55	0.43	0.79
5923	2020-05-05 21:17:45	0.34	0.43	0.34	0.34	0.74
5928	2020-05-05 21:18:10	0.34	0.43	0.43	0.34	0.85
5933	2020-05-05 21:18:35	0.43	0.43	0.43	0.55	0.9
5938	2020-05-05 21:19:00	0.55	0.43	0.55	0.34	0.85
5943	2020-05-05 21:19:25	0.43	0.55	0.43	0.43	0.73
5948	2020-05-05 21:19:50	0.55	0.34	0.43	0.43	0.79
5953	2020-05-05 21:20:15	0.55	0.43	0.34	0.55	0.79
5958	2020-05-05 21:20:40	0.55	0.34	0.43	0.34	0.74
5963	2020-05-05 21:21:06	0.34	0.55	0.55	0.43	0.9
5968	2020-05-05 21:21:31	0.55	0.34	0.34	0.43	0.73
5973	2020-05-05 21:21:56	0.43	0.43	0.43	0.55	0.74
5978	2020-05-05 21:22:21	0.55	0.55	0.34	0.55	0.9
5983	2020-05-05 21:22:46	0.34	0.34	0.43	0.55	0.73
5988	2020-05-05 21:23:11	0.34	0.55	0.43	0.43	0.81
5993	2020-05-05 21:23:36	0.55	0.34	0.34	0.34	0.81
5998	2020-05-05 21:24:01	0.55	0.43	0.34	0.43	0.85
6003	2020-05-05 21:24:26	0.43	0.43	0.55	0.34	0.81
6008	2020-05-05 21:24:51	0.55	0.43	0.43	0.34	0.79
6013	2020-05-05 21:25:16	0.43	0.43	0.34	0.43	0.85
6018	2020-05-05 21:25:41	0.34	0.43	0.55	0.34	0.9
6023	2020-05-05 21:26:06	0.43	0.34	0.34	0.43	0.73
6028	2020-05-05 21:26:31	0.43	0.34	0.55	0.43	0.74
6033	2020-05-05 21:26:56	0.55	0.43	0.43	0.34	0.79
6038	2020-05-05 21:27:21	0.55	0.43	0.43	0.43	0.74
6043	2020-05-05 21:27:46	0.43	0.55	0.43	0.55	0.9
6048	2020-05-05 21:28:11	0.34	0.43	0.43	0.34	0.81
6053	2020-05-05 21:28:36	0.55	0.55	0.43	0.43	0.85
6058	2020-05-05 21:29:01	0.43	0.55	0.55	0.34	0.79
6063	2020-05-05 21:29:26	0.43	0.55	0.34	0.55	0.81
6068	2020-05-05 21:29:51	0.55	0.34	0.43	0.34	0.79
6073	2020-05-05 21:30:16	0.34	0.34	0.34	0.43	0.81
6078	2020-05-05 21:30:41	0.55	0.43	0.43	0.43	0.74
6083	2020-05-05 21:31:06	0.55	0.43	0.55	0.55	0.74
6088	2020-05-05 21:31:31	0.55	0.55	0.55	0.55	0.81
6093	2020-05-05 21:31:56	0.55	0.34	0.43	0.34	0.85
6098	2020-05-05 21:32:21	0.43	0.55	0.55	0.43	0.73
6103	2020-05-05 21:32:46	0.34	0.43	0.55	0.43	0.79
6108	2020-05-05 21:33:11	0.55	0.34	0.55	0.34	0.9
6113	2020-05-05 21:33:36	0.55	0.55	0.43	0.55	0.85
6118	2020-05-05 21:34:01	0.34	0.34	0.43	0.55	0.81
6123	2020-05-05 21:34:26	0.34	0.43	0.43	0.43	0.74
6128	2020-05-05 21:34:51	0.34	0.43	0.43	0.34	0.85
6133	2020-05-05 21:35:16	0.43	0.43	0.55	0.55	0.85
6138	2020-05-05 21:35:41	0.43	0.43	0.34	0.34	0.79
6143	2020-05-05 21:36:06	0.34	0.34	0.43	0.43	0.79
6148	2020-05-05 21:36:31	0.55	0.34	0.34	0.43	0.85
6153	2020-05-05 21:36:56	0.34	0.55	0.43	0.55	0.85
6158	2020-05-05 21:37:21	0.43	0.55	0.34	0.34	0.9
6163	2020-05-05 21:37:46	0.55	0.34	0.43	0.34	0.81
6168	2020-05-05 21:38:11	0.55	0.55	0.34	0.55	0.73
6173	2020-05-05 21:38:36	0.34	0.55	0.43	0.34	0.85
6178	2020-05-05 21:39:01	0.55	0.55	0.55	0.43	0.79
6183	2020-05-05 21:39:26	0.55	0.34	0.55	0.34	0.9
6188	2020-05-05 21:39:51	0.55	0.34	0.55	0.55	0.9
6193	2020-05-05 21:40:16	0.55	0.43	0.43	0.43	0.74
6198	2020-05-05 21:40:41	0.43	0.55	0.34	0.34	0.79
6203	2020-05-05 21:41:06	0.34	0.55	0.43	0.34	0.73
6208	2020-05-05 21:41:31	0.43	0.34	0.55	0.55	0.79
5704	2020-05-05 20:59:29	0.43	0.43	0.55	0.34	0.79
5709	2020-05-05 20:59:54	0.55	0.55	0.55	0.43	0.73
5714	2020-05-05 21:00:19	0.55	0.34	0.34	0.43	0.73
5719	2020-05-05 21:00:44	0.43	0.55	0.55	0.43	0.79
5724	2020-05-05 21:01:10	0.43	0.43	0.43	0.55	0.81
5729	2020-05-05 21:01:35	0.34	0.55	0.43	0.34	0.85
5734	2020-05-05 21:02:00	0.34	0.55	0.43	0.43	0.81
5739	2020-05-05 21:02:25	0.43	0.34	0.34	0.43	0.73
5744	2020-05-05 21:02:50	0.34	0.43	0.43	0.34	0.79
5749	2020-05-05 21:03:15	0.34	0.43	0.34	0.43	0.73
5754	2020-05-05 21:03:40	0.55	0.43	0.43	0.43	0.79
5759	2020-05-05 21:04:05	0.43	0.34	0.55	0.34	0.79
5764	2020-05-05 21:04:30	0.34	0.55	0.43	0.43	0.74
5769	2020-05-05 21:04:55	0.55	0.43	0.55	0.43	0.85
5774	2020-05-05 21:05:20	0.55	0.43	0.55	0.34	0.79
5779	2020-05-05 21:05:45	0.43	0.55	0.34	0.43	0.81
5784	2020-05-05 21:06:10	0.55	0.43	0.34	0.43	0.85
5789	2020-05-05 21:06:35	0.34	0.34	0.55	0.55	0.74
5794	2020-05-05 21:07:00	0.34	0.43	0.43	0.34	0.79
5799	2020-05-05 21:07:25	0.55	0.55	0.55	0.34	0.79
5804	2020-05-05 21:07:50	0.34	0.43	0.55	0.55	0.74
5809	2020-05-05 21:08:15	0.55	0.34	0.43	0.43	0.79
5814	2020-05-05 21:08:40	0.43	0.55	0.34	0.55	0.81
5819	2020-05-05 21:09:05	0.55	0.34	0.43	0.55	0.79
5824	2020-05-05 21:09:30	0.34	0.34	0.43	0.43	0.85
5829	2020-05-05 21:09:55	0.34	0.55	0.34	0.43	0.9
5834	2020-05-05 21:10:20	0.43	0.55	0.34	0.55	0.74
5839	2020-05-05 21:10:45	0.34	0.34	0.43	0.55	0.74
5844	2020-05-05 21:11:10	0.43	0.34	0.43	0.43	0.74
5849	2020-05-05 21:11:35	0.34	0.55	0.55	0.34	0.81
5854	2020-05-05 21:12:00	0.55	0.43	0.34	0.55	0.74
5859	2020-05-05 21:12:25	0.43	0.55	0.43	0.43	0.9
5864	2020-05-05 21:12:50	0.34	0.55	0.34	0.55	0.9
5869	2020-05-05 21:13:15	0.43	0.34	0.43	0.55	0.81
5874	2020-05-05 21:13:40	0.55	0.34	0.43	0.43	0.74
5879	2020-05-05 21:14:05	0.55	0.43	0.34	0.55	0.9
5884	2020-05-05 21:14:30	0.55	0.43	0.34	0.43	0.74
5889	2020-05-05 21:14:55	0.55	0.34	0.34	0.34	0.85
5894	2020-05-05 21:15:20	0.55	0.43	0.55	0.43	0.74
5899	2020-05-05 21:15:45	0.43	0.34	0.43	0.34	0.85
5904	2020-05-05 21:16:10	0.43	0.55	0.55	0.43	0.74
5909	2020-05-05 21:16:35	0.55	0.55	0.43	0.34	0.85
5914	2020-05-05 21:17:00	0.43	0.34	0.55	0.43	0.85
5919	2020-05-05 21:17:25	0.43	0.34	0.34	0.55	0.74
5924	2020-05-05 21:17:50	0.34	0.43	0.55	0.55	0.74
5929	2020-05-05 21:18:15	0.34	0.43	0.34	0.43	0.81
5934	2020-05-05 21:18:40	0.43	0.34	0.43	0.55	0.73
5939	2020-05-05 21:19:05	0.34	0.55	0.34	0.43	0.81
5944	2020-05-05 21:19:30	0.43	0.34	0.43	0.43	0.81
5949	2020-05-05 21:19:55	0.34	0.55	0.43	0.43	0.74
5954	2020-05-05 21:20:20	0.34	0.43	0.43	0.43	0.73
5959	2020-05-05 21:20:45	0.43	0.34	0.34	0.55	0.74
5964	2020-05-05 21:21:11	0.34	0.34	0.55	0.34	0.81
5969	2020-05-05 21:21:36	0.34	0.55	0.43	0.55	0.85
5974	2020-05-05 21:22:01	0.43	0.43	0.55	0.55	0.81
5979	2020-05-05 21:22:26	0.43	0.55	0.43	0.43	0.79
5984	2020-05-05 21:22:51	0.34	0.43	0.55	0.55	0.73
5989	2020-05-05 21:23:16	0.34	0.34	0.43	0.55	0.74
5994	2020-05-05 21:23:41	0.43	0.34	0.34	0.43	0.81
5999	2020-05-05 21:24:06	0.55	0.43	0.43	0.34	0.74
6004	2020-05-05 21:24:31	0.34	0.34	0.34	0.43	0.9
6009	2020-05-05 21:24:56	0.43	0.34	0.43	0.43	0.81
6014	2020-05-05 21:25:21	0.55	0.34	0.34	0.55	0.74
6019	2020-05-05 21:25:46	0.55	0.43	0.34	0.55	0.74
6024	2020-05-05 21:26:11	0.34	0.55	0.34	0.34	0.85
6029	2020-05-05 21:26:36	0.55	0.43	0.34	0.43	0.73
6034	2020-05-05 21:27:01	0.43	0.34	0.43	0.43	0.9
6039	2020-05-05 21:27:26	0.55	0.34	0.55	0.34	0.74
6044	2020-05-05 21:27:51	0.34	0.43	0.55	0.43	0.9
6049	2020-05-05 21:28:16	0.43	0.55	0.43	0.43	0.85
6054	2020-05-05 21:28:41	0.55	0.43	0.43	0.34	0.79
6059	2020-05-05 21:29:06	0.43	0.43	0.43	0.55	0.81
6064	2020-05-05 21:29:31	0.55	0.43	0.55	0.34	0.74
6069	2020-05-05 21:29:56	0.43	0.55	0.43	0.55	0.9
6074	2020-05-05 21:30:21	0.55	0.43	0.55	0.43	0.9
6079	2020-05-05 21:30:46	0.34	0.34	0.55	0.34	0.79
6084	2020-05-05 21:31:11	0.34	0.55	0.43	0.55	0.73
6089	2020-05-05 21:31:36	0.34	0.34	0.55	0.43	0.85
6094	2020-05-05 21:32:01	0.34	0.43	0.43	0.34	0.74
6099	2020-05-05 21:32:26	0.43	0.43	0.34	0.55	0.85
6104	2020-05-05 21:32:51	0.34	0.34	0.43	0.43	0.79
6109	2020-05-05 21:33:16	0.43	0.55	0.55	0.34	0.74
6114	2020-05-05 21:33:41	0.55	0.55	0.43	0.34	0.79
6119	2020-05-05 21:34:06	0.55	0.43	0.43	0.34	0.85
6124	2020-05-05 21:34:31	0.43	0.34	0.43	0.34	0.79
6129	2020-05-05 21:34:56	0.43	0.55	0.55	0.43	0.9
6134	2020-05-05 21:35:21	0.55	0.34	0.34	0.55	0.81
6139	2020-05-05 21:35:46	0.43	0.55	0.55	0.43	0.74
6144	2020-05-05 21:36:11	0.55	0.55	0.34	0.34	0.73
6149	2020-05-05 21:36:36	0.43	0.34	0.43	0.55	0.81
6154	2020-05-05 21:37:01	0.55	0.34	0.55	0.55	0.81
6159	2020-05-05 21:37:26	0.43	0.43	0.55	0.55	0.85
6164	2020-05-05 21:37:51	0.55	0.55	0.55	0.43	0.9
6169	2020-05-05 21:38:16	0.43	0.43	0.55	0.34	0.81
6174	2020-05-05 21:38:41	0.34	0.55	0.34	0.55	0.9
6179	2020-05-05 21:39:06	0.43	0.43	0.43	0.34	0.79
6184	2020-05-05 21:39:31	0.43	0.43	0.34	0.55	0.9
6189	2020-05-05 21:39:56	0.55	0.34	0.34	0.55	0.81
6194	2020-05-05 21:40:21	0.55	0.43	0.43	0.43	0.74
6199	2020-05-05 21:40:46	0.34	0.55	0.43	0.55	0.81
6204	2020-05-05 21:41:11	0.55	0.43	0.43	0.34	0.81
5706	2020-05-05 20:59:39	0.43	0.43	0.34	0.43	0.73
5711	2020-05-05 21:00:04	0.55	0.55	0.43	0.43	0.81
5716	2020-05-05 21:00:29	0.34	0.55	0.43	0.43	0.74
5721	2020-05-05 21:00:55	0.55	0.43	0.34	0.55	0.81
5726	2020-05-05 21:01:20	0.34	0.34	0.34	0.55	0.73
5731	2020-05-05 21:01:45	0.55	0.43	0.55	0.34	0.81
5736	2020-05-05 21:02:10	0.43	0.55	0.43	0.55	0.85
5741	2020-05-05 21:02:35	0.43	0.55	0.55	0.43	0.74
5746	2020-05-05 21:03:00	0.34	0.43	0.55	0.55	0.73
5751	2020-05-05 21:03:25	0.34	0.55	0.55	0.34	0.73
5756	2020-05-05 21:03:50	0.34	0.34	0.43	0.55	0.85
5761	2020-05-05 21:04:15	0.55	0.34	0.34	0.55	0.85
5766	2020-05-05 21:04:40	0.43	0.34	0.34	0.55	0.79
5771	2020-05-05 21:05:05	0.55	0.43	0.34	0.43	0.74
5776	2020-05-05 21:05:30	0.34	0.43	0.34	0.34	0.74
5781	2020-05-05 21:05:55	0.43	0.55	0.34	0.55	0.85
5786	2020-05-05 21:06:20	0.34	0.34	0.55	0.34	0.79
5791	2020-05-05 21:06:45	0.43	0.55	0.43	0.43	0.85
5796	2020-05-05 21:07:10	0.43	0.43	0.43	0.34	0.81
5801	2020-05-05 21:07:35	0.34	0.43	0.34	0.43	0.79
5806	2020-05-05 21:08:00	0.43	0.43	0.55	0.34	0.85
5811	2020-05-05 21:08:25	0.43	0.43	0.55	0.43	0.81
5816	2020-05-05 21:08:50	0.55	0.43	0.43	0.55	0.81
5821	2020-05-05 21:09:15	0.55	0.34	0.43	0.55	0.85
5826	2020-05-05 21:09:40	0.55	0.55	0.55	0.34	0.74
5831	2020-05-05 21:10:05	0.34	0.55	0.43	0.55	0.85
5836	2020-05-05 21:10:30	0.43	0.55	0.55	0.34	0.74
5841	2020-05-05 21:10:55	0.34	0.55	0.43	0.43	0.85
5846	2020-05-05 21:11:20	0.34	0.43	0.43	0.55	0.81
5851	2020-05-05 21:11:45	0.43	0.43	0.43	0.34	0.9
5856	2020-05-05 21:12:10	0.34	0.55	0.55	0.55	0.79
5861	2020-05-05 21:12:35	0.34	0.55	0.43	0.43	0.85
5866	2020-05-05 21:13:00	0.55	0.55	0.34	0.34	0.85
5871	2020-05-05 21:13:25	0.55	0.55	0.55	0.34	0.85
5876	2020-05-05 21:13:50	0.43	0.55	0.55	0.34	0.9
5881	2020-05-05 21:14:15	0.34	0.55	0.34	0.43	0.9
5886	2020-05-05 21:14:40	0.34	0.43	0.34	0.34	0.85
5891	2020-05-05 21:15:05	0.34	0.55	0.34	0.34	0.85
5896	2020-05-05 21:15:30	0.34	0.43	0.43	0.34	0.9
5901	2020-05-05 21:15:55	0.55	0.34	0.43	0.55	0.85
5906	2020-05-05 21:16:20	0.34	0.34	0.55	0.43	0.9
5911	2020-05-05 21:16:45	0.43	0.43	0.34	0.43	0.85
5916	2020-05-05 21:17:10	0.34	0.43	0.55	0.34	0.85
5921	2020-05-05 21:17:35	0.43	0.34	0.34	0.34	0.73
5926	2020-05-05 21:18:00	0.43	0.55	0.55	0.34	0.85
5931	2020-05-05 21:18:25	0.43	0.55	0.55	0.55	0.81
5936	2020-05-05 21:18:50	0.43	0.34	0.43	0.43	0.9
5941	2020-05-05 21:19:15	0.43	0.43	0.43	0.43	0.73
5946	2020-05-05 21:19:40	0.55	0.34	0.43	0.55	0.85
5951	2020-05-05 21:20:05	0.34	0.34	0.43	0.55	0.85
5956	2020-05-05 21:20:30	0.55	0.55	0.34	0.43	0.81
5961	2020-05-05 21:20:56	0.34	0.34	0.43	0.55	0.81
5966	2020-05-05 21:21:21	0.55	0.43	0.43	0.43	0.81
5971	2020-05-05 21:21:46	0.34	0.43	0.34	0.43	0.85
5976	2020-05-05 21:22:11	0.43	0.43	0.34	0.43	0.74
5981	2020-05-05 21:22:36	0.55	0.55	0.34	0.55	0.73
5986	2020-05-05 21:23:01	0.43	0.43	0.34	0.55	0.81
5991	2020-05-05 21:23:26	0.34	0.43	0.55	0.43	0.73
5996	2020-05-05 21:23:51	0.34	0.55	0.43	0.55	0.85
6001	2020-05-05 21:24:16	0.55	0.55	0.43	0.34	0.79
6006	2020-05-05 21:24:41	0.55	0.43	0.55	0.34	0.9
6011	2020-05-05 21:25:06	0.43	0.43	0.43	0.55	0.9
6016	2020-05-05 21:25:31	0.34	0.43	0.43	0.34	0.73
6021	2020-05-05 21:25:56	0.34	0.34	0.55	0.34	0.9
6026	2020-05-05 21:26:21	0.55	0.34	0.34	0.43	0.85
6031	2020-05-05 21:26:46	0.34	0.55	0.55	0.55	0.79
6036	2020-05-05 21:27:11	0.34	0.43	0.34	0.43	0.81
6041	2020-05-05 21:27:36	0.34	0.43	0.55	0.34	0.81
6046	2020-05-05 21:28:01	0.55	0.43	0.55	0.55	0.74
6051	2020-05-05 21:28:26	0.43	0.43	0.55	0.43	0.79
6056	2020-05-05 21:28:51	0.43	0.43	0.55	0.43	0.81
6061	2020-05-05 21:29:16	0.55	0.34	0.55	0.55	0.73
6066	2020-05-05 21:29:41	0.34	0.34	0.55	0.55	0.81
6071	2020-05-05 21:30:06	0.34	0.55	0.34	0.34	0.85
6076	2020-05-05 21:30:31	0.34	0.55	0.43	0.55	0.74
6081	2020-05-05 21:30:56	0.43	0.34	0.34	0.55	0.79
6086	2020-05-05 21:31:21	0.34	0.55	0.55	0.34	0.74
6091	2020-05-05 21:31:46	0.55	0.55	0.34	0.34	0.74
6096	2020-05-05 21:32:11	0.43	0.34	0.43	0.34	0.73
6101	2020-05-05 21:32:36	0.34	0.55	0.55	0.34	0.79
6106	2020-05-05 21:33:01	0.55	0.43	0.43	0.55	0.79
6111	2020-05-05 21:33:26	0.43	0.43	0.34	0.55	0.85
6116	2020-05-05 21:33:51	0.34	0.55	0.43	0.34	0.9
6121	2020-05-05 21:34:16	0.34	0.43	0.43	0.55	0.9
6126	2020-05-05 21:34:41	0.34	0.34	0.34	0.55	0.73
6131	2020-05-05 21:35:06	0.34	0.55	0.43	0.55	0.81
6136	2020-05-05 21:35:31	0.34	0.34	0.43	0.55	0.81
6141	2020-05-05 21:35:56	0.34	0.55	0.43	0.34	0.73
6146	2020-05-05 21:36:21	0.55	0.55	0.43	0.34	0.74
6151	2020-05-05 21:36:46	0.34	0.55	0.55	0.43	0.79
6156	2020-05-05 21:37:11	0.43	0.43	0.55	0.43	0.85
6161	2020-05-05 21:37:36	0.55	0.55	0.43	0.55	0.73
6166	2020-05-05 21:38:01	0.43	0.55	0.55	0.34	0.73
6171	2020-05-05 21:38:26	0.43	0.34	0.43	0.34	0.9
6176	2020-05-05 21:38:51	0.34	0.43	0.43	0.55	0.81
6181	2020-05-05 21:39:16	0.43	0.34	0.34	0.43	0.81
6186	2020-05-05 21:39:41	0.43	0.55	0.43	0.55	0.85
6191	2020-05-05 21:40:06	0.43	0.43	0.34	0.34	0.81
6196	2020-05-05 21:40:31	0.34	0.43	0.55	0.43	0.74
6201	2020-05-05 21:40:56	0.43	0.43	0.55	0.34	0.85
6206	2020-05-05 21:41:21	0.55	0.43	0.34	0.43	0.9
5707	2020-05-05 20:59:44	0.55	0.34	0.43	0.34	0.79
5712	2020-05-05 21:00:09	0.55	0.34	0.34	0.34	0.9
5717	2020-05-05 21:00:34	0.34	0.34	0.34	0.43	0.9
5722	2020-05-05 21:01:00	0.43	0.43	0.55	0.34	0.79
5727	2020-05-05 21:01:25	0.34	0.34	0.43	0.43	0.74
5732	2020-05-05 21:01:50	0.55	0.43	0.43	0.34	0.73
5737	2020-05-05 21:02:15	0.34	0.55	0.55	0.34	0.85
5742	2020-05-05 21:02:40	0.55	0.55	0.43	0.43	0.73
5747	2020-05-05 21:03:05	0.34	0.55	0.55	0.43	0.85
5752	2020-05-05 21:03:30	0.43	0.43	0.43	0.34	0.9
5757	2020-05-05 21:03:55	0.43	0.55	0.34	0.34	0.74
5762	2020-05-05 21:04:20	0.34	0.34	0.34	0.43	0.81
5767	2020-05-05 21:04:45	0.43	0.55	0.43	0.34	0.73
5772	2020-05-05 21:05:10	0.43	0.55	0.34	0.43	0.81
5777	2020-05-05 21:05:35	0.43	0.34	0.34	0.55	0.9
5782	2020-05-05 21:06:00	0.43	0.43	0.34	0.55	0.81
5787	2020-05-05 21:06:25	0.43	0.34	0.43	0.55	0.81
5792	2020-05-05 21:06:50	0.43	0.55	0.55	0.55	0.85
5797	2020-05-05 21:07:15	0.55	0.43	0.55	0.55	0.85
5802	2020-05-05 21:07:40	0.43	0.55	0.43	0.43	0.81
5807	2020-05-05 21:08:05	0.43	0.55	0.34	0.34	0.74
5812	2020-05-05 21:08:30	0.34	0.43	0.55	0.43	0.79
5817	2020-05-05 21:08:55	0.43	0.34	0.34	0.43	0.73
5822	2020-05-05 21:09:20	0.34	0.43	0.55	0.55	0.81
5827	2020-05-05 21:09:45	0.34	0.55	0.55	0.34	0.74
5832	2020-05-05 21:10:10	0.43	0.55	0.55	0.55	0.81
5837	2020-05-05 21:10:35	0.43	0.55	0.34	0.43	0.79
5842	2020-05-05 21:11:00	0.55	0.55	0.43	0.34	0.79
5847	2020-05-05 21:11:25	0.34	0.43	0.55	0.43	0.79
5852	2020-05-05 21:11:50	0.43	0.43	0.43	0.34	0.79
5857	2020-05-05 21:12:15	0.34	0.34	0.43	0.43	0.73
5862	2020-05-05 21:12:40	0.55	0.43	0.34	0.34	0.79
5867	2020-05-05 21:13:05	0.55	0.34	0.34	0.34	0.9
5872	2020-05-05 21:13:30	0.55	0.43	0.34	0.55	0.79
5877	2020-05-05 21:13:55	0.55	0.34	0.55	0.55	0.73
5882	2020-05-05 21:14:20	0.55	0.34	0.34	0.43	0.81
5887	2020-05-05 21:14:45	0.43	0.55	0.43	0.43	0.81
5892	2020-05-05 21:15:10	0.43	0.55	0.55	0.34	0.74
5897	2020-05-05 21:15:35	0.43	0.43	0.43	0.34	0.74
5902	2020-05-05 21:16:00	0.34	0.43	0.34	0.34	0.85
5907	2020-05-05 21:16:25	0.43	0.43	0.34	0.34	0.74
5912	2020-05-05 21:16:50	0.55	0.55	0.55	0.55	0.81
5917	2020-05-05 21:17:15	0.34	0.34	0.43	0.34	0.81
5922	2020-05-05 21:17:40	0.34	0.43	0.43	0.55	0.81
5927	2020-05-05 21:18:05	0.55	0.43	0.43	0.34	0.9
5932	2020-05-05 21:18:30	0.34	0.34	0.43	0.55	0.9
5937	2020-05-05 21:18:55	0.43	0.43	0.43	0.55	0.74
5942	2020-05-05 21:19:20	0.55	0.34	0.55	0.34	0.81
5947	2020-05-05 21:19:45	0.43	0.34	0.34	0.43	0.81
5952	2020-05-05 21:20:10	0.34	0.55	0.34	0.55	0.73
5957	2020-05-05 21:20:35	0.43	0.34	0.55	0.34	0.79
5962	2020-05-05 21:21:01	0.43	0.55	0.55	0.34	0.79
5967	2020-05-05 21:21:26	0.55	0.34	0.43	0.34	0.85
5972	2020-05-05 21:21:51	0.34	0.55	0.43	0.43	0.73
5977	2020-05-05 21:22:16	0.55	0.34	0.43	0.43	0.85
5982	2020-05-05 21:22:41	0.55	0.34	0.55	0.55	0.74
5987	2020-05-05 21:23:06	0.43	0.34	0.43	0.43	0.79
5992	2020-05-05 21:23:31	0.34	0.43	0.43	0.34	0.85
5997	2020-05-05 21:23:56	0.34	0.43	0.55	0.34	0.81
6002	2020-05-05 21:24:21	0.34	0.34	0.34	0.55	0.9
6007	2020-05-05 21:24:46	0.55	0.34	0.34	0.34	0.79
6012	2020-05-05 21:25:11	0.43	0.34	0.43	0.43	0.74
6017	2020-05-05 21:25:36	0.43	0.43	0.43	0.43	0.73
6022	2020-05-05 21:26:01	0.43	0.55	0.43	0.43	0.74
6027	2020-05-05 21:26:26	0.43	0.43	0.55	0.34	0.79
6032	2020-05-05 21:26:51	0.34	0.34	0.34	0.43	0.85
6037	2020-05-05 21:27:16	0.43	0.55	0.55	0.55	0.73
6042	2020-05-05 21:27:41	0.43	0.43	0.55	0.34	0.74
6047	2020-05-05 21:28:06	0.43	0.55	0.43	0.34	0.9
6052	2020-05-05 21:28:31	0.55	0.34	0.43	0.55	0.9
6057	2020-05-05 21:28:56	0.55	0.55	0.55	0.34	0.74
6062	2020-05-05 21:29:21	0.43	0.43	0.55	0.43	0.9
6067	2020-05-05 21:29:46	0.34	0.55	0.34	0.55	0.9
6072	2020-05-05 21:30:11	0.34	0.34	0.43	0.34	0.81
6077	2020-05-05 21:30:36	0.43	0.34	0.43	0.55	0.73
6082	2020-05-05 21:31:01	0.43	0.55	0.43	0.43	0.9
6087	2020-05-05 21:31:26	0.34	0.43	0.55	0.34	0.74
6092	2020-05-05 21:31:51	0.55	0.43	0.43	0.43	0.79
6097	2020-05-05 21:32:16	0.43	0.43	0.34	0.43	0.79
6102	2020-05-05 21:32:41	0.43	0.43	0.34	0.34	0.79
6107	2020-05-05 21:33:06	0.43	0.55	0.43	0.34	0.74
6112	2020-05-05 21:33:31	0.43	0.43	0.55	0.55	0.81
6117	2020-05-05 21:33:56	0.43	0.43	0.55	0.34	0.73
6122	2020-05-05 21:34:21	0.34	0.34	0.34	0.34	0.79
6127	2020-05-05 21:34:46	0.55	0.43	0.55	0.55	0.74
6132	2020-05-05 21:35:11	0.43	0.43	0.34	0.43	0.85
6137	2020-05-05 21:35:36	0.34	0.43	0.43	0.55	0.74
6142	2020-05-05 21:36:01	0.43	0.43	0.55	0.55	0.74
6147	2020-05-05 21:36:26	0.55	0.34	0.43	0.43	0.79
6152	2020-05-05 21:36:51	0.55	0.55	0.43	0.55	0.79
6157	2020-05-05 21:37:16	0.34	0.43	0.34	0.34	0.81
6162	2020-05-05 21:37:41	0.55	0.34	0.34	0.43	0.79
6167	2020-05-05 21:38:06	0.43	0.55	0.34	0.34	0.79
6172	2020-05-05 21:38:31	0.34	0.43	0.34	0.34	0.81
6177	2020-05-05 21:38:56	0.43	0.34	0.55	0.55	0.73
6182	2020-05-05 21:39:21	0.34	0.43	0.34	0.55	0.9
6187	2020-05-05 21:39:46	0.34	0.43	0.34	0.55	0.85
6192	2020-05-05 21:40:11	0.43	0.43	0.43	0.43	0.81
6197	2020-05-05 21:40:36	0.43	0.55	0.43	0.34	0.9
6202	2020-05-05 21:41:01	0.55	0.43	0.43	0.55	0.74
6207	2020-05-05 21:41:26	0.55	0.43	0.34	0.34	0.79
5710	2020-05-05 20:59:59	0.43	0.55	0.43	0.43	0.9
5715	2020-05-05 21:00:24	0.34	0.55	0.43	0.34	0.73
5720	2020-05-05 21:00:50	0.43	0.43	0.43	0.43	0.74
5725	2020-05-05 21:01:15	0.55	0.43	0.55	0.34	0.81
5730	2020-05-05 21:01:40	0.43	0.43	0.55	0.34	0.9
5735	2020-05-05 21:02:05	0.34	0.34	0.34	0.43	0.73
5740	2020-05-05 21:02:30	0.43	0.43	0.43	0.55	0.85
5745	2020-05-05 21:02:55	0.34	0.55	0.34	0.34	0.81
5750	2020-05-05 21:03:20	0.43	0.34	0.43	0.43	0.9
5755	2020-05-05 21:03:45	0.55	0.34	0.43	0.43	0.74
5760	2020-05-05 21:04:10	0.43	0.43	0.43	0.55	0.79
5765	2020-05-05 21:04:35	0.55	0.43	0.43	0.43	0.73
5770	2020-05-05 21:05:00	0.34	0.43	0.55	0.43	0.9
5775	2020-05-05 21:05:25	0.43	0.55	0.55	0.43	0.73
5780	2020-05-05 21:05:50	0.55	0.55	0.34	0.34	0.73
5785	2020-05-05 21:06:15	0.43	0.55	0.43	0.34	0.74
5790	2020-05-05 21:06:40	0.34	0.34	0.43	0.55	0.85
5795	2020-05-05 21:07:05	0.43	0.34	0.43	0.43	0.79
5800	2020-05-05 21:07:30	0.34	0.43	0.55	0.55	0.85
5805	2020-05-05 21:07:55	0.43	0.43	0.55	0.34	0.81
5810	2020-05-05 21:08:20	0.43	0.43	0.43	0.43	0.79
5815	2020-05-05 21:08:45	0.55	0.43	0.55	0.43	0.85
5820	2020-05-05 21:09:10	0.43	0.34	0.55	0.55	0.79
5825	2020-05-05 21:09:35	0.55	0.43	0.43	0.55	0.9
5830	2020-05-05 21:10:00	0.55	0.55	0.34	0.55	0.85
5835	2020-05-05 21:10:25	0.43	0.55	0.43	0.34	0.9
5840	2020-05-05 21:10:50	0.55	0.55	0.34	0.34	0.81
5845	2020-05-05 21:11:15	0.55	0.55	0.55	0.34	0.73
5850	2020-05-05 21:11:40	0.55	0.34	0.55	0.55	0.81
5855	2020-05-05 21:12:05	0.55	0.34	0.43	0.43	0.85
5860	2020-05-05 21:12:30	0.34	0.34	0.43	0.34	0.9
5865	2020-05-05 21:12:55	0.34	0.43	0.55	0.43	0.85
5870	2020-05-05 21:13:20	0.34	0.43	0.43	0.55	0.74
5875	2020-05-05 21:13:45	0.43	0.43	0.55	0.43	0.9
5880	2020-05-05 21:14:10	0.55	0.43	0.34	0.43	0.9
5885	2020-05-05 21:14:35	0.55	0.55	0.43	0.34	0.73
5890	2020-05-05 21:15:00	0.34	0.34	0.55	0.55	0.74
5895	2020-05-05 21:15:25	0.34	0.43	0.55	0.34	0.85
5900	2020-05-05 21:15:50	0.34	0.43	0.43	0.34	0.81
5905	2020-05-05 21:16:15	0.34	0.55	0.34	0.34	0.79
5910	2020-05-05 21:16:40	0.55	0.55	0.34	0.34	0.74
5915	2020-05-05 21:17:05	0.43	0.43	0.43	0.43	0.79
5920	2020-05-05 21:17:30	0.55	0.55	0.43	0.43	0.9
5925	2020-05-05 21:17:55	0.43	0.34	0.55	0.43	0.9
5930	2020-05-05 21:18:20	0.43	0.55	0.34	0.43	0.85
5935	2020-05-05 21:18:45	0.34	0.55	0.43	0.55	0.9
5940	2020-05-05 21:19:10	0.34	0.43	0.43	0.55	0.74
5945	2020-05-05 21:19:35	0.55	0.55	0.43	0.34	0.79
5950	2020-05-05 21:20:00	0.55	0.43	0.55	0.34	0.73
5955	2020-05-05 21:20:25	0.43	0.55	0.34	0.43	0.85
5960	2020-05-05 21:20:51	0.55	0.43	0.34	0.34	0.79
5965	2020-05-05 21:21:16	0.55	0.34	0.55	0.34	0.9
5970	2020-05-05 21:21:41	0.55	0.34	0.55	0.55	0.73
5975	2020-05-05 21:22:06	0.55	0.43	0.34	0.55	0.81
5980	2020-05-05 21:22:31	0.34	0.34	0.43	0.43	0.79
5985	2020-05-05 21:22:56	0.55	0.55	0.34	0.43	0.85
5990	2020-05-05 21:23:21	0.55	0.55	0.55	0.34	0.85
5995	2020-05-05 21:23:46	0.43	0.55	0.34	0.55	0.85
6000	2020-05-05 21:24:11	0.43	0.34	0.34	0.55	0.73
6005	2020-05-05 21:24:36	0.34	0.55	0.34	0.55	0.79
6010	2020-05-05 21:25:01	0.55	0.34	0.34	0.34	0.81
6015	2020-05-05 21:25:26	0.43	0.55	0.34	0.43	0.9
6020	2020-05-05 21:25:51	0.34	0.43	0.43	0.55	0.79
6025	2020-05-05 21:26:16	0.43	0.43	0.55	0.55	0.9
6030	2020-05-05 21:26:41	0.34	0.34	0.34	0.43	0.73
6035	2020-05-05 21:27:06	0.55	0.55	0.55	0.43	0.85
6040	2020-05-05 21:27:31	0.34	0.43	0.43	0.55	0.85
6045	2020-05-05 21:27:56	0.43	0.43	0.55	0.55	0.73
6050	2020-05-05 21:28:21	0.55	0.43	0.55	0.34	0.81
6055	2020-05-05 21:28:46	0.34	0.55	0.43	0.43	0.73
6060	2020-05-05 21:29:11	0.34	0.43	0.34	0.55	0.9
6065	2020-05-05 21:29:36	0.43	0.55	0.43	0.43	0.9
6070	2020-05-05 21:30:01	0.43	0.34	0.43	0.34	0.9
6075	2020-05-05 21:30:26	0.55	0.34	0.34	0.34	0.79
6080	2020-05-05 21:30:51	0.43	0.43	0.43	0.43	0.85
6085	2020-05-05 21:31:16	0.43	0.55	0.55	0.55	0.85
6090	2020-05-05 21:31:41	0.34	0.34	0.34	0.43	0.81
6095	2020-05-05 21:32:06	0.34	0.55	0.55	0.55	0.74
6100	2020-05-05 21:32:31	0.34	0.43	0.34	0.55	0.85
6105	2020-05-05 21:32:56	0.43	0.55	0.43	0.43	0.81
6110	2020-05-05 21:33:21	0.55	0.34	0.34	0.34	0.79
6115	2020-05-05 21:33:46	0.55	0.34	0.55	0.55	0.85
6120	2020-05-05 21:34:11	0.34	0.34	0.55	0.43	0.73
6125	2020-05-05 21:34:36	0.43	0.34	0.34	0.34	0.81
6130	2020-05-05 21:35:01	0.43	0.43	0.34	0.55	0.74
6135	2020-05-05 21:35:26	0.34	0.55	0.34	0.34	0.81
6140	2020-05-05 21:35:51	0.34	0.55	0.34	0.34	0.9
6145	2020-05-05 21:36:16	0.43	0.34	0.55	0.55	0.74
6150	2020-05-05 21:36:41	0.55	0.55	0.34	0.43	0.74
6155	2020-05-05 21:37:06	0.43	0.43	0.34	0.43	0.9
6160	2020-05-05 21:37:31	0.34	0.55	0.55	0.43	0.74
6165	2020-05-05 21:37:56	0.34	0.55	0.55	0.43	0.81
6170	2020-05-05 21:38:21	0.55	0.55	0.55	0.34	0.85
6175	2020-05-05 21:38:46	0.55	0.55	0.55	0.34	0.79
6180	2020-05-05 21:39:11	0.55	0.55	0.34	0.43	0.81
6185	2020-05-05 21:39:36	0.34	0.34	0.34	0.34	0.74
6190	2020-05-05 21:40:01	0.34	0.34	0.34	0.55	0.73
6195	2020-05-05 21:40:26	0.34	0.55	0.55	0.43	0.85
6200	2020-05-05 21:40:51	0.34	0.55	0.55	0.43	0.79
6205	2020-05-05 21:41:16	0.55	0.55	0.34	0.34	0.9
6209	2020-05-05 21:41:36	0.43	0.55	0.43	0.34	0.74
6210	2020-05-05 21:41:41	0.43	0.55	0.43	0.34	0.81
6211	2020-05-05 21:41:46	0.34	0.34	0.55	0.55	0.74
6212	2020-05-05 21:41:51	0.34	0.34	0.43	0.34	0.81
6213	2020-05-05 21:41:56	0.55	0.34	0.55	0.55	0.85
6214	2020-05-05 21:42:01	0.55	0.55	0.34	0.34	0.81
6215	2020-05-05 21:42:06	0.43	0.34	0.55	0.43	0.9
6216	2020-05-05 21:42:11	0.34	0.55	0.43	0.55	0.9
6217	2020-05-05 21:42:16	0.34	0.34	0.34	0.55	0.9
6218	2020-05-05 21:42:21	0.34	0.34	0.55	0.55	0.79
6219	2020-05-05 21:42:26	0.43	0.55	0.55	0.55	0.79
6224	2020-05-05 21:42:51	0.34	0.55	0.43	0.34	0.74
6229	2020-05-05 21:43:16	0.55	0.55	0.34	0.55	0.79
6234	2020-05-05 21:43:41	0.55	0.43	0.34	0.34	0.74
6239	2020-05-05 21:44:06	0.43	0.34	0.34	0.43	0.74
6244	2020-05-05 21:44:31	0.34	0.43	0.34	0.34	0.73
6249	2020-05-05 21:44:56	0.43	0.43	0.43	0.55	0.73
6254	2020-05-05 21:45:21	0.34	0.34	0.43	0.43	0.73
6259	2020-05-05 21:45:46	0.34	0.43	0.34	0.55	0.79
6264	2020-05-05 21:46:11	0.43	0.55	0.43	0.55	0.73
6269	2020-05-05 21:46:36	0.43	0.34	0.34	0.34	0.79
6274	2020-05-05 21:47:01	0.55	0.55	0.55	0.34	0.74
6279	2020-05-05 21:47:26	0.34	0.55	0.55	0.55	0.9
6284	2020-05-05 21:47:51	0.43	0.34	0.34	0.55	0.79
6289	2020-05-05 21:48:16	0.55	0.55	0.55	0.34	0.9
6294	2020-05-05 21:48:41	0.34	0.55	0.43	0.43	0.73
6299	2020-05-05 21:49:06	0.43	0.55	0.55	0.34	0.79
6304	2020-05-05 21:49:31	0.43	0.34	0.55	0.43	0.74
6309	2020-05-05 21:49:57	0.55	0.43	0.34	0.34	0.74
6314	2020-05-05 21:50:22	0.55	0.34	0.55	0.34	0.73
6319	2020-05-05 21:50:47	0.55	0.55	0.55	0.55	0.79
6324	2020-05-05 21:51:12	0.43	0.34	0.43	0.55	0.73
6329	2020-05-05 21:51:37	0.55	0.55	0.55	0.34	0.81
6334	2020-05-05 21:52:02	0.43	0.43	0.43	0.34	0.79
6339	2020-05-05 21:52:27	0.34	0.55	0.55	0.34	0.73
6344	2020-05-05 21:52:52	0.34	0.34	0.43	0.43	0.73
6349	2020-05-05 21:53:17	0.43	0.34	0.55	0.55	0.85
6354	2020-05-05 21:53:42	0.55	0.55	0.34	0.43	0.85
6359	2020-05-05 21:54:07	0.55	0.55	0.55	0.34	0.9
6364	2020-05-05 21:54:32	0.55	0.55	0.43	0.43	0.81
6369	2020-05-05 21:54:57	0.43	0.43	0.43	0.34	0.74
6374	2020-05-05 21:55:22	0.55	0.55	0.55	0.43	0.74
6379	2020-05-05 21:55:47	0.43	0.43	0.43	0.55	0.9
6384	2020-05-05 21:56:12	0.55	0.55	0.55	0.55	0.74
6389	2020-05-05 21:56:37	0.55	0.43	0.34	0.43	0.81
6394	2020-05-05 21:57:02	0.34	0.55	0.55	0.55	0.79
6399	2020-05-05 21:57:27	0.43	0.43	0.34	0.43	0.73
6404	2020-05-05 21:57:52	0.55	0.34	0.55	0.43	0.73
6409	2020-05-05 21:58:17	0.43	0.34	0.43	0.55	0.81
6414	2020-05-05 21:58:42	0.34	0.34	0.34	0.55	0.79
6419	2020-05-05 21:59:07	0.43	0.43	0.43	0.43	0.73
6424	2020-05-05 21:59:32	0.55	0.43	0.34	0.43	0.85
6429	2020-05-05 21:59:57	0.43	0.43	0.34	0.55	0.74
6434	2020-05-05 22:00:22	0.43	0.43	0.55	0.55	0.74
6439	2020-05-05 22:00:47	0.55	0.55	0.43	0.55	0.73
6444	2020-05-05 22:01:12	0.43	0.43	0.34	0.43	0.85
6449	2020-05-05 22:01:37	0.34	0.43	0.34	0.34	0.79
6454	2020-05-05 22:02:02	0.34	0.43	0.55	0.55	0.85
6459	2020-05-05 22:02:27	0.34	0.55	0.55	0.43	0.85
6464	2020-05-05 22:02:52	0.34	0.34	0.43	0.43	0.79
6469	2020-05-05 22:03:17	0.43	0.55	0.34	0.34	0.73
6474	2020-05-05 22:03:42	0.34	0.43	0.55	0.34	0.85
6479	2020-05-05 22:04:07	0.55	0.43	0.34	0.34	0.9
6484	2020-05-05 22:04:32	0.43	0.43	0.55	0.43	0.79
6489	2020-05-05 22:04:57	0.43	0.34	0.43	0.55	0.74
6494	2020-05-05 22:05:22	0.55	0.34	0.34	0.55	0.74
6499	2020-05-05 22:05:47	0.34	0.55	0.55	0.55	0.73
6504	2020-05-05 22:06:12	0.55	0.34	0.55	0.43	0.73
6509	2020-05-05 22:06:37	0.43	0.34	0.43	0.43	0.9
6514	2020-05-05 22:07:02	0.43	0.55	0.34	0.34	0.81
6519	2020-05-05 22:07:27	0.43	0.34	0.34	0.55	0.73
6524	2020-05-05 22:07:52	0.55	0.43	0.34	0.34	0.9
6529	2020-05-05 22:08:17	0.43	0.55	0.55	0.43	0.81
6534	2020-05-05 22:08:42	0.55	0.43	0.34	0.55	0.73
6539	2020-05-05 22:09:07	0.34	0.34	0.34	0.34	0.74
6544	2020-05-05 22:09:32	0.34	0.43	0.55	0.55	0.73
6549	2020-05-05 22:09:57	0.55	0.55	0.43	0.55	0.79
6554	2020-05-05 22:10:22	0.34	0.55	0.34	0.43	0.74
6559	2020-05-05 22:10:47	0.43	0.43	0.55	0.43	0.85
6564	2020-05-05 22:11:12	0.55	0.34	0.43	0.43	0.85
6569	2020-05-05 22:11:37	0.43	0.43	0.43	0.43	0.85
6574	2020-05-05 22:12:02	0.34	0.43	0.43	0.55	0.9
6579	2020-05-05 22:12:27	0.34	0.55	0.43	0.55	0.9
6584	2020-05-05 22:12:52	0.34	0.43	0.55	0.43	0.85
6589	2020-05-05 22:13:17	0.34	0.43	0.43	0.43	0.85
6594	2020-05-05 22:13:42	0.43	0.43	0.34	0.55	0.9
6599	2020-05-05 22:14:07	0.55	0.43	0.43	0.43	0.73
6604	2020-05-05 22:14:32	0.55	0.43	0.43	0.43	0.85
6609	2020-05-05 22:14:57	0.55	0.34	0.43	0.34	0.74
6614	2020-05-05 22:15:22	0.34	0.55	0.43	0.55	0.81
6619	2020-05-05 22:15:47	0.55	0.34	0.55	0.55	0.79
6624	2020-05-05 22:16:12	0.55	0.55	0.34	0.34	0.9
6629	2020-05-05 22:16:37	0.43	0.55	0.34	0.34	0.81
6634	2020-05-05 22:17:02	0.34	0.43	0.55	0.43	0.9
6639	2020-05-05 22:17:27	0.34	0.43	0.34	0.55	0.74
6644	2020-05-05 22:17:52	0.55	0.43	0.55	0.43	0.73
6649	2020-05-05 22:18:17	0.34	0.43	0.43	0.43	0.73
6654	2020-05-05 22:18:42	0.43	0.34	0.43	0.43	0.85
6659	2020-05-05 22:19:08	0.34	0.43	0.34	0.34	0.81
6664	2020-05-05 22:19:33	0.43	0.34	0.34	0.34	0.73
6669	2020-05-05 22:19:58	0.55	0.55	0.43	0.55	0.74
6674	2020-05-05 22:20:23	0.34	0.55	0.34	0.43	0.81
6679	2020-05-05 22:20:48	0.55	0.34	0.55	0.43	0.74
6684	2020-05-05 22:21:13	0.43	0.55	0.55	0.43	0.85
6689	2020-05-05 22:21:38	0.34	0.43	0.43	0.43	0.81
6694	2020-05-05 22:22:03	0.34	0.34	0.34	0.34	0.73
6699	2020-05-05 22:22:28	0.34	0.34	0.34	0.34	0.85
6704	2020-05-05 22:22:53	0.34	0.55	0.55	0.43	0.85
6709	2020-05-05 22:23:18	0.55	0.55	0.55	0.34	0.73
6714	2020-05-05 22:23:43	0.55	0.55	0.43	0.55	0.81
6719	2020-05-05 22:24:08	0.43	0.34	0.34	0.43	0.9
6724	2020-05-05 22:24:33	0.43	0.34	0.43	0.43	0.9
6729	2020-05-05 22:24:58	0.55	0.34	0.34	0.43	0.79
6734	2020-05-05 22:25:23	0.34	0.34	0.55	0.34	0.9
6739	2020-05-05 22:25:48	0.55	0.43	0.55	0.43	0.85
6744	2020-05-05 22:26:13	0.43	0.43	0.55	0.43	0.9
6749	2020-05-05 22:26:38	0.55	0.43	0.43	0.55	0.74
6754	2020-05-05 22:27:03	0.55	0.43	0.55	0.34	0.9
6759	2020-05-05 22:27:28	0.43	0.55	0.34	0.34	0.85
6220	2020-05-05 21:42:31	0.43	0.55	0.55	0.43	0.73
6225	2020-05-05 21:42:56	0.34	0.55	0.43	0.43	0.85
6230	2020-05-05 21:43:21	0.55	0.43	0.43	0.55	0.73
6235	2020-05-05 21:43:46	0.34	0.34	0.34	0.55	0.73
6240	2020-05-05 21:44:11	0.55	0.55	0.55	0.34	0.9
6245	2020-05-05 21:44:36	0.55	0.34	0.43	0.43	0.79
6250	2020-05-05 21:45:01	0.43	0.55	0.55	0.34	0.9
6255	2020-05-05 21:45:26	0.43	0.43	0.34	0.43	0.79
6260	2020-05-05 21:45:51	0.34	0.43	0.43	0.43	0.9
6265	2020-05-05 21:46:16	0.34	0.55	0.34	0.34	0.85
6270	2020-05-05 21:46:41	0.55	0.55	0.55	0.55	0.79
6275	2020-05-05 21:47:06	0.34	0.34	0.34	0.34	0.73
6280	2020-05-05 21:47:31	0.43	0.55	0.34	0.34	0.79
6285	2020-05-05 21:47:56	0.34	0.34	0.55	0.43	0.85
6290	2020-05-05 21:48:21	0.55	0.55	0.34	0.43	0.81
6295	2020-05-05 21:48:46	0.43	0.43	0.43	0.34	0.79
6300	2020-05-05 21:49:11	0.43	0.34	0.55	0.34	0.9
6305	2020-05-05 21:49:36	0.34	0.55	0.34	0.43	0.85
6310	2020-05-05 21:50:02	0.34	0.43	0.43	0.55	0.74
6315	2020-05-05 21:50:27	0.43	0.43	0.34	0.34	0.74
6320	2020-05-05 21:50:52	0.43	0.34	0.43	0.55	0.81
6325	2020-05-05 21:51:17	0.43	0.43	0.34	0.55	0.73
6330	2020-05-05 21:51:42	0.43	0.55	0.43	0.43	0.85
6335	2020-05-05 21:52:07	0.34	0.43	0.34	0.55	0.9
6340	2020-05-05 21:52:32	0.34	0.34	0.34	0.43	0.73
6345	2020-05-05 21:52:57	0.34	0.34	0.34	0.34	0.79
6350	2020-05-05 21:53:22	0.34	0.43	0.34	0.43	0.73
6355	2020-05-05 21:53:47	0.43	0.55	0.43	0.34	0.9
6360	2020-05-05 21:54:12	0.43	0.55	0.55	0.43	0.79
6365	2020-05-05 21:54:37	0.34	0.55	0.43	0.34	0.74
6370	2020-05-05 21:55:02	0.34	0.34	0.55	0.43	0.85
6375	2020-05-05 21:55:27	0.34	0.34	0.34	0.34	0.74
6380	2020-05-05 21:55:52	0.55	0.34	0.43	0.43	0.9
6385	2020-05-05 21:56:17	0.34	0.34	0.43	0.43	0.85
6390	2020-05-05 21:56:42	0.34	0.55	0.34	0.55	0.79
6395	2020-05-05 21:57:07	0.34	0.55	0.43	0.55	0.74
6400	2020-05-05 21:57:32	0.55	0.43	0.43	0.55	0.85
6405	2020-05-05 21:57:57	0.55	0.55	0.55	0.34	0.85
6410	2020-05-05 21:58:22	0.34	0.43	0.34	0.43	0.85
6415	2020-05-05 21:58:47	0.55	0.43	0.43	0.55	0.81
6420	2020-05-05 21:59:12	0.55	0.43	0.55	0.55	0.79
6425	2020-05-05 21:59:37	0.34	0.55	0.43	0.55	0.9
6430	2020-05-05 22:00:02	0.34	0.55	0.34	0.55	0.85
6435	2020-05-05 22:00:27	0.55	0.55	0.43	0.55	0.9
6440	2020-05-05 22:00:52	0.34	0.55	0.55	0.34	0.74
6445	2020-05-05 22:01:17	0.43	0.43	0.34	0.43	0.85
6450	2020-05-05 22:01:42	0.34	0.55	0.43	0.43	0.74
6455	2020-05-05 22:02:07	0.34	0.34	0.43	0.43	0.79
6460	2020-05-05 22:02:32	0.34	0.34	0.34	0.34	0.9
6465	2020-05-05 22:02:57	0.34	0.34	0.43	0.55	0.85
6470	2020-05-05 22:03:22	0.34	0.43	0.34	0.55	0.79
6475	2020-05-05 22:03:47	0.43	0.34	0.43	0.43	0.85
6480	2020-05-05 22:04:12	0.55	0.43	0.55	0.55	0.9
6485	2020-05-05 22:04:37	0.43	0.55	0.55	0.55	0.9
6490	2020-05-05 22:05:02	0.43	0.43	0.43	0.34	0.81
6495	2020-05-05 22:05:27	0.43	0.34	0.55	0.34	0.74
6500	2020-05-05 22:05:52	0.34	0.34	0.43	0.55	0.9
6505	2020-05-05 22:06:17	0.34	0.55	0.55	0.43	0.74
6510	2020-05-05 22:06:42	0.43	0.34	0.34	0.34	0.74
6515	2020-05-05 22:07:07	0.34	0.43	0.55	0.43	0.81
6520	2020-05-05 22:07:32	0.43	0.55	0.34	0.43	0.9
6525	2020-05-05 22:07:57	0.43	0.43	0.43	0.43	0.74
6530	2020-05-05 22:08:22	0.34	0.34	0.34	0.43	0.73
6535	2020-05-05 22:08:47	0.55	0.43	0.43	0.34	0.73
6540	2020-05-05 22:09:12	0.55	0.43	0.43	0.55	0.74
6545	2020-05-05 22:09:37	0.34	0.55	0.55	0.55	0.74
6550	2020-05-05 22:10:02	0.55	0.34	0.34	0.34	0.73
6555	2020-05-05 22:10:27	0.43	0.43	0.34	0.43	0.74
6560	2020-05-05 22:10:52	0.55	0.55	0.34	0.34	0.79
6565	2020-05-05 22:11:17	0.34	0.34	0.34	0.55	0.9
6570	2020-05-05 22:11:42	0.55	0.55	0.55	0.55	0.81
6575	2020-05-05 22:12:07	0.43	0.55	0.34	0.55	0.81
6580	2020-05-05 22:12:32	0.34	0.55	0.55	0.55	0.85
6585	2020-05-05 22:12:57	0.43	0.55	0.34	0.55	0.85
6590	2020-05-05 22:13:22	0.43	0.55	0.34	0.43	0.81
6595	2020-05-05 22:13:47	0.43	0.55	0.55	0.55	0.81
6600	2020-05-05 22:14:12	0.55	0.43	0.43	0.55	0.81
6605	2020-05-05 22:14:37	0.34	0.55	0.43	0.55	0.81
6610	2020-05-05 22:15:02	0.43	0.34	0.34	0.55	0.9
6615	2020-05-05 22:15:27	0.43	0.55	0.34	0.34	0.74
6620	2020-05-05 22:15:52	0.43	0.34	0.55	0.55	0.74
6625	2020-05-05 22:16:17	0.55	0.55	0.34	0.43	0.81
6630	2020-05-05 22:16:42	0.55	0.34	0.34	0.43	0.73
6635	2020-05-05 22:17:07	0.43	0.43	0.43	0.55	0.73
6640	2020-05-05 22:17:32	0.34	0.55	0.55	0.34	0.79
6645	2020-05-05 22:17:57	0.34	0.43	0.34	0.55	0.79
6650	2020-05-05 22:18:22	0.43	0.43	0.55	0.34	0.79
6655	2020-05-05 22:18:47	0.34	0.55	0.34	0.43	0.79
6660	2020-05-05 22:19:13	0.34	0.34	0.43	0.43	0.73
6665	2020-05-05 22:19:38	0.43	0.55	0.34	0.55	0.73
6670	2020-05-05 22:20:03	0.43	0.34	0.55	0.43	0.79
6675	2020-05-05 22:20:28	0.43	0.43	0.34	0.34	0.74
6680	2020-05-05 22:20:53	0.55	0.43	0.55	0.43	0.73
6685	2020-05-05 22:21:18	0.43	0.34	0.34	0.55	0.73
6690	2020-05-05 22:21:43	0.34	0.55	0.43	0.55	0.9
6695	2020-05-05 22:22:08	0.34	0.43	0.55	0.55	0.9
6700	2020-05-05 22:22:33	0.55	0.55	0.43	0.55	0.79
6705	2020-05-05 22:22:58	0.34	0.55	0.43	0.34	0.74
6710	2020-05-05 22:23:23	0.34	0.55	0.55	0.55	0.81
6715	2020-05-05 22:23:48	0.43	0.55	0.55	0.34	0.79
6720	2020-05-05 22:24:13	0.34	0.43	0.55	0.43	0.81
6725	2020-05-05 22:24:38	0.34	0.55	0.55	0.43	0.79
6730	2020-05-05 22:25:03	0.43	0.43	0.34	0.43	0.73
6735	2020-05-05 22:25:28	0.55	0.55	0.34	0.55	0.9
6740	2020-05-05 22:25:53	0.34	0.43	0.34	0.55	0.73
6745	2020-05-05 22:26:18	0.55	0.34	0.43	0.43	0.73
6750	2020-05-05 22:26:43	0.55	0.43	0.43	0.43	0.74
6755	2020-05-05 22:27:08	0.43	0.43	0.43	0.34	0.74
6760	2020-05-05 22:27:33	0.34	0.34	0.55	0.34	0.74
6221	2020-05-05 21:42:36	0.55	0.55	0.55	0.55	0.85
6226	2020-05-05 21:43:01	0.43	0.55	0.55	0.43	0.81
6231	2020-05-05 21:43:26	0.34	0.43	0.55	0.55	0.9
6236	2020-05-05 21:43:51	0.55	0.34	0.34	0.34	0.81
6241	2020-05-05 21:44:16	0.43	0.34	0.55	0.55	0.9
6246	2020-05-05 21:44:41	0.43	0.43	0.34	0.43	0.81
6251	2020-05-05 21:45:06	0.34	0.34	0.55	0.55	0.81
6256	2020-05-05 21:45:31	0.55	0.43	0.43	0.55	0.74
6261	2020-05-05 21:45:56	0.43	0.55	0.34	0.34	0.9
6266	2020-05-05 21:46:21	0.43	0.43	0.34	0.43	0.81
6271	2020-05-05 21:46:46	0.55	0.43	0.43	0.34	0.81
6276	2020-05-05 21:47:11	0.43	0.55	0.34	0.43	0.74
6281	2020-05-05 21:47:36	0.43	0.43	0.55	0.43	0.9
6286	2020-05-05 21:48:01	0.55	0.55	0.43	0.43	0.73
6291	2020-05-05 21:48:26	0.43	0.43	0.34	0.43	0.74
6296	2020-05-05 21:48:51	0.43	0.34	0.55	0.34	0.73
6301	2020-05-05 21:49:16	0.34	0.55	0.43	0.55	0.85
6306	2020-05-05 21:49:42	0.43	0.34	0.34	0.55	0.81
6311	2020-05-05 21:50:07	0.34	0.43	0.55	0.34	0.9
6316	2020-05-05 21:50:32	0.34	0.55	0.43	0.43	0.9
6321	2020-05-05 21:50:57	0.43	0.34	0.34	0.43	0.79
6326	2020-05-05 21:51:22	0.34	0.55	0.43	0.34	0.73
6331	2020-05-05 21:51:47	0.34	0.55	0.43	0.34	0.79
6336	2020-05-05 21:52:12	0.43	0.55	0.43	0.34	0.81
6341	2020-05-05 21:52:37	0.55	0.43	0.55	0.55	0.79
6346	2020-05-05 21:53:02	0.34	0.34	0.55	0.55	0.81
6351	2020-05-05 21:53:27	0.34	0.55	0.34	0.55	0.74
6356	2020-05-05 21:53:52	0.43	0.43	0.43	0.34	0.79
6361	2020-05-05 21:54:17	0.43	0.43	0.34	0.55	0.73
6366	2020-05-05 21:54:42	0.34	0.43	0.34	0.34	0.85
6371	2020-05-05 21:55:07	0.55	0.55	0.55	0.55	0.81
6376	2020-05-05 21:55:32	0.55	0.55	0.43	0.43	0.81
6381	2020-05-05 21:55:57	0.55	0.55	0.43	0.34	0.79
6386	2020-05-05 21:56:22	0.43	0.55	0.43	0.43	0.74
6391	2020-05-05 21:56:47	0.34	0.55	0.55	0.55	0.74
6396	2020-05-05 21:57:12	0.43	0.43	0.43	0.43	0.73
6401	2020-05-05 21:57:37	0.55	0.55	0.43	0.34	0.79
6406	2020-05-05 21:58:02	0.34	0.34	0.34	0.34	0.74
6411	2020-05-05 21:58:27	0.55	0.43	0.34	0.34	0.81
6416	2020-05-05 21:58:52	0.34	0.55	0.34	0.55	0.79
6421	2020-05-05 21:59:17	0.43	0.34	0.34	0.55	0.74
6426	2020-05-05 21:59:42	0.55	0.34	0.55	0.43	0.79
6431	2020-05-05 22:00:07	0.34	0.34	0.43	0.43	0.85
6436	2020-05-05 22:00:32	0.43	0.55	0.34	0.34	0.81
6441	2020-05-05 22:00:57	0.43	0.34	0.43	0.55	0.73
6446	2020-05-05 22:01:22	0.55	0.34	0.43	0.34	0.85
6451	2020-05-05 22:01:47	0.55	0.55	0.55	0.43	0.9
6456	2020-05-05 22:02:12	0.43	0.55	0.34	0.43	0.73
6461	2020-05-05 22:02:37	0.34	0.43	0.43	0.34	0.9
6466	2020-05-05 22:03:02	0.43	0.34	0.55	0.43	0.85
6471	2020-05-05 22:03:27	0.34	0.43	0.34	0.34	0.79
6476	2020-05-05 22:03:52	0.34	0.55	0.34	0.34	0.81
6481	2020-05-05 22:04:17	0.43	0.43	0.34	0.43	0.74
6486	2020-05-05 22:04:42	0.55	0.55	0.55	0.43	0.79
6491	2020-05-05 22:05:07	0.34	0.43	0.34	0.55	0.9
6496	2020-05-05 22:05:32	0.34	0.43	0.55	0.43	0.81
6501	2020-05-05 22:05:57	0.43	0.43	0.34	0.43	0.9
6506	2020-05-05 22:06:22	0.34	0.55	0.34	0.34	0.74
6511	2020-05-05 22:06:47	0.34	0.55	0.55	0.34	0.81
6516	2020-05-05 22:07:12	0.43	0.43	0.34	0.55	0.73
6521	2020-05-05 22:07:37	0.55	0.43	0.34	0.55	0.9
6526	2020-05-05 22:08:02	0.43	0.43	0.55	0.43	0.79
6531	2020-05-05 22:08:27	0.34	0.55	0.55	0.43	0.81
6536	2020-05-05 22:08:52	0.34	0.43	0.55	0.43	0.74
6541	2020-05-05 22:09:17	0.55	0.34	0.34	0.34	0.79
6546	2020-05-05 22:09:42	0.55	0.34	0.55	0.55	0.81
6551	2020-05-05 22:10:07	0.43	0.43	0.34	0.43	0.85
6556	2020-05-05 22:10:32	0.34	0.34	0.43	0.43	0.9
6561	2020-05-05 22:10:57	0.43	0.55	0.43	0.43	0.81
6566	2020-05-05 22:11:22	0.34	0.34	0.55	0.43	0.81
6571	2020-05-05 22:11:47	0.55	0.43	0.43	0.34	0.79
6576	2020-05-05 22:12:12	0.34	0.43	0.43	0.34	0.85
6581	2020-05-05 22:12:37	0.34	0.34	0.34	0.34	0.79
6586	2020-05-05 22:13:02	0.34	0.43	0.34	0.43	0.79
6591	2020-05-05 22:13:27	0.55	0.34	0.55	0.55	0.81
6596	2020-05-05 22:13:52	0.43	0.55	0.55	0.34	0.85
6601	2020-05-05 22:14:17	0.34	0.55	0.43	0.43	0.9
6606	2020-05-05 22:14:42	0.43	0.55	0.34	0.34	0.79
6611	2020-05-05 22:15:07	0.43	0.34	0.55	0.34	0.73
6616	2020-05-05 22:15:32	0.34	0.55	0.43	0.55	0.85
6621	2020-05-05 22:15:57	0.55	0.34	0.43	0.34	0.74
6626	2020-05-05 22:16:22	0.34	0.43	0.43	0.34	0.81
6631	2020-05-05 22:16:47	0.34	0.34	0.43	0.43	0.9
6636	2020-05-05 22:17:12	0.43	0.43	0.55	0.55	0.79
6641	2020-05-05 22:17:37	0.43	0.55	0.43	0.34	0.79
6646	2020-05-05 22:18:02	0.34	0.43	0.43	0.43	0.79
6651	2020-05-05 22:18:27	0.34	0.34	0.43	0.34	0.9
6656	2020-05-05 22:18:53	0.55	0.34	0.55	0.55	0.9
6661	2020-05-05 22:19:18	0.34	0.43	0.55	0.55	0.73
6666	2020-05-05 22:19:43	0.34	0.43	0.34	0.55	0.81
6671	2020-05-05 22:20:08	0.34	0.43	0.55	0.43	0.81
6676	2020-05-05 22:20:33	0.43	0.43	0.34	0.43	0.73
6681	2020-05-05 22:20:58	0.34	0.55	0.55	0.43	0.81
6686	2020-05-05 22:21:23	0.55	0.55	0.55	0.34	0.9
6691	2020-05-05 22:21:48	0.55	0.34	0.43	0.34	0.74
6696	2020-05-05 22:22:13	0.43	0.43	0.55	0.55	0.74
6701	2020-05-05 22:22:38	0.55	0.34	0.43	0.34	0.79
6706	2020-05-05 22:23:03	0.55	0.55	0.43	0.55	0.74
6711	2020-05-05 22:23:28	0.55	0.34	0.34	0.34	0.73
6716	2020-05-05 22:23:53	0.43	0.43	0.55	0.43	0.73
6721	2020-05-05 22:24:18	0.55	0.34	0.34	0.34	0.79
6726	2020-05-05 22:24:43	0.55	0.34	0.55	0.55	0.85
6731	2020-05-05 22:25:08	0.34	0.43	0.34	0.43	0.85
6736	2020-05-05 22:25:33	0.43	0.43	0.34	0.34	0.9
6741	2020-05-05 22:25:58	0.55	0.55	0.34	0.55	0.85
6746	2020-05-05 22:26:23	0.55	0.55	0.43	0.55	0.81
6751	2020-05-05 22:26:48	0.55	0.43	0.34	0.55	0.85
6756	2020-05-05 22:27:13	0.43	0.55	0.43	0.43	0.74
6761	2020-05-05 22:27:38	0.55	0.34	0.43	0.55	0.73
6222	2020-05-05 21:42:41	0.43	0.55	0.34	0.43	0.85
6227	2020-05-05 21:43:06	0.34	0.34	0.34	0.43	0.74
6232	2020-05-05 21:43:31	0.43	0.43	0.55	0.43	0.79
6237	2020-05-05 21:43:56	0.43	0.55	0.43	0.34	0.9
6242	2020-05-05 21:44:21	0.43	0.55	0.55	0.55	0.81
6247	2020-05-05 21:44:46	0.55	0.43	0.34	0.43	0.79
6252	2020-05-05 21:45:11	0.34	0.34	0.43	0.55	0.85
6257	2020-05-05 21:45:36	0.43	0.55	0.34	0.55	0.85
6262	2020-05-05 21:46:01	0.55	0.55	0.34	0.55	0.79
6267	2020-05-05 21:46:26	0.55	0.34	0.55	0.34	0.73
6272	2020-05-05 21:46:51	0.55	0.34	0.55	0.34	0.79
6277	2020-05-05 21:47:16	0.34	0.43	0.34	0.55	0.9
6282	2020-05-05 21:47:41	0.34	0.55	0.34	0.55	0.81
6287	2020-05-05 21:48:06	0.55	0.43	0.43	0.55	0.74
6292	2020-05-05 21:48:31	0.43	0.55	0.55	0.55	0.9
6297	2020-05-05 21:48:56	0.43	0.55	0.43	0.55	0.85
6302	2020-05-05 21:49:21	0.43	0.34	0.34	0.55	0.81
6307	2020-05-05 21:49:47	0.55	0.43	0.55	0.55	0.81
6312	2020-05-05 21:50:12	0.55	0.43	0.43	0.34	0.9
6317	2020-05-05 21:50:37	0.55	0.55	0.34	0.34	0.85
6322	2020-05-05 21:51:02	0.43	0.55	0.43	0.43	0.9
6327	2020-05-05 21:51:27	0.55	0.43	0.55	0.43	0.81
6332	2020-05-05 21:51:52	0.34	0.34	0.43	0.34	0.73
6337	2020-05-05 21:52:17	0.34	0.43	0.43	0.43	0.81
6342	2020-05-05 21:52:42	0.34	0.43	0.34	0.43	0.74
6347	2020-05-05 21:53:07	0.43	0.43	0.55	0.43	0.74
6352	2020-05-05 21:53:32	0.34	0.43	0.43	0.55	0.79
6357	2020-05-05 21:53:57	0.34	0.34	0.43	0.55	0.9
6362	2020-05-05 21:54:22	0.55	0.43	0.43	0.34	0.81
6367	2020-05-05 21:54:47	0.43	0.55	0.34	0.55	0.74
6372	2020-05-05 21:55:12	0.34	0.43	0.34	0.34	0.9
6377	2020-05-05 21:55:37	0.55	0.34	0.55	0.43	0.73
6382	2020-05-05 21:56:02	0.34	0.55	0.55	0.34	0.81
6387	2020-05-05 21:56:27	0.55	0.34	0.55	0.34	0.9
6392	2020-05-05 21:56:52	0.34	0.34	0.34	0.43	0.81
6397	2020-05-05 21:57:17	0.55	0.43	0.43	0.55	0.81
6402	2020-05-05 21:57:42	0.43	0.55	0.43	0.34	0.9
6407	2020-05-05 21:58:07	0.43	0.34	0.55	0.55	0.81
6412	2020-05-05 21:58:32	0.55	0.43	0.43	0.43	0.81
6417	2020-05-05 21:58:57	0.43	0.55	0.43	0.43	0.81
6422	2020-05-05 21:59:22	0.55	0.43	0.43	0.43	0.73
6427	2020-05-05 21:59:47	0.43	0.55	0.43	0.43	0.81
6432	2020-05-05 22:00:12	0.43	0.55	0.43	0.55	0.9
6437	2020-05-05 22:00:37	0.43	0.34	0.55	0.43	0.81
6442	2020-05-05 22:01:02	0.55	0.34	0.43	0.34	0.79
6447	2020-05-05 22:01:27	0.34	0.43	0.55	0.34	0.79
6452	2020-05-05 22:01:52	0.34	0.34	0.43	0.43	0.81
6457	2020-05-05 22:02:17	0.55	0.43	0.34	0.55	0.79
6462	2020-05-05 22:02:42	0.55	0.34	0.43	0.55	0.85
6467	2020-05-05 22:03:07	0.34	0.34	0.43	0.34	0.74
6472	2020-05-05 22:03:32	0.43	0.34	0.34	0.34	0.73
6477	2020-05-05 22:03:57	0.43	0.43	0.43	0.43	0.85
6482	2020-05-05 22:04:22	0.34	0.43	0.55	0.55	0.73
6487	2020-05-05 22:04:47	0.43	0.34	0.43	0.55	0.74
6492	2020-05-05 22:05:12	0.34	0.55	0.55	0.55	0.73
6497	2020-05-05 22:05:37	0.34	0.43	0.55	0.43	0.79
6502	2020-05-05 22:06:02	0.43	0.34	0.34	0.34	0.74
6507	2020-05-05 22:06:27	0.34	0.55	0.34	0.34	0.85
6512	2020-05-05 22:06:52	0.55	0.34	0.43	0.55	0.79
6517	2020-05-05 22:07:17	0.43	0.43	0.34	0.55	0.85
6522	2020-05-05 22:07:42	0.43	0.43	0.34	0.43	0.73
6527	2020-05-05 22:08:07	0.34	0.43	0.34	0.55	0.85
6532	2020-05-05 22:08:32	0.34	0.43	0.43	0.55	0.73
6537	2020-05-05 22:08:57	0.55	0.55	0.55	0.34	0.79
6542	2020-05-05 22:09:22	0.34	0.34	0.43	0.43	0.79
6547	2020-05-05 22:09:47	0.34	0.34	0.34	0.55	0.74
6552	2020-05-05 22:10:12	0.43	0.43	0.34	0.55	0.73
6557	2020-05-05 22:10:37	0.34	0.55	0.34	0.43	0.74
6562	2020-05-05 22:11:02	0.43	0.34	0.43	0.34	0.79
6567	2020-05-05 22:11:27	0.55	0.43	0.55	0.43	0.81
6572	2020-05-05 22:11:52	0.43	0.34	0.55	0.43	0.74
6577	2020-05-05 22:12:17	0.55	0.43	0.43	0.55	0.73
6582	2020-05-05 22:12:42	0.34	0.43	0.43	0.55	0.81
6587	2020-05-05 22:13:07	0.34	0.34	0.34	0.43	0.85
6592	2020-05-05 22:13:32	0.43	0.43	0.55	0.43	0.73
6597	2020-05-05 22:13:57	0.34	0.55	0.34	0.43	0.85
6602	2020-05-05 22:14:22	0.55	0.55	0.55	0.55	0.85
6607	2020-05-05 22:14:47	0.55	0.55	0.34	0.43	0.85
6612	2020-05-05 22:15:12	0.55	0.34	0.34	0.43	0.85
6617	2020-05-05 22:15:37	0.55	0.34	0.34	0.43	0.74
6622	2020-05-05 22:16:02	0.34	0.55	0.34	0.55	0.9
6627	2020-05-05 22:16:27	0.55	0.55	0.43	0.34	0.79
6632	2020-05-05 22:16:52	0.34	0.34	0.55	0.55	0.9
6637	2020-05-05 22:17:17	0.34	0.55	0.43	0.34	0.74
6642	2020-05-05 22:17:42	0.34	0.55	0.34	0.55	0.9
6647	2020-05-05 22:18:07	0.55	0.34	0.34	0.34	0.73
6652	2020-05-05 22:18:32	0.55	0.34	0.43	0.55	0.85
6657	2020-05-05 22:18:58	0.43	0.34	0.34	0.34	0.85
6662	2020-05-05 22:19:23	0.43	0.55	0.43	0.55	0.85
6667	2020-05-05 22:19:48	0.43	0.43	0.55	0.55	0.81
6672	2020-05-05 22:20:13	0.43	0.43	0.55	0.34	0.85
6677	2020-05-05 22:20:38	0.55	0.55	0.43	0.43	0.9
6682	2020-05-05 22:21:03	0.34	0.43	0.43	0.43	0.85
6687	2020-05-05 22:21:28	0.55	0.55	0.55	0.55	0.79
6692	2020-05-05 22:21:53	0.55	0.43	0.55	0.34	0.85
6697	2020-05-05 22:22:18	0.55	0.34	0.43	0.43	0.81
6702	2020-05-05 22:22:43	0.55	0.55	0.43	0.34	0.79
6707	2020-05-05 22:23:08	0.55	0.34	0.43	0.55	0.9
6712	2020-05-05 22:23:33	0.43	0.55	0.34	0.43	0.73
6717	2020-05-05 22:23:58	0.43	0.34	0.34	0.43	0.85
6722	2020-05-05 22:24:23	0.34	0.55	0.43	0.55	0.9
6727	2020-05-05 22:24:48	0.34	0.34	0.43	0.55	0.73
6732	2020-05-05 22:25:13	0.43	0.34	0.55	0.43	0.81
6737	2020-05-05 22:25:38	0.55	0.55	0.43	0.34	0.81
6742	2020-05-05 22:26:03	0.34	0.34	0.55	0.43	0.9
6747	2020-05-05 22:26:28	0.34	0.43	0.34	0.34	0.74
6752	2020-05-05 22:26:53	0.55	0.55	0.43	0.34	0.74
6757	2020-05-05 22:27:18	0.34	0.34	0.55	0.34	0.74
6762	2020-05-05 22:27:43	0.43	0.43	0.34	0.43	0.73
6223	2020-05-05 21:42:46	0.55	0.34	0.55	0.34	0.85
6228	2020-05-05 21:43:11	0.43	0.55	0.55	0.43	0.73
6233	2020-05-05 21:43:36	0.55	0.55	0.43	0.34	0.74
6238	2020-05-05 21:44:01	0.34	0.55	0.55	0.55	0.73
6243	2020-05-05 21:44:26	0.34	0.55	0.55	0.55	0.81
6248	2020-05-05 21:44:51	0.34	0.34	0.55	0.34	0.74
6253	2020-05-05 21:45:16	0.34	0.55	0.34	0.55	0.74
6258	2020-05-05 21:45:41	0.43	0.34	0.55	0.55	0.73
6263	2020-05-05 21:46:06	0.34	0.43	0.43	0.43	0.85
6268	2020-05-05 21:46:31	0.55	0.55	0.34	0.34	0.85
6273	2020-05-05 21:46:56	0.34	0.43	0.43	0.34	0.73
6278	2020-05-05 21:47:21	0.55	0.43	0.43	0.34	0.79
6283	2020-05-05 21:47:46	0.43	0.43	0.34	0.55	0.81
6288	2020-05-05 21:48:11	0.43	0.43	0.43	0.34	0.79
6293	2020-05-05 21:48:36	0.43	0.34	0.34	0.43	0.73
6298	2020-05-05 21:49:01	0.43	0.34	0.55	0.34	0.81
6303	2020-05-05 21:49:26	0.34	0.55	0.43	0.55	0.85
6308	2020-05-05 21:49:52	0.43	0.43	0.55	0.55	0.73
6313	2020-05-05 21:50:17	0.34	0.43	0.43	0.34	0.73
6318	2020-05-05 21:50:42	0.34	0.43	0.55	0.43	0.9
6323	2020-05-05 21:51:07	0.34	0.55	0.55	0.43	0.79
6328	2020-05-05 21:51:32	0.55	0.34	0.55	0.55	0.81
6333	2020-05-05 21:51:57	0.43	0.43	0.43	0.34	0.79
6338	2020-05-05 21:52:22	0.34	0.43	0.43	0.43	0.79
6343	2020-05-05 21:52:47	0.34	0.55	0.43	0.34	0.85
6348	2020-05-05 21:53:12	0.34	0.34	0.55	0.34	0.85
6353	2020-05-05 21:53:37	0.55	0.55	0.34	0.34	0.73
6358	2020-05-05 21:54:02	0.55	0.34	0.43	0.34	0.9
6363	2020-05-05 21:54:27	0.34	0.34	0.55	0.43	0.85
6368	2020-05-05 21:54:52	0.43	0.55	0.43	0.43	0.9
6373	2020-05-05 21:55:17	0.55	0.34	0.43	0.55	0.74
6378	2020-05-05 21:55:42	0.43	0.55	0.43	0.43	0.9
6383	2020-05-05 21:56:07	0.55	0.55	0.43	0.43	0.85
6388	2020-05-05 21:56:32	0.43	0.43	0.55	0.43	0.81
6393	2020-05-05 21:56:57	0.34	0.55	0.43	0.43	0.81
6398	2020-05-05 21:57:22	0.43	0.55	0.55	0.55	0.79
6403	2020-05-05 21:57:47	0.43	0.55	0.55	0.55	0.79
6408	2020-05-05 21:58:12	0.34	0.34	0.43	0.55	0.81
6413	2020-05-05 21:58:37	0.55	0.43	0.34	0.43	0.74
6418	2020-05-05 21:59:02	0.34	0.43	0.34	0.55	0.73
6423	2020-05-05 21:59:27	0.43	0.55	0.43	0.34	0.79
6428	2020-05-05 21:59:52	0.43	0.55	0.43	0.34	0.73
6433	2020-05-05 22:00:17	0.55	0.43	0.43	0.55	0.74
6438	2020-05-05 22:00:42	0.43	0.34	0.55	0.55	0.85
6443	2020-05-05 22:01:07	0.43	0.34	0.55	0.55	0.79
6448	2020-05-05 22:01:32	0.55	0.43	0.55	0.55	0.81
6453	2020-05-05 22:01:57	0.43	0.43	0.34	0.55	0.81
6458	2020-05-05 22:02:22	0.43	0.43	0.43	0.43	0.79
6463	2020-05-05 22:02:47	0.43	0.34	0.34	0.55	0.74
6468	2020-05-05 22:03:12	0.55	0.43	0.34	0.34	0.9
6473	2020-05-05 22:03:37	0.43	0.43	0.55	0.55	0.81
6478	2020-05-05 22:04:02	0.55	0.55	0.43	0.34	0.9
6483	2020-05-05 22:04:27	0.34	0.43	0.34	0.55	0.79
6488	2020-05-05 22:04:52	0.43	0.34	0.55	0.43	0.81
6493	2020-05-05 22:05:17	0.43	0.55	0.34	0.55	0.81
6498	2020-05-05 22:05:42	0.34	0.55	0.55	0.34	0.79
6503	2020-05-05 22:06:07	0.43	0.55	0.43	0.43	0.81
6508	2020-05-05 22:06:32	0.34	0.34	0.34	0.34	0.73
6513	2020-05-05 22:06:57	0.34	0.34	0.34	0.43	0.79
6518	2020-05-05 22:07:22	0.55	0.55	0.34	0.43	0.85
6523	2020-05-05 22:07:47	0.34	0.55	0.43	0.55	0.79
6528	2020-05-05 22:08:12	0.34	0.34	0.43	0.34	0.79
6533	2020-05-05 22:08:37	0.43	0.55	0.55	0.55	0.85
6538	2020-05-05 22:09:02	0.55	0.34	0.55	0.43	0.79
6543	2020-05-05 22:09:27	0.55	0.43	0.34	0.34	0.73
6548	2020-05-05 22:09:52	0.34	0.34	0.55	0.43	0.79
6553	2020-05-05 22:10:17	0.34	0.34	0.34	0.55	0.79
6558	2020-05-05 22:10:42	0.34	0.43	0.34	0.34	0.79
6563	2020-05-05 22:11:07	0.55	0.34	0.43	0.55	0.74
6568	2020-05-05 22:11:32	0.34	0.34	0.34	0.34	0.9
6573	2020-05-05 22:11:57	0.55	0.34	0.55	0.43	0.9
6578	2020-05-05 22:12:22	0.34	0.34	0.55	0.43	0.9
6583	2020-05-05 22:12:47	0.55	0.43	0.34	0.34	0.74
6588	2020-05-05 22:13:12	0.43	0.55	0.55	0.55	0.73
6593	2020-05-05 22:13:37	0.43	0.34	0.55	0.34	0.73
6598	2020-05-05 22:14:02	0.55	0.34	0.34	0.43	0.74
6603	2020-05-05 22:14:27	0.34	0.34	0.34	0.34	0.73
6608	2020-05-05 22:14:52	0.55	0.34	0.55	0.34	0.79
6613	2020-05-05 22:15:17	0.55	0.55	0.34	0.43	0.73
6618	2020-05-05 22:15:42	0.55	0.34	0.55	0.43	0.73
6623	2020-05-05 22:16:07	0.43	0.34	0.55	0.55	0.73
6628	2020-05-05 22:16:32	0.55	0.43	0.43	0.34	0.73
6633	2020-05-05 22:16:57	0.34	0.55	0.43	0.55	0.74
6638	2020-05-05 22:17:22	0.55	0.34	0.34	0.43	0.9
6643	2020-05-05 22:17:47	0.43	0.34	0.43	0.43	0.85
6648	2020-05-05 22:18:12	0.43	0.55	0.34	0.43	0.81
6653	2020-05-05 22:18:37	0.43	0.34	0.34	0.34	0.74
6658	2020-05-05 22:19:03	0.34	0.55	0.34	0.43	0.74
6663	2020-05-05 22:19:28	0.55	0.34	0.34	0.34	0.74
6668	2020-05-05 22:19:53	0.43	0.34	0.43	0.43	0.79
6673	2020-05-05 22:20:18	0.43	0.43	0.43	0.43	0.79
6678	2020-05-05 22:20:43	0.55	0.34	0.55	0.43	0.73
6683	2020-05-05 22:21:08	0.55	0.34	0.55	0.55	0.73
6688	2020-05-05 22:21:33	0.34	0.43	0.34	0.55	0.85
6693	2020-05-05 22:21:58	0.34	0.55	0.55	0.43	0.85
6698	2020-05-05 22:22:23	0.55	0.55	0.34	0.34	0.9
6703	2020-05-05 22:22:48	0.55	0.43	0.34	0.34	0.73
6708	2020-05-05 22:23:13	0.55	0.34	0.34	0.55	0.74
6713	2020-05-05 22:23:38	0.55	0.43	0.55	0.34	0.73
6718	2020-05-05 22:24:03	0.34	0.34	0.43	0.55	0.73
6723	2020-05-05 22:24:28	0.55	0.34	0.55	0.55	0.73
6728	2020-05-05 22:24:53	0.55	0.55	0.43	0.34	0.74
6733	2020-05-05 22:25:18	0.34	0.55	0.43	0.34	0.74
6738	2020-05-05 22:25:43	0.55	0.34	0.55	0.34	0.73
6743	2020-05-05 22:26:08	0.55	0.34	0.55	0.43	0.73
6748	2020-05-05 22:26:33	0.55	0.55	0.43	0.34	0.9
6753	2020-05-05 22:26:58	0.55	0.34	0.34	0.55	0.81
6758	2020-05-05 22:27:23	0.55	0.43	0.43	0.34	0.74
6763	2020-05-05 22:27:48	0.34	0.55	0.55	0.34	0.9
6768	2020-05-05 22:28:13	0.43	0.34	0.55	0.34	0.73
6773	2020-05-05 22:28:38	0.34	0.34	0.43	0.34	0.74
6778	2020-05-05 22:29:03	0.55	0.34	0.55	0.43	0.81
6783	2020-05-05 22:29:28	0.43	0.55	0.34	0.55	0.85
6788	2020-05-05 22:29:53	0.55	0.43	0.34	0.43	0.79
6793	2020-05-05 22:30:18	0.34	0.55	0.43	0.34	0.9
6798	2020-05-05 22:30:43	0.55	0.34	0.55	0.55	0.85
6803	2020-05-05 22:31:08	0.43	0.34	0.55	0.34	0.79
6808	2020-05-05 22:31:33	0.43	0.55	0.34	0.34	0.81
6813	2020-05-05 22:31:58	0.55	0.34	0.43	0.43	0.9
6818	2020-05-05 22:32:23	0.43	0.34	0.43	0.55	0.81
6823	2020-05-05 22:32:48	0.34	0.55	0.55	0.43	0.79
6828	2020-05-05 22:33:13	0.55	0.55	0.34	0.55	0.81
6833	2020-05-05 22:33:38	0.55	0.43	0.34	0.34	0.73
6838	2020-05-05 22:34:03	0.34	0.34	0.34	0.43	0.9
6843	2020-05-05 22:34:28	0.34	0.34	0.55	0.43	0.73
6848	2020-05-05 22:34:53	0.34	0.34	0.34	0.43	0.74
6853	2020-05-05 22:35:18	0.55	0.34	0.55	0.34	0.74
6858	2020-05-05 22:35:43	0.43	0.34	0.43	0.34	0.79
6863	2020-05-05 22:36:08	0.43	0.43	0.43	0.43	0.73
6868	2020-05-05 22:36:33	0.43	0.55	0.43	0.55	0.79
6873	2020-05-05 22:36:58	0.55	0.43	0.55	0.55	0.9
6878	2020-05-05 22:37:23	0.55	0.34	0.43	0.55	0.81
6764	2020-05-05 22:27:53	0.43	0.34	0.55	0.43	0.79
6769	2020-05-05 22:28:18	0.43	0.55	0.34	0.55	0.79
6774	2020-05-05 22:28:43	0.43	0.55	0.43	0.55	0.85
6779	2020-05-05 22:29:08	0.43	0.43	0.55	0.55	0.79
6784	2020-05-05 22:29:33	0.43	0.55	0.43	0.43	0.85
6789	2020-05-05 22:29:58	0.43	0.55	0.43	0.55	0.81
6794	2020-05-05 22:30:23	0.55	0.43	0.34	0.55	0.79
6799	2020-05-05 22:30:48	0.43	0.34	0.55	0.34	0.74
6804	2020-05-05 22:31:13	0.55	0.43	0.55	0.55	0.81
6809	2020-05-05 22:31:38	0.34	0.55	0.43	0.34	0.85
6814	2020-05-05 22:32:03	0.55	0.34	0.34	0.55	0.81
6819	2020-05-05 22:32:28	0.34	0.34	0.43	0.43	0.85
6824	2020-05-05 22:32:53	0.43	0.34	0.55	0.34	0.85
6829	2020-05-05 22:33:18	0.55	0.34	0.34	0.55	0.74
6834	2020-05-05 22:33:43	0.55	0.43	0.34	0.34	0.73
6839	2020-05-05 22:34:08	0.55	0.43	0.43	0.55	0.85
6844	2020-05-05 22:34:33	0.55	0.34	0.43	0.43	0.9
6849	2020-05-05 22:34:58	0.43	0.43	0.34	0.34	0.81
6854	2020-05-05 22:35:23	0.34	0.34	0.55	0.34	0.81
6859	2020-05-05 22:35:48	0.34	0.55	0.34	0.34	0.9
6864	2020-05-05 22:36:13	0.55	0.43	0.43	0.43	0.74
6869	2020-05-05 22:36:38	0.55	0.34	0.34	0.43	0.81
6874	2020-05-05 22:37:03	0.43	0.34	0.43	0.34	0.81
6879	2020-05-05 22:37:28	0.55	0.34	0.55	0.55	0.79
6765	2020-05-05 22:27:58	0.55	0.34	0.55	0.55	0.74
6770	2020-05-05 22:28:23	0.55	0.55	0.55	0.43	0.74
6775	2020-05-05 22:28:48	0.55	0.43	0.55	0.55	0.85
6780	2020-05-05 22:29:13	0.55	0.55	0.34	0.55	0.79
6785	2020-05-05 22:29:38	0.34	0.34	0.34	0.55	0.85
6790	2020-05-05 22:30:03	0.55	0.43	0.43	0.55	0.73
6795	2020-05-05 22:30:28	0.43	0.34	0.43	0.34	0.79
6800	2020-05-05 22:30:53	0.43	0.55	0.43	0.43	0.81
6805	2020-05-05 22:31:18	0.55	0.43	0.43	0.55	0.73
6810	2020-05-05 22:31:43	0.34	0.55	0.43	0.34	0.74
6815	2020-05-05 22:32:08	0.55	0.55	0.34	0.55	0.74
6820	2020-05-05 22:32:33	0.34	0.55	0.43	0.43	0.85
6825	2020-05-05 22:32:58	0.43	0.43	0.55	0.43	0.9
6830	2020-05-05 22:33:23	0.34	0.34	0.34	0.55	0.9
6835	2020-05-05 22:33:48	0.55	0.43	0.55	0.34	0.79
6840	2020-05-05 22:34:13	0.34	0.34	0.55	0.55	0.85
6845	2020-05-05 22:34:38	0.34	0.43	0.34	0.55	0.81
6850	2020-05-05 22:35:03	0.34	0.43	0.55	0.34	0.73
6855	2020-05-05 22:35:28	0.55	0.34	0.43	0.34	0.9
6860	2020-05-05 22:35:53	0.34	0.43	0.55	0.43	0.85
6865	2020-05-05 22:36:18	0.34	0.43	0.34	0.34	0.74
6870	2020-05-05 22:36:43	0.43	0.43	0.43	0.43	0.74
6875	2020-05-05 22:37:08	0.43	0.34	0.34	0.43	0.73
6880	2020-05-05 22:37:33	0.43	0.55	0.43	0.43	0.9
6766	2020-05-05 22:28:03	0.34	0.34	0.34	0.43	0.74
6771	2020-05-05 22:28:28	0.55	0.34	0.43	0.34	0.79
6776	2020-05-05 22:28:53	0.43	0.34	0.34	0.55	0.85
6781	2020-05-05 22:29:18	0.34	0.34	0.55	0.43	0.85
6786	2020-05-05 22:29:43	0.34	0.34	0.34	0.55	0.73
6791	2020-05-05 22:30:08	0.34	0.43	0.55	0.55	0.79
6796	2020-05-05 22:30:33	0.43	0.55	0.55	0.55	0.85
6801	2020-05-05 22:30:58	0.34	0.55	0.43	0.55	0.79
6806	2020-05-05 22:31:23	0.55	0.34	0.43	0.43	0.9
6811	2020-05-05 22:31:48	0.34	0.55	0.43	0.55	0.81
6816	2020-05-05 22:32:13	0.34	0.43	0.43	0.55	0.74
6821	2020-05-05 22:32:38	0.55	0.43	0.34	0.34	0.85
6826	2020-05-05 22:33:03	0.43	0.55	0.34	0.34	0.79
6831	2020-05-05 22:33:28	0.34	0.34	0.55	0.43	0.9
6836	2020-05-05 22:33:53	0.34	0.43	0.43	0.34	0.9
6841	2020-05-05 22:34:18	0.34	0.55	0.43	0.55	0.9
6846	2020-05-05 22:34:43	0.55	0.55	0.55	0.55	0.79
6851	2020-05-05 22:35:08	0.43	0.43	0.55	0.43	0.81
6856	2020-05-05 22:35:33	0.34	0.55	0.34	0.34	0.74
6861	2020-05-05 22:35:58	0.34	0.34	0.43	0.55	0.73
6866	2020-05-05 22:36:23	0.55	0.34	0.34	0.34	0.81
6871	2020-05-05 22:36:48	0.34	0.43	0.43	0.34	0.9
6876	2020-05-05 22:37:13	0.43	0.55	0.34	0.55	0.81
6767	2020-05-05 22:28:08	0.55	0.55	0.34	0.43	0.85
6772	2020-05-05 22:28:33	0.55	0.55	0.55	0.43	0.79
6777	2020-05-05 22:28:58	0.34	0.34	0.34	0.43	0.81
6782	2020-05-05 22:29:23	0.55	0.34	0.43	0.55	0.74
6787	2020-05-05 22:29:48	0.34	0.34	0.34	0.55	0.85
6792	2020-05-05 22:30:13	0.34	0.34	0.34	0.43	0.81
6797	2020-05-05 22:30:38	0.55	0.34	0.34	0.55	0.81
6802	2020-05-05 22:31:03	0.43	0.34	0.43	0.34	0.9
6807	2020-05-05 22:31:28	0.43	0.34	0.55	0.43	0.79
6812	2020-05-05 22:31:53	0.43	0.34	0.55	0.55	0.85
6817	2020-05-05 22:32:18	0.34	0.34	0.55	0.43	0.74
6822	2020-05-05 22:32:43	0.34	0.34	0.34	0.43	0.9
6827	2020-05-05 22:33:08	0.43	0.55	0.43	0.34	0.73
6832	2020-05-05 22:33:33	0.55	0.34	0.55	0.34	0.9
6837	2020-05-05 22:33:58	0.34	0.34	0.34	0.34	0.79
6842	2020-05-05 22:34:23	0.34	0.43	0.43	0.55	0.81
6847	2020-05-05 22:34:48	0.55	0.43	0.43	0.55	0.73
6852	2020-05-05 22:35:13	0.43	0.34	0.34	0.55	0.85
6857	2020-05-05 22:35:38	0.55	0.55	0.34	0.55	0.81
6862	2020-05-05 22:36:03	0.55	0.43	0.55	0.55	0.74
6867	2020-05-05 22:36:28	0.55	0.43	0.34	0.55	0.85
6872	2020-05-05 22:36:53	0.43	0.34	0.55	0.55	0.74
6877	2020-05-05 22:37:18	0.34	0.34	0.34	0.55	0.74
6881	2020-05-05 22:37:38	0.55	0.34	0.43	0.43	0.79
6882	2020-05-05 22:37:43	0.34	0.43	0.55	0.43	0.9
6883	2020-05-05 22:37:48	0.34	0.34	0.34	0.55	0.74
6884	2020-05-05 22:37:53	0.55	0.43	0.34	0.34	0.81
6885	2020-05-05 22:37:58	0.43	0.43	0.43	0.34	0.73
6886	2020-05-05 22:38:03	0.55	0.43	0.34	0.55	0.73
6887	2020-05-05 22:38:08	0.34	0.43	0.55	0.55	0.74
6888	2020-05-05 22:38:13	0.43	0.55	0.55	0.34	0.85
6889	2020-05-05 22:38:18	0.34	0.55	0.55	0.43	0.73
6890	2020-05-05 22:38:23	0.43	0.34	0.43	0.34	0.81
6891	2020-05-05 22:38:28	0.55	0.55	0.43	0.34	0.73
6892	2020-05-05 22:38:33	0.43	0.43	0.43	0.34	0.9
6893	2020-05-05 22:38:38	0.34	0.34	0.55	0.34	0.79
6894	2020-05-05 22:38:43	0.43	0.43	0.43	0.34	0.85
6895	2020-05-05 22:38:48	0.34	0.55	0.55	0.43	0.81
6896	2020-05-05 22:38:53	0.43	0.43	0.43	0.43	0.73
6897	2020-05-05 22:38:58	0.55	0.43	0.34	0.34	0.74
6898	2020-05-05 22:39:03	0.55	0.43	0.55	0.43	0.81
6899	2020-05-05 22:39:08	0.43	0.55	0.34	0.34	0.73
6900	2020-05-05 22:39:13	0.55	0.55	0.55	0.55	0.79
6901	2020-05-05 22:39:18	0.43	0.55	0.55	0.43	0.74
6902	2020-05-05 22:39:23	0.43	0.55	0.34	0.43	0.74
6903	2020-05-05 22:39:28	0.43	0.34	0.55	0.34	0.81
6904	2020-05-05 22:39:33	0.43	0.34	0.55	0.34	0.73
6905	2020-05-05 22:39:38	0.43	0.43	0.43	0.43	0.73
6906	2020-05-05 22:39:43	0.34	0.55	0.43	0.34	0.9
6907	2020-05-05 22:39:48	0.34	0.34	0.55	0.55	0.81
6908	2020-05-05 22:39:53	0.55	0.43	0.34	0.34	0.81
6909	2020-05-05 22:39:58	0.43	0.34	0.34	0.34	0.81
6910	2020-05-05 22:40:03	0.55	0.34	0.34	0.55	0.9
6911	2020-05-05 22:40:08	0.55	0.43	0.34	0.34	0.9
6912	2020-05-05 22:40:13	0.55	0.43	0.43	0.55	0.85
6913	2020-05-05 22:40:18	0.43	0.34	0.34	0.34	0.85
6914	2020-05-05 22:40:23	0.34	0.55	0.55	0.55	0.85
6915	2020-05-05 22:40:28	0.43	0.34	0.43	0.34	0.79
6916	2020-05-05 22:40:33	0.43	0.34	0.34	0.55	0.85
6917	2020-05-05 22:40:38	0.34	0.34	0.34	0.34	0.73
6918	2020-05-05 22:40:43	0.43	0.55	0.34	0.55	0.9
6919	2020-05-05 22:40:48	0.43	0.55	0.34	0.34	0.81
6920	2020-05-05 22:40:53	0.43	0.34	0.43	0.34	0.81
6921	2020-05-05 22:40:58	0.43	0.55	0.55	0.55	0.74
6922	2020-05-05 22:41:03	0.34	0.34	0.34	0.55	0.79
6923	2020-05-05 22:41:08	0.43	0.34	0.34	0.34	0.74
6924	2020-05-05 22:41:13	0.43	0.43	0.43	0.43	0.9
6925	2020-05-05 22:41:18	0.34	0.55	0.43	0.43	0.81
6926	2020-05-05 22:41:23	0.34	0.55	0.43	0.34	0.85
6927	2020-05-05 22:41:28	0.55	0.43	0.55	0.55	0.74
6928	2020-05-05 22:41:33	0.43	0.43	0.34	0.55	0.74
6929	2020-05-05 22:41:38	0.34	0.34	0.43	0.34	0.79
6930	2020-05-05 22:41:43	0.55	0.43	0.55	0.34	0.74
6931	2020-05-05 22:41:48	0.43	0.34	0.43	0.34	0.73
6932	2020-05-05 22:41:53	0.34	0.34	0.43	0.55	0.85
6933	2020-05-05 22:41:58	0.34	0.43	0.34	0.55	0.79
6934	2020-05-05 22:42:03	0.43	0.34	0.43	0.34	0.74
6935	2020-05-05 22:42:08	0.43	0.43	0.55	0.34	0.73
6936	2020-05-05 22:42:13	0.34	0.55	0.34	0.55	0.73
6937	2020-05-05 22:42:18	0.34	0.43	0.55	0.34	0.85
6938	2020-05-05 22:42:23	0.55	0.55	0.34	0.34	0.74
6939	2020-05-05 22:42:28	0.55	0.55	0.43	0.55	0.85
6940	2020-05-05 22:42:33	0.43	0.43	0.34	0.43	0.81
6941	2020-05-05 22:42:38	0.55	0.55	0.34	0.43	0.85
6942	2020-05-05 22:42:43	0.43	0.43	0.43	0.43	0.73
6943	2020-05-05 22:42:48	0.34	0.34	0.43	0.55	0.74
6944	2020-05-05 22:42:53	0.43	0.43	0.55	0.34	0.73
6945	2020-05-05 22:42:58	0.55	0.34	0.55	0.55	0.73
6946	2020-05-05 22:43:03	0.34	0.55	0.43	0.55	0.74
6947	2020-05-05 22:43:08	0.55	0.34	0.55	0.55	0.73
6948	2020-05-05 22:43:13	0.55	0.43	0.43	0.43	0.85
6949	2020-05-05 22:43:18	0.55	0.55	0.55	0.55	0.81
6950	2020-05-05 22:43:23	0.43	0.34	0.34	0.34	0.85
6951	2020-05-05 22:43:28	0.55	0.43	0.55	0.34	0.81
6952	2020-05-05 22:43:33	0.43	0.55	0.34	0.43	0.9
6953	2020-05-05 22:43:38	0.34	0.34	0.55	0.55	0.74
6954	2020-05-05 22:43:43	0.43	0.34	0.34	0.34	0.85
6955	2020-05-05 22:43:48	0.43	0.43	0.34	0.43	0.81
6956	2020-05-05 22:43:53	0.55	0.34	0.34	0.43	0.74
6957	2020-05-05 22:43:58	0.43	0.34	0.34	0.34	0.9
6958	2020-05-05 22:44:03	0.43	0.55	0.34	0.34	0.81
6959	2020-05-05 22:44:08	0.34	0.43	0.43	0.43	0.79
6960	2020-05-05 22:44:13	0.34	0.55	0.34	0.55	0.81
6961	2020-05-05 22:44:18	0.34	0.34	0.43	0.34	0.74
6962	2020-05-05 22:44:23	0.55	0.55	0.43	0.34	0.74
6963	2020-05-05 22:44:28	0.34	0.43	0.34	0.55	0.81
6964	2020-05-05 22:44:33	0.34	0.34	0.55	0.55	0.74
6965	2020-05-05 22:44:38	0.43	0.43	0.55	0.43	0.81
6966	2020-05-05 22:44:43	0.43	0.34	0.55	0.43	0.85
6971	2020-05-05 22:45:08	0.55	0.43	0.43	0.55	0.79
6976	2020-05-05 22:45:33	0.55	0.43	0.55	0.55	0.73
6981	2020-05-05 22:45:58	0.43	0.34	0.34	0.34	0.79
6986	2020-05-05 22:46:23	0.34	0.43	0.55	0.34	0.85
6991	2020-05-05 22:46:48	0.43	0.55	0.55	0.55	0.81
6996	2020-05-05 22:47:13	0.55	0.34	0.55	0.43	0.74
7001	2020-05-05 22:47:38	0.55	0.34	0.43	0.34	0.79
7006	2020-05-05 22:48:04	0.43	0.34	0.34	0.34	0.74
7011	2020-05-05 22:48:29	0.55	0.55	0.43	0.43	0.81
7016	2020-05-05 22:48:54	0.43	0.34	0.55	0.55	0.74
7021	2020-05-05 22:49:19	0.55	0.34	0.34	0.55	0.73
7026	2020-05-05 22:49:44	0.34	0.43	0.34	0.55	0.74
7031	2020-05-05 22:50:09	0.55	0.55	0.34	0.43	0.74
7036	2020-05-05 22:50:34	0.43	0.55	0.43	0.55	0.81
7041	2020-05-05 22:50:59	0.55	0.34	0.43	0.55	0.73
7046	2020-05-05 22:51:24	0.43	0.43	0.43	0.43	0.79
7051	2020-05-05 22:51:49	0.55	0.34	0.34	0.55	0.9
7056	2020-05-05 22:52:14	0.55	0.55	0.55	0.34	0.9
7061	2020-05-05 22:52:39	0.43	0.55	0.43	0.55	0.85
7066	2020-05-05 22:53:04	0.55	0.43	0.55	0.43	0.9
7071	2020-05-05 22:53:29	0.34	0.55	0.34	0.43	0.79
7076	2020-05-05 22:53:54	0.43	0.43	0.55	0.55	0.85
7081	2020-05-05 22:54:19	0.55	0.34	0.55	0.34	0.73
7086	2020-05-05 22:54:44	0.55	0.43	0.34	0.43	0.79
7091	2020-05-05 22:55:09	0.34	0.43	0.43	0.55	0.79
7096	2020-05-05 22:55:34	0.55	0.43	0.55	0.34	0.81
7101	2020-05-05 22:55:59	0.55	0.55	0.34	0.34	0.74
7106	2020-05-05 22:56:24	0.34	0.34	0.55	0.55	0.73
7111	2020-05-05 22:56:49	0.43	0.43	0.55	0.34	0.85
7116	2020-05-05 22:57:14	0.43	0.55	0.43	0.55	0.79
7121	2020-05-05 22:57:39	0.55	0.55	0.34	0.55	0.9
7126	2020-05-05 22:58:04	0.55	0.55	0.55	0.43	0.73
7131	2020-05-05 22:58:29	0.43	0.34	0.55	0.43	0.81
7136	2020-05-05 22:58:54	0.34	0.34	0.34	0.34	0.81
7141	2020-05-05 22:59:19	0.34	0.34	0.43	0.34	0.85
7146	2020-05-05 22:59:44	0.55	0.55	0.43	0.55	0.81
7151	2020-05-05 23:00:09	0.55	0.34	0.43	0.34	0.73
7156	2020-05-05 23:00:34	0.43	0.34	0.43	0.34	0.73
7161	2020-05-05 23:00:59	0.34	0.43	0.34	0.55	0.74
7166	2020-05-05 23:01:24	0.34	0.55	0.34	0.55	0.79
7171	2020-05-05 23:01:49	0.34	0.55	0.43	0.55	0.81
7176	2020-05-05 23:02:14	0.55	0.55	0.34	0.55	0.74
7181	2020-05-05 23:02:39	0.55	0.55	0.55	0.55	0.85
7186	2020-05-05 23:03:04	0.43	0.34	0.34	0.43	0.79
7191	2020-05-05 23:03:29	0.55	0.55	0.55	0.55	0.81
7196	2020-05-05 23:03:54	0.34	0.55	0.55	0.34	0.85
7201	2020-05-05 23:04:19	0.43	0.34	0.34	0.34	0.74
7206	2020-05-05 23:04:44	0.55	0.34	0.43	0.34	0.81
7211	2020-05-05 23:05:09	0.55	0.55	0.43	0.55	0.85
7216	2020-05-05 23:05:34	0.34	0.43	0.34	0.34	0.79
7221	2020-05-05 23:05:59	0.34	0.43	0.34	0.34	0.85
7226	2020-05-05 23:06:24	0.55	0.55	0.43	0.43	0.81
7231	2020-05-05 23:06:49	0.43	0.43	0.43	0.55	0.79
7236	2020-05-05 23:07:14	0.43	0.43	0.43	0.55	0.81
6967	2020-05-05 22:44:48	0.55	0.34	0.43	0.43	0.73
6972	2020-05-05 22:45:13	0.43	0.34	0.43	0.43	0.73
6977	2020-05-05 22:45:38	0.43	0.34	0.34	0.34	0.81
6982	2020-05-05 22:46:03	0.43	0.34	0.55	0.43	0.79
6987	2020-05-05 22:46:28	0.34	0.55	0.55	0.43	0.74
6992	2020-05-05 22:46:53	0.34	0.43	0.43	0.34	0.81
6997	2020-05-05 22:47:18	0.43	0.43	0.34	0.34	0.79
7002	2020-05-05 22:47:43	0.43	0.34	0.55	0.43	0.79
7007	2020-05-05 22:48:09	0.43	0.34	0.34	0.55	0.73
7012	2020-05-05 22:48:34	0.55	0.55	0.55	0.55	0.81
7017	2020-05-05 22:48:59	0.43	0.34	0.34	0.55	0.73
7022	2020-05-05 22:49:24	0.43	0.55	0.34	0.55	0.9
7027	2020-05-05 22:49:49	0.43	0.34	0.43	0.55	0.9
7032	2020-05-05 22:50:14	0.55	0.43	0.34	0.55	0.74
7037	2020-05-05 22:50:39	0.43	0.34	0.55	0.43	0.74
7042	2020-05-05 22:51:04	0.34	0.55	0.34	0.34	0.73
7047	2020-05-05 22:51:29	0.34	0.55	0.34	0.43	0.81
7052	2020-05-05 22:51:54	0.34	0.34	0.34	0.34	0.85
7057	2020-05-05 22:52:19	0.34	0.43	0.43	0.43	0.79
7062	2020-05-05 22:52:44	0.43	0.43	0.43	0.43	0.74
7067	2020-05-05 22:53:09	0.55	0.34	0.43	0.55	0.85
7072	2020-05-05 22:53:34	0.34	0.43	0.43	0.34	0.73
7077	2020-05-05 22:53:59	0.34	0.34	0.55	0.34	0.85
7082	2020-05-05 22:54:24	0.43	0.34	0.43	0.34	0.81
7087	2020-05-05 22:54:49	0.34	0.34	0.55	0.55	0.74
7092	2020-05-05 22:55:14	0.34	0.34	0.55	0.43	0.79
7097	2020-05-05 22:55:39	0.55	0.34	0.43	0.43	0.74
7102	2020-05-05 22:56:04	0.55	0.34	0.55	0.34	0.9
7107	2020-05-05 22:56:29	0.55	0.43	0.34	0.55	0.81
7112	2020-05-05 22:56:54	0.43	0.34	0.34	0.43	0.85
7117	2020-05-05 22:57:19	0.43	0.34	0.55	0.34	0.73
7122	2020-05-05 22:57:44	0.34	0.34	0.43	0.43	0.79
7127	2020-05-05 22:58:09	0.43	0.43	0.34	0.34	0.81
7132	2020-05-05 22:58:34	0.55	0.55	0.34	0.43	0.81
7137	2020-05-05 22:58:59	0.55	0.34	0.34	0.34	0.79
7142	2020-05-05 22:59:24	0.34	0.34	0.34	0.55	0.79
7147	2020-05-05 22:59:49	0.43	0.34	0.43	0.34	0.74
7152	2020-05-05 23:00:14	0.43	0.55	0.55	0.55	0.73
7157	2020-05-05 23:00:39	0.34	0.55	0.43	0.43	0.85
7162	2020-05-05 23:01:04	0.34	0.55	0.43	0.55	0.74
7167	2020-05-05 23:01:29	0.55	0.55	0.55	0.55	0.81
7172	2020-05-05 23:01:54	0.43	0.55	0.34	0.55	0.79
7177	2020-05-05 23:02:19	0.34	0.43	0.55	0.43	0.9
7182	2020-05-05 23:02:44	0.43	0.55	0.43	0.55	0.79
7187	2020-05-05 23:03:09	0.34	0.43	0.55	0.34	0.73
7192	2020-05-05 23:03:34	0.55	0.34	0.34	0.34	0.73
7197	2020-05-05 23:03:59	0.43	0.34	0.34	0.34	0.74
7202	2020-05-05 23:04:24	0.34	0.43	0.34	0.55	0.9
7207	2020-05-05 23:04:49	0.55	0.43	0.43	0.43	0.85
7212	2020-05-05 23:05:14	0.55	0.55	0.34	0.55	0.73
7217	2020-05-05 23:05:39	0.55	0.55	0.55	0.43	0.85
7222	2020-05-05 23:06:04	0.34	0.34	0.55	0.43	0.73
7227	2020-05-05 23:06:29	0.34	0.34	0.55	0.43	0.73
7232	2020-05-05 23:06:54	0.34	0.43	0.34	0.55	0.9
7237	2020-05-05 23:07:19	0.34	0.43	0.43	0.43	0.81
6968	2020-05-05 22:44:53	0.34	0.43	0.34	0.55	0.81
6973	2020-05-05 22:45:18	0.43	0.34	0.55	0.43	0.85
6978	2020-05-05 22:45:43	0.34	0.43	0.43	0.43	0.85
6983	2020-05-05 22:46:08	0.55	0.34	0.55	0.43	0.85
6988	2020-05-05 22:46:33	0.55	0.34	0.43	0.43	0.81
6993	2020-05-05 22:46:58	0.43	0.34	0.55	0.55	0.79
6998	2020-05-05 22:47:23	0.34	0.34	0.34	0.34	0.79
7003	2020-05-05 22:47:48	0.34	0.43	0.43	0.43	0.85
7008	2020-05-05 22:48:14	0.34	0.34	0.43	0.34	0.9
7013	2020-05-05 22:48:39	0.55	0.34	0.34	0.55	0.9
7018	2020-05-05 22:49:04	0.43	0.43	0.43	0.43	0.73
7023	2020-05-05 22:49:29	0.43	0.55	0.34	0.34	0.79
7028	2020-05-05 22:49:54	0.43	0.43	0.34	0.43	0.73
7033	2020-05-05 22:50:19	0.55	0.43	0.55	0.34	0.73
7038	2020-05-05 22:50:44	0.34	0.43	0.34	0.55	0.79
7043	2020-05-05 22:51:09	0.55	0.34	0.43	0.34	0.9
7048	2020-05-05 22:51:34	0.34	0.55	0.34	0.55	0.9
7053	2020-05-05 22:51:59	0.34	0.43	0.34	0.34	0.85
7058	2020-05-05 22:52:24	0.55	0.43	0.55	0.34	0.74
7063	2020-05-05 22:52:49	0.55	0.43	0.34	0.43	0.85
7068	2020-05-05 22:53:14	0.34	0.55	0.34	0.34	0.9
7073	2020-05-05 22:53:39	0.55	0.55	0.55	0.55	0.73
7078	2020-05-05 22:54:04	0.34	0.43	0.55	0.55	0.74
7083	2020-05-05 22:54:29	0.43	0.34	0.55	0.55	0.9
7088	2020-05-05 22:54:54	0.34	0.43	0.55	0.55	0.9
7093	2020-05-05 22:55:19	0.34	0.43	0.43	0.34	0.9
7098	2020-05-05 22:55:44	0.55	0.43	0.43	0.55	0.9
7103	2020-05-05 22:56:09	0.55	0.55	0.55	0.34	0.79
7108	2020-05-05 22:56:34	0.55	0.55	0.34	0.55	0.79
7113	2020-05-05 22:56:59	0.55	0.55	0.43	0.43	0.85
7118	2020-05-05 22:57:24	0.55	0.43	0.43	0.34	0.74
7123	2020-05-05 22:57:49	0.34	0.55	0.43	0.43	0.74
7128	2020-05-05 22:58:14	0.55	0.43	0.34	0.55	0.73
7133	2020-05-05 22:58:39	0.55	0.55	0.55	0.55	0.73
7138	2020-05-05 22:59:04	0.55	0.55	0.55	0.55	0.81
7143	2020-05-05 22:59:29	0.55	0.43	0.34	0.43	0.85
7148	2020-05-05 22:59:54	0.55	0.34	0.34	0.34	0.79
7153	2020-05-05 23:00:19	0.34	0.55	0.34	0.55	0.85
7158	2020-05-05 23:00:44	0.34	0.55	0.43	0.55	0.79
7163	2020-05-05 23:01:09	0.55	0.55	0.43	0.34	0.85
7168	2020-05-05 23:01:34	0.55	0.43	0.55	0.43	0.73
7173	2020-05-05 23:01:59	0.34	0.55	0.43	0.43	0.9
7178	2020-05-05 23:02:24	0.55	0.43	0.34	0.43	0.85
7183	2020-05-05 23:02:49	0.34	0.55	0.43	0.43	0.74
7188	2020-05-05 23:03:14	0.55	0.43	0.34	0.34	0.85
7193	2020-05-05 23:03:39	0.43	0.55	0.34	0.43	0.85
7198	2020-05-05 23:04:04	0.34	0.34	0.34	0.34	0.74
7203	2020-05-05 23:04:29	0.55	0.55	0.43	0.34	0.9
7208	2020-05-05 23:04:54	0.55	0.55	0.43	0.43	0.9
7213	2020-05-05 23:05:19	0.34	0.34	0.34	0.34	0.9
7218	2020-05-05 23:05:44	0.43	0.55	0.55	0.43	0.74
7223	2020-05-05 23:06:09	0.34	0.34	0.43	0.43	0.85
7228	2020-05-05 23:06:34	0.34	0.34	0.34	0.43	0.9
7233	2020-05-05 23:06:59	0.34	0.43	0.34	0.34	0.79
7238	2020-05-05 23:07:24	0.43	0.34	0.55	0.43	0.85
6969	2020-05-05 22:44:58	0.34	0.55	0.43	0.34	0.85
6974	2020-05-05 22:45:23	0.43	0.55	0.55	0.55	0.73
6979	2020-05-05 22:45:48	0.55	0.34	0.55	0.55	0.74
6984	2020-05-05 22:46:13	0.43	0.55	0.55	0.34	0.79
6989	2020-05-05 22:46:38	0.55	0.55	0.55	0.55	0.9
6994	2020-05-05 22:47:03	0.34	0.43	0.34	0.34	0.81
6999	2020-05-05 22:47:28	0.43	0.34	0.34	0.55	0.85
7004	2020-05-05 22:47:53	0.34	0.34	0.43	0.43	0.73
7009	2020-05-05 22:48:19	0.34	0.43	0.34	0.55	0.81
7014	2020-05-05 22:48:44	0.55	0.43	0.34	0.55	0.73
7019	2020-05-05 22:49:09	0.34	0.34	0.55	0.43	0.79
7024	2020-05-05 22:49:34	0.43	0.34	0.55	0.34	0.81
7029	2020-05-05 22:49:59	0.55	0.34	0.55	0.55	0.79
7034	2020-05-05 22:50:24	0.34	0.55	0.34	0.43	0.74
7039	2020-05-05 22:50:49	0.55	0.43	0.43	0.55	0.85
7044	2020-05-05 22:51:14	0.55	0.55	0.34	0.34	0.9
7049	2020-05-05 22:51:39	0.34	0.34	0.43	0.55	0.85
7054	2020-05-05 22:52:04	0.34	0.34	0.55	0.34	0.74
7059	2020-05-05 22:52:29	0.34	0.43	0.34	0.34	0.79
7064	2020-05-05 22:52:54	0.55	0.34	0.55	0.34	0.9
7069	2020-05-05 22:53:19	0.55	0.34	0.34	0.43	0.73
7074	2020-05-05 22:53:44	0.55	0.43	0.55	0.34	0.79
7079	2020-05-05 22:54:09	0.55	0.34	0.55	0.43	0.85
7084	2020-05-05 22:54:34	0.34	0.34	0.43	0.34	0.9
7089	2020-05-05 22:54:59	0.34	0.55	0.55	0.55	0.9
7094	2020-05-05 22:55:24	0.43	0.34	0.43	0.34	0.81
7099	2020-05-05 22:55:49	0.34	0.43	0.43	0.34	0.81
7104	2020-05-05 22:56:14	0.55	0.43	0.34	0.43	0.74
7109	2020-05-05 22:56:39	0.43	0.34	0.55	0.55	0.79
7114	2020-05-05 22:57:04	0.34	0.34	0.55	0.43	0.79
7119	2020-05-05 22:57:29	0.55	0.43	0.55	0.43	0.74
7124	2020-05-05 22:57:54	0.55	0.43	0.55	0.34	0.79
7129	2020-05-05 22:58:19	0.55	0.43	0.43	0.34	0.85
7134	2020-05-05 22:58:44	0.43	0.34	0.34	0.34	0.79
7139	2020-05-05 22:59:09	0.34	0.34	0.34	0.43	0.79
7144	2020-05-05 22:59:34	0.55	0.55	0.34	0.43	0.74
7149	2020-05-05 22:59:59	0.43	0.43	0.43	0.34	0.73
7154	2020-05-05 23:00:24	0.34	0.55	0.55	0.34	0.73
7159	2020-05-05 23:00:49	0.43	0.55	0.34	0.34	0.85
7164	2020-05-05 23:01:14	0.55	0.43	0.55	0.34	0.9
7169	2020-05-05 23:01:39	0.55	0.34	0.55	0.43	0.74
7174	2020-05-05 23:02:04	0.43	0.55	0.43	0.55	0.73
7179	2020-05-05 23:02:29	0.43	0.43	0.43	0.43	0.74
7184	2020-05-05 23:02:54	0.34	0.55	0.55	0.34	0.81
7189	2020-05-05 23:03:19	0.43	0.43	0.43	0.55	0.79
7194	2020-05-05 23:03:44	0.55	0.34	0.34	0.34	0.9
7199	2020-05-05 23:04:09	0.55	0.43	0.34	0.55	0.9
7204	2020-05-05 23:04:34	0.34	0.55	0.43	0.34	0.74
7209	2020-05-05 23:04:59	0.55	0.34	0.34	0.34	0.9
7214	2020-05-05 23:05:24	0.55	0.43	0.34	0.43	0.74
7219	2020-05-05 23:05:49	0.43	0.55	0.43	0.55	0.9
7224	2020-05-05 23:06:14	0.55	0.34	0.55	0.43	0.73
7229	2020-05-05 23:06:39	0.34	0.34	0.34	0.55	0.81
7234	2020-05-05 23:07:04	0.55	0.55	0.43	0.55	0.74
6970	2020-05-05 22:45:03	0.55	0.43	0.34	0.34	0.73
6975	2020-05-05 22:45:28	0.34	0.55	0.43	0.43	0.81
6980	2020-05-05 22:45:53	0.43	0.55	0.55	0.43	0.85
6985	2020-05-05 22:46:18	0.55	0.55	0.43	0.34	0.74
6990	2020-05-05 22:46:43	0.43	0.43	0.55	0.43	0.74
6995	2020-05-05 22:47:08	0.34	0.43	0.34	0.43	0.79
7000	2020-05-05 22:47:33	0.55	0.34	0.55	0.43	0.73
7005	2020-05-05 22:47:59	0.34	0.55	0.34	0.43	0.81
7010	2020-05-05 22:48:24	0.55	0.43	0.43	0.43	0.73
7015	2020-05-05 22:48:49	0.55	0.34	0.34	0.34	0.74
7020	2020-05-05 22:49:14	0.43	0.55	0.34	0.34	0.73
7025	2020-05-05 22:49:39	0.34	0.34	0.34	0.34	0.85
7030	2020-05-05 22:50:04	0.43	0.55	0.43	0.55	0.73
7035	2020-05-05 22:50:29	0.55	0.34	0.55	0.55	0.73
7040	2020-05-05 22:50:54	0.55	0.34	0.55	0.34	0.9
7045	2020-05-05 22:51:19	0.55	0.43	0.43	0.43	0.81
7050	2020-05-05 22:51:44	0.34	0.55	0.43	0.43	0.73
7055	2020-05-05 22:52:09	0.55	0.43	0.55	0.55	0.74
7060	2020-05-05 22:52:34	0.55	0.43	0.55	0.55	0.9
7065	2020-05-05 22:52:59	0.34	0.34	0.43	0.43	0.74
7070	2020-05-05 22:53:24	0.55	0.43	0.34	0.34	0.81
7075	2020-05-05 22:53:49	0.34	0.55	0.34	0.34	0.81
7080	2020-05-05 22:54:14	0.43	0.55	0.43	0.43	0.79
7085	2020-05-05 22:54:39	0.34	0.55	0.34	0.43	0.81
7090	2020-05-05 22:55:04	0.55	0.43	0.34	0.34	0.74
7095	2020-05-05 22:55:29	0.43	0.55	0.34	0.34	0.9
7100	2020-05-05 22:55:54	0.43	0.55	0.43	0.34	0.81
7105	2020-05-05 22:56:19	0.34	0.34	0.43	0.43	0.85
7110	2020-05-05 22:56:44	0.43	0.43	0.34	0.55	0.73
7115	2020-05-05 22:57:09	0.55	0.55	0.55	0.55	0.85
7120	2020-05-05 22:57:34	0.43	0.34	0.55	0.34	0.74
7125	2020-05-05 22:57:59	0.43	0.34	0.55	0.55	0.81
7130	2020-05-05 22:58:24	0.43	0.55	0.34	0.34	0.73
7135	2020-05-05 22:58:49	0.34	0.55	0.34	0.55	0.9
7140	2020-05-05 22:59:14	0.55	0.34	0.34	0.43	0.74
7145	2020-05-05 22:59:39	0.55	0.43	0.43	0.55	0.79
7150	2020-05-05 23:00:04	0.34	0.43	0.43	0.55	0.74
7155	2020-05-05 23:00:29	0.34	0.55	0.43	0.34	0.81
7160	2020-05-05 23:00:54	0.55	0.43	0.34	0.34	0.73
7165	2020-05-05 23:01:19	0.55	0.34	0.43	0.34	0.85
7170	2020-05-05 23:01:44	0.55	0.43	0.55	0.43	0.81
7175	2020-05-05 23:02:09	0.43	0.55	0.34	0.43	0.74
7180	2020-05-05 23:02:34	0.34	0.43	0.43	0.43	0.81
7185	2020-05-05 23:02:59	0.43	0.55	0.43	0.55	0.73
7190	2020-05-05 23:03:24	0.43	0.55	0.34	0.34	0.9
7195	2020-05-05 23:03:49	0.43	0.55	0.43	0.43	0.74
7200	2020-05-05 23:04:14	0.34	0.55	0.55	0.34	0.85
7205	2020-05-05 23:04:39	0.55	0.55	0.43	0.43	0.81
7210	2020-05-05 23:05:04	0.34	0.43	0.43	0.34	0.81
7215	2020-05-05 23:05:29	0.55	0.34	0.55	0.43	0.81
7220	2020-05-05 23:05:54	0.34	0.55	0.55	0.34	0.81
7225	2020-05-05 23:06:19	0.55	0.55	0.43	0.43	0.73
7230	2020-05-05 23:06:44	0.34	0.43	0.34	0.43	0.73
7235	2020-05-05 23:07:09	0.55	0.43	0.34	0.34	0.85
7239	2020-05-06 12:04:48	0.55	0.43	0.34	0.55	0.74
7240	2020-05-06 12:04:53	0.43	0.34	0.43	0.34	0.9
7241	2020-05-06 12:04:58	0.43	0.34	0.43	0.43	0.9
7242	2020-05-06 12:05:03	0.43	0.43	0.34	0.34	0.9
7243	2020-05-06 12:05:08	0.55	0.34	0.43	0.43	0.81
7244	2020-05-06 12:05:13	0.34	0.55	0.55	0.43	0.79
7245	2020-05-06 12:05:18	0.43	0.55	0.34	0.34	0.9
7246	2020-05-06 12:05:24	0.34	0.34	0.55	0.34	0.79
7247	2020-05-06 12:05:29	0.34	0.55	0.34	0.43	0.85
7248	2020-05-06 12:05:34	0.43	0.34	0.55	0.34	0.9
7249	2020-05-06 12:05:39	0.55	0.43	0.55	0.43	0.74
7250	2020-05-06 12:05:44	0.43	0.55	0.43	0.34	0.73
7251	2020-05-06 12:05:49	0.34	0.55	0.43	0.43	0.73
7252	2020-05-06 12:05:54	0.43	0.55	0.43	0.43	0.73
7253	2020-05-06 12:05:59	0.43	0.55	0.55	0.55	0.85
7254	2020-05-06 12:06:04	0.43	0.55	0.43	0.55	0.74
7255	2020-05-06 12:06:09	0.55	0.55	0.43	0.43	0.85
7256	2020-05-06 12:06:14	0.55	0.34	0.34	0.55	0.9
7257	2020-05-06 12:06:19	0.55	0.43	0.34	0.55	0.81
7258	2020-05-06 12:06:24	0.34	0.55	0.34	0.43	0.9
7259	2020-05-06 12:06:29	0.55	0.34	0.55	0.34	0.74
7260	2020-05-06 12:06:34	0.34	0.43	0.55	0.43	0.81
7261	2020-05-06 12:06:39	0.34	0.43	0.43	0.43	0.85
7262	2020-05-06 12:06:44	0.34	0.55	0.43	0.55	0.73
7263	2020-05-06 12:06:49	0.34	0.43	0.34	0.43	0.73
7264	2020-05-06 12:06:54	0.55	0.34	0.43	0.34	0.81
7265	2020-05-06 12:06:59	0.55	0.43	0.43	0.43	0.85
7266	2020-05-06 12:07:04	0.55	0.43	0.34	0.34	0.81
7267	2020-05-06 12:07:09	0.43	0.43	0.55	0.43	0.74
7268	2020-05-06 12:07:14	0.34	0.34	0.55	0.43	0.79
7269	2020-05-06 12:07:19	0.55	0.43	0.34	0.34	0.73
7270	2020-05-06 12:07:24	0.55	0.34	0.43	0.34	0.85
7271	2020-05-06 12:07:29	0.55	0.43	0.43	0.34	0.79
7272	2020-05-06 12:07:34	0.55	0.43	0.43	0.34	0.79
7273	2020-05-06 12:07:39	0.55	0.55	0.43	0.34	0.79
7274	2020-05-06 12:07:44	0.43	0.43	0.43	0.43	0.79
7275	2020-05-06 12:07:49	0.43	0.43	0.34	0.34	0.79
7276	2020-05-06 12:07:54	0.55	0.43	0.55	0.55	0.73
7277	2020-05-06 12:07:59	0.34	0.55	0.55	0.43	0.9
7278	2020-05-06 12:08:04	0.34	0.55	0.43	0.34	0.73
7279	2020-05-06 12:08:09	0.43	0.43	0.43	0.34	0.73
7280	2020-05-06 12:08:14	0.43	0.34	0.55	0.55	0.85
7281	2020-05-06 12:08:19	0.55	0.43	0.34	0.55	0.9
7282	2020-05-06 12:08:24	0.43	0.55	0.34	0.55	0.85
7283	2020-05-07 14:42:56	0.55	0.43	0.55	0.34	0.85
7284	2020-05-07 14:43:01	0.55	0.43	0.43	0.34	0.74
7285	2020-05-07 14:43:06	0.55	0.55	0.34	0.43	0.74
7286	2020-05-07 14:43:11	0.34	0.34	0.34	0.34	0.9
7287	2020-05-07 14:43:16	0.34	0.43	0.55	0.43	0.73
7288	2020-05-07 14:43:21	0.34	0.34	0.43	0.34	0.85
7289	2020-05-07 14:43:26	0.55	0.43	0.55	0.34	0.85
7290	2020-05-07 14:43:31	0.43	0.55	0.34	0.43	0.79
7291	2020-05-07 14:43:36	0.43	0.55	0.43	0.34	0.81
7292	2020-05-07 14:43:41	0.43	0.34	0.43	0.34	0.79
7293	2020-05-07 14:43:46	0.43	0.43	0.43	0.55	0.73
7294	2020-05-07 14:43:51	0.43	0.55	0.43	0.55	0.73
7295	2020-05-07 14:43:56	0.34	0.34	0.43	0.34	0.73
7296	2020-05-07 14:44:01	0.34	0.43	0.55	0.55	0.85
7297	2020-05-07 14:44:06	0.55	0.55	0.34	0.55	0.73
7298	2020-05-07 14:44:11	0.43	0.55	0.55	0.34	0.81
7299	2020-05-07 14:44:16	0.34	0.55	0.34	0.43	0.9
7300	2020-05-07 14:44:21	0.34	0.34	0.55	0.34	0.79
7301	2020-05-07 14:44:26	0.34	0.34	0.43	0.55	0.81
7302	2020-05-07 14:44:31	0.43	0.55	0.43	0.34	0.81
7303	2020-05-07 14:44:36	0.55	0.34	0.55	0.34	0.9
7304	2020-05-07 14:44:41	0.34	0.34	0.43	0.34	0.81
7305	2020-05-07 14:44:46	0.43	0.55	0.55	0.55	0.74
7306	2020-05-07 14:44:51	0.34	0.43	0.43	0.34	0.79
7307	2020-05-07 14:44:56	0.55	0.34	0.43	0.55	0.9
7308	2020-05-07 14:45:01	0.34	0.55	0.34	0.43	0.79
7309	2020-05-07 14:45:06	0.55	0.43	0.34	0.34	0.79
7310	2020-05-07 14:45:11	0.55	0.43	0.34	0.43	0.81
7311	2020-05-07 14:45:16	0.34	0.43	0.43	0.55	0.79
7312	2020-05-07 14:45:21	0.55	0.34	0.55	0.55	0.74
7313	2020-05-07 14:45:26	0.43	0.34	0.43	0.55	0.74
7314	2020-05-07 14:45:31	0.43	0.55	0.55	0.43	0.9
7315	2020-05-07 14:45:36	0.55	0.43	0.34	0.55	0.81
7316	2020-05-07 14:45:41	0.34	0.55	0.43	0.55	0.73
7317	2020-05-07 14:45:46	0.34	0.34	0.34	0.43	0.79
7318	2020-05-07 14:45:51	0.34	0.55	0.34	0.34	0.9
7319	2020-05-07 14:45:56	0.43	0.55	0.55	0.43	0.81
7320	2020-05-07 14:46:01	0.43	0.43	0.34	0.34	0.85
7321	2020-05-07 14:46:06	0.55	0.43	0.34	0.55	0.85
7322	2020-05-07 14:46:11	0.55	0.43	0.43	0.55	0.73
7323	2020-05-07 14:46:16	0.34	0.55	0.43	0.34	0.85
\.


--
-- Data for Name: resilient_mode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resilient_mode (id, resilient_timestamp, resilient_tf, resilient_gf, resilient_tif, resilient_dcl, resilient_clnl, resilient_resval) FROM stdin;
\.


--
-- Data for Name: subs_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subs_details (sub_id, sub_loc, sub_out_feed, sub_remarks) FROM stdin;
SUB1	ORCA	AUX Canery	Working
SUB2	EYAK	Main Town	Working
SUB3	ORCA	AUX Canery	Working
SUB4	HBC	Main Town	Working
SUB5	EYAK	AUX Canery	Working
\.


--
-- Data for Name: system_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.system_info (key_code, key_desc, key_val) FROM stdin;
POLE	No. of poles	50
ISOL	No. of isolators	20
SUBS	No. of Substations	5
SMTR	No. of Smart Meters	10
FDRS	No. of Feeders	25
OLSW	No. of Oil Switches	10
\.


--
-- Data for Name: threat_impacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.threat_impacts (id, threat_timestamp, threat_vol, threat_freq, threat_sch_load, threat_sch_gen, threat_present_load, threat_present_gen, threat_affected_loc) FROM stdin;
\.


--
-- Data for Name: trans_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trans_details (trans_id, trans_rating, trans_loc, trans_op_condition) FROM stdin;
TRANS1	200	ORCA	80
TRANS2	50	PCS	30
TRANS3	100	HBC	20
TRANS4	300	ORCA	80
TRANS5	100	HBC	20
\.


--
-- Name: economic_mode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.economic_mode_id_seq', 1, f);


--
-- Name: event_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.event_details_id_seq', 1, f);


--
-- Name: expected_outage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.expected_outage_id_seq', 1, f);


--
-- Name: radience_dynamic_nodesGIS_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."radience_dynamic_nodesGIS_id_seq"', 1, f);


--
-- Name: radience_dynamic_nodes_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.radience_dynamic_nodes_links_id_seq', 1, f);


--
-- Name: radience_static_nodesGIS_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."radience_static_nodesGIS_id_seq"', 1, f);


--
-- Name: radience_static_nodes_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.radience_static_nodes_links_id_seq', 1, f);


--
-- Name: resiliency_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resiliency_scores_id_seq', 7323, t);


--
-- Name: resilient_mode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resilient_mode_id_seq', 1, f);


--
-- Name: threat_impacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.threat_impacts_id_seq', 1, f);


--
-- Name: cb_details cb_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cb_details
    ADD CONSTRAINT cb_details_pkey PRIMARY KEY (cb_id);


--
-- Name: economic_mode economic_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.economic_mode
    ADD CONSTRAINT economic_mode_pkey PRIMARY KEY (id);


--
-- Name: event_details event_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_details
    ADD CONSTRAINT event_details_pkey PRIMARY KEY (id);


--
-- Name: expected_outage expected_outage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.expected_outage
    ADD CONSTRAINT expected_outage_pkey PRIMARY KEY (id);


--
-- Name: gu_details gu_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gu_details
    ADD CONSTRAINT gu_details_pkey PRIMARY KEY (g_id);


--
-- Name: load_details load_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.load_details
    ADD CONSTRAINT load_details_pkey PRIMARY KEY (l_id);


--
-- Name: radience_dynamic_nodesGIS radience_dynamic_nodesGIS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."radience_dynamic_nodesGIS"
    ADD CONSTRAINT "radience_dynamic_nodesGIS_pkey" PRIMARY KEY (id);


--
-- Name: radience_dynamic_nodes_links radience_dynamic_nodes_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.radience_dynamic_nodes_links
    ADD CONSTRAINT radience_dynamic_nodes_links_pkey PRIMARY KEY (id);


--
-- Name: radience_output_edge_file radience_output_edge_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.radience_output_edge_file
    ADD CONSTRAINT radience_output_edge_file_pkey PRIMARY KEY (name);


--
-- Name: radience_output_node_file radience_output_node_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.radience_output_node_file
    ADD CONSTRAINT radience_output_node_file_pkey PRIMARY KEY (name);


--
-- Name: radience_static_nodesGIS radience_static_nodesGIS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."radience_static_nodesGIS"
    ADD CONSTRAINT "radience_static_nodesGIS_pkey" PRIMARY KEY (id);


--
-- Name: radience_static_nodes_links radience_static_nodes_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.radience_static_nodes_links
    ADD CONSTRAINT radience_static_nodes_links_pkey PRIMARY KEY (id);


--
-- Name: resiliency_scores resiliency_scores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resiliency_scores
    ADD CONSTRAINT resiliency_scores_pkey PRIMARY KEY (id);


--
-- Name: resilient_mode resilient_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resilient_mode
    ADD CONSTRAINT resilient_mode_pkey PRIMARY KEY (id);


--
-- Name: subs_details subs_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subs_details
    ADD CONSTRAINT subs_details_pkey PRIMARY KEY (sub_id);


--
-- Name: system_info system_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.system_info
    ADD CONSTRAINT system_info_pkey PRIMARY KEY (key_code);


--
-- Name: threat_impacts threat_impacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.threat_impacts
    ADD CONSTRAINT threat_impacts_pkey PRIMARY KEY (id);


--
-- Name: trans_details trans_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trans_details
    ADD CONSTRAINT trans_details_pkey PRIMARY KEY (trans_id);


--
-- PostgreSQL database dump complete
--

END;