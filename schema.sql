--
-- PostgreSQL database dump
--

-- Dumped from database version 10.13 (Ubuntu 10.13-1.pgdg18.04+1)
-- Dumped by pg_dump version 12.3 (Ubuntu 12.3-1.pgdg18.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

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

