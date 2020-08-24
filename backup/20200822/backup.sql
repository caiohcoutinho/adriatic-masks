--
-- PostgreSQL database dump
--

-- Dumped from database version 11.7 (Ubuntu 11.7-2.pgdg18.04+1)
-- Dumped by pg_dump version 11.3

-- Started on 2020-08-23 15:16:00 UTC

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

--
-- TOC entry 4286 (class 1262 OID 1035587)
-- Name: wltzyxhf; Type: DATABASE; Schema: -; Owner: wltzyxhf
--

CREATE DATABASE wltzyxhf WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE wltzyxhf OWNER TO wltzyxhf;

\connect wltzyxhf

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

--
-- TOC entry 9 (class 3079 OID 17135)
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- TOC entry 4288 (class 0 OID 0)
-- Dependencies: 9
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- TOC entry 5 (class 3079 OID 17680)
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- TOC entry 4289 (class 0 OID 0)
-- Dependencies: 5
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- TOC entry 16 (class 3079 OID 16661)
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- TOC entry 4290 (class 0 OID 0)
-- Dependencies: 16
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- TOC entry 7 (class 3079 OID 17577)
-- Name: cube; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- TOC entry 4291 (class 0 OID 0)
-- Dependencies: 7
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- TOC entry 22 (class 3079 OID 16384)
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- TOC entry 4292 (class 0 OID 0)
-- Dependencies: 22
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- TOC entry 10 (class 3079 OID 17130)
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- TOC entry 4293 (class 0 OID 0)
-- Dependencies: 10
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- TOC entry 4 (class 3079 OID 18303)
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- TOC entry 4294 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- TOC entry 6 (class 3079 OID 17664)
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- TOC entry 4295 (class 0 OID 0)
-- Dependencies: 6
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- TOC entry 17 (class 3079 OID 16650)
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- TOC entry 4296 (class 0 OID 0)
-- Dependencies: 17
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- TOC entry 11 (class 3079 OID 17007)
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- TOC entry 4297 (class 0 OID 0)
-- Dependencies: 11
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- TOC entry 12 (class 3079 OID 16889)
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- TOC entry 4298 (class 0 OID 0)
-- Dependencies: 12
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- TOC entry 20 (class 3079 OID 16444)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 4299 (class 0 OID 0)
-- Dependencies: 20
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 2 (class 3079 OID 18315)
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- TOC entry 4300 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- TOC entry 13 (class 3079 OID 16812)
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- TOC entry 4301 (class 0 OID 0)
-- Dependencies: 13
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- TOC entry 14 (class 3079 OID 16775)
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- TOC entry 4302 (class 0 OID 0)
-- Dependencies: 14
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- TOC entry 8 (class 3079 OID 17571)
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- TOC entry 4303 (class 0 OID 0)
-- Dependencies: 8
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- TOC entry 19 (class 3079 OID 16619)
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- TOC entry 4304 (class 0 OID 0)
-- Dependencies: 19
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- TOC entry 18 (class 3079 OID 16629)
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- TOC entry 4305 (class 0 OID 0)
-- Dependencies: 18
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- TOC entry 3 (class 3079 OID 18308)
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- TOC entry 4306 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- TOC entry 15 (class 3079 OID 16764)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4307 (class 0 OID 0)
-- Dependencies: 15
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 21 (class 3079 OID 16430)
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- TOC entry 4308 (class 0 OID 0)
-- Dependencies: 21
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


--
-- TOC entry 222 (class 1259 OID 1055789)
-- Name: bairro_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.bairro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bairro_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 244 (class 1259 OID 1055855)
-- Name: negocio_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.negocio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.negocio_id_seq OWNER TO wltzyxhf;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 245 (class 1259 OID 1055857)
-- Name: business; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.business (
    id integer DEFAULT nextval('public.negocio_id_seq'::regclass) NOT NULL,
    name character varying(255),
    business_type integer,
    neighbourhood integer,
    n1 boolean,
    n2 boolean,
    n3 boolean,
    description character varying(1024)
);


ALTER TABLE public.business OWNER TO wltzyxhf;

--
-- TOC entry 224 (class 1259 OID 1055795)
-- Name: cliente_negocio_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.cliente_negocio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_negocio_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 225 (class 1259 OID 1055797)
-- Name: business_rules; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.business_rules (
    id integer DEFAULT nextval('public.cliente_negocio_id_seq'::regclass) NOT NULL,
    business integer,
    withprofession integer,
    withoutprofession integer,
    agegreaterthan integer,
    agelessthan integer,
    wealthgreatherthan integer,
    wealthlessthan integer,
    withgender integer,
    withoutgender integer,
    sameneighbourhood boolean,
    modifier numeric(100,10)
);


ALTER TABLE public.business_rules OWNER TO wltzyxhf;

--
-- TOC entry 260 (class 1259 OID 1055913)
-- Name: tipo_negocio_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.tipo_negocio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_negocio_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 261 (class 1259 OID 1055915)
-- Name: business_type; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.business_type (
    id integer DEFAULT nextval('public.tipo_negocio_id_seq'::regclass) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.business_type OWNER TO wltzyxhf;

--
-- TOC entry 264 (class 1259 OID 5730041)
-- Name: clan_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.clan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clan_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 265 (class 1259 OID 5730043)
-- Name: clan; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.clan (
    id integer DEFAULT nextval('public.clan_id_seq'::regclass) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.clan OWNER TO wltzyxhf;

--
-- TOC entry 226 (class 1259 OID 1055801)
-- Name: cor_cabelo_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.cor_cabelo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cor_cabelo_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 228 (class 1259 OID 1055807)
-- Name: cor_olhos_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.cor_olhos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cor_olhos_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 230 (class 1259 OID 1055813)
-- Name: cor_pele_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.cor_pele_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cor_pele_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 229 (class 1259 OID 1055809)
-- Name: eye_color; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.eye_color (
    id integer DEFAULT nextval('public.cor_olhos_id_seq'::regclass) NOT NULL,
    color character varying(255)
);


ALTER TABLE public.eye_color OWNER TO wltzyxhf;

--
-- TOC entry 232 (class 1259 OID 1055819)
-- Name: familia_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.familia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.familia_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 233 (class 1259 OID 1055821)
-- Name: family; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.family (
    id integer DEFAULT nextval('public.familia_id_seq'::regclass) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.family OWNER TO wltzyxhf;

--
-- TOC entry 258 (class 1259 OID 1055904)
-- Name: sexo_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.sexo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sexo_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 259 (class 1259 OID 1055906)
-- Name: gender; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.gender (
    id integer DEFAULT nextval('public.sexo_id_seq'::regclass) NOT NULL,
    gender character varying(255),
    symbol character varying(255)
);


ALTER TABLE public.gender OWNER TO wltzyxhf;

--
-- TOC entry 227 (class 1259 OID 1055803)
-- Name: hair_color; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.hair_color (
    id integer DEFAULT nextval('public.cor_cabelo_id_seq'::regclass) NOT NULL,
    color character varying(255)
);


ALTER TABLE public.hair_color OWNER TO wltzyxhf;

--
-- TOC entry 238 (class 1259 OID 1055837)
-- Name: moradia_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.moradia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moradia_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 239 (class 1259 OID 1055839)
-- Name: home; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.home (
    id integer DEFAULT nextval('public.moradia_id_seq'::regclass) NOT NULL,
    name character varying(255),
    neighbourhood integer
);


ALTER TABLE public.home OWNER TO wltzyxhf;

--
-- TOC entry 234 (class 1259 OID 1055825)
-- Name: humor_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.humor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.humor_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 235 (class 1259 OID 1055827)
-- Name: humor; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.humor (
    id integer DEFAULT nextval('public.humor_id_seq'::regclass) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.humor OWNER TO wltzyxhf;

--
-- TOC entry 236 (class 1259 OID 1055831)
-- Name: instinto_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.instinto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instinto_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 237 (class 1259 OID 1055833)
-- Name: instinct; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.instinct (
    id integer DEFAULT nextval('public.instinto_id_seq'::regclass) NOT NULL,
    name character varying(255),
    humor integer
);


ALTER TABLE public.instinct OWNER TO wltzyxhf;

--
-- TOC entry 240 (class 1259 OID 1055843)
-- Name: nacionalidade_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.nacionalidade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nacionalidade_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 241 (class 1259 OID 1055845)
-- Name: nationality; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.nationality (
    id integer DEFAULT nextval('public.nacionalidade_id_seq'::regclass) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.nationality OWNER TO wltzyxhf;

--
-- TOC entry 242 (class 1259 OID 1055849)
-- Name: natureza_obrigacao_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.natureza_obrigacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.natureza_obrigacao_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 223 (class 1259 OID 1055791)
-- Name: neighbourhood; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.neighbourhood (
    id integer DEFAULT nextval('public.bairro_id_seq'::regclass) NOT NULL,
    name character varying(255),
    symbol character varying(255)
);


ALTER TABLE public.neighbourhood OWNER TO wltzyxhf;

--
-- TOC entry 246 (class 1259 OID 1055864)
-- Name: npc_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.npc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.npc_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 247 (class 1259 OID 1055866)
-- Name: npc; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.npc (
    id integer DEFAULT nextval('public.npc_id_seq'::regclass) NOT NULL,
    name character varying(255),
    gender integer,
    nationality integer,
    age integer,
    nickname character varying(255),
    skin integer,
    eyes integer,
    hair integer,
    neighbourhood integer,
    physical integer,
    social integer,
    mental integer,
    family integer,
    home integer,
    instinct integer,
    oath integer,
    oath_nature integer,
    seed_nickname numeric(100,10),
    seed_age numeric(100,10),
    seed_eyes numeric(100,10),
    seed_hair numeric(100,10),
    seed_neighborhood numeric(100,10),
    seed_physical numeric(100,10),
    seed_social numeric(100,10),
    seed_mental numeric(100,10),
    seed_instinct numeric(100,10),
    seed_oath numeric(100,10),
    seed_oath_nature numeric(100,10),
    notes character varying(1000),
    wealth integer,
    health integer,
    max_health integer,
    ressonance integer,
    description character varying(1024),
    alive boolean DEFAULT true NOT NULL
);


ALTER TABLE public.npc OWNER TO wltzyxhf;

--
-- TOC entry 250 (class 1259 OID 1055879)
-- Name: preferencias_npcs_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.preferencias_npcs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.preferencias_npcs_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 251 (class 1259 OID 1055881)
-- Name: npc_preferences; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.npc_preferences (
    id integer DEFAULT nextval('public.preferencias_npcs_id_seq'::regclass) NOT NULL,
    npc integer,
    business integer,
    seed numeric(100,10)
);


ALTER TABLE public.npc_preferences OWNER TO wltzyxhf;

--
-- TOC entry 254 (class 1259 OID 1055892)
-- Name: profissao_npc_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.profissao_npc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profissao_npc_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 255 (class 1259 OID 1055894)
-- Name: npc_profession; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.npc_profession (
    id integer DEFAULT nextval('public.profissao_npc_id_seq'::regclass) NOT NULL,
    npc integer NOT NULL,
    profession integer NOT NULL,
    business integer
);


ALTER TABLE public.npc_profession OWNER TO wltzyxhf;

--
-- TOC entry 248 (class 1259 OID 1055873)
-- Name: obrigacao_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.obrigacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.obrigacao_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 249 (class 1259 OID 1055875)
-- Name: oath; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.oath (
    id integer DEFAULT nextval('public.obrigacao_id_seq'::regclass) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.oath OWNER TO wltzyxhf;

--
-- TOC entry 243 (class 1259 OID 1055851)
-- Name: oath_nature; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.oath_nature (
    id integer DEFAULT nextval('public.natureza_obrigacao_id_seq'::regclass) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.oath_nature OWNER TO wltzyxhf;

--
-- TOC entry 262 (class 1259 OID 5730032)
-- Name: predator_type_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.predator_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.predator_type_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 263 (class 1259 OID 5730034)
-- Name: predator_type; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.predator_type (
    id integer DEFAULT nextval('public.predator_type_id_seq'::regclass) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.predator_type OWNER TO wltzyxhf;

--
-- TOC entry 252 (class 1259 OID 1055886)
-- Name: profissao_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.profissao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profissao_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 253 (class 1259 OID 1055888)
-- Name: profession; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.profession (
    id integer DEFAULT nextval('public.profissao_id_seq'::regclass) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.profession OWNER TO wltzyxhf;

--
-- TOC entry 256 (class 1259 OID 1055898)
-- Name: ressonancia_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.ressonancia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ressonancia_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 257 (class 1259 OID 1055900)
-- Name: ressonance; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.ressonance (
    id integer DEFAULT nextval('public.ressonancia_id_seq'::regclass) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.ressonance OWNER TO wltzyxhf;

--
-- TOC entry 231 (class 1259 OID 1055815)
-- Name: skin_color; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.skin_color (
    id integer DEFAULT nextval('public.cor_pele_id_seq'::regclass) NOT NULL,
    color character varying(255)
);


ALTER TABLE public.skin_color OWNER TO wltzyxhf;

--
-- TOC entry 266 (class 1259 OID 5730188)
-- Name: vampiro_id_seq; Type: SEQUENCE; Schema: public; Owner: wltzyxhf
--

CREATE SEQUENCE public.vampiro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vampiro_id_seq OWNER TO wltzyxhf;

--
-- TOC entry 267 (class 1259 OID 5730190)
-- Name: vampire; Type: TABLE; Schema: public; Owner: wltzyxhf
--

CREATE TABLE public.vampire (
    id integer DEFAULT nextval('public.vampiro_id_seq'::regclass) NOT NULL,
    generation integer NOT NULL,
    clan integer NOT NULL,
    predator_type integer NOT NULL
);


ALTER TABLE public.vampire OWNER TO wltzyxhf;

--
-- TOC entry 4258 (class 0 OID 1055857)
-- Dependencies: 245
-- Data for Name: business; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.business (id, name, business_type, neighbourhood, n1, n2, n3, description) FROM stdin;
51	Universidade	25	4	t	t	f	Cursos: Artes cênicas, Música, Moda, Arquitetura e Urbanismo, Jornalismo, Arquelogia, História, Ciências Sociais.
78	Scola Canton	18	5	t	f	f	Cadeiras nos cantos. Pequeno púpito.
36	Basilica di San Marco	18	3	t	t	f	Basílica enorme. Abobodas. Imagens. Arcos. Pinturas.
38	Gems of Venice	19	5	t	f	f	Joias nos balcões. Caixa.
39	Ohmyblue	19	5	t	f	f	Joias nos balcões. Caixa.
40	Cartier	19	3	t	f	f	Joias nos balcões. Caixa.
41	Lan House	20	4	t	t	f	Computadores enfileirados. Balcão.
42	Sacca San Biagio	21	4	t	t	t	Pilhas de lixo. Tratores. Encineiradoras. Containers.
1	Venetur	1	2	t	f	f	Sala pequena. Posteres na parede. Mesa. Cadeira.
2	Venetian Tur	1	3	t	f	f	Sala pequena. Posteres na parede. Mesa. Cadeira.
14	Corpo de Bombeiros	7	2	t	t	t	Vários caminhões. Escritório no segundo andar.
15	Delegacia	8	3	t	t	t	Barulhento. Cadeiras de madeira. Pequena cela. Armários.
16	Vino Veneza	9	5	t	f	f	Sofisticada. Vinhos nas prateleiras. Caixa registradora. Balcão.
17	Escola de ensino médio	10	5	t	f	f	Dois andares. Corredores com salas. Diretoria. Sala dos professores.
3	Casanova Grand Ball	2	3	f	f	f	Complexo com salas de jantar e quartos com decoração clássica.
70	Tabacaria	34	4	t	f	f	Fumo. Narguile. Cubos mágicos. Charutos. Esculturas exóticas.
6	Inferno	3	6	f	t	f	Sala quadrada larga e alta. Sacada em todos os lados. Grande chama no meio.
4	Barbarian	3	4	f	t	f	Balada pequena. Dois andares. No segundo andar tem um mezanino com uma piscina com fundo de vidro.
7	Unicredit	4	5	t	f	f	Sala pequena. Porta giratória. Mesa. Cadeira.
18	Escola de italiano	11	6	t	f	f	Uma única sala no segundo andar de um prédio.
19	Escola de primário	12	6	t	f	f	Parquinho. Algumas salas com brinquedos, carteiras e desenhos nas paredes.
8	Banco San Marco	4	3	t	f	f	Sala pequena. Porta giratória. Mesa. Cadeira.
9	Oceanic	5	4	t	f	f	Apertada. Corredores estreitos. Prateleiras de livros até o teto
10	Global	5	6	t	f	f	Organizada. Espaçosa. Seções claras.
11	Santa Croce – Casa	6	1	t	f	f	Terceiro andar de um prédio. Sala pequena. Cozinha. Quarto. Banheiro.
12	Dorsoduro – Casa 1	6	4	t	f	f	Casa térrea. Sala espaçosa com uma cama de solteiro. Quarto. Cozinha. Banheiro
13	Dorsoduro – Casa 2	6	4	t	f	f	Kitnet. Cozinha e quarto juntos. Banheiro com porta de correr
20	D’Alto Rampone	13	1	t	f	f	Mesa. Cadeira. Armários.
21	Droga 24	14	2	t	t	f	Prateleiras. Balcão. Caixa registradora.
22	Vene++	14	3	t	t	f	Prateleiras. Balcão. Caixa registradora.
23	Farmacia San Polo	14	6	t	t	f	Prateleiras. Balcão. Caixa registradora.
24	Dorsoduro – Galeria	15	2	f	t	f	Seca. Iluminada. Banquinhos. Elegante.
25	San Polo – Galeria	15	4	f	t	f	Casa bagunçada. Obras por todos os lugares. Escadas. Corredores. Música.
26	Castello – Galeria	15	6	f	t	f	Escura, com pequenos lagos retangulares que cerceam o caminho
27	Hospital	16	1	t	t	t	Sala de espera. Consultório. Salas interiores.
28	Royal Hotel	17	2	t	t	t	Muito clássico. Tapeçarias com cores fortes vermelhas e alaranjadas.
29	The Prophecy	17	3	t	t	t	Estilo mais moderno em tons beges.
30	Olive Tower	17	3	t	t	t	Mistura de clássico com moderno. Lustres de vidro. Painéis de madeira.
31	Obsidian Sanctum	17	3	t	t	t	Hotel bem antigo, com madeiras escuras por toda parte.
32	Chiesa di San Simeone Piccolo	18	1	t	t	f	Igreja simples. Algumas poucas cadeiras. Imagem no fundo.
33	Chiesa dell Abbazia della Misericordia	18	5	t	t	f	Igreja simples. Algumas poucas cadeiras. Imagem no fundo.
34	Chiesa di San Giacomo di Rialto	18	2	t	t	f	Igreja simples. Algumas poucas cadeiras. Imagem no fundo.
35	Chiesa di San Barnaba	18	4	t	t	f	Igreja simples. Algumas poucas cadeiras. Imagem no fundo.
37	Chiesa di San Lorenzo	18	6	t	t	f	Igreja simples. Algumas poucas cadeiras. Imagem no fundo.
45	Prada	22	3	t	f	f	Manequins. Bolsas. Sapatos. Roupas. Balcões. Caixa.
46	Versace	22	3	t	f	f	Manequins. Bolsas. Sapatos. Roupas. Balcões. Caixa.
47	Gucci	22	3	t	f	f	Manequins. Bolsas. Sapatos. Roupas. Balcões. Caixa.
48	Fendi	22	3	t	f	f	Manequins. Bolsas. Sapatos. Roupas. Balcões. Caixa.
49	Castello	23	6	t	f	f	Pequeno escritório. Mesa. Cadeira. Posteres.
50	Loja de barcos	24	1	t	f	f	Oficina com porto em frente. Peças. Ferramentas. Pedaços de barcos.
52	Museo Ebraico Di Venezia	26	2	t	t	f	Muito clássico. Livros. Esculturas.
53	Leonardo da Vinci Museum	26	3	t	t	f	Esculturas. Parafernalhas. Quadros. Livros.
54	Museo Correr	26	5	t	t	f	Esculturas. Pinturas.
56	Campo d’Arsenal	27	5	t	t	f	Ponte em V. Duas Torres.
57	Parco Savorgnan	27	6	t	t	f	Parque com muito verde. Parquinhos de criança. Fontes.
59	Prefeitura	29	6	t	f	f	Poucas salas. Bem decorada. Clássica. Quadros.
62	Pizza al Volo	30	4	t	t	f	Pizzaria. Movimentado. Apertado. Barulhento.
63	Trattoria Dai Tosi	30	5	t	t	f	Meia luz. Aconchegante. Comidas diversas.
64	Rodoviária	31	1	t	t	t	Alguns guichês. Estações de parada dos ônibus.
68	Castello – Coop	33	4	t	t	f	Pequeno mercado. Vários corredores. Duas caixas registradoras.
69	Dorsoduro – Coop	33	6	t	t	f	Pequeno mercado. Vários corredores. Duas caixas registradoras.
72	Beco Santa Croce (Prostituição)	36	1	t	f	f	Beco estreito e escuro.
77	Masjid Musawa	18	1	t	f	f	Vários desenhos geométricos. Chão livre.
5	Club Delirium	3	5	f	t	f	Vários puffs e mini-salas vips com look retro-futurista, luzes azuis e neon.
43	Givenchy	22	2	t	f	f	Manequins. Bolsas. Sapatos. Roupas. Balcões. Caixa.
44	Dolce & Gabbana	22	2	t	f	f	Manequins. Bolsas. Sapatos. Roupas. Balcões. Caixa.
55	Piazza San Marco	27	3	t	t	f	Bares. Restaurantes. Lojas.
58	Posto de gasolina para barco	28	4	t	t	t	Posto flutuante com bombas de gasolina.
60	Vino Vero	30	1	t	t	f	Restaurante pequeno. Casual. Música de fundo.
61	Cantina do Spade	30	3	t	t	f	Restaurante sofisticado. Silencioso. Refinado. Carta de vinhos.
65	Salão de Beleza - Dorsoduro	32	1	t	f	f	Pequeno corredor. Cadeiras de cabelereiro. Fotos nas paredes.
66	Salão de Beleza – Castello	32	4	t	f	f	Pequeno corredor. Cadeiras de cabelereiro. Fotos nas paredes.
67	Salão de Beleza - Santa Croce	32	6	t	f	f	Pequeno corredor. Cadeiras de cabelereiro. Fotos nas paredes.
71	Tatoo Parlor	35	6	t	f	f	Sofá. Caixa. Fotos pelas paredes. Pequena cortina no fundo.
73	Rodoviária (Prostituição)	36	1	t	f	f	Beco estreito e escuro.
74	Beco Dorsoduro (Prostituição)	36	4	t	f	f	Beco estreito e escuro.
75	Beco Cannaregio (Prostituição)	36	5	t	f	f	Beco estreito e escuro.
76	Beco Castello (Prostituição)	36	6	t	f	f	Beco estreito e escuro.
\.


--
-- TOC entry 4238 (class 0 OID 1055797)
-- Dependencies: 225
-- Data for Name: business_rules; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.business_rules (id, business, withprofession, withoutprofession, agegreaterthan, agelessthan, wealthgreatherthan, wealthlessthan, withgender, withoutgender, sameneighbourhood, modifier) FROM stdin;
4	1	43	\N	\N	\N	\N	\N	\N	\N	f	6.0000000000
5	1	\N	43	\N	\N	\N	\N	\N	\N	f	0.1500000000
6	2	43	\N	\N	\N	\N	\N	\N	\N	f	6.0000000000
7	2	\N	43	\N	\N	\N	\N	\N	\N	f	0.1500000000
8	4	\N	\N	16	40	\N	\N	\N	\N	f	4.0000000000
9	4	\N	\N	40	\N	\N	\N	\N	\N	f	0.2500000000
10	4	\N	\N	\N	16	\N	\N	\N	\N	f	0.2500000000
11	5	\N	\N	16	40	\N	\N	\N	\N	f	4.0000000000
12	5	\N	\N	40	\N	\N	\N	\N	\N	f	0.2500000000
13	5	\N	\N	\N	16	\N	\N	\N	\N	f	0.2500000000
14	6	\N	\N	16	40	\N	\N	\N	\N	f	4.0000000000
15	6	\N	\N	40	\N	\N	\N	\N	\N	f	0.2500000000
16	6	\N	\N	\N	16	\N	\N	\N	\N	f	0.2500000000
17	7	\N	\N	\N	18	\N	\N	\N	\N	f	0.1000000000
18	8	\N	\N	\N	18	\N	\N	\N	\N	f	0.1000000000
19	11	\N	\N	\N	\N	\N	\N	\N	\N	f	0.2000000000
20	12	\N	\N	\N	\N	\N	\N	\N	\N	f	0.2000000000
21	13	\N	\N	\N	\N	\N	\N	\N	\N	f	0.2000000000
22	14	\N	\N	\N	\N	\N	\N	\N	\N	f	0.2000000000
23	15	\N	\N	\N	\N	\N	\N	\N	\N	f	0.2000000000
24	17	\N	\N	18	15	\N	\N	\N	\N	f	0.1000000000
25	18	\N	\N	\N	\N	\N	\N	\N	\N	f	0.2000000000
26	19	\N	\N	15	\N	\N	\N	\N	\N	f	0.1000000000
27	20	\N	\N	\N	\N	\N	\N	\N	\N	f	0.2000000000
28	21	\N	\N	\N	\N	\N	\N	\N	\N	f	0.7500000000
29	22	\N	\N	\N	\N	\N	\N	\N	\N	f	0.7500000000
30	23	\N	\N	\N	\N	\N	\N	\N	\N	f	0.7500000000
31	27	\N	\N	\N	\N	\N	\N	\N	\N	f	0.2000000000
32	28	\N	\N	\N	\N	\N	\N	\N	\N	f	0.0000000000
33	29	\N	\N	\N	\N	\N	\N	\N	\N	f	0.0000000000
34	30	\N	\N	\N	\N	\N	\N	\N	\N	f	0.0000000000
35	31	\N	\N	\N	\N	\N	\N	\N	\N	f	0.0000000000
36	32	\N	\N	\N	\N	\N	\N	\N	\N	f	0.8000000000
37	33	\N	\N	\N	\N	\N	\N	\N	\N	f	0.8000000000
38	34	\N	\N	\N	\N	\N	\N	\N	\N	f	0.8000000000
39	35	\N	\N	\N	\N	\N	\N	\N	\N	f	0.8000000000
40	36	\N	\N	\N	\N	\N	\N	\N	\N	f	3.0000000000
41	37	\N	\N	\N	\N	\N	\N	\N	\N	f	0.8000000000
42	41	\N	\N	\N	\N	\N	\N	\N	\N	f	0.5000000000
43	42	\N	\N	\N	\N	\N	\N	\N	\N	f	0.0000000000
44	43	\N	\N	\N	\N	\N	\N	\N	\N	f	1.2000000000
45	44	\N	\N	\N	\N	\N	\N	\N	\N	f	1.2000000000
46	45	\N	\N	\N	\N	\N	\N	\N	\N	f	1.2000000000
47	46	\N	\N	\N	\N	\N	\N	\N	\N	f	1.2000000000
48	47	\N	\N	\N	\N	\N	\N	\N	\N	f	1.2000000000
49	48	\N	\N	\N	\N	\N	\N	\N	\N	f	1.2000000000
50	49	\N	\N	\N	\N	\N	\N	\N	\N	f	0.5000000000
51	50	\N	\N	\N	\N	\N	\N	\N	\N	f	0.6000000000
52	51	\N	\N	\N	\N	\N	\N	\N	\N	f	0.4000000000
53	55	\N	\N	\N	\N	\N	\N	\N	\N	f	2.0000000000
54	58	\N	\N	\N	\N	\N	\N	\N	\N	f	0.0000000000
55	59	\N	\N	\N	\N	\N	\N	\N	\N	f	0.2000000000
56	60	\N	\N	\N	\N	\N	\N	\N	\N	f	1.3000000000
57	61	\N	\N	\N	\N	\N	\N	\N	\N	f	1.3000000000
58	62	\N	\N	\N	\N	\N	\N	\N	\N	f	0.8000000000
59	64	\N	\N	\N	\N	\N	\N	\N	\N	f	0.3000000000
60	3	\N	\N	\N	\N	\N	\N	\N	\N	f	0.0000000000
\.


--
-- TOC entry 4274 (class 0 OID 1055915)
-- Dependencies: 261
-- Data for Name: business_type; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.business_type (id, name) FROM stdin;
1	Agência de passeios
2	Baile de Máscaras
3	Balada
4	Banco
5	Biblioteca / Livraria
6	Casa para alugar
7	Corpo de Bombeiros
8	Delegacia
9	Enoteca
10	Escola de ensino médio
11	Escola de italiano
12	Escola de primário
13	Escritório de Advocacia
14	Farmácia
15	Galeria
16	Hospital
17	Hotel
18	Igreja
19	Joalheria
20	Lan House
21	Lixão e incineradora
22	Loja de roupa
23	Loja que vende barco
24	Mecânica de barco
25	Universidade
26	Museu
27	Pontos turísticos chave
28	Posto de gasolina para barco
29	Prefeitura
30	Restaurante
31	Rodoviária
32	Salão de Beleza
33	Supermercado
34	Tabacaria
35	Tatoo/Piercing Studio
36	Ponto de Prostituição
\.


--
-- TOC entry 4278 (class 0 OID 5730043)
-- Dependencies: 265
-- Data for Name: clan; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.clan (id, name) FROM stdin;
1	Capadoccio
2	Toreador
3	Brujah
4	Nosferatu
5	Assamita
6	Giovanni
7	Gangrel
8	Ventrue
10	Caitiff
11	Malkavian
\.


--
-- TOC entry 4242 (class 0 OID 1055809)
-- Dependencies: 229
-- Data for Name: eye_color; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.eye_color (id, color) FROM stdin;
1	Esquerdo Marrom, Direito Verde
2	Vermelho
3	Cinza
4	Azul
5	Verde
6	Castanho
7	Preto
\.


--
-- TOC entry 4246 (class 0 OID 1055821)
-- Dependencies: 233
-- Data for Name: family; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.family (id, name) FROM stdin;
1	Ardelean
2	Attardo
3	Balcescu
4	Bardha
5	Bucciarelli
6	Carabetta
7	Civitello
8	De Villiers
9	El Ouazzani
10	Errante
11	Ferrin
12	Galaniadis
13	Gennari
14	Giachetti
15	Giusto
16	Gjonbalaj
17	Guzzetta
18	Kochiu
19	Losito
20	Lotto
21	Manera
22	Margo
23	Mendolia
24	Mocanu
25	Patalano
26	Penne
27	Pergola
28	Petricca
29	Petruzzelli
30	Quercia
31	Ragucci
32	Roberti
33	Santarsiero
34	Selmani
35	Tocco
36	Trapani
37	Valentin
38	Valova
39	Beldad
40	Petrucci
\.


--
-- TOC entry 4272 (class 0 OID 1055906)
-- Dependencies: 259
-- Data for Name: gender; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.gender (id, gender, symbol) FROM stdin;
1	Feminino	F
2	Masculino	M
\.


--
-- TOC entry 4240 (class 0 OID 1055803)
-- Dependencies: 227
-- Data for Name: hair_color; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.hair_color (id, color) FROM stdin;
1	Branco
2	Preto
3	Loiro
4	Marrom
5	Vermelho
6	Sem cabelo
\.


--
-- TOC entry 4252 (class 0 OID 1055839)
-- Dependencies: 239
-- Data for Name: home; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.home (id, name, neighbourhood) FROM stdin;
35	Casa para alugar	4
1	Calle del Forno	5
6	Calle Zolfo	5
16	Calle Tintoria	5
25	Casa Cotolengo	5
28	Edificio Perleri	5
11	Edificio San Giovanni	5
2	Fondamenta Arsenale	6
7	Calle Nuova	6
12	Calle Dei Scudi	6
17	Calle Lion	6
21	Casa Linger	6
26	Liasidi Palace	6
29	Edificio Faville	6
3	Calle Degolin	4
8	Calle San Bernardo	4
13	Calle Della Toleta	4
18	Calle dei Cercieri	4
22	Edificio Tiziano	4
27	Residenza Grandi Veduti	4
30	Edificio Guidecca Venezia	4
31	Calle Curnis	3
32	Calle dello Stivaleto	3
33	Calle Arco	3
34	Calle Cinque	3
37	Hotel Marconi	3
4	Calle del Carbon	2
9	Calle Frezzaria	2
14	Edificio Pallazo Paruta	2
19	Edificio Kette	2
23	Edificio The Gritti Palace	2
5	Fondamenta Condulmer	1
10	Calle Larga Clero	1
15	Fondamenta Malcantor	1
20	Calle Dario	1
24	Calle de Mezzo	1
36	Bauer Hotels	2
41	Cemitério	5
42	Tumba sob Universidade	4
38	Ruas de San Marco	3
40	Ruas de Castello	6
43	Ruas de Dorsoduro	4
39	Ruas de Cannaregio	5
44	Ruas de San Polo	2
45	Tumba sob Chiesa di San Giacomo di Rialto	3
\.


--
-- TOC entry 4248 (class 0 OID 1055827)
-- Dependencies: 235
-- Data for Name: humor; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.humor (id, name) FROM stdin;
1	Choleric
2	Melancholy
3	Phlegmatic
4	Sanguine
\.


--
-- TOC entry 4250 (class 0 OID 1055833)
-- Dependencies: 237
-- Data for Name: instinct; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.instinct (id, name, humor) FROM stdin;
5	Heroism	1
23	Anger	1
28	Ambition	1
34	Discipline	1
3	Cowardice	2
19	Paranoia	2
26	Criticism	2
27	Stoicism	2
2	Selflessness	3
6	Sarcasm	3
8	Reliability	3
9	Honesty	3
10	Accuracy	3
12	Stinginess	3
15	Relaxation	3
16	Laziness	3
24	Procrastination	3
29	Compassion	3
30	Decision	3
33	Benevolence	3
1	Selfishness	4
4	Hedonism	4
7	Connection	4
14	Sex	4
22	Curiosity	4
25	Narcissism	4
31	Humor	4
11	Independence	1
13	Rank	1
17	Recognition	1
18	Provision for friends/family	1
20	Revenge	1
21	Greed	1
32	Innovation	1
35	Steal	3
\.


--
-- TOC entry 4254 (class 0 OID 1055845)
-- Dependencies: 241
-- Data for Name: nationality; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.nationality (id, name) FROM stdin;
1	Itália
2	Albânia
3	Áustria
4	Marrocos
5	Romênia
6	Judeu
7	Espanha
8	Bulgária
9	França
10	Grécia
11	Sérvia
12	Suíça
13	Alemanha
\.


--
-- TOC entry 4236 (class 0 OID 1055791)
-- Dependencies: 223
-- Data for Name: neighbourhood; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.neighbourhood (id, name, symbol) FROM stdin;
1	Santa Croce	&#128299;
2	San Polo	&#9813;
3	San Marco	&#36;
4	Dorsoduro	&#128366;
5	Cannaregio	&#10017;
6	Castello	&#127984;
\.


--
-- TOC entry 4260 (class 0 OID 1055866)
-- Dependencies: 247
-- Data for Name: npc; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.npc (id, name, gender, nationality, age, nickname, skin, eyes, hair, neighbourhood, physical, social, mental, family, home, instinct, oath, oath_nature, seed_nickname, seed_age, seed_eyes, seed_hair, seed_neighborhood, seed_physical, seed_social, seed_mental, seed_instinct, seed_oath, seed_oath_nature, notes, wealth, health, max_health, ressonance, description, alive) FROM stdin;
42	Silvain De Villiers	2	9	9	\N	1	6	2	5	0	0	1	8	16	34	13	9	0.3987979319	0.0866842513	0.4829383725	0.2985331814	0.0271531572	0.0317142362	0.4558615547	0.5179811054	0.9941166800	0.6812857345	0.4367762786	\N	2	3	3	1	\N	t
203	Rodrigo Manca	2	1	29	\N	3	6	2	1	0	0	1	\N	24	10	2	10	0.3654594373	0.4070601231	0.7790323282	0.1247988637	0.8029239094	0.0844367385	0.0265817155	0.7389420120	0.6994978073	0.1092557446	0.9580411054	Apaixonado por Luana Alongi, dono do cartel em Santa Croce. Controla a chegada de carga.\nMordeu Hayyan Daoud em 24/02.\nViu Hamsi no estoque em 25/02.	3	7	7	\N	Tenente do cartel de drogas	t
95	Vedasto Penne	2	1	74	\N	3	5	1	6	1	0	1	26	2	3	4	10	0.8049723124	0.9693525483	0.2753724535	0.5963257629	0.6717096797	0.2880988630	0.1029515641	0.2735863876	0.8789602240	0.0871909533	0.6166621249	Professor da universidade de arqueologia e médico.\n\nMordido por John Edlund.\nEstá com 1/4 agravado.\nEstá no hospital junto com a neta Ildegarda Penne, que está doente também.\nSó se lembra de ter conversado com um estudante que parecia um anjo encarnado (John).\n\nMORTO	3	4	4	2	\N	t
210	Tibaldo Trunzo	2	1	30	\N	3	3	2	4	1	1	1	\N	22	15	4	6	0.6829262976	0.4162376933	0.0571287353	0.0937214607	0.4342727222	0.8179581953	0.5087524837	0.5818450695	0.7591020411	0.2133271284	0.5213104499	Racista. Procura atrapalhar a vida dos estrangeiros em Veneza.\nDescobre se é vampiro por animalismo.\n1 de dano superficial	1	9	9	\N	Barqueiro e pescador	t
207	Gianpiero Civitello	2	1	49	\N	3	6	5	2	1	0	1	7	4	35	3	2	0.6163813438	0.7223801940	0.5521578710	0.9213036153	0.9352669096	0.8826035412	0.3255546325	0.9354154479	0.5126982284	0.5498134469	0.1189149593	Explosivo. Mata várias pessoas. Jurou fidelidade à Rodrigo, seu Sire. Tem uma família postiça onde “mora”. Tráfico de San Polo.\nDisputa com Sibilla pelo tráfico.\n\nMordeu Claudia Civitello em 24/02.	2	6	6	\N	Tenente do cartel de drogas	t
43	Stella Santarsiero	1	1	50	\N	3	4	4	5	0	2	1	33	25	30	1	4	0.7886451956	0.7368794306	0.2052723630	0.8351425493	0.0964201695	0.0566642423	0.9178243367	0.3090832604	0.2965207073	0.4473760438	0.3884315262	\N	2	3	3	2	\N	t
44	Tiziana Pergola	1	1	30	\N	3	5	5	5	2	0	1	27	11	11	11	5	0.3478738796	0.4175473295	0.2767691400	0.9034345504	0.1026381523	0.8337077016	0.1239399793	0.5066950501	0.2807830152	0.8717609361	0.9839838539	\N	2	5	5	1	\N	t
41	Samanta Orlandini	1	1	45	\N	3	6	3	5	2	1	2	\N	25	14	7	9	0.6450336781	0.6579000289	0.6222895237	0.5585224425	0.1807498952	0.8315422316	0.7418443323	0.8618781496	0.1016344326	0.8550616740	0.3972894761	Atacada por Ilinca Gogean.\n\n2/5 (3 agravado)	2	5	5	1	\N	t
94	Urtan Pipa	2	2	47	\N	3	4	4	6	1	1	2	\N	26	1	1	5	0.3851058244	0.6946052332	0.1767666040	0.7742183386	0.4643072891	0.6633058696	0.6949488946	0.8236600169	0.6929565544	0.0132676139	0.4137211226	\N	3	4	4	1	\N	t
96	Viktor Zdravkov Ivankov	2	8	23	\N	1	6	4	6	1	1	2	\N	7	20	14	10	0.3397670473	0.3020150623	0.4306975728	0.7223603564	0.6780047196	0.7478669870	0.7889425409	0.8324691650	0.1111655784	0.8668362995	0.6758870524	\N	1	4	4	1	\N	t
122	Ermilo Manera	2	1	77	\N	3	2	1	4	2	1	1	21	3	10	6	9	0.2954330715	0.9841400040	0.0115371682	0.6639740178	0.2816051749	0.8837353534	0.4418077597	0.4152581412	0.8956459281	0.0697005009	0.3879345961	\N	2	5	5	2	\N	t
128	Geldona Selmani	1	2	27	\N	3	4	2	4	1	2	1	34	35	10	11	9	0.4005945675	0.3705164376	0.2363939629	0.0357212062	0.4080816961	0.4264055484	0.8513069419	0.3164288576	0.8987470522	0.2346552863	0.6516846562	\N	2	4	4	1	\N	t
129	Igino Quercia	2	1	34	\N	3	3	4	4	1	1	2	30	8	11	7	7	0.7330726931	0.4787140296	0.0827316851	0.7698205475	0.3753365240	0.3062110962	0.6558463961	0.8638337677	0.1508692798	0.0354199313	0.8292420083	\N	2	4	4	1	\N	t
206	Ylberore Tatari	2	2	45	\N	3	5	4	1	0	1	0	\N	20	10	13	5	0.5982930233	0.6609216201	0.2540051562	0.7918462682	0.7404389406	0.0203590999	0.9501648366	0.3930848343	0.6780384088	0.7862979666	0.4970120424	Expandir o Islã. Proteger os fiéis.	0	5	5	\N	Líder de mesquita	t
233	Cassandra Centore	1	1	30	Cassy	1	7	2	4	1	2	1	\N	8	7	1	7	0.5999701712	0.6299122525	0.1757825143	0.9593057348	0.2358524455	0.4086640100	0.5108915437	0.3589660246	0.2023983649	0.8904543016	0.0999522586	Gosta de Hazlet. Gosta de abraçar Hazlet. Lésbica. Da guilda de artistas da Hazlet.	2	5	5	\N		t
121	Eniana Selmani	1	2	69	\N	3	6	1	4	1	1	1	34	35	1	6	7	0.9424405890	0.9446547223	0.9265442649	0.9786374537	0.2629192737	0.6077192687	0.4979782298	0.3376228705	0.3785023063	0.3946983396	0.3418081420	3 sucessos músicas Frederico	2	4	4	1	\N	t
232	Thorsten Dörr	2	13	50	\N	4	2	6	2	0	0	2	\N	4	34	4	3	0.6811719966	0.7391521463	0.0391521463	0.6680365274	0.9352669096	0.1741051820	0.3730381381	0.8324279649	0.9478861953	0.2133271284	0.2006399927	\N	4	7	7	\N	Senhor de Hamsi. Acionista. Quer controlar a saúde na cidade.	t
204	Ernesta Ponzi	1	1	23	\N	3	6	5	6	0	0	0	\N	26	18	16	10	0.9154158818	0.3004416592	0.5095197068	0.9382277990	0.4575822498	0.3772486818	0.0675580343	0.1097369807	0.7726207474	0.9950471508	0.9670548328	Quer ajudar os Toreador da cidade. Tem um romance com a vereadora Verdiana Petrecca.\nDona da balada Inferno em Castello.\nPresença 4. Entrance and Summon entre outros.\nAuspex 3.	4	5	5	\N	Dona de Balada	t
145	Adelchi Fazzone	2	1	52	\N	3	6	2	3	1	0	0	\N	33	31	2	4	0.3911909481	0.7798786206	0.7744483768	0.0571114060	0.8822983227	0.7478202843	0.0238717636	0.0130496810	0.8849269366	0.3035727702	0.4718573286	Cuida de Valerio na Basilica de San Marco.	1	4	4	2	\N	t
142	Settimio Quercia	2	1	36	\N	3	6	5	4	1	0	1	30	8	28	15	3	0.3729024303	0.5113389910	0.9017885652	0.9847616611	0.2437861045	0.6323793278	0.1356967237	0.2459227775	0.0000702296	0.2106376820	0.3047447964	Saúde 1/4 (3 agravado)\n\nMordido por Tibaldo Trunzo em 24/2.	2	4	4	1	\N	t
235	Joseff Sharot	2	6	30	\N	1	4	3	4	2	1	1	\N	8	22	4	2	0.4437595480	0.7899193950	0.3501219777	0.9074852550	0.7857179004	0.9406167883	0.3694219138	0.8881396852	0.5751200048	0.1952342819	0.2044276376	Inteligente. Delicado. Meio azedo as vezes. Gay. Da guilda de artistas da Hazlet.	2	5	5	\N		t
146	Alcibiade Cocchi	2	1	39	\N	3	4	2	3	1	1	2	\N	38	15	6	3	0.3492905455	0.5707115721	0.2278335941	0.1331361337	0.8859183067	0.7660758314	0.3551765883	0.9456963172	0.3666291916	0.0312480132	0.9103226869	Saúde 1/4 (3 agravado)\n\nMordido por Danio Accardo em 24/02.	0	4	4	1	\N	t
141	Saturniano Mendolia	2	1	46	\N	3	4	4	4	1	1	1	23	13	10	3	5	0.5733979651	0.6804321316	0.2017877774	0.6145709538	0.3031866255	0.6355712319	0.7185151622	0.4892673321	0.8165824653	0.5167515093	0.9813687533	Pretende construir o banco de sangue na cidade. Dono do Obsidian Sanctun.	3	4	4	2	\N	t
143	Stefania Mocanu	1	5	17	\N	1	2	2	4	1	2	1	24	3	25	3	9	0.5132876530	0.2124708832	0.0320936154	0.0829841076	0.4448193326	0.3849018786	0.9278606834	0.4105945363	0.2898605134	0.3569325717	0.4063637434	16 sucesso na pregação do Frederico.\n(-10)\n9 sucessos sobrando\n3 sucessos apelo orfanato	2	4	4	1	\N	t
144	Zvezdan Trkulja	2	11	41	\N	1	6	4	4	1	0	1	\N	30	7	2	10	0.2839851815	0.5906388229	0.9202798588	0.6004250963	0.3433250789	0.5162893307	0.1063057845	0.6924449482	0.4178257585	0.5229873953	0.8386145085	1/4 agravado\n\nGuto atacou.	2	4	4	2	\N	t
132	Macario Patalano	2	1	65	\N	3	2	1	4	2	1	1	25	3	22	8	10	0.9116141055	0.9256854175	0.0241976618	0.8148855513	0.2254760220	0.8077922223	0.4119139906	0.4267809169	0.5166284869	0.5404886192	0.5745718062	\N	2	5	5	2	\N	t
135	Orso Melchiorre	2	1	30	\N	3	6	2	4	2	1	2	\N	27	6	6	10	0.3720881093	0.4239697791	0.7103076417	0.0361129451	0.3414846431	0.9631844698	0.5280975612	0.8054649574	0.5835223244	0.7320379438	0.3588085722	\N	2	5	5	1	\N	t
139	Rolando Ragucci	2	1	6	\N	3	6	4	4	1	1	0	31	27	2	15	1	0.7224392208	0.0648331088	0.8840694432	0.7093034707	0.2613958475	0.8420677910	0.7653499680	0.0860962344	0.3448965950	0.3503826883	0.0687873892	\N	2	4	4	1	\N	t
140	Roxanni Galaniadis	1	10	9	\N	1	4	3	4	1	1	1	12	8	28	16	6	0.9334973790	0.0890161338	0.1500638238	0.4645165639	0.4061970632	0.8753167109	0.6048108986	0.8899996368	0.0397713182	0.5446674313	0.6651906021	\N	2	4	4	1	\N	t
108	Bastian Puchner	2	3	44	\N	1	4	3	4	0	1	0	\N	13	7	3	5	0.5500245209	0.6361293429	0.1643632287	0.3450304595	0.3941829193	0.1518047826	0.7140789932	0.0512283388	0.1751275827	0.2990555989	0.9752312664	MORTO	3	3	3	2	\N	f
237	René Larousse	2	9	22	\N	1	6	4	4	1	2	2	\N	8	17	5	6	0.6903701159	0.8822543803	0.7655566572	0.8565244880	0.5714260116	0.8895251038	0.6293921317	0.5937995119	0.4161005164	0.0731516797	0.3837189069	Transformista. Cada dia com uma roupa diferente. Da guilda de artistas da Hazlet.	2	5	5	\N		t
234	John Edlund	2	12	35	Cassy	1	4	3	4	1	2	2	\N	8	34	5	2	0.9835985857	0.1665529269	0.2405371265	0.3402172630	0.7086357432	0.1661543716	0.6891716314	0.1239684466	0.7728676437	0.0223734998	0.5265754126	Chefe da guilda de artistas de Hazlet. Sério e muito formal.\nMorde intelectuais!	2	5	5	\N		t
148	Cleo Roberti	1	1	27	\N	3	6	4	3	0	1	0	32	33	24	10	4	0.9647849230	0.3748310403	0.8211120461	0.7084380298	0.9103794584	0.0386958890	0.3814932092	0.0481313130	0.0447449234	0.5269445640	0.5135633460	\N	1	3	3	3	\N	t
236	Henrique Norelli	2	1	25	Henrich	1	4	5	4	2	1	1	\N	8	16	3	9	0.3520647823	0.8287822120	0.8773337202	0.5321327113	0.4468915598	0.5553136463	0.5584385311	0.8903679866	0.4498329894	0.5420371168	0.0569209140	Malhadão. Meio bruto. Da guilda de artistas da Hazlet.\n\nDescendente dos Lovek-Turak.	2	5	5	\N		t
131	Ljuba Simić	2	11	37	\N	1	5	3	4	1	1	0	\N	18	9	3	10	0.3972784210	0.5248344031	0.3031779042	0.4412242086	0.4094482819	0.3898961411	0.4699313324	0.0631040826	0.5345697533	0.3604429242	0.7437923873	Está desaparecido.\nFoi visto pela última vez no Banco San Marco. Foi pegar um empréstimo para comprar uma jóia para uma garota.\nFoi sequestrado por Felicita para ter seus órgãos roubados.\nEstá em uma banheira cheia de gelo num dos quartos do Olive Tower.	2	4	4	2	\N	t
208	Amira Lieberman	1	1	31	\N	3	6	3	2	0	0	0	\N	4	34	12	6	0.6354547515	0.4384947076	0.5530611584	0.4244578178	0.9517396859	0.4472935668	0.3368451155	0.4111871899	0.9478861953	0.6987454186	0.5517164825	Presença sombria que vaga pela cidade. Busca descobrir seu criador (que é Jebadiah).\nCicatriz de cruz na testa.\nMask of a Thousand Faces e Ghost in the Machine.\n\nEnxerga pessoa com Sense the Beast. Animalism 1\n	1	6	6	\N	Espiã	t
147	Cleo Castagno	1	1	35	\N	3	6	4	3	2	2	2	\N	33	5	14	3	0.7772754784	0.4996691492	0.6018449843	0.7156416947	0.8733101800	0.9734152396	0.9626624357	0.8514453578	0.9222869275	0.2758259747	0.7304499887	\N	2	5	5	2	\N	t
209	Idea Cosenza	1	1	56	\N	3	6	2	3	0	1	0	\N	32	5	1	4	0.3799528430	0.8391521463	0.6171567304	0.2678983438	0.8345270167	0.3969182953	0.6498674386	0.3007100618	0.5846058735	0.0105406334	0.3929107693	Sofre com a pressão de ser o membro mais antigo do conselho de Baldassarre. Quer descobrir como reacordar o ancestral.\nFala com espíritos e pode construir zumbis.\nLê auras e descobre se é vampiro.	3	6	6	\N	Protege Baldassare	t
127	Galatea Petruzzelli	1	1	21	\N	3	5	4	4	2	1	1	29	8	30	2	7	0.8972638488	0.2787485817	0.3663218638	0.7117523136	0.4521811677	0.9374005441	0.6495365507	0.2011802178	0.1950834544	0.2138652151	0.9792332237	3 sucessos apelo orfanato\n1 sucesso pregação	3	5	5	3	\N	t
88	Selvaggia Petricca	1	1	79	Nonna (avó)	3	6	1	6	0	2	1	28	2	2	11	3	0.0002322740	0.9953088713	0.5490495720	0.0151764931	0.5368006233	0.0249247307	0.8104276485	0.4823374352	0.4105469508	0.1897687989	0.1875091963	Assinou câmeras para o Hamsi.\n\nMorta pelo coroinha Valerio, em uma rua perto de casa.	1	3	3	3	\N	f
125	Fernando Beldad	2	7	20	Tappo (short)	3	6	3	4	0	1	1	39	27	10	12	5	0.0384411251	0.2633323141	0.8038471804	0.3026348624	0.2400975744	0.1372281444	0.6258387364	0.3121072925	0.9983951546	0.8413208779	0.7005807633	Casa foi queimada.	1	3	3	2	\N	t
117	Durya Salem	1	4	43	\N	2	6	3	4	1	1	1	\N	27	22	16	2	0.9457255274	0.6325496307	0.7100998455	0.3804126793	0.2316945433	0.4638302671	0.3877645120	0.3619535180	0.6513389128	0.2551113168	0.3066834163	Hamsi roubou a bolsa dela.	2	4	4	3	\N	t
83	Pacomio Basso	2	1	51	\N	3	6	2	6	0	1	1	\N	12	24	4	9	0.4028490601	0.7486101562	0.8556246616	0.1313639604	0.4770589236	0.1948092017	0.7500243318	0.5994081351	0.8078760283	0.5468436908	0.8742642658	\N	3	3	3	3	\N	t
84	Parmenio Martin	2	1	31	\N	3	4	5	6	1	1	1	\N	29	35	13	4	0.7439339489	0.4410597876	0.1038083435	0.9225644076	0.5691581792	0.2242352624	0.7907290608	0.2605266760	0.3863227948	0.2062048791	0.8761277720	\N	3	4	4	1	\N	t
85	Petar Balcescu	2	5	27	\N	1	6	3	6	0	1	2	3	26	13	2	1	0.2529347411	0.3733217099	0.9853723702	0.4214280694	0.4844729063	0.1667245881	0.5676577910	0.9798454293	0.4245543022	0.3310118069	0.4085945823	\N	1	3	3	1	\N	t
86	Protasio Petricca	2	1	51	\N	3	6	2	6	1	2	2	28	2	35	14	7	0.2857103530	0.7498553498	0.8044231159	0.1226382478	0.4646515222	0.4291095266	0.9744995318	0.8592634016	0.4257093763	0.6974365903	0.2611091695	\N	1	4	4	3	\N	t
87	Rodrigo Tito	2	1	30	\N	3	5	5	6	1	1	1	\N	29	11	3	8	0.2877879779	0.4233072945	0.2787239057	0.9565656237	0.5276876575	0.7387933260	0.2378789945	0.3079311963	0.2586745198	0.6091919424	0.1727064881	\N	1	4	4	1	\N	t
8	Appia Romaniello	1	1	57	Papa	3	2	5	5	1	1	1	\N	28	24	7	1	0.0560139625	0.8576086587	0.0130306359	0.9701151871	0.0841756023	0.7951735347	0.6517666180	0.3585919723	0.8051873512	0.8949257123	0.0506931732	1/4 2 Agravado e 1 superficial.\nVai ficar no hospital por 2 semanas	2	4	4	2	\N	t
89	Serafeim Perroulis	2	10	54	Mommo (dumb)	1	6	5	6	0	1	1	\N	40	18	10	7	0.0331635798	0.8019196285	0.8136818791	0.9860009254	0.4707074858	0.1276011429	0.5501686290	0.4170773412	0.1950622340	0.0859483067	0.5365108659	\N	0	3	3	1	\N	t
90	Sostene Susi	2	1	34	Pieditto (pezinho)	3	6	5	6	0	1	1	\N	29	27	3	5	0.0333645314	0.4852357438	0.8015223624	0.9348074485	0.5137070812	0.1399056750	0.2976116687	0.7897881688	0.6006826696	0.1556652104	0.4912360797	\N	1	3	3	1	\N	t
115	Delfina Petrucci	1	1	36	\N	3	6	2	4	2	2	1	40	22	23	7	3	0.2244405084	0.5120834721	0.5553416209	0.1798175706	0.3034990007	0.8966765265	0.9870187626	0.7356120675	0.3877315227	0.1081357892	0.8491607632	\N	2	5	5	1	\N	t
116	Dorin Pîrvulescu	2	5	19	\N	1	3	5	4	1	2	2	\N	3	10	5	2	0.2785080131	0.2427533594	0.0689832307	0.9580942599	0.2335992327	0.6576855241	0.8879791666	0.9998379774	0.7599869719	0.8349510952	0.6110615006	\N	1	4	4	1	\N	t
123	Erminia Manera	1	1	19	\N	3	5	4	4	1	1	0	21	3	4	1	1	0.9741721502	0.2497058835	0.3544238738	0.8677600102	0.4213890908	0.7273686818	0.5016047301	0.0106981699	0.7059279979	0.9953997202	0.9468416485	\N	2	4	4	2	\N	t
124	Esmeralda Dino	1	1	45	\N	3	5	4	4	1	2	0	\N	35	19	3	3	0.2897043484	0.6526031733	0.3402151101	0.7967350399	0.3314509582	0.2090088508	0.8096321245	0.1378058578	0.7018232921	0.7907571727	0.6945402743	\N	2	4	4	1	\N	t
126	Franca Mendolia	1	1	36	\N	3	6	3	4	1	1	1	\N	18	31	4	7	0.2648586315	0.5131687289	0.5161922071	0.4338206700	0.4368434046	0.4859969172	0.7859494762	0.6276937888	0.7045137729	0.5250768117	0.4405262935	\N	2	4	4	2	\N	t
9	Arabella Carabetta	1	1	34	Bella	3	6	5	5	1	1	1	6	16	5	4	8	0.1264090499	0.4857007074	0.4896361903	0.9134853758	0.0247145017	0.3532361571	0.4507844363	0.4832314363	0.5236987919	0.9583876200	0.6448512986	\N	2	4	4	1	\N	t
10	Arminio Carabetta	2	1	7	\N	3	6	3	5	0	0	0	6	16	34	14	8	0.9531094196	0.0736850427	0.7705490178	0.3188094346	0.1595335261	0.1595512729	0.0690467794	0.0630960844	0.5329869705	0.6699517183	0.2986483740	\N	2	3	3	1	\N	t
17	Dan Losito	2	5	15	Dannito	1	5	4	5	1	1	1	19	11	8	14	1	0.0988380958	0.1774219898	0.3255169930	0.6999020183	0.1660413324	0.3672653236	0.7698015151	0.7528266586	0.9225791600	0.4164981376	0.8155120696	3 sucessos apelo orfanato\n4 sucesso pregação	2	4	4	1	\N	t
16	Concetta Curro	1	1	28	\N	3	3	3	5	2	2	1	\N	25	23	1	10	0.6480373811	0.3935679438	0.0555678375	0.3258166499	0.1759991945	0.9845962726	0.9262127050	0.3063990300	0.3395024672	0.4733829701	0.9200942107	2/5 agravado mordida por Hamsi.	2	5	5	3	\N	t
13	Blaga Gavrilova Valova	1	8	28	\N	1	6	2	5	2	0	1	38	11	32	7	3	0.2604226328	0.3863856837	0.7383555691	0.2829705931	0.0029631270	0.9079349051	0.1949980041	0.5749043692	0.4311610144	0.8001747227	0.2257171696	4/5 1 gravado. Está no hospital se recuperando da overdose.\n12 sucessos música\n7 amar os filhos e procurar a assistente social\n3 sucessos apelo orfanato\n\nVeio da Bulgária com o dinheiro do patrão e seus dois filhos. Um tem só o nome do patrão. Tem um dinheiro sobrando. Procura abrir algum negócio na cidade.\nPatrão se chama Yarlan Kostov.	3	5	5	1	\N	t
12	Berenice Scionti	1	1	45	\N	3	6	3	5	0	0	1	\N	25	34	4	6	0.6101615207	0.6675358741	0.8899881951	0.4494264173	0.1851166862	0.0845027747	0.1782031047	0.5463085046	0.2911942720	0.7405388652	0.5544406378	Pé amputado pelo Hamsi. \n\nSaúde 2 de 3\n1 superficial e está de muleta.	3	3	3	1	\N	t
11	Baldo Margo	2	1	45	Cuore Blu (coração azul)	3	6	3	5	1	2	1	22	6	26	4	2	0.0918299624	0.6538596894	0.5069450989	0.3911397557	0.0182089530	0.2177418283	0.9087612491	0.5186203018	0.5252374373	0.8154885876	0.6662286093	Descendente dos Lovek-Turak	2	4	4	1	\N	t
18	Dëlirana Bardha	1	2	27	Deli	3	6	4	5	1	1	1	4	6	34	15	10	0.1247109981	0.3735706586	0.8206397497	0.8935311046	0.0732739150	0.3651974761	0.7026222103	0.6022583034	0.1934726640	0.7252639816	0.9301174170	Um pouco brava.\nDisciplinada.\nO filho Gjelush, tem epilepsia. Procura uma cura.	1	4	4	1	\N	t
14	Cain Giachetti	2	6	10	\N	3	6	2	5	1	0	0	14	1	22	4	5	0.6134112932	0.1049263448	0.8290231922	0.1558782633	0.0900386094	0.8833893822	0.0482446812	0.2397336660	0.8432644444	0.3897715454	0.0412739123	\N	2	4	4	1	\N	t
15	Chanit Losito	1	6	31	\N	3	5	4	5	1	1	0	19	11	6	14	7	0.2974934328	0.4405645690	0.2712793550	0.6320768257	0.0252832445	0.4966823166	0.6358734216	0.0425419845	0.7493975450	0.0643430341	0.5932534307	\N	2	4	4	1	\N	t
19	Elide Pergola	1	1	6	\N	3	6	2	5	1	1	1	27	11	17	11	10	0.3114835651	0.0591682096	0.4136594005	0.1895005145	0.0249218814	0.7158808625	0.5110050159	0.5098742079	0.6708147721	0.7935724505	0.6895371727	\N	2	4	4	1	\N	t
20	Emanuela Carabetta	1	1	2	\N	3	6	3	5	1	0	1	6	16	10	3	5	0.8071304587	0.0228358389	0.9679441091	0.4965163028	0.1528734743	0.7731790520	0.4769558820	0.6245465216	0.8844424350	0.7634032950	0.3209959143	\N	2	4	4	2	\N	t
91	Tabita Pollio	1	1	52	\N	3	4	5	6	0	1	1	\N	29	31	11	9	0.6085939769	0.7747821906	0.1631520279	0.9387430084	0.5386624082	0.0629322524	0.6141689773	0.5920265249	0.3256443573	0.9296725704	0.3589546215	\N	1	3	3	1	\N	t
92	Tranquillo Tocco	2	1	35	Tico	3	4	4	6	0	1	1	35	17	22	6	1	0.0018878949	0.5002171371	0.2053699432	0.6110632811	0.5987563546	0.0644142650	0.3673160363	0.2438519582	0.7290333812	0.3748289839	0.2347972609	\N	1	3	3	1	\N	t
93	Trasea Tocco	1	1	35	\N	3	6	3	6	1	1	1	35	17	21	7	10	0.9129231898	0.5075838012	0.4318713562	0.3565847743	0.6008754063	0.7481318594	0.3996389868	0.3141299470	0.5561453152	0.8722677123	0.2116094712	\N	1	4	4	1	\N	t
106	Ariele Del Medico	2	1	55	Lila	3	6	3	4	1	0	1	\N	18	13	7	5	0.0776930723	0.8139939208	0.4535897622	0.4043933113	0.2719543039	0.6327206141	0.1024030391	0.4371006847	0.8530127247	0.9278071935	0.9912413295	\N	2	4	4	2	\N	t
73	Ildegarda Penne	1	1	13	Penne	3	5	4	6	0	0	0	26	2	32	1	3	0.1893525941	0.1532587433	0.3919203701	0.7146340645	0.4852591323	0.1100954381	0.2000402193	0.4848922189	0.2950372576	0.6346473107	0.0806590321	Neta de Vedasto Penne.\nDoente de sarampo.	1	3	3	2	\N	t
21	Emilia Maida	1	1	47	Bianca	3	6	4	5	0	0	1	\N	28	20	11	9	0.0214974113	0.6874696047	0.9105250470	0.7384000260	0.1886233143	0.1104220863	0.1262829920	0.6795967936	0.0743765064	0.7811801597	0.8107903229	2/3 superficial	2	3	3	1	\N	t
102	Ana-maria Mocanu	1	5	65	\N	1	6	1	4	1	1	2	24	3	6	14	4	0.7084506629	0.9263640324	0.5739423116	0.5151911780	0.4202893629	0.5388341098	0.3552082716	0.9962835326	0.4010314135	0.5651542135	0.3631179366	9 sucessos música	2	4	4	1	\N	t
74	Imelda Maura	1	1	45	\N	3	4	4	6	0	2	1	\N	21	1	4	4	0.2161497585	0.6637882909	0.1997011715	0.7867536918	0.4657614293	0.0440034233	0.8409115289	0.3966386902	0.3566658539	0.1788819890	0.2060001604	DESAPARECIDA. \n(foi morta por Fermo Zunino)	1	3	3	3	\N	f
71	Guerrino Attardo	2	1	4	\N	3	6	2	6	1	0	0	2	7	35	16	7	0.8744408089	0.0371229394	0.6626734812	0.1213960048	0.5706785120	0.6269531260	0.2219589617	0.4058938700	0.9317439740	0.3971490172	0.2056381996	\N	1	4	4	3	\N	t
72	Icaro Marasco	2	1	29	\N	3	4	2	6	1	2	2	\N	12	25	12	3	0.3215530259	0.4018595295	0.2250640698	0.1356033584	0.6294484185	0.2264952405	0.9775385816	0.8499895165	0.7103617855	0.6471944439	0.4454332508	\N	2	4	4	2	\N	t
103	Anastasia Mattaliano	1	1	65	Ana	3	5	1	4	1	2	1	\N	18	16	4	10	0.1237961927	0.9248485564	0.2715377592	0.1684857897	0.2344547695	0.6552734028	0.8605198326	0.4658257749	0.5869657287	0.8617414567	0.2987152642	Professora de Arquitetura.	2	4	4	1	\N	t
75	Isabella Balcescu	1	5	59	Isa	1	4	2	6	2	0	1	\N	7	27	15	1	0.0245140341	0.8787365906	0.1051419479	0.0709043353	0.5727255499	0.8373774716	0.1537277463	0.6752350297	0.1842689100	0.1227076858	0.6414958736	\N	1	5	5	1	\N	t
97	Zenaide Gotto	2	1	29	Caramella (doce)	3	6	3	6	1	1	1	\N	21	34	2	6	0.0198624297	0.4042731242	0.5785588372	0.3919065018	0.5644199685	0.3123525186	0.2343179221	0.7305011871	0.3597134326	0.2328721130	0.9566271383	\N	1	4	4	1	\N	t
98	Abdone Patalano	2	1	57	\N	3	6	3	4	2	2	1	25	3	9	5	4	0.6540021496	0.8552647152	0.8991313587	0.5978731991	0.3758355454	0.9760677067	0.8107286785	0.5207251203	0.0794408177	0.9225483656	0.3888460862	\N	2	5	5	3	\N	t
99	Adolfo Mendolia	2	1	14	\N	3	6	4	4	0	1	0	23	13	16	2	6	0.7879304156	0.1572742626	0.5260921871	0.7508495668	0.2327117895	0.4931799732	0.9950721334	0.3254100872	0.4710382615	0.9182798054	0.7102703993	\N	2	3	3	1	\N	t
100	Alda Petrucci	1	1	9	\N	3	6	3	4	1	1	0	40	22	25	10	7	0.5871318328	0.0934208301	0.9616651124	0.5365987083	0.3553558469	0.9729179329	0.7780477429	0.4705022830	0.0328550290	0.5309340893	0.2705455058	\N	2	4	4	1	\N	t
101	Amalia Giannuzzi	1	1	65	lia	3	6	1	4	1	2	1	\N	18	10	13	7	0.0741920530	0.9227327653	0.5104745014	0.9241478525	0.3642022479	0.2585061912	0.8190292035	0.6015588264	0.5872067419	0.6302960651	0.2353146619	\N	2	4	4	1	\N	t
104	Anica Hagi	1	5	24	\N	1	6	4	4	1	0	1	\N	22	11	13	2	0.4652852533	0.3288946013	0.6814594624	0.8503515585	0.4387223349	0.3854943975	0.1078888367	0.7321765701	0.5221759238	0.5413676254	0.8345224974	\N	2	4	4	1	\N	t
105	Argo Rega	2	1	28	\N	3	6	2	4	2	0	1	\N	30	35	11	8	0.4348442095	0.3890528997	0.8855701115	0.1710733776	0.4347319535	0.8164176785	0.1170585148	0.7066399013	0.0449566323	0.6943414465	0.9303757244	\N	2	5	5	2	\N	t
77	Maurilio Govoni	2	1	58	\N	3	6	2	6	1	2	1	3	12	14	7	1	0.2995897978	0.8724456902	0.4373946026	0.1220357824	0.5672214464	0.5478887411	0.8356880320	0.3377737263	0.1662418337	0.4153505738	0.0625719320	\N	2	4	4	1	\N	t
78	Minervina Arrighi	1	1	36	\N	3	6	4	6	2	1	1	\N	29	28	6	2	0.4875931393	0.5167543868	0.8445291675	0.8885569095	0.5579456462	0.8022478650	0.3598566585	0.6039701618	0.5268105660	0.1628682157	0.4509705013	\N	3	5	5	2	\N	t
80	Orchidea Lotto	1	1	43	\N	3	6	5	6	1	1	1	20	17	28	15	8	0.9944076267	0.6284857337	0.7744922496	0.9530697987	0.5345076826	0.7760574952	0.4408529783	0.2797029585	0.6777817509	0.1402913834	0.4278662678	\N	1	4	4	3	\N	t
81	Orchidea Mancini	1	1	21	\N	3	6	2	6	0	1	1	\N	17	11	16	10	0.6473679572	0.2684763227	0.8684635276	0.2230839778	0.6653720275	0.1250042797	0.4159317070	0.3371149214	0.8472902578	0.5269001227	0.9454886218	\N	1	3	3	1	\N	t
82	Orfeo Agresta	2	1	21	Neto	3	6	3	6	1	1	1	\N	17	25	3	9	0.1893163770	0.2753088459	0.4798744568	0.3445367683	0.6741834711	0.7166828800	0.2280600936	0.3763234006	0.7424964835	0.1289773248	0.6349093470	\N	1	4	4	2	\N	t
107	Aziza Achtouk	1	4	27	\N	2	6	5	4	2	2	1	\N	30	3	2	6	0.5043460021	0.3692237641	0.7731488052	0.9428564624	0.3058438029	0.8280917217	0.8562416661	0.2085799840	0.7704935047	0.0669137489	0.8978251746	\N	2	5	5	1	\N	t
109	Bogdana Ević	1	11	32	\N	1	4	4	4	1	0	2	\N	13	31	7	4	0.2814838814	0.4463938539	0.1681262810	0.7540504785	0.2062687577	0.4268159110	0.1666837391	0.8043655923	0.9951767651	0.8045077324	0.8822523409	\N	1	4	4	2	\N	t
110	Candido Suozzo	2	1	25	\N	3	5	4	4	2	1	1	\N	13	19	10	2	0.6066255125	0.3418682106	0.2694825335	0.6624301204	0.2405467394	0.9610033619	0.4488441893	0.3638008511	0.8063209731	0.7770934025	0.8347206134	\N	2	5	5	2	\N	t
186	Edda Villa	1	1	45	\N	3	6	5	1	2	1	2	\N	5	9	16	10	0.8819664434	0.6594985012	0.8507768262	0.9007126172	0.7183916078	0.9555676689	0.5132204407	0.8397733422	0.7862187600	0.6045043681	0.6475654136	\N	1	5	5	1	\N	t
79	Naomi Kohn	1	3	27	\N	1	6	2	6	1	1	1	\N	17	27	13	9	0.8116079444	0.3748628533	0.6158734395	0.2572054695	0.6919820440	0.6019465831	0.7988929738	0.3848327796	0.2887766894	0.5224009349	0.0979597612	6 sucesso música de Frederico	1	4	4	3	\N	t
120	Emmanouil Galaniadis	2	10	44	\N	1	6	5	4	1	1	0	12	8	24	4	2	0.8768566580	0.6428523904	0.4149648800	0.9403366270	0.2265573666	0.2533906168	0.5636906287	0.0649482900	0.5480860251	0.1844136265	0.6982103722	3/4 superficial. Hazlet mordeu	2	4	4	2	\N	t
119	Emilia Beldad	1	7	25	\N	3	6	3	4	1	1	0	39	27	34	13	7	0.8566902922	0.3414915391	0.9103647465	0.3408338937	0.3575616858	0.6180061974	0.5807219064	0.0075958867	0.6604341979	0.2154604383	0.2877757669	Casa foi queimada. Vindonio Griffo é apaixonado por ela.	2	4	4	2	\N	t
76	Marta Califano	1	1	53	\N	3	4	4	6	2	1	1	\N	26	5	11	1	0.8745602487	0.7956111254	0.1583948823	0.7744290117	0.6277516311	0.9495747449	0.7559656165	0.2082662657	0.5841851430	0.4949815736	0.5102350159	12 sucessos música\n3 sucessos persuasão do padre\n2/5 não agravado. Apanhou de capangas judeus.\n\nHrysitiana convidou-a para ir a igreja.\nDeve dinheiro para os judeus. Pediu 15k emprestado para reformar apartamento (na verdade ajudou prostitutas à saírem das ruas).	2	5	5	2	\N	t
149	Emilia Roberti	1	1	31	\N	3	3	2	3	1	0	1	32	33	23	7	4	0.7887975262	0.4401940690	0.0893652681	0.1141468226	0.8757613427	0.4427579355	0.0966059765	0.3843725058	0.3386360708	0.1093390689	0.0659454895	2/4 superficial	2	4	4	3	\N	t
114	Dalina Schlup	1	12	38	\N	1	6	4	4	1	1	1	\N	18	28	4	5	0.3236267492	0.5432007082	0.5130173037	0.6034916850	0.4409223950	0.7799443004	0.4926162856	0.2609099822	0.3152949494	0.4162920014	0.9614812249	\N	3	4	4	1	\N	t
118	El Bachir Toufiq	2	4	41	Piccolo (Pequeno)	2	4	5	4	1	1	1	\N	8	10	12	1	0.1094103205	0.5896898029	0.1382101372	0.9614172623	0.3041100304	0.4832031479	0.3974582912	0.2961043010	0.0669885403	0.5512494556	0.6287351004	\N	2	4	4	1	\N	t
150	Fabio Ferrin	2	1	27	\N	3	2	3	3	1	1	1	11	31	21	8	4	0.8940416002	0.3766239084	0.0464766735	0.5758340635	0.8914766901	0.5999884220	0.3811673127	0.4549352435	0.7812241708	0.6234672367	0.7534379921	\N	3	4	4	2	\N	t
151	Giustiniano Gennari	2	1	52	\N	3	5	2	3	1	2	1	13	32	25	6	5	0.4990291684	0.7732728333	0.3809690783	0.2088723577	0.8421832651	0.2506545208	0.8168485794	0.3464687456	0.1465039090	0.0704691681	0.0633351187	\N	2	4	4	3	\N	t
152	Gualberto Villella	2	1	52	Guga	3	6	4	3	2	1	1	\N	32	23	4	10	0.1800947722	0.7650046540	0.4345583569	0.6040087924	0.9099860493	0.8601207001	0.5165483229	0.4517208904	0.1819906408	0.7326423574	0.8539450247	\N	2	5	5	1	\N	t
153	Gwenaëlle Blanc	1	9	30	\N	1	4	2	3	0	1	1	\N	32	23	3	3	0.3449903753	0.4222685421	0.1919431844	0.1079144211	0.8209315904	0.0311007407	0.2698255286	0.3551735612	0.3371892934	0.1031769533	0.0999188574	\N	3	3	3	1	\N	t
171	Evaristo Masciantonio	2	1	20	Tonio	3	3	2	2	0	2	2	\N	19	3	12	10	0.1838491443	0.2527894578	0.0780692718	0.1635287721	0.9858062383	0.0507360949	0.8628767851	0.9554342183	0.9780346436	0.1863295802	0.8723637546	Jura que viu uma demônio na rua.	3	3	3	1	\N	t
170	Emanuela Giusto	1	1	26	\N	3	4	4	1	1	1	2	\N	20	5	12	4	0.4146794184	0.3515232844	0.2360891789	0.6905544074	0.7150935695	0.5530349338	0.7724906682	0.8414622800	0.3982023801	0.7056353002	0.2794240112	\N	1	4	4	1	\N	t
154	Hayyan Daoud	2	4	28	Topolino (Rato pequeno)	2	6	4	3	1	1	1	\N	31	4	13	9	0.1421284615	0.3853471414	0.4052113549	0.7614749625	0.8359795702	0.2742751952	0.7487516940	0.3447247761	0.3026648460	0.5491879268	0.8212242803	Saúde 1/4 (3 agravado)\nEstá em casa descansando.\n\nMordido por Rodrigo Manca 24/02\n	3	4	4	3	\N	t
193	Pollione Strollo	2	1	60	\N	3	6	1	2	1	1	1	\N	14	3	3	7	0.4063906824	0.8960770837	0.5351915553	0.2260161344	0.9626767114	0.2913724782	0.7063605923	0.3907104491	0.5448294568	0.8336568320	0.1499260702	3 sucessos apelo orfanato\n1 sucesso pregação	3	4	4	2	\N	t
194	Postumio Amore	2	1	41	\N	3	6	3	1	1	1	0	\N	15	30	15	10	0.8211092906	0.5969063111	0.7188625559	0.3838335396	0.7183916078	0.6827228353	0.6684885951	0.0425665736	0.5949286912	0.1200853139	0.9158206222	2/4 agravado\n\nHazlet mordeu no dia 4/3	2	4	4	1	\N	t
189	Marinetta Carangelo	1	1	24	Netta	3	6	3	1	1	1	1	\N	10	26	5	8	0.1556478149	0.3255380692	0.5107949486	0.3112348434	0.7080488586	0.5899208970	0.7359363022	0.7848037746	0.7102250058	0.5407295884	0.7549656687	\N	1	4	4	1	\N	t
191	Orchidea Valentin	1	1	6	\N	3	3	5	1	0	1	1	37	5	32	7	9	0.9525775458	0.0566180052	0.0967838468	0.9370928412	0.7067870334	0.4359684762	0.5094316057	0.7072763349	0.7485180074	0.3363062419	0.2598495147	\N	1	3	3	1	\N	t
192	Palladio Anastasio	2	1	61	\N	3	6	1	1	2	1	2	\N	24	32	5	8	0.3062237033	0.9052317972	0.7408597965	0.4956707805	0.7161681015	0.8785686089	0.4492749155	0.8230150440	0.4756348476	0.3557307402	0.1926499206	\N	3	5	5	1	\N	t
190	Nostriano Felicetti	2	1	22	\N	3	4	5	1	0	1	2	\N	24	21	3	9	0.5341070185	0.2987499118	0.1013207254	0.9083484128	0.7982501663	0.0383695884	0.5508282779	0.8361430724	0.4992811560	0.6916378997	0.1871834993	Descendente dos Lovek-Turak.\n\nEstudante de história. Ambicioso.	1	3	3	1	\N	t
46	Ulpian Gjonbalaj	2	2	66	\N	3	5	1	5	1	1	1	16	6	31	7	7	0.5749065636	0.9300250715	0.2847208762	0.8394766056	0.0406083001	0.6471268238	0.3861409771	0.5792941764	0.0539758589	0.1920438277	0.9940219272	\N	3	4	4	1	\N	t
47	Venusta Trapani	1	1	75	\N	3	6	1	5	0	1	1	36	1	30	13	7	0.8740637692	0.9726031462	0.9353748369	0.1703175491	0.0989543531	0.0878732315	0.3757110841	0.6197506999	0.6218948871	0.8627697800	0.4898297838	\N	2	3	3	3	\N	t
212	Isaakios Hurwitz	2	6	33	\N	3	6	3	5	1	0	1	\N	1	13	15	1	0.6491232483	0.4689557176	0.6201118876	0.3558136176	0.3346431609	0.5696636116	0.0397978081	0.7870140835	0.1373364988	0.9282131234	0.0650705968	Deve um artefato para Idea Cosenza por alguma ajuda do passado. Quer tomar o lugar de Jedadiah.\nDescobre se é vampiro por animalismo.	2	6	6	\N	Gangue dos judeus	t
58	Carina Lotto	1	1	15	Nana	3	1	5	6	1	2	1	20	17	35	3	9	0.0875716266	0.1829331784	0.0019294418	0.9437627691	0.6852854309	0.4906393415	0.9776319101	0.5737825569	0.8933434945	0.3801996350	0.3390090353	Saúde 2/4\n\nMordida por Zahra Diouri em 24/02.	1	4	4	1	\N	t
51	Zakwan Laabi	2	4	78	\N	2	6	1	5	1	1	1	\N	39	2	11	9	0.9247933960	0.9880971858	0.5648867361	0.5604146847	0.1240081622	0.3178867115	0.7536970458	0.2248253981	0.8531650500	0.7588153216	0.6852070521	Maltratado por Frederico quando estava na rua. Assistente Social vai cuidar dele.	0	4	4	4	\N	t
49	Yahel Santulli	1	6	42	\N	3	6	3	2	2	2	1	\N	25	22	2	1	0.9274072901	0.6051336936	0.8487466094	0.3584565218	0.9195715271	0.9593555344	0.8022765455	0.5664447838	0.5380779626	0.9028552432	0.0618676121	\N	2	5	5	3	\N	t
50	Yordan Andreev Valova	2	8	3	\N	1	6	4	5	1	1	1	38	11	10	10	10	0.9544929801	0.0290587419	0.9071765199	0.7828076108	0.1570282054	0.5453435992	0.7133365995	0.8939697979	0.2144816658	0.7557617161	0.2290564582	\N	2	4	4	1	\N	t
52	Zenobia Margo	1	1	12	\N	3	6	2	5	1	1	0	22	6	32	3	2	0.7512294136	0.1374267628	0.8014559415	0.1623579593	0.0879077379	0.9174594010	0.6098770826	0.4691726233	0.4499409550	0.1982048945	0.1459747913	\N	2	4	4	1	\N	t
53	Acario Caprara	2	1	42	\N	3	5	4	6	1	0	1	\N	17	14	1	9	0.4399597601	0.6166574841	0.3467740154	0.6677493581	0.5740597531	0.6426756194	0.0384197689	0.2826047557	0.6182520662	0.8355663121	0.0885313618	\N	1	4	4	4	\N	t
54	Addolorata Mugavero	1	1	74	\N	3	6	1	6	2	1	0	\N	29	30	6	8	0.8191435428	0.9691667975	0.8632683276	0.9501474725	0.4591293208	0.8806889328	0.4875156648	0.0503407957	0.4715009299	0.9544458386	0.5343968222	\N	3	5	5	3	\N	t
55	Albena Ludmilova Todorova	1	8	29	\N	1	6	3	6	2	1	1	\N	2	31	13	4	0.4523214380	0.4108012366	0.4546466518	0.4968637031	0.6859414235	0.8225959132	0.5426399258	0.6572370360	0.7160911504	0.4257769681	0.6679416203	\N	1	5	5	1	\N	t
56	Alma Burgio	1	1	29	Mabu	3	6	3	6	1	1	1	\N	21	2	3	7	0.0784019962	0.4095430122	0.8767843624	0.3887882985	0.6321708405	0.7619492012	0.3860026995	0.7550490957	0.4935346355	0.8821652598	0.2984573810	\N	1	4	4	3	\N	t
57	Aurora Lo Tito	1	1	29	\N	3	4	3	6	0	1	0	\N	2	20	12	6	0.5305690813	0.3964286066	0.2250357226	0.5141725755	0.4944956090	0.0024947744	0.5775912031	0.1435746150	0.3089583357	0.8983238676	0.7218832908	\N	1	3	3	1	\N	t
48	Veselin Vasilov Kostov	2	8	12	\N	1	6	3	5	1	0	0	38	11	16	2	7	0.5710255203	0.1296264304	0.7929054290	0.4861719772	0.1961939647	0.9152779915	0.1836912398	0.1373655505	0.4306211501	0.1571685579	0.8695305155	6 sucesso música de Frederico	2	4	4	1	\N	t
211	Zahra Diouri	1	4	35	\N	2	6	2	6	1	1	0	\N	12	34	14	2	0.9154169876	0.4952072874	0.8219227137	0.2017112776	0.5542159761	0.9943899752	0.6811261664	0.0046953223	0.9478861953	0.8328089713	0.1189149593	Cuida das crianças de Veneza e também quer ser príncipe.\n10 sucesso música de Frederico\nMordeu Carina Lotto em 24/02.	1	6	6	\N	Ventrue metida a Príncipe	t
59	Çelike Kochiu	1	2	0	\N	3	6	4	6	0	0	0	18	12	20	3	1	0.5405377956	0.0037634780	0.4605610365	0.6044089257	0.6543188737	0.1448125103	0.1848172607	0.1662778757	0.1853798493	0.4135987262	0.0583357798	\N	1	3	3	1	\N	t
60	Chahida Al-Jirari	1	4	16	\N	2	5	4	6	1	1	1	\N	29	21	7	6	0.6058848310	0.2023653565	0.3365803436	0.8294236703	0.6266582702	0.7866514009	0.7450163279	0.6444168246	0.5833209634	0.5653742601	0.2807978944	\N	1	4	4	1	\N	t
216	Valerio Candia	2	1	14	Stella (Star)	3	4	5	5	2	1	1	\N	28	4	6	1	0.0876777289	0.1576094619	0.1929909906	0.9152197183	0.1220587583	0.8039425312	0.3141119842	0.3215817247	0.0769860337	0.3169179403	0.0143728925	MORTO\n\nCoroinha da igreja. Mata pessoas =S Cuidado por Adelchi Fazzone. \nLê auras e descobre se é vampiro.\n6 sucesso música de Frederico\nSABE que Frederico é Vampiro.\n	0	7	7	\N	Coroinha	f
224	Batel Poupko	1	6	32	\N	3	6	3	5	0	0	1	\N	16	23	6	4	0.3626638131	0.4524977871	0.6524922148	0.3214256582	0.4752329240	0.2727457501	0.1527378967	0.8477799312	0.3567049935	0.3737851609	0.3161179882	Tem raiva da igreja pois gostaria de ser da sinagoga, e não pode porque é mulher.\nDescobre se é vampiro por animalismo.\nMORTA. Frederico matou	1	5	5	\N	Gangue dos judeus	f
222	Penelope Pauliadi	1	10	79	\N	1	5	1	6	0	0	0	\N	7	34	10	5	0.9980670747	0.9954871045	0.3036164933	0.6680365274	0.6956813087	0.1741051820	0.2925250050	0.4286304430	0.9834094033	0.6143189276	0.4538468834	Velha grega que é a principal pessoa pra descobrir vampiros. Tem sempre uma calopsita no ombro. As vezes espera na rodoviária. Ajuda a Ventrue Zahra. Tem um monte de pássaros em casa.	1	5	5	\N	Espiã da Ventrue	t
213	Danio Accardo	2	1	46	Sorcio (Sujo)	3	6	2	2	2	1	1	\N	44	27	4	5	0.0840713387	0.6748789622	0.5761422605	0.1521876916	0.9284127633	0.9588489747	0.7133542886	0.4933400176	0.8034821339	0.2242119471	0.4207210460	Estudioso. Pretende entender a história dos vampiros em Veneza (pode descobrir Tarquinia e Baldassare)\nDescobre se é vampiro por animalismo.\n\nDescobriu que Frederico é vampiro.\n\nMordeu Alcibiade Cocchi em 24/02.	0	8	8	\N	Morador de rua	t
215	Noa Nold	1	12	18	\N	1	6	4	1	1	1	0	\N	24	9	12	8	0.9809001085	0.2210572412	0.6422800704	0.8700176488	0.7976406926	0.8048871586	0.6670405396	0.3064080359	0.6686652177	0.6978651987	0.7489707185	Procura um antediluviano Ventrue que ela acredita estar em Veneza. \nDona de Club Delirium.	4	7	7	\N	Dono de uma Balada	t
223	Emiliano Pareja	2	7	41	Pareja	3	6	3	5	1	1	0	\N	25	30	1	6	0.1794223591	0.5885739565	0.4264332666	0.4626340914	0.0205146498	0.2528472814	0.6054433786	0.0602750600	0.8655044631	0.0114877040	0.5796841534	Houve vozes dos outros Malkavians da cidade e das pessoas da cidade também. Principalmente as que sofrem.\nLê auras e descobre se é vampiro.\n\nSABE que Frederico é vampiro	3	5	5	\N	Dono de Hotel	t
214	Luana Alongi	1	1	24	\N	3	6	3	1	1	1	0	\N	10	27	6	5	0.3765881274	0.3221938411	0.5522531629	0.3502533379	0.7678735111	0.7734124684	0.9754592380	0.1796762551	0.8164850584	0.3466685898	0.4945877780	Ajuda no culto islã. MASOQUISTA	1	4	4	\N	Ajudante de Ylberore	t
225	Vindonio Griffo	2	1	23	\N	3	6	2	3	0	1	0	\N	37	35	10	10	0.8922306466	0.3107927723	0.8176322729	0.2327118716	0.8922686975	0.4918865879	0.7786606530	0.1462924783	0.5022204929	0.5867550441	0.9670548328	O seu hotel The Prophecy tem pinturas feitas com sangue. Apaixonado por uma funcionária Emilia Beldad.\nDomina Saturniano para concorrer ao banco de sangue.	4	5	5	\N	Dono de Hotel	t
220	Capitolina Petruzzelli	1	1	36	\N	3	4	4	4	1	0	1	29	8	5	15	7	0.2113393586	0.5151447780	0.1484355161	0.6617469342	0.3922395014	0.7883943133	0.4174670962	0.6209322469	0.5627175366	0.8822004355	0.6550728022	Sofre com um pacto de sangue com Luana Alongi.\n\nClever. Toma sangue de Galatea e Constanzo, seus irmãos.	1	9	9	\N	Trabalha para Zahra	t
226	Vali Roman	2	5	25	\N	1	3	3	4	0	1	0	\N	30	11	10	9	0.4046789329	0.3451084929	0.0983171303	0.5838524766	0.4445684790	0.2424204725	0.8883607044	0.1872041687	0.7232183070	0.6120198265	0.8067321632	Ensina arte, música, história. Precisa cuidar dos alunos pra conseguir ser coordenador.	2	5	5	\N	Professor da faculdade	t
30	Ludovico Pergola	2	1	33	\N	3	5	3	5	1	1	1	27	11	16	3	3	0.9349640254	0.4742885377	0.2860734524	0.4140836811	0.0341475060	0.3400993265	0.5485628132	0.4568457912	0.6857882314	0.2971150009	0.1912834256	8 sucessos música	1	4	4	2	\N	t
24	Gjelush Bardha	2	2	7	\N	3	5	2	5	1	0	1	4	6	25	13	3	0.7294432457	0.0733671085	0.3874463158	0.0586288040	0.0096293497	0.6702904145	0.1781944186	0.7216323626	0.3475282831	0.9532637267	0.3374377224	Tem epilepsia.\nFilho de Dëlirana.\nAlegre, sorridente, um pouco agitado demais.	2	4	4	3	\N	t
31	Marina Pergola	1	1	7	Figlita (filinha)	3	6	3	5	0	1	0	27	11	21	11	1	0.1756205211	0.0737391960	0.9549903907	0.3268620835	0.0782482477	0.3981710315	0.8408420707	0.3264834695	0.6848394962	0.3569527610	0.8694406669	3 sucessos músicas Frederico	2	3	3	1	\N	t
23	Gabor Losito	2	6	40	\N	3	6	2	4	0	0	2	19	11	5	10	3	0.5647335546	0.5801101132	0.9353948895	0.2691304702	0.4123401576	0.1463880300	0.1746036237	0.9922270450	0.1132690412	0.6747169594	0.4112137089	MORTO	3	3	3	2	\N	t
22	Eva Gálvez	1	7	35	\N	3	6	4	5	1	0	1	\N	28	34	3	9	0.3751694498	0.4990240716	0.7666354676	0.7728648477	0.1324641124	0.6475670457	0.1150423474	0.6493341499	0.2499346504	0.0079324673	0.2317883465	\N	2	4	4	3	\N	t
25	Ilenia Trapani	1	1	78	\N	3	3	1	5	0	1	0	36	28	11	15	2	0.9537862694	0.9918812339	0.0543204645	0.8029626750	0.0322364628	0.0071424162	0.4929491438	0.1729008694	0.6301572026	0.8431025092	0.0729611502	\N	2	3	3	1	\N	t
26	Isaiah Dona	2	6	34	\N	3	6	2	4	0	1	1	\N	1	20	1	7	0.9436621378	0.4831916459	0.4810389690	0.0242072521	0.4328360827	0.1248506163	0.3152740094	0.7579184676	0.2071580336	0.0292686039	0.9637386133	\N	3	3	3	2	\N	t
27	Karmit Giachetti	1	6	56	\N	3	6	2	4	1	2	1	14	1	26	6	4	0.2525776508	0.8373339616	0.5275920812	0.0427272038	0.3043099426	0.2798824522	0.8770028793	0.2811148006	0.3883315224	0.8281061734	0.5783720656	\N	2	4	4	1	\N	t
28	Levi Giachetti	2	6	42	\N	3	6	2	4	2	0	1	14	1	8	14	5	0.3395773662	0.6188697959	0.6762525551	0.1736772968	0.3108373883	0.8511907417	0.0306806626	0.2343848752	0.4727374254	0.2999243767	0.3565370523	\N	2	5	5	1	\N	t
29	Liberto Del Gaudio	2	1	54	\N	3	5	4	5	0	1	2	\N	28	18	3	2	0.8972707523	0.8089334122	0.3643890930	0.7357303434	0.0624124644	0.0104460920	0.7182602767	0.8748287046	0.1223729783	0.8079833952	0.1549118295	\N	1	3	3	1	\N	t
32	Michaella Mutaki	1	10	39	\N	1	5	3	5	1	1	2	\N	25	31	5	5	0.4285666458	0.5607623803	0.3275687247	0.4850242983	0.1544861132	0.2419901523	0.4200618956	0.8820693152	0.1146427125	0.0520392431	0.0406608090	\N	2	4	4	1	\N	t
33	Michelle De Villiers	1	9	28	Carota (tall, slim boy)	1	6	3	5	1	1	1	8	16	5	3	3	0.0281057722	0.3934488224	0.6547562967	0.3725564354	0.1668493751	0.6232868992	0.3299429752	0.3453103364	0.0796152251	0.0189564941	0.0767796250	\N	2	4	4	2	\N	t
34	Minhat El Ouazzani	1	4	23	Amico (amigo)	2	3	2	5	1	1	0	9	6	9	13	7	0.0065524805	0.3003457767	0.0517439206	0.0264573003	0.1505760501	0.5064245513	0.6994802820	0.1739544316	0.9310028124	0.5382478531	0.1633250960	\N	2	4	4	1	\N	t
61	Çiltor Kochiu	2	2	19	\N	3	6	4	6	1	1	1	18	12	29	3	10	0.7020443698	0.2368779100	0.5425107550	0.7274115267	0.6336940063	0.3522677619	0.2465046336	0.2301673893	0.8911691099	0.3864610400	0.1470653028	3 sucessos na pregação de Frederico. 	3	4	4	1	\N	t
219	Sibilla Brigante	1	1	31	Brigante	3	5	4	4	2	2	1	\N	13	34	3	8	0.0706490680	0.4389290766	0.3096036754	0.6825558260	0.4063317802	0.9473391361	0.9254707990	0.4181929794	0.9540628547	0.1487998355	0.7759260288	Admira Rodrigo Manca e controla o tráfico de Dorsoduro.\nDisputa com Gianpiero pelo tráfico.	2	7	7	\N	Tenente do cartel de drogas	t
35	Mordecai Guzzetta	2	6	27	\N	3	6	5	2	1	1	1	17	28	8	15	8	0.2435653073	0.3677199011	0.9000243683	0.9370958723	0.9817879934	0.4377944645	0.3960478748	0.7764608350	0.3900808672	0.4299625605	0.0943389267	Fez a proposta para Hazlet, que foi aceita. Dela trabalhar para os judeus.	3	4	4	1	\N	t
36	Olimpio Santorelli	2	1	70	\N	3	6	1	5	1	2	1	\N	28	19	12	6	0.9101242062	0.9501102065	0.6747369415	0.5853775542	0.0005782069	0.4279105900	0.9666677814	0.2365425725	0.4621469680	0.3668781462	0.3764041645	Padre da igreja em San Polo	1	4	4	2	\N	t
45	Ulfo Mazzoli	2	1	65	\N	3	3	1	5	1	1	1	\N	28	6	4	1	0.2278640021	0.9247172115	0.0727108826	0.7863170744	0.0424801403	0.3863639978	0.7824377691	0.2437745978	0.2886408995	0.0039054849	0.6691125499	3/4 superficial	2	4	4	1	\N	t
39	Rivka Guzzetta	1	6	18	\N	3	4	5	6	2	1	1	17	28	27	1	8	0.5766272202	0.2231838803	0.1377855745	0.9342223085	0.6674952250	0.9770978552	0.2389503062	0.2225385042	0.4534471583	0.6084742826	0.1153891584	MORTA	1	5	5	3	\N	f
37	Onofrio Santarsiero	2	1	74	\N	3	4	1	5	0	1	1	33	25	27	6	3	0.9752465009	0.9685036668	0.2495369117	0.4744923932	0.1566132899	0.0505540877	0.2482331425	0.3068891312	0.3311764406	0.2466993568	0.4212210715	\N	3	3	3	1	\N	t
38	Paola Carabetta	1	1	40	Betta	3	6	5	5	1	1	2	6	16	2	6	8	0.0533893475	0.5757274944	0.8363061001	0.9679319681	0.0328444004	0.6758399439	0.6217082335	0.9104212080	0.8708061813	0.9181082658	0.6439274276	\N	1	4	4	2	\N	t
40	Romilda Sabina	1	1	28	\N	3	6	2	5	1	0	1	\N	1	8	14	1	0.7208870324	0.3889677625	0.8691268429	0.1690889172	0.1646671322	0.6327192918	0.0019785994	0.3659212767	0.8948690296	0.3774310350	0.6637832745	\N	2	4	4	3	\N	t
217	Felicita Fumo	1	1	18	\N	3	6	2	3	0	1	0	\N	33	15	8	4	0.2960024623	0.2209175586	0.6894183060	0.1907797641	0.8742941875	0.1360539822	0.9837122286	0.3974550118	0.7524617619	0.4807364375	0.3515023492	Sequestra galera na balada, depois vende os órgãos e paga a saúde de Ilenia e Venustra Trapani.	1	5	5	\N	Sequestro de pessoas	t
218	Fermo Zunino	2	1	47	\N	3	6	2	3	0	0	0	\N	37	1	12	4	0.6159476086	0.6917762357	0.6862012031	0.2428719498	0.9071396049	0.1547354452	0.0149474252	0.4065944151	0.0212618267	0.6978651987	0.3199649618	Ricasso que mata pessoas como obras de arte.	5	5	5	\N	Serial killer	t
221	Giambattista Verde	2	1	39	\N	3	6	4	4	1	1	0	\N	43	25	4	4	0.6411110395	0.5605831285	0.5454583014	0.7794019260	0.4154719362	0.5286454122	0.6989284662	0.4340739462	0.4401866241	0.2428520547	0.3733418706	Pregador do Apocalipse nas ruas. Acredita que não deve esconder a própria face.	0	7	7	\N	Morador de rua	t
62	Danio Attardo	2	1	33	\N	3	6	4	6	1	0	0	2	40	13	12	4	0.5640544979	0.4745856598	0.4205137390	0.6811859419	0.6784013954	0.5494149019	0.1812454071	0.0095435701	0.6572620064	0.7418908348	0.0803673527	\N	0	4	4	1	\N	t
63	Editta Cozza	1	1	22	\N	3	6	4	6	1	2	1	\N	7	30	15	7	0.7627998113	0.2885893684	0.7595200149	0.7194022569	0.6435956107	0.3786713008	0.8394484186	0.6964603157	0.4701068596	0.3067200619	0.7243442988	\N	1	4	4	2	\N	t
64	Ennio Errante	2	1	43	\N	3	6	3	6	1	1	1	10	21	20	6	5	0.3063903338	0.6276788380	0.7090522714	0.4194759867	0.5537410830	0.3099403775	0.6226707032	0.3943350722	0.0199548481	0.1967389027	0.3118690509	\N	2	4	4	1	\N	t
65	Fiore Errante	1	1	45	\N	3	6	3	6	1	1	1	10	21	4	3	7	0.5703847211	0.6570810027	0.4199065308	0.4924685383	0.5150672268	0.7609662808	0.3503897719	0.3643976479	0.6818595849	0.7308341674	0.0042828812	\N	3	4	4	2	\N	t
66	Gabriella Lotto	1	1	46	\N	3	6	4	6	2	1	0	20	17	27	3	10	0.2201493804	0.6809648918	0.5815255861	0.7557797518	0.5974514664	0.8340206426	0.4920727573	0.0695032129	0.5705052393	0.8824731617	0.9042427909	\N	1	5	5	2	\N	t
70	Gonerio Pezzullo	2	1	25	Spalla (ombro)	3	2	4	6	1	1	1	\N	21	15	14	7	0.1487254558	0.3320941630	0.0453232026	0.7982671609	0.4663539580	0.2860215242	0.7031973252	0.5350285717	0.1842540328	0.5178507370	0.2885950360	Fedendo fumo, com os olhos avermelhados. Fumando.\n\n1/4 3 agravado	2	4	4	1	\N	t
67	Gelsomina Errante	1	1	10	\N	3	5	4	6	1	0	1	10	21	18	2	9	0.8169022291	0.1014282011	0.2589767019	0.7766781958	0.4643184202	0.5406845240	0.4234648007	0.9546616786	0.5247081085	0.4006684617	0.4843646728	\N	1	4	4	1	\N	t
68	Genesia Stefani	1	1	35	\N	3	6	2	6	1	1	1	\N	12	26	10	2	0.5053342600	0.5007664197	0.6210203536	0.1765744565	0.4871453606	0.7385247857	0.6099843558	0.6191688583	0.6979281501	0.6098899212	0.9558478810	\N	1	4	4	1	\N	t
69	Giacinta Forcucci Kochiu	1	1	20	\N	3	4	2	6	0	0	1	18	12	27	3	9	0.5255059089	0.2526647492	0.1511309843	0.1919358630	0.6618873341	0.0540170739	0.0104041628	0.6746192124	0.2273390720	0.6278367284	0.9035843792	\N	1	3	3	1	\N	t
158	Jost Tanner	2	12	26	\N	1	6	3	3	1	1	2	\N	34	17	1	10	0.9084745238	0.3487679222	0.6346684856	0.5019414851	0.8333613414	0.5024392357	0.5855196212	0.8241337603	0.4295843293	0.6015542508	0.6714163984	Baseball 2d+2\nPistola 2d+2\nSobretudo +2 	3	4	4	1	\N	t
155	Hristiyana Stefanova Antonova Gennari	1	8	11	Galletta (flirty)	1	6	4	3	0	0	1	13	32	15	3	7	0.1474220301	0.1220144929	0.4672632214	0.8227413785	0.8278536925	0.0590746241	0.3888216753	0.6731352889	0.8095544147	0.3280357374	0.2227491372	7 sucessos música Frederico\n	2	3	3	1	\N	t
112	Carmine De Lellis	2	1	22	\N	3	6	2	4	1	1	2	\N	22	30	14	7	0.2134290905	0.2941177828	0.5838964674	0.0231873473	0.4295206229	0.7800628712	0.4523436758	0.9506552597	0.7166966768	0.9939553574	0.4354574606	\N	1	4	4	1	\N	t
113	Costanzo Petruzzelli	2	1	26	\N	3	4	2	4	1	2	2	29	8	21	15	8	0.4091202102	0.3539110813	0.1557490414	0.1593371559	0.2918133960	0.3642048100	0.8637970365	0.9897473847	0.1368667901	0.4220608333	0.4816651045	\N	2	4	4	1	\N	t
130	Igino Colangelo	2	1	46	Dolia	3	4	2	4	1	2	1	\N	13	5	11	3	0.1530987634	0.6823912530	0.2195839147	0.1037113199	0.4166953997	0.2108021379	0.8786931255	0.6432147515	0.6569298139	0.1346225948	0.9846679563	\N	1	4	4	1	\N	t
133	Marisa Mendolia	1	1	9	\N	3	5	3	4	1	0	1	23	13	22	15	4	0.7727917186	0.0859408906	0.3070116215	0.3048347267	0.3027127533	0.8736170080	0.0223426371	0.8900263808	0.5688361687	0.5299754812	0.2814127392	\N	2	4	4	1	\N	t
159	Luminosa Corsino	1	1	58	\N	3	6	3	3	1	1	1	\N	34	24	14	6	0.8491882186	0.8619028991	0.5318914224	0.3392678221	0.9122752800	0.5572260976	0.6740404802	0.5850571394	0.3569332177	0.3789070314	0.2639619692	3 sucessos músicas Frederico	2	4	4	1	\N	t
111	Carmela Ragucci	1	1	37	Meme	3	6	3	4	1	2	1	31	27	2	14	2	0.1759381730	0.5361310255	0.7537466432	0.5481368653	0.4424456950	0.4442985582	0.9644235738	0.4341016229	0.0687300263	0.2382898625	0.1686183887	0/4 agravado\n\nMORTA	2	4	4	2	\N	f
162	Pia Zampella	1	1	40	\N	3	6	3	3	0	2	1	\N	32	2	14	3	0.2103744534	0.5763217347	0.5480396282	0.5285927638	0.9044833535	0.1621166051	0.9519161496	0.4003801780	0.7189784842	0.7848255730	0.1834536260	1/3 Agravado\n\nHazlet mordeu no dia 4/3	3	3	3	1	\N	t
156	Irmina Bosso	1	1	34	\N	3	5	2	3	1	2	1	\N	33	35	3	6	0.6693204403	0.4850649275	0.2647009898	0.1467263465	0.8576124817	0.4480253702	0.8218466002	0.3645603621	0.5755932618	0.6660455991	0.0974353635	\N	2	4	4	1	\N	t
157	Johannes Auer	2	3	22	\N	1	6	4	3	1	1	1	\N	37	34	7	6	0.2541459002	0.2904224343	0.9627627053	0.8910432689	0.8696661545	0.2034821400	0.5600405905	0.6528706845	0.8695716959	0.0396609083	0.3947054113	\N	3	4	4	3	\N	t
160	Lumturesha Simaku	1	2	18	\N	3	6	3	3	1	1	1	\N	33	10	4	10	0.5594382159	0.2245435059	0.4499835075	0.4472142371	0.8393723268	0.7444045683	0.6982390979	0.2669207676	0.3093672105	0.4949304190	0.8335235709	\N	1	4	4	2	\N	t
161	Pancario Barbato	2	1	45	Barba	3	6	4	3	0	0	1	\N	31	19	1	3	0.1206228094	0.6623633290	0.4425111445	0.8284875198	0.8485944671	0.1352735319	0.1917269851	0.5894763560	0.9470072465	0.2457017468	0.5302056003	\N	1	3	3	1	\N	t
134	Mila Despotović 	1	11	20	Iena (mean girl)	1	6	5	4	1	0	1	\N	30	24	12	3	0.1797710105	0.2537107395	0.8664940823	0.9696864083	0.2062696397	0.3094717751	0.1609173331	0.6596687373	0.9528899362	0.1069016282	0.5672662639	\N	2	4	4	2	\N	t
136	Orsola DAlto	1	1	59	Manello (mãozinha)	3	5	2	4	0	2	0	\N	18	6	11	5	0.0306056060	0.8768739243	0.3820524262	0.0330969456	0.3653310963	0.0625344489	0.9040243137	0.0582801116	0.0497500550	0.0503329377	0.2890120714	3 sucessos apelo orfanato\n1 sucesso pregação	2	3	3	2	\N	t
138	Riccardo Monti	2	1	67	\N	3	6	1	4	1	2	0	\N	22	21	8	9	0.3365199531	0.9340995322	0.6769722674	0.4444291190	0.2608543006	0.7918530692	0.9742490048	0.1471096765	0.6989157014	0.2494032828	0.9939240037	\N	2	4	4	2	\N	t
163	Vitalico Ferrin	2	1	27	Vito	3	6	4	3	1	0	2	11	31	16	12	10	0.0903537444	0.3658491583	0.4978137244	0.6426016640	0.8373866547	0.4495809696	0.1550789672	0.8735741378	0.1518380953	0.3777499200	0.8286248933	\N	1	4	4	1	\N	t
164	Zoilo Ferrin	2	1	6	Viola (violeta)	3	6	3	3	1	0	0	11	31	6	1	1	0.1267336705	0.0637849269	0.5675869173	0.3907816887	0.9071123982	0.5043716134	0.2596514010	0.2822766387	0.8715060275	0.8222238621	0.6853770065	\N	1	4	4	2	\N	t
165	Andreea Ardelean	1	5	33	\N	1	4	4	2	1	1	1	1	9	11	6	3	0.8185708499	0.4690376644	0.1760068348	0.8358093231	0.9917454480	0.2914897831	0.2589121398	0.5730340464	0.6382566886	0.9285436312	0.7982511926	\N	1	4	4	2	\N	t
166	Auro Civitello	2	1	54	\N	3	5	2	2	1	1	2	7	4	15	3	4	0.4096177116	0.7976628230	0.2757849003	0.1569130733	0.9674667881	0.5018962298	0.7903890886	0.9872550786	0.9017767266	0.1939266908	0.9508026928	\N	2	4	4	2	\N	t
167	Averardo Civitello	2	1	1	\N	3	6	5	2	1	0	0	7	4	15	2	6	0.8764980958	0.0098492659	0.4836145181	0.9423625089	0.9297966309	0.9605629484	0.4762504579	0.3007071970	0.8647229367	0.3215267111	0.7834767579	\N	2	4	4	1	\N	t
168	Chonz Engeler	2	12	62	\N	1	6	1	2	2	1	1	\N	14	14	5	10	0.3374539613	0.9111513103	0.7365872005	0.5415059742	0.9463261887	0.9736616702	0.2032344480	0.3404617640	0.0070774804	0.0014203826	0.4802311097	\N	3	5	5	2	\N	t
172	Giusto Bucciarelli	2	1	38	\N	3	6	4	2	1	1	1	5	9	16	7	1	0.4806077152	0.5425353944	0.5637399936	0.6248102944	0.9335115964	0.2875178493	0.5259320576	0.2868329944	0.2469221417	0.7193396281	0.5107876114	\N	3	4	4	1	\N	t
173	Jean-Michel Fouquet	2	9	46	Michel	1	6	2	2	1	2	1	\N	36	18	14	5	0.1579233811	0.6714237787	0.9910108791	0.2096035946	0.9873952838	0.2518282889	0.8878325819	0.3547965216	0.0986695201	0.2155901532	0.0986111944	\N	3	4	4	4	\N	t
174	Oreste Bucciarelli	2	1	14	\N	3	6	3	2	0	1	0	5	9	10	1	5	0.7303406924	0.1573522559	0.8083184023	0.4493818147	0.9564633541	0.1726915237	0.6916518609	0.1490281738	0.3299909380	0.9765669587	0.1233601630	\N	3	3	3	2	\N	t
175	Pia Rätz	1	12	53	\N	1	6	3	2	1	2	0	\N	19	28	5	4	0.5355216243	0.7831271003	0.7459417957	0.3420354716	0.9661686279	0.3577758066	0.8702360346	0.1871344361	0.0952027189	0.3540295030	0.9324481308	\N	3	4	4	4	\N	t
169	Claudia Civitello	1	1	43	\N	3	4	4	2	1	1	1	7	4	17	13	3	0.8417662592	0.6348405000	0.2102791024	0.6792856748	0.9819177353	0.2140771218	0.7602188469	0.6197064240	0.7107433964	0.8776846345	0.1701960285	Saúde 2/4\n\nMordida por Gianpiero Civitello em 24/02.	2	4	4	3	\N	t
179	Virginia Lo Bianco	1	1	77	\N	3	6	1	2	1	1	2	\N	9	31	7	2	0.3490039625	0.9834869110	0.6837757054	0.7818832287	0.9200117902	0.7365234230	0.2721656463	0.9296436069	0.6766172258	0.6944654999	0.4626493750	\N	3	4	4	1	\N	t
180	Zita Tavani	1	1	54	\N	3	6	2	2	1	0	1	\N	14	4	15	4	0.7121151711	0.8056581231	0.4655967180	0.1079283912	0.9387764752	0.3483929155	0.0458273909	0.7118735251	0.2661091430	0.6791032375	0.8032288507	Preocupada com a situação financeira de sua patroa. Com medo de perder o emprego.	3	4	4	1	\N	t
137	Paul Babes	2	5	53	\N	1	3	3	4	0	2	1	\N	8	1	4	4	0.9938608809	0.7901750217	0.0842317301	0.3652007694	0.3848047698	0.0959972378	0.8872195753	0.5978735835	0.5594135163	0.2099431573	0.7023443194	Saúde 2/3 (1 agravado)\n\nEstá em casa com pontos na barriga.\n\nJá foi preso duas vezes	3	3	3	1	\N	t
181	Adelasia Cucci	1	1	36	\N	3	6	2	1	0	1	0	\N	24	16	12	9	0.7743451535	0.5135760126	0.6409316262	0.1340832431	0.7243751047	0.1012097367	0.3303953898	0.1422696868	0.2623727253	0.1711609435	0.2028404495	\N	3	3	3	1	\N	t
230	Katia Lazard	1	9	36	\N	1	6	2	4	1	0	1	\N	3	8	16	2	0.3994965764	0.5086818866	0.5573046498	0.2081012664	0.4229415736	0.7743536474	0.4568084713	0.6216966443	0.6254018206	0.9452789211	0.1823205611	Estuda história na faculdade. Quer aprender. Tem uma bolsa de estudo.\nEstuda direito e taumaturgia.	1	5	5	\N	Vizier, estudante	t
231	Giosuè Cocozza	2	1	35	\N	3	6	5	4	1	0	0	\N	18	5	14	1	0.6811719966	0.5070569436	0.4846494814	0.9500876641	0.3596286238	0.7417950692	0.0124962599	0.4105195886	0.5819146235	0.8504034608	0.0716942919	Professor da universidade. Acredita numa vida melhor para o povo de Veneza (através de Baldassare)\n\n3 de dano superficial	3	6	6	\N	Protege Baldassare	t
176	Rifky Daoud	2	4	69	\N	2	6	1	2	1	1	2	\N	23	18	10	8	0.3701534611	0.9425529053	0.5498020001	0.0481764880	0.9920722027	0.7856824774	0.5276004983	0.8959254590	0.9774304360	0.7823270844	0.6558762711	3 sucessos apelo orfanato\n1 sucesso pregação	3	4	4	2	\N	t
182	Albino Rampone	2	1	53	\N	3	6	2	1	1	1	1	\N	15	4	4	2	0.2369065969	0.7918820396	0.7316783952	0.2878211185	0.7080488586	0.3919974571	0.4308881025	0.3825920406	0.9648542080	0.3932142660	0.5175880211	Tipo bonitão sedutor.	3	4	4	2	\N	t
184	Clodoveo Dattoli	2	1	48	\N	3	4	5	1	0	0	0	\N	15	9	4	3	0.6017579010	0.7008702166	0.1006057201	0.9651341384	0.7185958782	0.1502305492	0.1392097213	0.0409961790	0.5336224997	0.6870917449	0.8521076660	Fora de forma. Preguiçoso.\n\nDescendente dos Lovek-Turak.	1	3	3	3	\N	t
183	Boris Epifano	2	1	27	\N	3	6	2	1	0	1	2	\N	20	3	1	3	0.7544832499	0.3704911880	0.7537866863	0.0447792115	0.7275845420	0.1777806276	0.4753473292	0.9779516123	0.7799397781	0.8735213842	0.4765324376	\N	1	3	3	2	\N	t
185	Edda Muratori	1	1	36	\N	3	6	3	1	1	1	2	\N	24	3	3	6	0.2645737435	0.5127122879	0.8329899526	0.5381654646	0.7982501663	0.7411744953	0.2089829887	0.8007804575	0.8226156919	0.5537751441	0.4303741777	\N	1	4	4	2	\N	t
228	Penelope Tanzi	1	1	34	\N	3	6	2	1	0	1	1	\N	5	25	16	7	0.6954889013	0.4884426465	0.5137123340	0.2150918375	0.7364837828	0.2613458901	0.9888178700	0.8268059987	0.4354315510	0.9600259329	0.6176593753	Deve dinheiro para Pollione Strollo. Pretende incendiar a casa dele.\nMorta por Hazlet.	1	5	5	\N	Incendiária	f
178	Verdiana Petrecca	1	1	45	\N	3	5	2	2	1	2	1	\N	14	3	3	3	0.9677140533	0.6527598954	0.3885081543	0.1684587276	0.9501000846	0.6295038004	0.9897992451	0.5794449935	0.7931275761	0.5173595344	0.1764468796	Romance com Ernesta Ponzi	3	4	4	1	\N	t
227	Fidenzio Cioffi	2	1	23	\N	3	5	2	5	1	1	1	\N	28	17	4	1	0.2722857898	0.3079775524	0.3210213271	0.2945938437	0.1220587583	0.9029986156	0.6964786756	0.7821038229	0.2061015851	0.1976283096	0.0937922699	Muitas tatugens. Tem uma tatuagem do símbolo dos Brujah no ombro.\nAcredita que os vampiros não devem se esconder. Que devem ser entendidos pelos humanos. \nTrabalha num estúdio de tatoo.	1	6	6	\N	Trabalha para Zahra	t
177	Shaithis Ardelean	2	5	14	\N	1	6	3	2	0	0	0	1	9	5	8	6	0.5688582572	0.1606533373	0.7600119046	0.4768439547	0.9379926170	0.0096854605	0.1867480656	0.3208555697	0.8044376016	0.0535020321	0.7286423097	\N	3	3	3	1	\N	t
187	Gherardo Giusto	2	1	14	\N	3	6	4	1	0	1	1	15	20	11	16	5	0.9447748602	0.1698036539	0.9924495529	0.6491676301	0.7185958782	0.3451928155	0.5908732961	0.6005674821	0.0142622362	0.3682132005	0.6019574093	\N	1	3	3	1	\N	t
229	Ilinca Gogean	1	5	19	\N	1	6	3	3	1	0	0	\N	34	2	13	1	0.2687010492	0.2376812855	0.8971222778	0.4260476317	0.8287535290	0.5619456651	0.0047183569	0.3477796623	0.5404281716	0.8112105150	0.0084382385	Dona da Versace.\nAjuda sua funcionária Zita e outros, mas agora, está sem dinheiro. Procurando empréstimo com Thorstenn.\nMordeu Samanta Orlandini em 29/02.\n	3	6	6	\N	Dono de loja de grife	t
196	Salvatore Poccia	2	1	32	\N	3	6	3	1	1	1	1	\N	10	35	3	5	0.2983976540	0.4551851791	0.6817602743	0.4382297740	0.7150935695	0.2244602990	0.6394742122	0.3778330460	0.0371593671	0.1163024588	0.5649724356	Descendente dos Lovek-Turak	1	4	4	1	\N	t
188	Grimaldo Salvia	2	1	46	\N	3	6	4	5	0	1	0	\N	28	31	4	10	0.8357597810	0.6731437683	0.6337001793	0.7441316441	0.1855445851	0.0994188978	0.5969374861	0.0158613519	0.7378870641	0.5438226037	0.3038492550	\N	2	3	3	1	\N	t
195	Ritwan Khatibi	1	4	53	\N	2	6	3	1	2	1	1	\N	10	5	15	10	0.4256425233	0.7893121311	0.6483045977	0.3894134173	0.7765557368	0.9551841885	0.4044922259	0.2066219068	0.5032671160	0.6413954807	0.7866574409	\N	1	5	5	2	\N	t
197	Sico Valentin	2	1	21	\N	3	4	3	1	0	1	2	\N	5	13	13	2	0.5427533389	0.2834877019	0.1356238172	0.4980739421	0.7243751047	0.1663206618	0.7288248312	0.8933342882	0.5224818582	0.7895645639	0.3733161791	\N	1	3	3	1	\N	t
198	Sofia Bachmann	1	3	64	\N	1	6	1	1	2	1	1	\N	20	24	2	9	0.5648654069	0.9209221592	0.5647074514	0.6523895403	0.7789221938	0.8510747257	0.2830572222	0.3831242502	0.2994392340	0.4026212869	0.5652409137	\N	1	5	5	2	\N	t
200	Zoe Capelli	1	1	25	\N	3	4	3	1	1	1	2	\N	10	9	13	1	0.9553612529	0.3329401183	0.1055278433	0.4799621693	0.7161681015	0.7908626271	0.2824714791	0.9350672541	0.8872486785	0.6838578900	0.8326193881	6 na música de Frederico	1	4	4	1	\N	t
205	Jedadiah Sarkin	2	6	59	Saba	3	5	2	5	1	1	0	\N	41	8	4	3	0.0340646102	0.8861436637	0.2978005510	0.1329382002	0.9975454398	0.4216118572	0.3157142865	0.1997921486	0.6181679017	0.1934593688	0.2006399927	Quer a prosperidade dos judeus. Defende os judeus e ataca os demais.\n"Saba" significa "avô".\nTem Mask of a Thousand Faces.\nNo cemitério, tem um cachorro enorme com potência 4, na porta do esconderijo.\n\nLutou com Hazlet no cemitério	3	5	5	\N	O líder dos judeus	t
199	Venerando Celenza	2	1	54	\N	3	6	4	1	2	1	1	\N	5	20	10	5	0.6477188350	0.8046879990	0.4170909557	0.8376084001	0.7067870334	0.9733218486	0.2432831424	0.5913397869	0.7037203836	0.6322261319	0.8471801131	\N	1	5	5	1	\N	t
201	Baldassarre Presto	2	1	39	\N	3	6	3	4	0	0	1	\N	42	3	15	7	0.7182579287	0.5685775707	0.4668886426	0.5901693221	0.4063317802	0.2908971172	0.0999928224	0.8615944237	0.0390348671	0.8755581346	0.6856987496	Está fugindo de algum outro monstro, que foi quem o botou neste estado. Tarquinia talvez?	0	11	11	\N	Matusalém	t
202	Tarquinia Coiro	1	1	33	\N	3	4	3	2	1	1	1	\N	45	15	6	1	0.3085356451	0.4726311335	0.2415840781	0.3594745378	0.9352669096	0.7181124749	0.7762407824	0.6631950513	0.7493043149	0.3163965533	0.0540143507	Atacou e Baldassarre e o colocou em torpor. Quer acumular dinheiro pra patrocinar a igreja.	0	10	10	\N	Matusalém	t
5	Ambra Blanda	1	1	15	\N	3	1	3	5	1	2	2	\N	25	22	2	1	0.2891057614	0.1743579964	0.0061152473	0.3540143881	0.1624463703	0.7539195708	0.9700788927	0.8364583332	0.6544315781	0.2707216546	0.3863323313	3 sucessos na pregação do Frederico.	2	4	4	2	\N	t
1	Abdellatif El Ouazzani	2	4	12	\N	2	6	2	5	0	0	1	9	6	29	7	1	0.2227828997	0.1359458497	0.5952499765	0.1961393423	0.0249951713	0.3633734109	0.3730381381	0.8324279649	0.2882879655	0.6039346660	0.4234380484		2	3	3	1	\N	t
4	Alex Giovinazzo	2	1	56	Naso (nariz)	3	4	5	1	2	0	0	\N	15	9	5	4	0.0213974828	0.8428133015	0.1047693481	0.9446817653	0.7275845420	0.9933422364	0.1518231589	0.1052396320	0.1288076012	0.7418908348	0.3486264078	Padre da igreja em Sta. Croce.	1	5	5	2	\N	t
2	Adina Rondon	1	6	29	\N	3	6	2	4	1	2	1	\N	6	22	16	4	0.5726580621	0.3985341770	0.8274682975	0.1223161223	0.2743414414	0.4546532378	0.8769993729	0.7880175329	0.4897900992	0.2414221482	0.4155300376	\N	2	4	4	1	\N	t
3	Akil Gjonbalaj	2	2	15	Trela	3	6	2	5	2	0	1	16	6	34	11	5	0.1960725124	0.1815749824	0.9371328189	0.1463305976	0.0324770212	0.9262467133	0.0226684364	0.4907849487	0.6610781327	0.9547659351	0.9720542986	\N	3	5	5	1	\N	t
6	Antonella Pergola	1	1	7	\N	3	6	3	5	0	1	0	27	11	35	7	5	0.2813203525	0.0716886970	0.5654101916	0.4755314100	0.0161742973	0.0892833391	0.8987606181	0.0099322878	0.9261545202	0.0469162715	0.2820691740	\N	2	3	3	1	\N	t
7	Antonio Montreal	2	7	46	Rospo (big frog)	3	6	2	5	0	1	0	\N	39	28	12	2	0.1914905397	0.6732509622	0.7224247228	0.2985454294	0.0403259782	0.0074404096	0.6880807741	0.0582220846	0.9506407110	0.9044632923	0.9836892836	\N	0	3	3	1	\N	t
\.


--
-- TOC entry 4264 (class 0 OID 1055881)
-- Dependencies: 251
-- Data for Name: npc_preferences; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.npc_preferences (id, npc, business, seed) FROM stdin;
1	1	1	0.8301773826
2	1	2	0.5310247811
3	1	3	0.3541109483
4	1	4	0.5520915044
5	1	5	0.8257884169
6	1	6	0.4971216884
7	1	7	0.3929170021
8	1	8	0.6543121631
9	1	9	0.7738879300
10	1	10	0.7021030784
11	1	11	0.6021754937
12	1	12	0.2023183000
13	1	13	0.7873602198
14	1	14	0.0228710207
15	1	15	0.9278293317
16	1	16	0.3151431535
17	1	17	0.1208992717
18	1	18	0.6008967897
19	1	19	0.1887033698
20	1	20	0.5441730078
21	1	21	0.5403065300
22	1	22	0.4680949440
23	1	23	0.0448866347
24	1	24	0.7742097923
25	1	25	0.0550542003
26	1	26	0.3138805777
27	1	27	0.3121545338
28	1	28	0.8424783023
29	1	29	0.9816775140
30	1	30	0.8091693060
31	1	31	0.4869658547
32	1	32	0.8118548966
33	1	33	0.3401940870
34	1	34	0.8410768029
35	1	35	0.3639464010
36	1	36	0.1659825039
37	1	37	0.3381984918
38	1	38	0.7568634031
39	1	39	0.8202946670
40	1	40	0.1120864218
41	1	41	0.4589664820
42	1	42	0.4224701612
43	1	43	0.3144047218
44	1	44	0.2463267017
45	1	45	0.4453411819
46	1	46	0.2422340540
47	1	47	0.5614698553
48	1	48	0.5662404536
49	1	49	0.8431308437
50	1	50	0.7501732251
51	1	51	0.1104134615
52	1	52	0.3834373737
53	1	53	0.2182681691
54	1	54	0.1553000961
55	1	55	0.1576471659
56	1	56	0.2733223699
57	1	57	0.4691806738
58	1	58	0.4698017002
59	1	59	0.1158006722
60	1	60	0.4508581879
61	1	61	0.2789710062
62	1	62	0.6027665273
63	1	63	0.2627130845
64	1	64	0.6191650932
65	1	65	0.4438433303
66	1	66	0.6266594860
67	1	67	0.7851475971
68	1	68	0.7820418221
69	1	69	0.3835228891
70	1	70	0.6054422641
71	1	71	0.8941282439
72	2	1	0.8424893711
73	2	2	0.0279124253
74	2	3	0.2085329662
75	2	4	0.0888160728
76	2	5	0.4732536073
77	2	6	0.4507670202
78	2	7	0.6502859280
79	2	8	0.0394940609
80	2	9	0.2938978639
81	2	10	0.4004591531
82	2	11	0.1499075224
83	2	12	0.6773352381
84	2	13	0.6187273227
85	2	14	0.3052076185
86	2	15	0.8349824040
87	2	16	0.8920496926
88	2	17	0.7743882923
89	2	18	0.3047841042
90	2	19	0.0078503648
91	2	20	0.2252464802
92	2	21	0.5837551104
93	2	22	0.6106168921
94	2	23	0.4879595651
95	2	24	0.2029202036
96	2	25	0.0544602228
97	2	26	0.1146190511
98	2	27	0.9880678006
99	2	28	0.8365020449
100	2	29	0.4981419402
101	2	30	0.5935100652
102	2	31	0.7306302893
103	2	32	0.3406313118
104	2	33	0.6214224906
105	2	34	0.9391632555
106	2	35	0.4294473846
107	2	36	0.0946760983
108	2	37	0.3899302757
109	2	38	0.0797333131
110	2	39	0.1341701592
111	2	40	0.6838281397
112	2	41	0.4801924662
113	2	42	0.2840776821
114	2	43	0.3611633778
115	2	44	0.0989197888
116	2	45	0.5892853006
117	2	46	0.1961457822
118	2	47	0.9909694814
119	2	48	0.3636735934
120	2	49	0.5009298865
121	2	50	0.9988198467
122	2	51	0.5889200736
123	2	52	0.0846849973
124	2	53	0.6094367388
125	2	54	0.0768796387
126	2	55	0.2876052009
127	2	56	0.6638969616
128	2	57	0.1914986898
129	2	58	0.2756730020
130	2	59	0.5003990070
131	2	60	0.6896406305
132	2	61	0.8691830672
133	2	62	0.2310292963
134	2	63	0.0302719423
135	2	64	0.4906055578
136	2	65	0.1701925518
137	2	66	0.4597193268
138	2	67	0.5852816561
139	2	68	0.5601228275
140	2	69	0.5394526399
141	2	70	0.7194518158
142	2	71	0.2439509672
143	3	1	0.0196451065
144	3	2	0.0035294979
145	3	3	0.6051143454
146	3	4	0.1185648954
147	3	5	0.5928147985
148	3	6	0.8012601277
149	3	7	0.1095343772
150	3	8	0.9564883919
151	3	9	0.3021900142
152	3	10	0.1083542239
153	3	11	0.5454084659
154	3	12	0.3868750115
155	3	13	0.7177909627
156	3	14	0.6222881046
157	3	15	0.6744802129
158	3	16	0.3816879247
159	3	17	0.8137867949
160	3	18	0.9501532149
161	3	19	0.8820869317
162	3	20	0.5034274254
163	3	21	0.8193362821
164	3	22	0.1131162280
165	3	23	0.5336993677
166	3	24	0.3099418399
167	3	25	0.2833087798
168	3	26	0.9934186945
169	3	27	0.8952234965
170	3	28	0.8434316074
171	3	29	0.5328713348
172	3	30	0.6146753123
173	3	31	0.0873825746
174	3	32	0.5525164413
175	3	33	0.6182048102
176	3	34	0.6924969200
177	3	35	0.6710813367
178	3	36	0.2110196087
179	3	37	0.4937570477
180	3	38	0.7806157139
181	3	39	0.1675080010
182	3	40	0.7959470623
183	3	41	0.8889699378
184	3	42	0.7129164669
185	3	43	0.1828220738
186	3	44	0.6067609009
187	3	45	0.3352045715
188	3	46	0.8573022867
189	3	47	0.9884488257
190	3	48	0.1489913664
191	3	49	0.8074555015
192	3	50	0.8705357574
193	3	51	0.6524187918
194	3	52	0.6267917836
195	3	53	0.9836519854
196	3	54	0.1861181594
197	3	55	0.9367336240
198	3	56	0.2669607652
199	3	57	0.1795368544
200	3	58	0.8319571204
201	3	59	0.1103923726
202	3	60	0.7124081892
203	3	61	0.4466324328
204	3	62	0.1977749472
205	3	63	0.2649246305
206	3	64	0.0648372429
207	3	65	0.8902718676
208	3	66	0.9360059672
209	3	67	0.2758568516
210	3	68	0.3840289153
211	3	69	0.7166216816
212	3	70	0.4433648526
213	3	71	0.1799759776
214	4	1	0.6055916194
215	4	2	0.1562813194
216	4	3	0.3627980519
217	4	4	0.2123525203
218	4	5	0.4914858914
219	4	6	0.2201003386
220	4	7	0.2008013460
221	4	8	0.6404772578
222	4	9	0.0275558406
223	4	10	0.0713371034
224	4	11	0.2928960500
225	4	12	0.6543476242
226	4	13	0.0549890888
227	4	14	0.4790142095
228	4	15	0.5910812481
229	4	16	0.3219498540
230	4	17	0.6585510639
231	4	18	0.4230383686
232	4	19	0.4323422266
233	4	20	0.3709592531
234	4	21	0.8696708013
235	4	22	0.6301171742
236	4	23	0.6358838836
237	4	24	0.9345080443
238	4	25	0.5203890419
239	4	26	0.5718898512
240	4	27	0.2103648963
241	4	28	0.9044179572
242	4	29	0.2885115328
243	4	30	0.6537297489
244	4	31	0.0843939353
245	4	32	0.8941031522
246	4	33	0.8100110688
247	4	34	0.4471919872
248	4	35	0.1064556730
249	4	36	0.3014969602
250	4	37	0.6672923258
251	4	38	0.3072570190
252	4	39	0.9419742180
253	4	40	0.6948481663
254	4	41	0.3785941228
255	4	42	0.2348702680
256	4	43	0.3491957909
257	4	44	0.4335832116
258	4	45	0.7138844780
259	4	46	0.9402770391
260	4	47	0.7555330661
261	4	48	0.3724355418
262	4	49	0.3633154081
263	4	50	0.1878752927
264	4	51	0.7433947953
265	4	52	0.2329862094
266	4	53	0.8179924670
267	4	54	0.3792786789
268	4	55	0.1674942542
269	4	56	0.3383815088
270	4	57	0.9511685302
271	4	58	0.3778591505
272	4	59	0.2427994665
273	4	60	0.2396800630
274	4	61	0.0315888994
275	4	62	0.3271934018
276	4	63	0.1337832157
277	4	64	0.8415999683
278	4	65	0.7743853889
279	4	66	0.2402388887
280	4	67	0.1430969285
281	4	68	0.4416777147
282	4	69	0.5474959076
283	4	70	0.0850711470
284	4	71	0.1365258815
285	5	1	0.9260900305
286	5	2	0.3199414150
287	5	3	0.4857216724
288	5	4	0.3596732426
289	5	5	0.0338258930
290	5	6	0.4259987115
291	5	7	0.1152063087
292	5	8	0.4062614352
293	5	9	0.7893141196
294	5	10	0.3030816014
295	5	11	0.1496562306
296	5	12	0.0223003295
297	5	13	0.1210740688
298	5	14	0.5289349095
299	5	15	0.1897945837
300	5	16	0.4594555777
301	5	17	0.4801034401
302	5	18	0.5676537342
303	5	19	0.7022550441
304	5	20	0.7197835031
305	5	21	0.5992426337
306	5	22	0.0294484459
307	5	23	0.8535667188
308	5	24	0.4408426024
309	5	25	0.8038338348
310	5	26	0.0938056074
311	5	27	0.5839395309
312	5	28	0.2455115500
313	5	29	0.6413015155
314	5	30	0.6690106778
315	5	31	0.3820374315
316	5	32	0.5673915460
317	5	33	0.9889520933
318	5	34	0.8677591039
319	5	35	0.9270647885
320	5	36	0.0227779862
321	5	37	0.2937578154
322	5	38	0.0422710972
323	5	39	0.4290394215
324	5	40	0.0830719355
325	5	41	0.3453526990
326	5	42	0.5786956521
327	5	43	0.1053722650
328	5	44	0.4664267679
329	5	45	0.1076305620
330	5	46	0.2951668487
331	5	47	0.9258823455
332	5	48	0.5877340022
333	5	49	0.8628205829
334	5	50	0.6281373901
335	5	51	0.3075175053
336	5	52	0.4620632166
337	5	53	0.6575858360
338	5	54	0.1610842245
339	5	55	0.9029058190
340	5	56	0.4614196713
341	5	57	0.2548898319
342	5	58	0.4868453504
343	5	59	0.7069312213
344	5	60	0.8961913474
345	5	61	0.1558560282
346	5	62	0.0889686528
347	5	63	0.4635828938
348	5	64	0.1448081215
349	5	65	0.9567277567
350	5	66	0.3906476824
351	5	67	0.1675861082
352	5	68	0.2504855720
353	5	69	0.4329187800
354	5	70	0.5966255297
355	5	71	0.3335575075
356	6	1	0.7782714791
357	6	2	0.1753211822
358	6	3	0.4389297725
359	6	4	0.2446982469
360	6	5	0.2829517443
361	6	6	0.7340966212
362	6	7	0.1705805925
363	6	8	0.8706857464
364	6	9	0.5969172041
365	6	10	0.7987179826
366	6	11	0.1782032517
367	6	12	0.0589804212
368	6	13	0.4563038191
369	6	14	0.3392874761
370	6	15	0.9618862402
371	6	16	0.9177234904
372	6	17	0.5941773085
373	6	18	0.4487315905
374	6	19	0.6246547117
375	6	20	0.4903686559
376	6	21	0.6045876192
377	6	22	0.7136233645
378	6	23	0.9539515497
379	6	24	0.7493957407
380	6	25	0.6703511211
381	6	26	0.3445992325
382	6	27	0.9169818489
383	6	28	0.9208366931
384	6	29	0.7775180126
385	6	30	0.5136073790
386	6	31	0.2543942011
387	6	32	0.5557894916
388	6	33	0.6889285613
389	6	34	0.6933239736
390	6	35	0.8004877386
391	6	36	0.9718803056
392	6	37	0.4274205952
393	6	38	0.9710683310
394	6	39	0.8425660520
395	6	40	0.0243377993
396	6	41	0.7697863141
397	6	42	0.0207693037
398	6	43	0.0833182205
399	6	44	0.2260901332
400	6	45	0.3600567803
401	6	46	0.0452044611
402	6	47	0.1438136236
403	6	48	0.9542340888
404	6	49	0.4939360516
405	6	50	0.7684683353
406	6	51	0.4446027447
407	6	52	0.0985236708
408	6	53	0.4820916997
409	6	54	0.3985542948
410	6	55	0.8479194120
411	6	56	0.1524428208
412	6	57	0.7431535274
413	6	58	0.7649012608
414	6	59	0.0732795140
415	6	60	0.5206715399
416	6	61	0.2785086399
417	6	62	0.3276737151
418	6	63	0.0764610316
419	6	64	0.9674372012
420	6	65	0.0209976891
421	6	66	0.8769487701
422	6	67	0.9393175067
423	6	68	0.4484182843
424	6	69	0.8480171012
425	6	70	0.7818835587
426	6	71	0.4727560836
427	7	1	0.6178034153
428	7	2	0.8026528629
429	7	3	0.5560743045
430	7	4	0.8438935485
431	7	5	0.1627096431
432	7	6	0.6012787656
433	7	7	0.9877071721
434	7	8	0.1169437319
435	7	9	0.0952148172
436	7	10	0.7561755073
437	7	11	0.5615464766
438	7	12	0.1937384885
439	7	13	0.2382672071
440	7	14	0.9601007714
441	7	15	0.0416579004
442	7	16	0.3907100279
443	7	17	0.7032542988
444	7	18	0.8065591613
445	7	19	0.4639895423
446	7	20	0.2239258387
447	7	21	0.0850678016
448	7	22	0.7916632574
449	7	23	0.3003868703
450	7	24	0.0525050028
451	7	25	0.8126609465
452	7	26	0.1773356404
453	7	27	0.9918225100
454	7	28	0.2610792308
455	7	29	0.0253527421
456	7	30	0.7737060688
457	7	31	0.7338353149
458	7	32	0.6431561573
459	7	33	0.5763589316
460	7	34	0.2899096194
461	7	35	0.4870497063
462	7	36	0.7390685747
463	7	37	0.8911883850
464	7	38	0.4747568783
465	7	39	0.8560123066
466	7	40	0.9864032022
467	7	41	0.2309323861
468	7	42	0.4175587837
469	7	43	0.1801416907
470	7	44	0.4691995932
471	7	45	0.3776595551
472	7	46	0.2217995911
473	7	47	0.8599096215
474	7	48	0.0809138543
475	7	49	0.0283587528
476	7	50	0.3238991639
477	7	51	0.3048396930
478	7	52	0.1134265545
479	7	53	0.1155624213
480	7	54	0.6052265638
481	7	55	0.1659315573
482	7	56	0.9282233682
483	7	57	0.7825622042
484	7	58	0.1577540673
485	7	59	0.1893025991
486	7	60	0.8079149462
487	7	61	0.9314601365
488	7	62	0.9231379139
489	7	63	0.4510711040
490	7	64	0.5078190682
491	7	65	0.2130475333
492	7	66	0.9381208103
493	7	67	0.2468876434
494	7	68	0.1042359183
495	7	69	0.4128776887
496	7	70	0.1028999500
497	7	71	0.0906391209
498	8	1	0.6438100748
499	8	2	0.5204587337
500	8	3	0.2707808116
501	8	4	0.1130096684
502	8	5	0.8981182892
503	8	6	0.4925804031
504	8	7	0.9729192900
505	8	8	0.9790321435
506	8	9	0.5209391559
507	8	10	0.2968184538
508	8	11	0.2838718365
509	8	12	0.6343657104
510	8	13	0.4123808751
511	8	14	0.8890984003
512	8	15	0.8002972677
513	8	16	0.3406042433
514	8	17	0.6716606049
515	8	18	0.9580513355
516	8	19	0.5299068429
517	8	20	0.4795755511
518	8	21	0.8895114721
519	8	22	0.4530447568
520	8	23	0.9306466551
521	8	24	0.3973305402
522	8	25	0.6660922905
523	8	26	0.8687674655
524	8	27	0.6442181836
525	8	28	0.7703282088
526	8	29	0.2816451546
527	8	30	0.7471181341
528	8	31	0.8609673297
529	8	32	0.9254552294
530	8	33	0.2675768677
531	8	34	0.1317481417
532	8	35	0.0384648978
533	8	36	0.1656951569
534	8	37	0.6243285448
535	8	38	0.0113841877
536	8	39	0.1447273004
537	8	40	0.1452677008
538	8	41	0.3082026416
539	8	42	0.4285991373
540	8	43	0.7796334112
541	8	44	0.7205835171
542	8	45	0.3176975376
543	8	46	0.5799306789
544	8	47	0.0611877604
545	8	48	0.9893581425
546	8	49	0.5379820145
547	8	50	0.5910946033
548	8	51	0.4689336941
549	8	52	0.4274934866
550	8	53	0.0441393605
551	8	54	0.3995803492
552	8	55	0.8248240273
553	8	56	0.7102316511
554	8	57	0.2683478151
555	8	58	0.4690422108
556	8	59	0.4805598599
557	8	60	0.5499929697
558	8	61	0.2161603449
559	8	62	0.3415271901
560	8	63	0.4754481991
561	8	64	0.4837372131
562	8	65	0.4732753318
563	8	66	0.5139130973
564	8	67	0.6494323700
565	8	68	0.0976038766
566	8	69	0.5252972851
567	8	70	0.7941596708
568	8	71	0.2428715774
569	9	1	0.8334999271
570	9	2	0.2227588082
571	9	3	0.0225049886
572	9	4	0.5540834442
573	9	5	0.5404563458
574	9	6	0.6024356675
575	9	7	0.6152712046
576	9	8	0.5298144887
577	9	9	0.1404176825
578	9	10	0.2063658084
579	9	11	0.9987481828
580	9	12	0.5679111690
581	9	13	0.2505051689
582	9	14	0.3983285320
583	9	15	0.3927351963
584	9	16	0.9607368200
585	9	17	0.6666763471
586	9	18	0.8617774076
587	9	19	0.4412966799
588	9	20	0.2166693169
589	9	21	0.0779377525
590	9	22	0.7828238700
591	9	23	0.6921175164
592	9	24	0.5616749655
593	9	25	0.2560992017
594	9	26	0.2060306137
595	9	27	0.2111073360
596	9	28	0.3537030783
597	9	29	0.7313278988
598	9	30	0.0052670068
599	9	31	0.5965746557
600	9	32	0.5648278259
601	9	33	0.2280258150
602	9	34	0.6190796443
603	9	35	0.1189112701
604	9	36	0.7684821608
605	9	37	0.2215153123
606	9	38	0.7341824751
607	9	39	0.2982966495
608	9	40	0.3619329948
609	9	41	0.9405482835
610	9	42	0.2970448323
611	9	43	0.9298441638
612	9	44	0.1910534524
613	9	45	0.6953733647
614	9	46	0.3225793606
615	9	47	0.1517902724
616	9	48	0.3620497119
617	9	49	0.1843567681
618	9	50	0.5930869523
619	9	51	0.5787190292
620	9	52	0.2622945206
621	9	53	0.3759108228
622	9	54	0.2708365456
623	9	55	0.8239694866
624	9	56	0.6320100245
625	9	57	0.4768671594
626	9	58	0.0350768226
627	9	59	0.9857131033
628	9	60	0.2081950582
629	9	61	0.0403438294
630	9	62	0.5822877591
631	9	63	0.7730228845
632	9	64	0.2683696444
633	9	65	0.2013674038
634	9	66	0.8919341546
635	9	67	0.0368518052
636	9	68	0.4228827162
637	9	69	0.6261166297
638	9	70	0.3351484551
639	9	71	0.7848157110
640	10	1	0.5666649132
641	10	2	0.6321932874
642	10	3	0.7146598748
643	10	4	0.7577183656
644	10	5	0.3275666521
645	10	6	0.0372392354
646	10	7	0.9095086381
647	10	8	0.6896163644
648	10	9	0.2215960035
649	10	10	0.5025955909
650	10	11	0.2683353936
651	10	12	0.4838905246
652	10	13	0.8785064137
653	10	14	0.5391719393
654	10	15	0.3078600112
655	10	16	0.5105164382
656	10	17	0.0160390986
657	10	18	0.3429368339
658	10	19	0.4962295415
659	10	20	0.2242341568
660	10	21	0.3832806633
661	10	22	0.0785173010
662	10	23	0.9972570413
663	10	24	0.6516503077
664	10	25	0.2798847049
665	10	26	0.8891911963
666	10	27	0.6885021129
667	10	28	0.7027674210
668	10	29	0.5153078260
669	10	30	0.0236505680
670	10	31	0.4875831320
671	10	32	0.0819727397
672	10	33	0.6558438558
673	10	34	0.2022430068
674	10	35	0.8396911053
675	10	36	0.9834105079
676	10	37	0.2394822426
677	10	38	0.7491997438
678	10	39	0.6730268723
679	10	40	0.4610782461
680	10	41	0.2517953347
681	10	42	0.9413622660
682	10	43	0.9449687707
683	10	44	0.1303017484
684	10	45	0.4805342052
685	10	46	0.2528287820
686	10	47	0.6408181866
687	10	48	0.4965733038
688	10	49	0.5957656158
689	10	50	0.1370477285
690	10	51	0.7208074611
691	10	52	0.9790462791
692	10	53	0.2155650295
693	10	54	0.7180645023
694	10	55	0.6306965868
695	10	56	0.4954497344
696	10	57	0.6072556986
697	10	58	0.3191987001
698	10	59	0.1982171554
699	10	60	0.1225635251
700	10	61	0.3428492681
701	10	62	0.6858002874
702	10	63	0.2045362648
703	10	64	0.9986931239
704	10	65	0.8880432942
705	10	66	0.0442273701
706	10	67	0.9821036323
707	10	68	0.1275255368
708	10	69	0.7934271139
709	10	70	0.6551305046
710	10	71	0.5886037834
711	11	1	0.0452224487
712	11	2	0.5964927711
713	11	3	0.5335725541
714	11	4	0.1755241971
715	11	5	0.0770269763
716	11	6	0.7864013365
717	11	7	0.8163423841
718	11	8	0.5736002806
719	11	9	0.3821669524
720	11	10	0.9533901126
721	11	11	0.2944077416
722	11	12	0.3612132319
723	11	13	0.1689551421
724	11	14	0.0124722440
725	11	15	0.9919098187
726	11	16	0.6644048765
727	11	17	0.6197279431
728	11	18	0.3111085189
729	11	19	0.8626220319
730	11	20	0.7422914682
731	11	21	0.6539577874
732	11	22	0.5484223193
733	11	23	0.9468277330
734	11	24	0.6526509114
735	11	25	0.4364656135
736	11	26	0.9910551030
737	11	27	0.6347545437
738	11	28	0.5639911508
739	11	29	0.7844822174
740	11	30	0.2898850488
741	11	31	0.1525949342
742	11	32	0.8297046660
743	11	33	0.8863778198
744	11	34	0.6861674883
745	11	35	0.0052288636
746	11	36	0.9634047961
747	11	37	0.4725688249
748	11	38	0.8215712477
749	11	39	0.5370050767
750	11	40	0.8547357777
751	11	41	0.7749613603
752	11	42	0.8314128183
753	11	43	0.2159490096
754	11	44	0.9439165024
755	11	45	0.8438850627
756	11	46	0.2078588284
757	11	47	0.6083213789
758	11	48	0.4636130058
759	11	49	0.5189673477
760	11	50	0.4709434109
761	11	51	0.2059044740
762	11	52	0.1729251351
763	11	53	0.0193657302
764	11	54	0.1527322070
765	11	55	0.8255760465
766	11	56	0.4558313438
767	11	57	0.1437873100
768	11	58	0.4603305906
769	11	59	0.0198224946
770	11	60	0.9282695274
771	11	61	0.7502156394
772	11	62	0.1724174288
773	11	63	0.7579741939
774	11	64	0.6365934592
775	11	65	0.8585849176
776	11	66	0.7632030575
777	11	67	0.5999982553
778	11	68	0.3311537425
779	11	69	0.5847743051
780	11	70	0.1370033324
781	11	71	0.1858895202
782	12	1	0.3597356654
783	12	2	0.9684161507
784	12	3	0.4018385299
785	12	4	0.3036521678
786	12	5	0.8123012134
787	12	6	0.6096973587
788	12	7	0.9119735467
789	12	8	0.2759142192
790	12	9	0.1286647064
791	12	10	0.3829169576
792	12	11	0.4818186932
793	12	12	0.3015898415
794	12	13	0.4022826878
795	12	14	0.6345509002
796	12	15	0.1271658880
797	12	16	0.8581140316
798	12	17	0.7783382107
799	12	18	0.5874964786
800	12	19	0.8779365267
801	12	20	0.7066077380
802	12	21	0.3377121179
803	12	22	0.0503539555
804	12	23	0.4645819319
805	12	24	0.9743055771
806	12	25	0.9089388731
807	12	26	0.2277849894
808	12	27	0.5743038328
809	12	28	0.2400926161
810	12	29	0.8125592945
811	12	30	0.7113071652
812	12	31	0.4259821363
813	12	32	0.1722949599
814	12	33	0.6797233159
815	12	34	0.8278206666
816	12	35	0.4759471277
817	12	36	0.4920245297
818	12	37	0.4375180253
819	12	38	0.3879206744
820	12	39	0.7679387489
821	12	40	0.5661827317
822	12	41	0.7708376320
823	12	42	0.2497574426
824	12	43	0.8677725731
825	12	44	0.1731203198
826	12	45	0.8843083428
827	12	46	0.9949384611
828	12	47	0.0312343519
829	12	48	0.6626465535
830	12	49	0.5824349402
831	12	50	0.9091708786
832	12	51	0.3692542920
833	12	52	0.9201470581
834	12	53	0.9595248341
835	12	54	0.8338362239
836	12	55	0.8944526357
837	12	56	0.8684637076
838	12	57	0.0616212138
839	12	58	0.4687564685
840	12	59	0.1085563237
841	12	60	0.8741805083
842	12	61	0.1800636337
843	12	62	0.5345384600
844	12	63	0.0464754687
845	12	64	0.8597869496
846	12	65	0.3623591266
847	12	66	0.5224225963
848	12	67	0.3518114793
849	12	68	0.7998771518
850	12	69	0.9103432712
851	12	70	0.1197502287
852	12	71	0.3660598835
885	13	33	0.9754819837
924	14	1	0.0400283672
925	14	2	0.8028702964
926	14	3	0.1262995764
927	14	4	0.5445799548
928	14	5	0.3539008074
929	14	6	0.5513532213
930	14	7	0.6718265386
931	14	8	0.0861056163
932	14	9	0.0709688868
933	14	10	0.5303244423
934	14	11	0.8736652317
935	14	12	0.8652102072
936	14	13	0.6546121254
937	14	14	0.7630551225
938	14	15	0.7938641319
939	14	16	0.4070487153
940	14	17	0.2766978848
941	14	18	0.2087421408
942	14	19	0.5875113639
943	14	20	0.3249367904
944	14	21	0.2295944621
945	14	22	0.5620599552
946	14	23	0.5889527425
947	14	24	0.2259287671
948	14	25	0.5645269454
949	14	26	0.9230469647
950	14	27	0.4515610710
951	14	28	0.8236832535
952	14	29	0.2127550323
953	14	30	0.8229539408
954	14	31	0.1507347370
955	14	32	0.2527833995
956	14	33	0.6258242377
957	14	34	0.2770343134
958	14	35	0.7973633548
959	14	36	0.9797250452
960	14	37	0.8283875347
961	14	38	0.4691898935
962	14	39	0.0658306614
963	14	40	0.8993564220
964	14	41	0.9995143358
965	14	42	0.9394958932
966	14	43	0.7645666292
967	14	44	0.6541264616
968	14	45	0.7025510157
969	14	46	0.5584307616
970	14	47	0.0611751769
971	14	48	0.9792489004
972	14	49	0.7671729024
973	14	50	0.6486865412
974	14	51	0.3041856913
975	14	52	0.9967673644
976	14	53	0.2107464965
977	14	54	0.8931384338
978	14	55	0.2226961316
979	14	56	0.7752734418
980	14	57	0.8161853990
981	14	58	0.6742572025
982	14	59	0.5989566953
983	14	60	0.0289404313
984	14	61	0.4972111438
985	14	62	0.7496914328
986	14	63	0.2817238313
987	14	64	0.1230353815
988	14	65	0.0267257462
989	14	66	0.0790871861
990	14	67	0.1027604267
991	14	68	0.8551132814
992	14	69	0.5482770796
993	14	70	0.1685910881
994	14	71	0.7544697034
995	15	1	0.5477914158
996	15	2	0.1080869813
997	15	3	0.5190363326
998	15	4	0.2019178774
999	15	5	0.8106379970
1000	15	6	0.0774670942
1001	15	7	0.2630930543
1002	15	8	0.7898868974
1003	15	9	0.8446399965
1004	15	10	0.9117795955
1005	15	11	0.0940725887
1006	15	12	0.8414073610
1007	15	13	0.1225260920
1008	15	14	0.9872110230
1009	15	15	0.0641034930
1010	15	16	0.8977995343
1011	15	17	0.8033964220
1012	15	18	0.7383606955
1013	15	19	0.4967562295
1014	15	20	0.8323368533
1015	15	21	0.2355718394
1016	15	22	0.2464476624
1017	15	23	0.1140606846
1018	15	24	0.3586072209
1019	15	25	0.2731734090
1020	15	26	0.1931478707
1021	15	27	0.4613676476
1022	15	28	0.1282866905
1023	15	29	0.7414249508
1024	15	30	0.6299587358
1025	15	31	0.8827563939
1026	15	32	0.2892163666
1027	15	33	0.7380457171
1028	15	34	0.4017927265
1029	15	35	0.4911342440
1030	15	36	0.5486837141
1031	15	37	0.4792598211
1032	15	38	0.7542272983
1033	15	39	0.3385706120
1034	15	40	0.3238998177
1035	15	41	0.6660068943
1036	15	42	0.4326432007
1037	15	43	0.1653071791
1038	15	44	0.7885329863
1039	15	45	0.4198542237
1040	15	46	0.2294106721
1041	15	47	0.6863325206
1042	15	48	0.2232506457
1043	15	49	0.9677713676
1044	15	50	0.1830887506
1045	15	51	0.0555874994
1046	15	52	0.2033432075
1047	15	53	0.4295364129
1048	15	54	0.1696481840
1049	15	55	0.5619504284
1050	15	56	0.7027098220
1051	15	57	0.3627960552
1052	15	58	0.0233180765
1053	15	59	0.8309965124
1054	15	60	0.1042210059
1055	15	61	0.6532768123
1056	15	62	0.7137529063
1057	15	63	0.3934373725
1058	15	64	0.3913225299
1059	15	65	0.1155456332
1060	15	66	0.8845716165
1061	15	67	0.9400062440
1062	15	68	0.5948054544
1063	15	69	0.6387989148
1064	15	70	0.2785768560
1065	15	71	0.9187052720
1066	16	1	0.3048058092
1067	16	2	0.7112200572
1068	16	3	0.0840124511
1069	16	4	0.0933387959
1070	16	5	0.1310742809
1071	16	6	0.3134231232
1072	16	7	0.7796713165
1073	16	8	0.3543249271
1074	16	9	0.2811944913
1075	16	10	0.9627600671
1076	16	11	0.4099124265
1077	16	12	0.4845376988
1078	16	13	0.3922964805
1079	16	14	0.5795606105
1080	16	15	0.0464881272
1081	16	16	0.0950063025
1082	16	17	0.9423566656
1083	16	18	0.0698062037
1084	16	19	0.9260028154
1085	16	20	0.0465776715
1086	16	21	0.7230830165
1087	16	22	0.6397557217
1088	16	23	0.4400150441
1089	16	24	0.1144055463
1090	16	25	0.7553013549
1091	16	26	0.3245866606
1092	16	27	0.0544117903
1093	16	28	0.3501068093
1094	16	29	0.9633855759
1095	16	30	0.3329886468
1096	16	31	0.2688120818
1097	16	32	0.2681913851
1098	16	33	0.0442087040
1099	16	34	0.3528245329
1100	16	35	0.3615301810
1101	16	36	0.1752829850
1102	16	37	0.6662476566
1103	16	38	0.1412014980
1104	16	39	0.5296079121
1105	16	40	0.9474421479
1106	16	41	0.1039615651
1107	16	42	0.9395203386
1108	16	43	0.4319798467
1109	16	44	0.4962580455
1110	16	45	0.5190809495
1111	16	46	0.4784679739
1112	16	47	0.5912643485
1113	16	48	0.4614376151
1114	16	49	0.5482741781
1115	16	50	0.5172671638
1116	16	51	0.5080152871
1117	16	52	0.2713571945
1118	16	53	0.1570228855
1119	16	54	0.9480303312
1120	16	55	0.3857627409
1121	16	56	0.9123242409
1122	16	57	0.2726169922
1123	16	58	0.4401745312
1124	16	59	0.2624310502
1125	16	60	0.2360025682
1126	16	61	0.7731631780
1127	16	62	0.5312431320
1128	16	63	0.5041939532
1129	16	64	0.8173718820
1130	16	65	0.8840676653
1131	16	66	0.8657241347
1132	16	67	0.9926548675
1133	16	68	0.5503153219
1134	16	69	0.0069256327
1135	16	70	0.5222627795
1136	16	71	0.4977574698
1208	18	1	0.4553500880
1209	18	2	0.2294588047
1210	18	3	0.8142060293
1211	18	4	0.7439791029
1212	18	5	0.1222985899
1213	18	6	0.4609026941
1214	18	7	0.8176320009
1215	18	8	0.1861026697
1216	18	9	0.1613732949
1217	18	10	0.9387398320
1218	18	11	0.6568736113
1219	18	12	0.6887810091
1220	18	13	0.6385457288
1221	18	14	0.0388053688
1222	18	15	0.8604977191
1223	18	16	0.8011173559
1224	18	17	0.1976220771
1225	18	18	0.6691782926
1226	18	19	0.9767700355
1227	18	20	0.1402493683
1228	18	21	0.6370855090
1229	18	22	0.6632612376
1230	18	23	0.9775744407
1231	18	24	0.2260024874
1232	18	25	0.7903282787
1233	18	26	0.3167425380
1234	18	27	0.4167932956
1235	18	28	0.7661764487
1236	18	29	0.3561632526
1237	18	30	0.6517596166
1238	18	31	0.5472852169
1239	18	32	0.8115133406
1240	18	33	0.8812184213
1241	18	34	0.3614912461
1242	18	35	0.5554924435
1243	18	36	0.0035170116
1244	18	37	0.8223939408
1245	18	38	0.3731244449
1246	18	39	0.1896196813
1247	18	40	0.9837672357
1248	18	41	0.3118642769
1249	18	42	0.8464932926
1250	18	43	0.6725482447
1251	18	44	0.9504100056
1252	18	45	0.8852986619
1253	18	46	0.5330459638
1254	18	47	0.7515273616
1255	18	48	0.0829207390
1256	18	49	0.2022242565
1169	17	33	0.8073126900
1257	18	50	0.7282973975
1258	18	51	0.2231701072
1259	18	52	0.8393097655
1260	18	53	0.3915586350
1261	18	54	0.2007445479
1262	18	55	0.0653122533
1263	18	56	0.1818869137
1264	18	57	0.5174870859
1265	18	58	0.4821055490
1266	18	59	0.9480633629
1267	18	60	0.8736503385
1268	18	61	0.1338651655
1269	18	62	0.4953485797
1270	18	63	0.6851636791
1271	18	64	0.0150835873
1272	18	65	0.8568398263
1273	18	66	0.2406561226
1274	18	67	0.0186005989
1275	18	68	0.6792337671
1276	18	69	0.6137805674
1277	18	70	0.2082202802
1278	18	71	0.6630010027
1279	19	1	0.9256448448
1280	19	2	0.0547135728
1281	19	3	0.3355492475
1282	19	4	0.8760548504
1283	19	5	0.9400122347
1284	19	6	0.8685952113
1285	19	7	0.6275822124
1286	19	8	0.0229329737
1287	19	9	0.0708194678
1288	19	10	0.3558796099
1289	19	11	0.2461030809
1290	19	12	0.9101292333
1291	19	13	0.7474382450
1292	19	14	0.4468476288
1293	19	15	0.9754414866
1294	19	16	0.9293251592
1295	19	17	0.9643347147
1296	19	18	0.4575470355
1297	19	19	0.8773885220
1298	19	20	0.8379850532
1299	19	21	0.5914122015
1300	19	22	0.3727371017
1301	19	23	0.5231487323
1302	19	24	0.6064957888
1303	19	25	0.2295769281
1304	19	26	0.7638048553
1305	19	27	0.6250963877
1306	19	28	0.9088106952
1307	19	29	0.3775854227
1308	19	30	0.8333166679
1309	19	31	0.5718116979
1310	19	32	0.3032302675
1311	19	33	0.8880302408
1312	19	34	0.9073609454
1313	19	35	0.1792851184
1314	19	36	0.8280424760
1315	19	37	0.7759561567
1316	19	38	0.8068673308
1317	19	39	0.8509754497
1318	19	40	0.8467756244
1319	19	41	0.1627469407
1320	19	42	0.0970785310
1321	19	43	0.7569048582
1322	19	44	0.9101851857
1323	19	45	0.5439261599
1324	19	46	0.7323463447
1325	19	47	0.8395103449
1326	19	48	0.5082608750
1327	19	49	0.1898933807
1328	19	50	0.7168988669
1329	19	51	0.3462459282
1330	19	52	0.7813055823
1331	19	53	0.0896359691
1332	19	54	0.8693946609
1333	19	55	0.3878013710
1334	19	56	0.3192128972
1335	19	57	0.6331995162
1336	19	58	0.0128977587
1337	19	59	0.2280235928
1338	19	60	0.0107849389
1339	19	61	0.8462144267
1340	19	62	0.7998352908
1341	19	63	0.3140152069
1342	19	64	0.7342446675
1343	19	65	0.7071962366
1344	19	66	0.4933003252
1345	19	67	0.5622871434
1346	19	68	0.4831523933
1347	19	69	0.3001676560
1348	19	70	0.4132625936
1349	19	71	0.3299280182
1350	20	1	0.4629145968
1351	20	2	0.5103411246
1352	20	3	0.0868328763
1353	20	4	0.3730997825
1354	20	5	0.0542672845
1355	20	6	0.8191792211
1356	20	7	0.2126101279
1357	20	8	0.5625281595
1358	20	9	0.0090726018
1359	20	10	0.9295089948
1360	20	11	0.9087740881
1361	20	12	0.7903781841
1362	20	13	0.0191449639
1363	20	14	0.7781687491
1364	20	15	0.1781795551
1365	20	16	0.3383578616
1366	20	17	0.4113682653
1367	20	18	0.1910773139
1368	20	19	0.5663814545
1369	20	20	0.4221532042
1370	20	21	0.0372917405
1371	20	22	0.3662167452
1372	20	23	0.7361684111
1373	20	24	0.7715364085
1374	20	25	0.0734129818
1375	20	26	0.2294687363
1376	20	27	0.3338235519
1377	20	28	0.5565653755
1378	20	29	0.5296363924
1379	20	30	0.7470861454
1380	20	31	0.8864933937
1381	20	32	0.9925509891
1382	20	33	0.2574272701
1383	20	34	0.9733262700
1384	20	35	0.3656507721
1385	20	36	0.3116945550
1386	20	37	0.7925054911
1387	20	38	0.5782609000
1388	20	39	0.8742227145
1389	20	40	0.8015780933
1390	20	41	0.5077698948
1391	20	42	0.7829968026
1392	20	43	0.5919562774
1393	20	44	0.5269148592
1394	20	45	0.5611655517
1395	20	46	0.7701358330
1396	20	47	0.8652727208
1397	20	48	0.9725338169
1398	20	49	0.9612131468
1399	20	50	0.4316541753
1400	20	51	0.3946870216
1401	20	52	0.9985048878
1402	20	53	0.7978709205
1403	20	54	0.1308554327
1404	20	55	0.7700412963
1405	20	56	0.8712839028
1406	20	57	0.3603241695
1407	20	58	0.1038648481
1408	20	59	0.4278492783
1409	20	60	0.8899605619
1410	20	61	0.8509509941
1411	20	62	0.3143426720
1412	20	63	0.8825115515
1413	20	64	0.1083782641
1414	20	65	0.2876689420
1415	20	66	0.2481623236
1416	20	67	0.4200728191
1417	20	68	0.0801744331
1418	20	69	0.8264232236
1419	20	70	0.2942955340
1420	20	71	0.8817525264
1421	21	1	0.3341931184
1422	21	2	0.0772923366
1423	21	3	0.4737088042
1424	21	4	0.8611079776
1425	21	5	0.6384578887
1426	21	6	0.2438446372
1427	21	7	0.7263806984
1428	21	8	0.6109917057
1429	21	9	0.2050577840
1430	21	10	0.1580348737
1431	21	11	0.0056787273
1432	21	12	0.2035626718
1433	21	13	0.9559057946
1434	21	14	0.1365341605
1435	21	15	0.9736039680
1436	21	16	0.8271896974
1437	21	17	0.4968583300
1438	21	18	0.0774688167
1439	21	19	0.2550389757
1440	21	20	0.3868188919
1441	21	21	0.9284198107
1442	21	22	0.5693816477
1443	21	23	0.2693304433
1444	21	24	0.0367980748
1445	21	25	0.8570505898
1446	21	26	0.5174927670
1447	21	27	0.4568708944
1448	21	28	0.9372250228
1449	21	29	0.3439159906
1450	21	30	0.7511664284
1451	21	31	0.8189775497
1452	21	32	0.6781091094
1453	21	33	0.8284587651
1454	21	34	0.2926863539
1455	21	35	0.5392170870
1456	21	36	0.4669166538
1457	21	37	0.5365309911
1458	21	38	0.2655977858
1459	21	39	0.0779083599
1460	21	40	0.7415887751
1461	21	41	0.4236326595
1462	21	42	0.0835870872
1463	21	43	0.9451514473
1464	21	44	0.3795384541
1465	21	45	0.2201212477
1466	21	46	0.9187554154
1467	21	47	0.2067281515
1468	21	48	0.7169795777
1469	21	49	0.9962242320
1470	21	50	0.4617671273
1471	21	51	0.1037984700
1472	21	52	0.9246440427
1473	21	53	0.0311487750
1474	21	54	0.3731289133
1475	21	55	0.9614421180
1476	21	56	0.8881993648
1477	21	57	0.8906216808
1478	21	58	0.4183130125
1479	21	59	0.8254243881
1480	21	60	0.2345376713
1481	21	61	0.1694794409
1482	21	62	0.6444019377
1483	21	63	0.9126467807
1484	21	64	0.9979382060
1485	21	65	0.9370882916
1486	21	66	0.4518638682
1487	21	67	0.4648548602
1488	21	68	0.4736192827
1489	21	69	0.7174616540
1490	21	70	0.5427632201
1491	21	71	0.2152080578
1492	22	1	0.1410943135
1493	22	2	0.6263503074
1494	22	3	0.1603595051
1495	22	4	0.5206327680
1496	22	5	0.8464715555
1497	22	6	0.0791149209
1498	22	7	0.7273609196
1499	22	8	0.5634511332
1500	22	9	0.0753391529
1501	22	10	0.1891280473
1502	22	11	0.6672496032
1503	22	12	0.9999831961
1504	22	13	0.2202768223
1505	22	14	0.0403785170
1506	22	15	0.9614253142
1507	22	16	0.1084761876
1508	22	17	0.9310001978
1509	22	18	0.3797383267
1510	22	19	0.9339005756
1511	22	20	0.1655378691
1512	22	21	0.5492177675
1513	22	22	0.5783025133
1514	22	23	0.0781846503
1515	22	24	0.5471559735
1516	22	25	0.5153908050
1517	22	26	0.5300485184
1518	22	27	0.0120108337
1519	22	28	0.9890100877
1520	22	29	0.2475101724
1521	22	30	0.5547740539
1522	22	31	0.2042181455
1523	22	32	0.3886044859
1524	22	33	0.1811243617
1525	22	34	0.3645776510
1526	22	35	0.9092372539
1527	22	36	0.0275959172
1528	22	37	0.4436925719
1529	22	38	0.6365981740
1530	22	39	0.5910470504
1531	22	40	0.5190317249
1532	22	41	0.8257262213
1533	22	42	0.2582966541
1534	22	43	0.5190149210
1535	22	44	0.0460030437
1536	22	45	0.2986751711
1537	22	46	0.4804402352
1538	22	47	0.1544792312
1539	22	48	0.2296753689
1540	22	49	0.8601785619
1541	22	50	0.0883798068
1542	22	51	0.3952132380
1543	22	52	0.4093963294
1544	22	53	0.6666823202
1545	22	54	0.4733978882
1546	22	55	0.9565523034
1547	22	56	0.1820731252
1548	22	57	0.0034464067
1549	22	58	0.9685631371
1550	22	59	0.1710832128
1551	22	60	0.2509565791
1552	22	61	0.5233371914
1553	22	62	0.3753013588
1554	22	63	0.6395610655
1555	22	64	0.7044615531
1556	22	65	0.7398790098
1557	22	66	0.5487983194
1558	22	67	0.7320574704
1559	22	68	0.1835715817
1560	22	69	0.1853964934
1561	22	70	0.3231045208
1562	22	71	0.7026033066
1563	23	1	0.0111227147
1564	23	2	0.5814011749
1565	23	3	0.2216182281
1566	23	4	0.0571257588
1567	23	5	0.8800763460
1568	23	6	0.7020584634
1569	23	7	0.2116049901
1570	23	8	0.1097517149
1571	23	9	0.5622370257
1572	23	10	0.2999847974
1573	23	11	0.5049649533
1574	23	12	0.9716333551
1575	23	13	0.9666671176
1576	23	14	0.9783628415
1577	23	15	0.9281856585
1578	23	16	0.1487402432
1579	23	17	0.9818092487
1580	23	18	0.8967487961
1581	23	19	0.3198234560
1582	23	20	0.2327658278
1583	23	21	0.4200859875
1584	23	22	0.6951248148
1585	23	23	0.8723268933
1586	23	24	0.1245475407
1587	23	25	0.4350038245
1588	23	26	0.4211252131
1589	23	27	0.8566050110
1590	23	28	0.6185754063
1591	23	29	0.6065217066
1592	23	30	0.1797095318
1593	23	31	0.3211787133
1594	23	32	0.6176444218
1595	23	33	0.7611107072
1596	23	34	0.5427969415
1597	23	35	0.6747701806
1598	23	36	0.6411870532
1599	23	37	0.2448554048
1600	23	38	0.8863751707
1601	23	39	0.7509387685
1602	23	40	0.8070924305
1603	23	41	0.1863599680
1604	23	42	0.2559037218
1605	23	43	0.7787257861
1606	23	44	0.1530270861
1607	23	45	0.2342665633
1608	23	46	0.7069114447
1609	23	47	0.3017673292
1610	23	48	0.2160758120
1611	23	49	0.6036602408
1612	23	50	0.6215907852
1613	23	51	0.4488416403
1614	23	52	0.0237462283
1615	23	53	0.3167156004
1616	23	54	0.3211685335
1617	23	55	0.1482937690
1618	23	56	0.7517194250
1619	23	57	0.7422937467
1620	23	58	0.0048987800
1621	23	59	0.3702948317
1622	23	60	0.3488154537
1623	23	61	0.1846083123
1624	23	62	0.6914735450
1625	23	63	0.9664598755
1626	23	64	0.9457190195
1627	23	65	0.2342704865
1628	23	66	0.6412300561
1629	23	67	0.5869060727
1630	23	68	0.4791258913
1631	23	69	0.5276052267
1632	23	70	0.3378448412
1633	23	71	0.2862183223
1634	24	1	0.7139651952
1635	24	2	0.5937485630
1636	24	3	0.0649441085
1637	24	4	0.8669922813
1638	24	5	0.8280151268
1639	24	6	0.7718555531
1640	24	7	0.1687596105
1641	24	8	0.0440909388
1642	24	9	0.3755157944
1643	24	10	0.7903503957
1644	24	11	0.4929325790
1645	24	12	0.3992620227
1646	24	13	0.1070659962
1647	24	14	0.8141011130
1648	24	15	0.5475557921
1649	24	16	0.8587854216
1650	24	17	0.5563948597
1651	24	18	0.5524545722
1652	24	19	0.2290802533
1653	24	20	0.9052103134
1654	24	21	0.7370628845
1655	24	22	0.9205537983
1656	24	23	0.8716701888
1657	24	24	0.6827819040
1658	24	25	0.1548242848
1659	24	26	0.5129002449
1660	24	27	0.2696879772
1661	24	28	0.6339501762
1662	24	29	0.0405054721
1663	24	30	0.6075328183
1664	24	31	0.9201684985
1665	24	32	0.7544706673
1666	24	33	0.2012813818
1667	24	34	0.9851126070
1668	24	35	0.6214629486
1669	24	36	0.0292965085
1670	24	37	0.7569681606
1671	24	38	0.7902225591
1672	24	39	0.0733874473
1673	24	40	0.1324839550
1674	24	41	0.5805729548
1675	24	42	0.5663200268
1676	24	43	0.5317459777
1677	24	44	0.6876389515
1678	24	45	0.3804211398
1679	24	46	0.0793017698
1680	24	47	0.5464243731
1681	24	48	0.9368159994
1682	24	49	0.6317563425
1683	24	50	0.7755046263
1684	24	51	0.8420263133
1685	24	52	0.3688192270
1686	24	53	0.6960584247
1687	24	54	0.7136965021
1688	24	55	0.0516011314
1689	24	56	0.8508827095
1690	24	57	0.2265967475
1691	24	58	0.3212891086
1692	24	59	0.4848328857
1693	24	60	0.2671022196
1694	24	61	0.9288219269
1695	24	62	0.4050013847
1696	24	63	0.0215728870
1697	24	64	0.1301033087
1698	24	65	0.3901139917
1699	24	66	0.6430358356
1700	24	67	0.1593998172
1701	24	68	0.1470821523
1702	24	69	0.4332583947
1703	24	70	0.2327872650
1704	24	71	0.2795661073
1705	25	1	0.0138313496
1706	25	2	0.7991072917
1707	25	3	0.8113120855
1708	25	4	0.7014703010
1709	25	5	0.1795284315
1710	25	6	0.8906138553
1711	25	7	0.2478946741
1712	25	8	0.1163444309
1713	25	9	0.5223701978
1714	25	10	0.0233993004
1715	25	11	0.9583707443
1716	25	12	0.8911894253
1717	25	13	0.7194577251
1718	25	14	0.6720672469
1719	25	15	0.9427905567
1720	25	16	0.5703404346
1721	25	17	0.8986639944
1722	25	18	0.2640796653
1723	25	19	0.0551733207
1724	25	20	0.1657662140
1725	25	21	0.1929015922
1726	25	22	0.4601747054
1727	25	23	0.1873391010
1728	25	24	0.3230049014
1729	25	25	0.8502886971
1730	25	26	0.8303749366
1731	25	27	0.4824047186
1732	25	28	0.9973708498
1733	25	29	0.2636333313
1734	25	30	0.7151919836
1735	25	31	0.2769369571
1736	25	32	0.2774646808
1737	25	33	0.5142992754
1738	25	34	0.0882490426
1739	25	35	0.9789349823
1740	25	36	0.6938277069
1741	25	37	0.9788628984
1742	25	38	0.2268296564
1743	25	39	0.8101721383
1744	25	40	0.5012330962
1745	25	41	0.2502289573
1746	25	42	0.7685428825
1747	25	43	0.3924225215
1748	25	44	0.9696866823
1749	25	45	0.4406101294
1750	25	46	0.3352130782
1751	25	47	0.5400271174
1752	25	48	0.3392741238
1753	25	49	0.5992927435
1754	25	50	0.5952004381
1755	25	51	0.5050403378
1756	25	52	0.7921943362
1757	25	53	0.0553751434
1758	25	54	0.6923794388
1759	25	55	0.1151992376
1760	25	56	0.9056638405
1761	25	57	0.5227543754
1762	25	58	0.5976039562
1763	25	59	0.9030346903
1764	25	60	0.7863877066
1765	25	61	0.3127959403
1766	25	62	0.1799716479
1767	25	63	0.0638523879
1768	25	64	0.8270952157
1769	25	65	0.2682206905
1770	25	66	0.0427873703
1771	25	67	0.5209229230
1772	25	68	0.2470835890
1773	25	69	0.2696170267
1774	25	70	0.3310950613
1775	25	71	0.7483166857
1776	26	1	0.5198459839
1777	26	2	0.0996379438
1778	26	3	0.1407392072
1779	26	4	0.4895326667
1780	26	5	0.5402480736
1781	26	6	0.4759522858
1782	26	7	0.0295597841
1783	26	8	0.8795221974
1784	26	9	0.0752450293
1785	26	10	0.6247602222
1786	26	11	0.3845625357
1787	26	12	0.8674393655
1788	26	13	0.6801353656
1789	26	14	0.0769419745
1790	26	15	0.9826386031
1791	26	16	0.5857992060
1792	26	17	0.5996963503
1793	26	18	0.5802425598
1794	26	19	0.4888338968
1795	26	20	0.3860840569
1796	26	21	0.8930385001
1797	26	22	0.6688055447
1798	26	23	0.4499364449
1799	26	24	0.7201337158
1800	26	25	0.9370262353
1801	26	26	0.4927238151
1802	26	27	0.2410566388
1803	26	28	0.1841098247
1804	26	29	0.7623408423
1805	26	30	0.5721517000
1806	26	31	0.9324265104
1807	26	32	0.2821868262
1808	26	33	0.6717896443
1809	26	34	0.0731657175
1810	26	35	0.7717194930
1811	26	36	0.2120377179
1812	26	37	0.5491180033
1813	26	38	0.8012792771
1814	26	39	0.0915599153
1815	26	40	0.6243630331
1816	26	41	0.4260394992
1817	26	42	0.4761224510
1818	26	43	0.4918023986
1819	26	44	0.1061748648
1820	26	45	0.5530644259
1821	26	46	0.4744410021
1822	26	47	0.6919740713
1823	26	48	0.1527607762
1824	26	49	0.0546835619
1825	26	50	0.1808079681
1826	26	51	0.5388448332
1827	26	52	0.9477220620
1828	26	53	0.8496135129
1829	26	54	0.9887812785
1830	26	55	0.6678557778
1831	26	56	0.7866397481
1832	26	57	0.4815050936
1833	26	58	0.9089124170
1834	26	59	0.9707495729
1835	26	60	0.2438459359
1836	26	61	0.4810641170
1837	26	62	0.9031760832
1838	26	63	0.5260327626
1839	26	64	0.1528537613
1840	26	65	0.9763418012
1841	26	66	0.2977522556
1842	26	67	0.3648914793
1843	26	68	0.5254598046
1844	26	69	0.0990315331
1845	26	70	0.4564513951
1846	26	71	0.1498228377
1847	27	1	0.5250710323
1848	27	2	0.9325738461
1849	27	3	0.6416252367
1850	27	4	0.6312458976
1851	27	5	0.4856382720
1852	27	6	0.1160662388
1853	27	7	0.3232199689
1854	27	8	0.6383990482
1855	27	9	0.1707498007
1856	27	10	0.5040279371
1857	27	11	0.1772438819
1858	27	12	0.1184718627
1859	27	13	0.3536414499
1860	27	14	0.1660251603
1861	27	15	0.7863276405
1862	27	16	0.1402811981
1863	27	17	0.6475302540
1864	27	18	0.6952400575
1865	27	19	0.1110307714
1866	27	20	0.8913761904
1867	27	21	0.1763041751
1868	27	22	0.0142068546
1869	27	23	0.4174089530
1870	27	24	0.3291579364
1871	27	25	0.9905486559
1872	27	26	0.7151612085
1873	27	27	0.6940494161
1874	27	28	0.5160084609
1875	27	29	0.8141927416
1876	27	30	0.1505008112
1877	27	31	0.6658312986
1878	27	32	0.3392637745
1879	27	33	0.0830746572
1880	27	34	0.3074565353
1881	27	35	0.9705096721
1882	27	36	0.5687129297
1883	27	37	0.4235227741
1884	27	38	0.2937296410
1885	27	39	0.2071119780
1886	27	40	0.5942725749
1887	27	41	0.7977575781
1888	27	42	0.3843558598
1889	27	43	0.7127444376
1890	27	44	0.1513990280
1891	27	45	0.5503810202
1892	27	46	0.4990720786
1893	27	47	0.2916802261
1894	27	48	0.1979112746
1895	27	49	0.1943121362
1896	27	50	0.4027109975
1897	27	51	0.0892874650
1898	27	52	0.3706163112
1899	27	53	0.4169178526
1900	27	54	0.5066964179
1901	27	55	0.6997742481
1902	27	56	0.4074665084
1903	27	57	0.2218576265
1904	27	58	0.3938236642
1905	27	59	0.9234749693
1906	27	60	0.0360503686
1907	27	61	0.5443244753
1908	27	62	0.5893062684
1909	27	63	0.3753141430
1910	27	64	0.6273991326
1911	27	65	0.8967628037
1912	27	66	0.3458238151
1913	27	67	0.1961120623
1914	27	68	0.3202855783
1915	27	69	0.6395534561
1916	27	70	0.4032240408
1917	27	71	0.9145581531
1918	28	1	0.4373110342
1919	28	2	0.7875799006
1920	28	3	0.6273025912
1921	28	4	0.5887100622
1922	28	5	0.3379609212
1923	28	6	0.1263746698
1924	28	7	0.8803902883
1925	28	8	0.5358721958
1926	28	9	0.3206868060
1927	28	10	0.2831012863
1928	28	11	0.6251596608
1929	28	12	0.6913031177
1930	28	13	0.7000191389
1931	28	14	0.1318560787
1932	28	15	0.3910773657
1933	28	16	0.1074856473
1934	28	17	0.3537137052
1935	28	18	0.7849010299
1936	28	19	0.0309606171
1937	28	20	0.3897640738
1938	28	21	0.3292255052
1939	28	22	0.6202668855
1940	28	23	0.7650782168
1941	28	24	0.9566246378
1942	28	25	0.5170296892
1943	28	26	0.1109020319
1944	28	27	0.1527367006
1945	28	28	0.8373152674
1946	28	29	0.7504554880
1947	28	30	0.5559607414
1948	28	31	0.7518734210
1949	28	32	0.1877665222
1950	28	33	0.3435406419
1951	28	34	0.3791760122
1952	28	35	0.7764765844
1953	28	36	0.6815015632
1954	28	37	0.5055506821
1955	28	38	0.6568668731
1956	28	39	0.2173737590
1957	28	40	0.8262374881
1958	28	41	0.9399681594
1959	28	42	0.8425334198
1960	28	43	0.5175406057
1961	28	44	0.6399872983
1962	28	45	0.9743894986
1963	28	46	0.9086179715
1964	28	47	0.7474729456
1965	28	48	0.3281032043
1966	28	49	0.6935190014
1967	28	50	0.7784335627
1968	28	51	0.7178672780
1969	28	52	0.0227445066
1970	28	53	0.3987004482
1971	28	54	0.4829454953
1972	28	55	0.9793691449
1973	28	56	0.9157301378
1974	28	57	0.5938475272
1975	28	58	0.1321058455
1976	28	59	0.7530454053
1977	28	60	0.3443030156
1978	28	61	0.6880665869
1979	28	62	0.5049188263
1980	28	63	0.5320695378
1981	28	64	0.0316072288
1982	28	65	0.8840948385
1983	28	66	0.3085461226
1984	28	67	0.7131087924
1985	28	68	0.3896455206
1986	28	69	0.9654129958
1987	28	70	0.9304825515
1988	28	71	0.2158830091
1989	29	1	0.9053811552
1990	29	2	0.7730159718
1991	29	3	0.7334236149
1992	29	4	0.5453684535
1993	29	5	0.7474054703
1994	29	6	0.6420415868
1995	29	7	0.2928413991
1996	29	8	0.0755086746
1997	29	9	0.3355605882
1998	29	10	0.0712749623
1999	29	11	0.7933759531
2000	29	12	0.3583050952
2001	29	13	0.4699754105
2002	29	14	0.2763214484
2003	29	15	0.3376742401
2004	29	16	0.3857055483
2005	29	17	0.8701689756
2006	29	18	0.4697800856
2007	29	19	0.1387509541
2008	29	20	0.2144719912
2009	29	21	0.1578466725
2010	29	22	0.6436697803
2011	29	23	0.7465415294
2012	29	24	0.1894539013
2013	29	25	0.5277646193
2014	29	26	0.0550876521
2015	29	27	0.9025626937
2016	29	28	0.9174101399
2017	29	29	0.0205006478
2018	29	30	0.8330452456
2019	29	31	0.1332931491
2020	29	32	0.9258818030
2021	29	33	0.6060612174
2022	29	34	0.8667167644
2023	29	35	0.4712502565
2024	29	36	0.3534666877
2025	29	37	0.5087583512
2026	29	38	0.7640916556
2027	29	39	0.4289753628
2028	29	40	0.8443189394
2029	29	41	0.8353666179
2030	29	42	0.2223513159
2031	29	43	0.2026240346
2032	29	44	0.3053420288
2033	29	45	0.4986727643
2034	29	46	0.5402982747
2035	29	47	0.6910475772
2036	29	48	0.3688417398
2037	29	49	0.0100783603
2038	29	50	0.8297985313
2039	29	51	0.5833137315
2040	29	52	0.1679250328
2041	29	53	0.4734683121
2042	29	54	0.3298552609
2043	29	55	0.3573789345
2044	29	56	0.0012329314
2045	29	57	0.3849429130
2046	29	58	0.2599416282
2047	29	59	0.9186430713
2048	29	60	0.4054435608
2049	29	61	0.0929868738
2050	29	62	0.0519362208
2051	29	63	0.3313253638
2052	29	64	0.6990480912
2053	29	65	0.9186529852
2054	29	66	0.8025756204
2055	29	67	0.0525147794
2056	29	68	0.4274113365
2057	29	69	0.5666672760
2058	29	70	0.4814901422
2059	29	71	0.2717302758
2092	30	33	0.8398578875
2131	31	1	0.0450820471
2132	31	2	0.9175759209
2133	31	3	0.6629187181
2134	31	4	0.4583074306
2135	31	5	0.1704986421
2136	31	6	0.2106446205
2137	31	7	0.5744560892
2138	31	8	0.2928892309
2139	31	9	0.5683470648
2140	31	10	0.3121710951
2141	31	11	0.6901912480
2142	31	12	0.8290129257
2143	31	13	0.7233886691
2144	31	14	0.6937300577
2145	31	15	0.6916902945
2146	31	16	0.7267617960
2147	31	17	0.1060812804
2148	31	18	0.2088939506
2149	31	19	0.7497018124
2150	31	20	0.4939121916
2151	31	21	0.8621140360
2152	31	22	0.0639389949
2153	31	23	0.2592566865
2154	31	24	0.3551920089
2155	31	25	0.1438276535
2156	31	26	0.1094906875
2157	31	27	0.8906420916
2158	31	28	0.0040203747
2159	31	29	0.4430376957
2160	31	30	0.0398202469
2161	31	31	0.6692481050
2162	31	32	0.4881197433
2163	31	33	0.9573961678
2164	31	34	0.3321668231
2165	31	35	0.9464271739
2166	31	36	0.1278948099
2167	31	37	0.5428114436
2168	31	38	0.5208832631
2169	31	39	0.4207840408
2170	31	40	0.1111585088
2171	31	41	0.8330543586
2172	31	42	0.1109752893
2173	31	43	0.9401714345
2174	31	44	0.5564430277
2175	31	45	0.8047053469
2176	31	46	0.6318617295
2177	31	47	0.2832048237
2178	31	48	0.9107866273
2179	31	49	0.8407556801
2180	31	50	0.0329066361
2181	31	51	0.4046988194
2182	31	52	0.7028697166
2183	31	53	0.0968456310
2184	31	54	0.6639555059
2185	31	55	0.0580617255
2186	31	56	0.2406732850
2187	31	57	0.7734461934
2188	31	58	0.9487038176
2189	31	59	0.2446936597
2190	31	60	0.2164838896
2191	31	61	0.9885240644
2192	31	62	0.9139417647
2193	31	63	0.7046036329
2194	31	64	0.9459202322
2195	31	65	0.2461085883
2196	31	66	0.6510308068
2197	31	67	0.0738150426
2198	31	68	0.7889200319
2199	31	69	0.1719140699
2200	31	70	0.4945990834
2201	31	71	0.9000785407
2202	32	1	0.0049684285
2203	32	2	0.6055743727
2204	32	3	0.8402499757
2205	32	4	0.5614114562
2206	32	5	0.4102797201
2207	32	6	0.4721117052
2208	32	7	0.8446162799
2209	32	8	0.3210663474
2210	32	9	0.3128673853
2211	32	10	0.8775229165
2212	32	11	0.7257651668
2213	32	12	0.0157371019
2214	32	13	0.9743685476
2215	32	14	0.3897206727
2216	32	15	0.0737988278
2217	32	16	0.2150418325
2218	32	17	0.1631668666
2219	32	18	0.0225026454
2220	32	19	0.4597354927
2221	32	20	0.3796507563
2222	32	21	0.0110267098
2223	32	22	0.3736772574
2224	32	23	0.0842543892
2225	32	24	0.9569469420
2226	32	25	0.6197858457
2227	32	26	0.7352851960
2228	32	27	0.0307619846
2229	32	28	0.4087058781
2230	32	29	0.9071992659
2231	32	30	0.5253610685
2232	32	31	0.3087844187
2233	32	32	0.9121676949
2234	32	33	0.1309354412
2235	32	34	0.1490343944
2236	32	35	0.4735791511
2237	32	36	0.5412151613
2238	32	37	0.6211460996
2239	32	38	0.3181954315
2240	32	39	0.8622815092
2241	32	40	0.9340134854
2242	32	41	0.1957183480
2243	32	42	0.5880466760
2244	32	43	0.9497505873
2245	32	44	0.1700868956
2246	32	45	0.9777673492
2247	32	46	0.0235494152
2248	32	47	0.3851287286
2249	32	48	0.1409342159
2250	32	49	0.0460520606
2251	32	50	0.8448642213
2252	32	51	0.5205849721
2253	32	52	0.0570787704
2254	32	53	0.2185414787
2255	32	54	0.6048393613
2256	32	55	0.0140257129
2257	32	56	0.8383273249
2258	32	57	0.3401245573
2259	32	58	0.0447876975
2260	32	59	0.2470332030
2261	32	60	0.2473238232
2262	32	61	0.5701487660
2263	32	62	0.5558176218
2264	32	63	0.1594915180
2265	32	64	0.7010842077
2266	32	65	0.7048520166
2267	32	66	0.6330706696
2268	32	67	0.2422993691
2269	32	68	0.3259981163
2270	32	69	0.9512661011
2271	32	70	0.1045808783
2272	32	71	0.2600116017
2273	33	1	0.1469844491
2274	33	2	0.6926275548
2275	33	3	0.2097621895
2276	33	4	0.3170713447
2277	33	5	0.6703949040
2278	33	6	0.2333116047
2279	33	7	0.7022000733
2280	33	8	0.8113291198
2281	33	9	0.2793636657
2282	33	10	0.5470642946
2283	33	11	0.3319140919
2284	33	12	0.3364424361
2285	33	13	0.7656057738
2286	33	14	0.9367534532
2287	33	15	0.3504681489
2288	33	16	0.6039330987
2289	33	17	0.2768780105
2290	33	18	0.3952558469
2291	33	19	0.8509663017
2292	33	20	0.5242018336
2293	33	21	0.9654046129
2294	33	22	0.4067839235
2295	33	23	0.6836933522
2296	33	24	0.6664888207
2297	33	25	0.1116359401
2298	33	26	0.3167640218
2299	33	27	0.9087881902
2300	33	28	0.4376340569
2301	33	29	0.2680301229
2302	33	30	0.0133690685
2303	33	31	0.6976456586
2304	33	32	0.4150145720
2305	33	33	0.7059966233
2306	33	34	0.9074078482
2307	33	35	0.7320859167
2308	33	36	0.3763915272
2309	33	37	0.1407194533
2310	33	38	0.4342859904
2311	33	39	0.1877206471
2312	33	40	0.4200831191
2313	33	41	0.9813502850
2314	33	42	0.5196347390
2315	33	43	0.7565255552
2316	33	44	0.7469560588
2317	33	45	0.4563881923
2318	33	46	0.1069937046
2319	33	47	0.3508891575
2320	33	48	0.7332662027
2321	33	49	0.5022495515
2322	33	50	0.2018554593
2323	33	51	0.2574680368
2324	33	52	0.4676541644
2325	33	53	0.6086393832
2326	33	54	0.9411613890
2327	33	55	0.1341429856
2328	33	56	0.7202753234
2329	33	57	0.2579254108
2330	33	58	0.0429311758
2331	33	59	0.1579093803
2332	33	60	0.5259555336
2333	33	61	0.0563002443
2334	33	62	0.8555550394
2335	33	63	0.9409701056
2336	33	64	0.7622968680
2337	33	65	0.7629628875
2338	33	66	0.6730560223
2339	33	67	0.1386883953
2340	33	68	0.9036823409
2341	33	69	0.1073420127
2342	33	70	0.3264090428
2343	33	71	0.3237654599
2344	34	1	0.0886922982
2345	34	2	0.8460437818
2346	34	3	0.0802910156
2347	34	4	0.8356483569
2348	34	5	0.3024319746
2349	34	6	0.1872847201
2350	34	7	0.1865375149
2351	34	8	0.0356981773
2352	34	9	0.6895342716
2353	34	10	0.3883929742
2354	34	11	0.2931662141
2355	34	12	0.1571884360
2356	34	13	0.9970323574
2357	34	14	0.2343276031
2358	34	15	0.2913314216
2359	34	16	0.7173076812
2360	34	17	0.4922530139
2361	34	18	0.3342625974
2362	34	19	0.8752170615
2363	34	20	0.0182085475
2364	34	21	0.3905628421
2365	34	22	0.7307721009
2366	34	23	0.9591786531
2367	34	24	0.1528597102
2368	34	25	0.4937349888
2369	34	26	0.6322346758
2370	34	27	0.2915481054
2371	34	28	0.3974173297
2372	34	29	0.7395766885
2373	34	30	0.6179571482
2374	34	31	0.7211827901
2375	34	32	0.8282689867
2376	34	33	0.4640009305
2377	34	34	0.8014738057
2378	34	35	0.6639173441
2379	34	36	0.7664329051
2380	34	37	0.9887585258
2381	34	38	0.8504548590
2382	34	39	0.8021310824
2383	34	40	0.6782927974
2384	34	41	0.2388478331
2385	34	42	0.0952972970
2386	34	43	0.8354812334
2387	34	44	0.2358801910
2388	34	45	0.3296249001
2389	34	46	0.1268126555
2390	34	47	0.9531878722
2391	34	48	0.8218779145
2392	34	49	0.4610752529
2393	34	50	0.8284049337
2394	34	51	0.8400864620
2395	34	52	0.8516380950
2396	34	53	0.5591770350
2397	34	54	0.7992651155
2398	34	55	0.0044978051
2399	34	56	0.0529120238
2400	34	57	0.4314997913
2401	34	58	0.2960459110
2402	34	59	0.4503293536
2403	34	60	0.1710764798
2404	34	61	0.9140030593
2405	34	62	0.1715121437
2406	34	63	0.9993454670
2407	34	64	0.3780039898
2408	34	65	0.9729859494
2409	34	66	0.6632628110
2410	34	67	0.1444368949
2411	34	68	0.9617444752
2412	34	69	0.5137176700
2413	34	70	0.9465679778
2414	34	71	0.6400372726
2415	35	1	0.7525655031
2416	35	2	0.0418652748
2417	35	3	0.4755185065
2418	35	4	0.9884456941
2419	35	5	0.3714901749
2420	35	6	0.6023311620
2421	35	7	0.9416335663
2422	35	8	0.1933680894
2423	35	9	0.0634064148
2424	35	10	0.7700385004
2425	35	11	0.0334545518
2426	35	12	0.9150445103
2427	35	13	0.3292155354
2428	35	14	0.8327196673
2429	35	15	0.9195423154
2430	35	16	0.3821275593
2431	35	17	0.2642194587
2432	35	18	0.2155882264
2433	35	19	0.8324569128
2434	35	20	0.4352959385
2435	35	21	0.1295912862
2436	35	22	0.0039690570
2437	35	23	0.4346414055
2438	35	24	0.5075952760
2439	35	25	0.9769550064
2440	35	26	0.0979042165
2441	35	27	0.6520321714
2442	35	28	0.9386994820
2443	35	29	0.6116218865
2444	35	30	0.5986001492
2445	35	31	0.5787367546
2446	35	32	0.3641873901
2447	35	33	0.6404654239
2448	35	34	0.0542552611
2449	35	35	0.3526330842
2450	35	36	0.0119555988
2451	35	37	0.6565864231
2452	35	38	0.2942666509
2453	35	39	0.2053236887
2454	35	40	0.7199928383
2455	35	41	0.0643051513
2456	35	42	0.2387782405
2457	35	43	0.6350373486
2458	35	44	0.3935206868
2459	35	45	0.0714979079
2460	35	46	0.5545796640
2461	35	47	0.7756482461
2462	35	48	0.3357173665
2463	35	49	0.7701678909
2464	35	50	0.6081051589
2465	35	51	0.7710133051
2466	35	52	0.8997591771
2467	35	53	0.6120742159
2468	35	54	0.2056547110
2469	35	55	0.4073544531
2470	35	56	0.5890292227
2471	35	57	0.3035589275
2472	35	58	0.0593866245
2473	35	59	0.5277287047
2474	35	60	0.9151808145
2475	35	61	0.6579867736
2476	35	62	0.1064654593
2477	35	63	0.2793682045
2478	35	64	0.2984521976
2479	35	65	0.1607207209
2480	35	66	0.6320012887
2481	35	67	0.3104077969
2482	35	68	0.8173071439
2483	35	69	0.9262679396
2484	35	70	0.5157314856
2485	35	71	0.5372999823
2486	36	1	0.9905730910
2487	36	2	0.7545097261
2488	36	3	0.1723373309
2489	36	4	0.3840937777
2490	36	5	0.8260076339
2491	36	6	0.7269169954
2492	36	7	0.1597420238
2493	36	8	0.1617250005
2494	36	9	0.4970848863
2495	36	10	0.7678471832
2496	36	11	0.9327383055
2497	36	12	0.3968440634
2498	36	13	0.3799213991
2499	36	14	0.1383930165
2500	36	15	0.8041985165
2501	36	16	0.9689506218
2502	36	17	0.4419519445
2503	36	18	0.8635851415
2504	36	19	0.4966793265
2505	36	20	0.3571327589
2506	36	21	0.5215719151
2507	36	22	0.6031447863
2508	36	23	0.6365009635
2509	36	24	0.8200241132
2510	36	25	0.7638655072
2511	36	26	0.2685022522
2512	36	27	0.1304319100
2513	36	28	0.5811726511
2514	36	29	0.1947701923
2515	36	30	0.6461633956
2516	36	31	0.1184726339
2517	36	32	0.1853432832
2518	36	33	0.4006731217
2519	36	34	0.2908099648
2520	36	35	0.5694370614
2521	36	36	0.2266807556
2522	36	37	0.0177269601
2523	36	38	0.7291790852
2524	36	39	0.3884057561
2525	36	40	0.5148118464
2526	36	41	0.4970262684
2527	36	42	0.3211440616
2528	36	43	0.9116559098
2529	36	44	0.8769476679
2530	36	45	0.4595370786
2531	36	46	0.7158544268
2532	36	47	0.8458982897
2533	36	48	0.9014890231
2534	36	49	0.5794395683
2535	36	50	0.3425776167
2536	36	51	0.2586217821
2537	36	52	0.1010114835
2538	36	53	0.9457224030
2539	36	54	0.8951227455
2540	36	55	0.9210355966
2541	36	56	0.7095879102
2542	36	57	0.1636249977
2543	36	58	0.0514675067
2544	36	59	0.2907605614
2545	36	60	0.3583951900
2546	36	61	0.6976309023
2547	36	62	0.4092331952
2548	36	63	0.5437384737
2549	36	64	0.0983040240
2550	36	65	0.7000431605
2551	36	66	0.1131755351
2552	36	67	0.3249847796
2553	36	68	0.7177701206
2554	36	69	0.8423546203
2555	36	70	0.7133905357
2556	36	71	0.2325819675
2557	37	1	0.3393808892
2558	37	2	0.0345345978
2559	37	3	0.1442378773
2560	37	4	0.2163285571
2561	37	5	0.4940716764
2562	37	6	0.8600923042
2563	37	7	0.0622268468
2564	37	8	0.3955606995
2565	37	9	0.4395318725
2566	37	10	0.4048044635
2567	37	11	0.6541824816
2568	37	12	0.5405433564
2569	37	13	0.3505268665
2570	37	14	0.5493052271
2571	37	15	0.4615789531
2572	37	16	0.0601147767
2573	37	17	0.7129302248
2574	37	18	0.5130464602
2575	37	19	0.3508753385
2576	37	20	0.0713254153
2577	37	21	0.2106773625
2578	37	22	0.7601085338
2579	37	23	0.6150638890
2580	37	24	0.3089813869
2581	37	25	0.4601516942
2582	37	26	0.7282394241
2583	37	27	0.6339661665
2584	37	28	0.1779218153
2585	37	29	0.5705940444
2586	37	30	0.3473567027
2587	37	31	0.4105037828
2588	37	32	0.9099749336
2589	37	33	0.3818913004
2590	37	34	0.5547416601
2591	37	35	0.1263034907
2592	37	36	0.8759629768
2593	37	37	0.4148339648
2594	37	38	0.1885303380
2595	37	39	0.2715236763
2596	37	40	0.8543658373
2597	37	41	0.5933348015
2598	37	42	0.9257061579
2599	37	43	0.3949091937
2600	37	44	0.9438616685
2601	37	45	0.4750113850
2602	37	46	0.8564881473
2603	37	47	0.0039764452
2604	37	48	0.1879416099
2605	37	49	0.3695346075
2606	37	50	0.3548517837
2607	37	51	0.2592670252
2608	37	52	0.5802119700
2609	37	53	0.1149603180
2610	37	54	0.8743309141
2611	37	55	0.8891933570
2612	37	56	0.5751120122
2613	37	57	0.6025703382
2614	37	58	0.5231595240
2615	37	59	0.7530338275
2616	37	60	0.1731643830
2617	37	61	0.8705162266
2618	37	62	0.1635376103
2619	37	63	0.0831393166
2620	37	64	0.2524075271
2621	37	65	0.7182792709
2622	37	66	0.2094428078
2623	37	67	0.1283705039
2624	37	68	0.1331132357
2625	37	69	0.3979731458
2626	37	70	0.3998941802
2627	37	71	0.9874790730
2628	38	1	0.9913079473
2629	38	2	0.3256003382
2630	38	3	0.3823882672
2631	38	4	0.9351696158
2632	38	5	0.8006117232
2633	38	6	0.2388764145
2634	38	7	0.9391460614
2635	38	8	0.9885533331
2636	38	9	0.6084110220
2637	38	10	0.2939978451
2638	38	11	0.2478203587
2639	38	12	0.1886229920
2640	38	13	0.4089581631
2641	38	14	0.1221512728
2642	38	15	0.0778163495
2643	38	16	0.9840701758
2644	38	17	0.7247216115
2645	38	18	0.6009758734
2646	38	19	0.7371040033
2647	38	20	0.8978859945
2648	38	21	0.4714921000
2649	38	22	0.9006416141
2650	38	23	0.9810253112
2651	38	24	0.7238996271
2652	38	25	0.6189208850
2653	38	26	0.1904681190
2654	38	27	0.8522701310
2655	38	28	0.7520341207
2656	38	29	0.5884412648
2657	38	30	0.2521643112
2658	38	31	0.7395131937
2659	38	32	0.5797492126
2660	38	33	0.5777646494
2661	38	34	0.1219014609
2662	38	35	0.5149188284
2663	38	36	0.3783763726
2664	38	37	0.3607778754
2665	38	38	0.4540648898
2666	38	39	0.3669297057
2667	38	40	0.9691888974
2668	38	41	0.7480627354
2669	38	42	0.6147500644
2670	38	43	0.1578118899
2671	38	44	0.1570208985
2672	38	45	0.7369013377
2673	38	46	0.2356282393
2674	38	47	0.1410910743
2675	38	48	0.4616229492
2676	38	49	0.8366041128
2677	38	50	0.8781950781
2678	38	51	0.3595089437
2679	38	52	0.3080962128
2680	38	53	0.7788366922
2681	38	54	0.3405342549
2682	38	55	0.0319958399
2683	38	56	0.3977575772
2684	38	57	0.5310023744
2685	38	58	0.8842659709
2686	38	59	0.1497916980
2687	38	60	0.1194436392
2688	38	61	0.1364302821
2689	38	62	0.8893048917
2690	38	63	0.6991928518
2691	38	64	0.7141949316
2692	38	65	0.0112063531
2693	38	66	0.2141116806
2694	38	67	0.0925713042
2695	38	68	0.3719842285
2696	38	69	0.6681765704
2697	38	70	0.4595010099
2698	38	71	0.3411731264
2699	39	1	0.4162393059
2700	39	2	0.0742510748
2701	39	3	0.4989850163
2702	39	4	0.5732602049
2703	39	5	0.8111524126
2704	39	6	0.7346132556
2705	39	7	0.7143512792
2706	39	8	0.2727753618
2707	39	9	0.5712173684
2708	39	10	0.5925463573
2709	39	11	0.6322843055
2710	39	12	0.8793135812
2711	39	13	0.3713830495
2712	39	14	0.9728185604
2713	39	15	0.9113094211
2714	39	16	0.7691406268
2715	39	17	0.5038209348
2716	39	18	0.7955753920
2717	39	19	0.9189323247
2718	39	20	0.6232645744
2719	39	21	0.9320056741
2720	39	22	0.8082372169
2721	39	23	0.3224574262
2722	39	24	0.6462006057
2723	39	25	0.8194435700
2724	39	26	0.5365691069
2725	39	27	0.7387719098
2726	39	28	0.1914277985
2727	39	29	0.2047456778
2728	39	30	0.1982729197
2729	39	31	0.5326009248
2730	39	32	0.6209849836
2731	39	33	0.2725239946
2732	39	34	0.0315859411
2733	39	35	0.1942451885
2734	39	36	0.0836764071
2735	39	37	0.7661991967
2736	39	38	0.9085964682
2737	39	39	0.3564517689
2738	39	40	0.3374165650
2739	39	41	0.5011428255
2740	39	42	0.9887360744
2741	39	43	0.2167301462
2742	39	44	0.8725258755
2743	39	45	0.9615546353
2744	39	46	0.1280395673
2745	39	47	0.6416665022
2746	39	48	0.4653755701
2747	39	49	0.9236149592
2748	39	50	0.5605988274
2749	39	51	0.0886401446
2750	39	52	0.8556206333
2751	39	53	0.3688360443
2752	39	54	0.4110975713
2753	39	55	0.5018212390
2754	39	56	0.1882796143
2755	39	57	0.9476666781
2756	39	58	0.2405931489
2757	39	59	0.3797074128
2758	39	60	0.1524123559
2759	39	61	0.4388660691
2760	39	62	0.9123083381
2761	39	63	0.7733973400
2762	39	64	0.7113900636
2763	39	65	0.9438942792
2764	39	66	0.9676425285
2765	39	67	0.7950664712
2766	39	68	0.7100934763
2767	39	69	0.8762389966
2768	39	70	0.1515182401
2769	39	71	0.0475100414
2770	40	1	0.3773818226
2771	40	2	0.1402543150
2772	40	3	0.2642401881
2773	40	4	0.2499076980
2774	40	5	0.1018089503
2775	40	6	0.3922797553
2776	40	7	0.8915742002
2777	40	8	0.5671845204
2778	40	9	0.3158947150
2779	40	10	0.4521730277
2780	40	11	0.6558246654
2781	40	12	0.1715153484
2782	40	13	0.8210090720
2783	40	14	0.0669222367
2784	40	15	0.6733365878
2785	40	16	0.0092886863
2786	40	17	0.0145889148
2787	40	18	0.9139297367
2788	40	19	0.3889960996
2789	40	20	0.1670012712
2790	40	21	0.3527958058
2791	40	22	0.3013044377
2792	40	23	0.9403986111
2793	40	24	0.0641858699
2794	40	25	0.2451987169
2795	40	26	0.9080411396
2796	40	27	0.8592523411
2797	40	28	0.9552921932
2798	40	29	0.7842801367
2799	40	30	0.0107705812
2800	40	31	0.0028022351
2801	40	32	0.1616619593
2802	40	33	0.1510248962
2803	40	34	0.2670424231
2804	40	35	0.4115696573
2805	40	36	0.2528338465
2806	40	37	0.6593221785
2807	40	38	0.3031438575
2808	40	39	0.8200183674
2809	40	40	0.9752168935
2810	40	41	0.7553168857
2811	40	42	0.4758430328
2812	40	43	0.1467322423
2813	40	44	0.5763259577
2814	40	45	0.5427652695
2815	40	46	0.8200688302
2816	40	47	0.5856146445
2817	40	48	0.5573541843
2818	40	49	0.7339985669
2819	40	50	0.9746107440
2820	40	51	0.7243554555
2821	40	52	0.0867943731
2822	40	53	0.2759151817
2823	40	54	0.6647540666
2824	40	55	0.1509802430
2825	40	56	0.5211138986
2826	40	57	0.5727952067
2827	40	58	0.0102325841
2828	40	59	0.4764060923
2829	40	60	0.3570753434
2830	40	61	0.0210031653
2831	40	62	0.4792083274
2832	40	63	0.5187373026
2833	40	64	0.1720280619
2834	40	65	0.7462507505
2835	40	66	0.9303069599
2836	40	67	0.4248619084
2837	40	68	0.4055729290
2838	40	69	0.2334508174
2839	40	70	0.2448802758
2840	40	71	0.3807898229
2841	41	1	0.9887677031
2842	41	2	0.7207233086
2843	41	3	0.5275220652
2844	41	4	0.5650936612
2845	41	5	0.2634885781
2846	41	6	0.3475908954
2847	41	7	0.1507083056
2848	41	8	0.8208427629
2849	41	9	0.0815894622
2850	41	10	0.1253190497
2851	41	11	0.5451982184
2852	41	12	0.1683838353
2853	41	13	0.4012342314
2854	41	14	0.2099522855
2855	41	15	0.3193640783
2856	41	16	0.9223481300
2857	41	17	0.7827474922
2858	41	18	0.3295966624
2859	41	19	0.3987542223
2860	41	20	0.1398228356
2861	41	21	0.3505998282
2862	41	22	0.8779625497
2863	41	23	0.6585601382
2864	41	24	0.5226278901
2865	41	25	0.6242133002
2866	41	26	0.5888670981
2867	41	27	0.9474897985
2868	41	28	0.0297862296
2869	41	29	0.8223179155
2870	41	30	0.1923700748
2871	41	31	0.4105760525
2872	41	32	0.8110856190
2873	41	33	0.9130933834
2874	41	34	0.9380981177
2875	41	35	0.3761792802
2876	41	36	0.1765819620
2877	41	37	0.2856890131
2878	41	38	0.5268875859
2879	41	39	0.9974247250
2880	41	40	0.3672784753
2881	41	41	0.6522066356
2882	41	42	0.5426229434
2883	41	43	0.5356623111
2884	41	44	0.0534408670
2885	41	45	0.7525752289
2886	41	46	0.8550263895
2887	41	47	0.9757889970
2888	41	48	0.5353227211
2889	41	49	0.1846230524
2890	41	50	0.3745432198
2891	41	51	0.6751455567
2892	41	52	0.5352228805
2893	41	53	0.2525057695
2894	41	54	0.3337056949
2895	41	55	0.0578507707
2896	41	56	0.8767190701
2897	41	57	0.9225727930
2898	41	58	0.0053405692
2899	41	59	0.9065052997
2900	41	60	0.7448907089
2901	41	61	0.1977106440
2902	41	62	0.3170813522
2903	41	63	0.5559763280
2904	41	64	0.1108040279
2905	41	65	0.2551794699
2906	41	66	0.9321556082
2907	41	67	0.2873859899
2908	41	68	0.5408684830
2909	41	69	0.4590431941
2910	41	70	0.2848107149
2911	41	71	0.9081469583
2912	42	1	0.1112498296
2913	42	2	0.8274336583
2914	42	3	0.4438092695
2915	42	4	0.1646906966
2916	42	5	0.5800088877
2917	42	6	0.2988356594
2918	42	7	0.1404796937
2919	42	8	0.1153316088
2920	42	9	0.4834587118
2921	42	10	0.5150229135
2922	42	11	0.7904771660
2923	42	12	0.0186815923
2924	42	13	0.7675286834
2925	42	14	0.1241828608
2926	42	15	0.0765323630
2927	42	16	0.6442477535
2928	42	17	0.0467556543
2929	42	18	0.0818729321
2930	42	19	0.5507530533
2931	42	20	0.7916463632
2932	42	21	0.2795835766
2933	42	22	0.8678344055
2934	42	23	0.3476226912
2935	42	24	0.3903876045
2936	42	25	0.1230138754
2937	42	26	0.2797782994
2938	42	27	0.6777735944
2939	42	28	0.6638823585
2940	42	29	0.7388214935
2941	42	30	0.9625843093
2942	42	31	0.5720293168
2943	42	32	0.8500713231
2944	42	33	0.7900179676
2945	42	34	0.0158385867
2946	42	35	0.0147620197
2947	42	36	0.3700268553
2948	42	37	0.3146742461
2949	42	38	0.1552417134
2950	42	39	0.4853584645
2951	42	40	0.7981329579
2952	42	41	0.6702646273
2953	42	42	0.2758356305
2954	42	43	0.8168145502
2955	42	44	0.4377933107
2956	42	45	0.4000184913
2957	42	46	0.8933469132
2958	42	47	0.0820410643
2959	42	48	0.4467741456
2960	42	49	0.9752198453
2961	42	50	0.6327941176
2962	42	51	0.2384205088
2963	42	52	0.2548034219
2964	42	53	0.5006285231
2965	42	54	0.5860432000
2966	42	55	0.6451910264
2967	42	56	0.6236423985
2968	42	57	0.8658214994
2969	42	58	0.3229646208
2970	42	59	0.2875247570
2971	42	60	0.6046429928
2972	42	61	0.2855489301
2973	42	62	0.8595540738
2974	42	63	0.4547143159
2975	42	64	0.0755668981
2976	42	65	0.8753926605
2977	42	66	0.4694763357
2978	42	67	0.4455937534
2979	42	68	0.1900669066
2980	42	69	0.6247180495
2981	42	70	0.9309522179
2982	42	71	0.9881998645
2983	43	1	0.2949826769
2984	43	2	0.2067878484
2985	43	3	0.8050144147
2986	43	4	0.7327759876
2987	43	5	0.6068063402
2988	43	6	0.6983613279
2989	43	7	0.8148170519
2990	43	8	0.0535804857
2991	43	9	0.6735811736
2992	43	10	0.4476111694
2993	43	11	0.2920009950
2994	43	12	0.9283845956
2995	43	13	0.9482396925
2996	43	14	0.8780441950
2997	43	15	0.5735756224
2998	43	16	0.5718820910
2999	43	17	0.7438656949
3000	43	18	0.8965402432
3001	43	19	0.8594068480
3002	43	20	0.3485086877
3003	43	21	0.1820891737
3004	43	22	0.7189609217
3005	43	23	0.8032230041
3006	43	24	0.2576560718
3007	43	25	0.5943535827
3008	43	26	0.2726993398
3009	43	27	0.7032498252
3010	43	28	0.7844204893
3011	43	29	0.8974173893
3012	43	30	0.6342020435
3013	43	31	0.7726203543
3014	43	32	0.1924000662
3015	43	33	0.8409898919
3016	43	34	0.5776347690
3017	43	35	0.9251760538
3018	43	36	0.4477962321
3019	43	37	0.2759960974
3020	43	38	0.7399931056
3021	43	39	0.5013767183
3022	43	40	0.9495772710
3023	43	41	0.1876042751
3024	43	42	0.7933777133
3025	43	43	0.8779618666
3026	43	44	0.1358439676
3027	43	45	0.6714219083
3028	43	46	0.4515374890
3029	43	47	0.7077260586
3030	43	48	0.4152876032
3031	43	49	0.3480777326
3032	43	50	0.5671329065
3033	43	51	0.7637962913
3034	43	52	0.5301669063
3035	43	53	0.2860938287
3036	43	54	0.5670192954
3037	43	55	0.7878229781
3038	43	56	0.8804474114
3039	43	57	0.8397186352
3040	43	58	0.4910728033
3041	43	59	0.6648679008
3042	43	60	0.7371360250
3043	43	61	0.1252748468
3044	43	62	0.4374882551
3045	43	63	0.9295360912
3046	43	64	0.9662647392
3047	43	65	0.0151230246
3048	43	66	0.8547121454
3049	43	67	0.4140609712
3050	43	68	0.2911191219
3051	43	69	0.5947052510
3052	43	70	0.9154376895
3053	43	71	0.2406963930
3054	44	1	0.7823095266
3055	44	2	0.7088154028
3056	44	3	0.1186582595
3057	44	4	0.9181534941
3058	44	5	0.3802373116
3059	44	6	0.5701957489
3060	44	7	0.6258795531
3061	44	8	0.7955249147
3062	44	9	0.9182734815
3063	44	10	0.1930124597
3064	44	11	0.5593212061
3065	44	12	0.4484403878
3066	44	13	0.4791062884
3067	44	14	0.1263405015
3068	44	15	0.2362633660
3069	44	16	0.3595536998
3070	44	17	0.9660591371
3071	44	18	0.7273361692
3072	44	19	0.0244216011
3073	44	20	0.7031951621
3074	44	21	0.8526110165
3075	44	22	0.4619098562
3076	44	23	0.6327312533
3077	44	24	0.8188757556
3078	44	25	0.4770328808
3079	44	26	0.4874433987
3080	44	27	0.2329367269
3081	44	28	0.7681520027
3082	44	29	0.0821486502
3083	44	30	0.1483744169
3084	44	31	0.0088483957
3085	44	32	0.8644581768
3086	44	33	0.8571898197
3087	44	34	0.1275066556
3088	44	35	0.7826116709
3089	44	36	0.2374271313
3090	44	37	0.6977024046
3091	44	38	0.4084912241
3092	44	39	0.0329520465
3093	44	40	0.6159758861
3094	44	41	0.6015036842
3095	44	42	0.5922732526
3096	44	43	0.0644162740
3097	44	44	0.0806099726
3098	44	45	0.7186137545
3099	44	46	0.3006796399
3100	44	47	0.4401636729
3101	44	48	0.6846728916
3102	44	49	0.0280158091
3103	44	50	0.4645852740
3104	44	51	0.3878680537
3105	44	52	0.8806268256
3106	44	53	0.9264951302
3107	44	54	0.0205993070
3108	44	55	0.6995025813
3109	44	56	0.4035280114
3110	44	57	0.5080427062
3111	44	58	0.9324393086
3112	44	59	0.1716800141
3113	44	60	0.5901913564
3114	44	61	0.0808137255
3115	44	62	0.1805284102
3116	44	63	0.4546495331
3117	44	64	0.9380035452
3118	44	65	0.3080350659
3119	44	66	0.2372612040
3120	44	67	0.1754306769
3121	44	68	0.0057374705
3122	44	69	0.6457524286
3123	44	70	0.2083827234
3124	44	71	0.6217133566
3125	45	1	0.2472561128
3126	45	2	0.8006559759
3127	45	3	0.6861296305
3128	45	4	0.3278660853
3129	45	5	0.5192697304
3130	45	6	0.9868092705
3131	45	7	0.7680297582
3132	45	8	0.2039426221
3133	45	9	0.0148250796
3134	45	10	0.2326150322
3135	45	11	0.5918106758
3136	45	12	0.8954519057
3137	45	13	0.1591101629
3138	45	14	0.6124099833
3139	45	15	0.5949544869
3140	45	16	0.5626381743
3141	45	17	0.1204526895
3142	45	18	0.5273937955
3143	45	19	0.7343181884
3144	45	20	0.7106440458
3145	45	21	0.6082075210
3146	45	22	0.9148465986
3147	45	23	0.1652935790
3148	45	24	0.5462110667
3149	45	25	0.2228816645
3150	45	26	0.4025547830
3151	45	27	0.7216417436
3152	45	28	0.2286191350
3153	45	29	0.0483072116
3154	45	30	0.9300244669
3155	45	31	0.8503324916
3156	45	32	0.2955633244
3157	45	33	0.7306804429
3158	45	34	0.5364621221
3159	45	35	0.6234294102
3160	45	36	0.2499501738
3161	45	37	0.5232713926
3162	45	38	0.3914591684
3163	45	39	0.4538927958
3164	45	40	0.5380964726
3165	45	41	0.6240742011
3166	45	42	0.0457034721
3167	45	43	0.4335483783
3168	45	44	0.7831843640
3169	45	45	0.6581134554
3170	45	46	0.0285028652
3171	45	47	0.3458225382
3172	45	48	0.7785661449
3173	45	49	0.5558966612
3174	45	50	0.0801407266
3175	45	51	0.4892101907
3176	45	52	0.1641041823
3177	45	53	0.9949873257
3178	45	54	0.6545037697
3179	45	55	0.7103152489
3180	45	56	0.2178689903
3181	45	57	0.0570585527
3182	45	58	0.4319569925
3183	45	59	0.4464881257
3184	45	60	0.1053657648
3185	45	61	0.3619814594
3186	45	62	0.2968206173
3187	45	63	0.4009290892
3188	45	64	0.0926619028
3189	45	65	0.8332827399
3190	45	66	0.0243584993
3191	45	67	0.3426120766
3192	45	68	0.3565541324
3193	45	69	0.4158176682
3194	45	70	0.7965048724
3195	45	71	0.8946506050
3196	46	1	0.0398918693
3197	46	2	0.8422083445
3198	46	3	0.3281989833
3199	46	4	0.8230762333
3200	46	5	0.5003217999
3201	46	6	0.3567018490
3202	46	7	0.1688987715
3203	46	8	0.2788879448
3204	46	9	0.9125985103
3205	46	10	0.2490394982
3206	46	11	0.7680981355
3207	46	12	0.0767026925
3208	46	13	0.2440268239
3209	46	14	0.4226019052
3210	46	15	0.7870179419
3211	46	16	0.4618958146
3212	46	17	0.4796604584
3213	46	18	0.2189749344
3214	46	19	0.9083839403
3215	46	20	0.5850262232
3216	46	21	0.5809563943
3217	46	22	0.2052045576
3218	46	23	0.9859553124
3219	46	24	0.6736182971
3220	46	25	0.0384872975
3221	46	26	0.0103138122
3222	46	27	0.0162303736
3223	46	28	0.3950414304
3224	46	29	0.4261314804
3225	46	30	0.8127352460
3226	46	31	0.2896920354
3227	46	32	0.4660233497
3228	46	33	0.6549435910
3229	46	34	0.6178910192
3230	46	35	0.2890995829
3231	46	36	0.1552653909
3232	46	37	0.9745928682
3233	46	38	0.4579983545
3234	46	39	0.4341533361
3235	46	40	0.8871913785
3236	46	41	0.7070378526
3237	46	42	0.2022514716
3238	46	43	0.9638940711
3239	46	44	0.9510646770
3240	46	45	0.6248533772
3241	46	46	0.7509120130
3242	46	47	0.4129604916
3243	46	48	0.1045138356
3244	46	49	0.9698869479
3245	46	50	0.3213444320
3246	46	51	0.6895400588
3247	46	52	0.5508433422
3248	46	53	0.5265489896
3249	46	54	0.6754953712
3250	46	55	0.2244616393
3251	46	56	0.5650362875
3252	46	57	0.6858091834
3253	46	58	0.2406920129
3254	46	59	0.9600777179
3255	46	60	0.1119406638
3256	46	61	0.0534272590
3257	46	62	0.2497697533
3258	46	63	0.5779640134
3259	46	64	0.7083708500
3260	46	65	0.8676607725
3261	46	66	0.8670635964
3262	46	67	0.8636362413
3263	46	68	0.8422536408
3264	46	69	0.3250619508
3265	46	70	0.2977895774
3266	46	71	0.7294450193
3267	47	1	0.0320998039
3268	47	2	0.5000410490
3269	47	3	0.6933390908
3270	47	4	0.9831644809
3271	47	5	0.1248944262
3272	47	6	0.4442511038
3273	47	7	0.3961249725
3274	47	8	0.2294082618
3275	47	9	0.4141380517
3276	47	10	0.7174694045
3277	47	11	0.9189483207
3278	47	12	0.9649813939
3279	47	13	0.2440183940
3280	47	14	0.5944436924
3281	47	15	0.1894430332
3282	47	16	0.8090546816
3283	47	17	0.2802528758
3284	47	18	0.4301350461
3285	47	19	0.7691323995
3286	47	20	0.3921935400
3287	47	21	0.4835623056
3288	47	22	0.0189021532
3289	47	23	0.9701575534
3290	47	24	0.1919331555
3291	47	25	0.8865629258
3292	47	26	0.8372211503
3293	47	27	0.0555693968
3294	47	28	0.7288165670
3295	47	29	0.1622831011
3296	47	30	0.3533589742
3297	47	31	0.4582615863
3298	47	32	0.1943829050
3299	47	33	0.8534000237
3300	47	34	0.1516006771
3301	47	35	0.1775473859
3302	47	36	0.9782944499
3303	47	37	0.5958517813
3304	47	38	0.5736723584
3305	47	39	0.2077027122
3306	47	40	0.0099898330
3307	47	41	0.2911417629
3308	47	42	0.1266510328
3309	47	43	0.9749712273
3310	47	44	0.5351601574
3311	47	45	0.7210947252
3312	47	46	0.1644142605
3313	47	47	0.3442148389
3314	47	48	0.0013476014
3315	47	49	0.5945493071
3316	47	50	0.1133472389
3317	47	51	0.3935411414
3318	47	52	0.0781116127
3319	47	53	0.1322493921
3320	47	54	0.3636986949
3321	47	55	0.2700447682
3322	47	56	0.0188123179
3323	47	57	0.2009198451
3324	47	58	0.3256141655
3325	47	59	0.7476288849
3326	47	60	0.3632029467
3327	47	61	0.6789731397
3328	47	62	0.2058904716
3329	47	63	0.5575858518
3330	47	64	0.5323731634
3331	47	65	0.3574911486
3332	47	66	0.7351332381
3333	47	67	0.5106676137
3334	47	68	0.9533429299
3335	47	69	0.3088055965
3336	47	70	0.7183703259
3337	47	71	0.9633327634
3338	48	1	0.5999473599
3339	48	2	0.8450213587
3340	48	3	0.9383039908
3341	48	4	0.1351075172
3342	48	5	0.5661160843
3343	48	6	0.1027182513
3344	48	7	0.4793223562
3345	48	8	0.5674636858
3346	48	9	0.6972675584
3347	48	10	0.5926695950
3348	48	11	0.9610048272
3349	48	12	0.7753791711
3350	48	13	0.7249189871
3351	48	14	0.3247035220
3352	48	15	0.0454239398
3353	48	16	0.7437313055
3354	48	17	0.5256233676
3355	48	18	0.3710381053
3356	48	19	0.4913601903
3357	48	20	0.8888263144
3358	48	21	0.0500112451
3359	48	22	0.6972506619
3360	48	23	0.4464121661
3361	48	24	0.5823844089
3362	48	25	0.0547418110
3363	48	26	0.1815454043
3364	48	27	0.0930520226
3365	48	28	0.0080847410
3366	48	29	0.4903510013
3367	48	30	0.8114223485
3368	48	31	0.9714175044
3369	48	32	0.0902983611
3370	48	33	0.6564437072
3371	48	34	0.9097214951
3372	48	35	0.2254058784
3373	48	36	0.2225597915
3374	48	37	0.0124397469
3375	48	38	0.7047282346
3376	48	39	0.7900234773
3377	48	40	0.7097073053
3378	48	41	0.2973978301
3379	48	42	0.7510283045
3380	48	43	0.4850864769
3381	48	44	0.0223168172
3382	48	45	0.0757318269
3383	48	46	0.5305104167
3384	48	47	0.7660481227
3385	48	48	0.6013551946
3386	48	49	0.9015485221
3387	48	50	0.2574083135
3388	48	51	0.4901815089
3389	48	52	0.9515597671
3390	48	53	0.9546589754
3391	48	54	0.9365936751
3392	48	55	0.5339441760
3393	48	56	0.0094007864
3394	48	57	0.1181390798
3395	48	58	0.6269961987
3396	48	59	0.0174855278
3397	48	60	0.6084900810
3398	48	61	0.4384185472
3399	48	62	0.9889030322
3400	48	63	0.6987884422
3401	48	64	0.0948622548
3402	48	65	0.8986245277
3403	48	66	0.9241943206
3404	48	67	0.3174220463
3405	48	68	0.9110642746
3406	48	69	0.6289225551
3407	48	70	0.1074455241
3408	48	71	0.6207715799
3409	49	1	0.9263203852
3410	49	2	0.8584738285
3411	49	3	0.1058580568
3412	49	4	0.9486372028
3413	49	5	0.9342056555
3414	49	6	0.6363684735
3415	49	7	0.7146853255
3416	49	8	0.5355608501
3417	49	9	0.5379169956
3418	49	10	0.9720936390
3419	49	11	0.0257423590
3420	49	12	0.4894767632
3421	49	13	0.9267526148
3422	49	14	0.9623360345
3423	49	15	0.0234209392
3424	49	16	0.9361534012
3425	49	17	0.0804751143
3426	49	18	0.6504171384
3427	49	19	0.9536389289
3428	49	20	0.6889651953
3429	49	21	0.0888356855
3430	49	22	0.9425419616
3431	49	23	0.3877536375
3432	49	24	0.1836979403
3433	49	25	0.8411664893
3434	49	26	0.3119479581
3435	49	27	0.5011199871
3436	49	28	0.7522307639
3437	49	29	0.9408705132
3438	49	30	0.6085655112
3439	49	31	0.3730023438
3440	49	32	0.8671908989
3441	49	33	0.4670393397
3442	49	34	0.4788604011
3443	49	35	0.8158281017
3444	49	36	0.4012449956
3445	49	37	0.1152288746
3446	49	38	0.5305134272
3447	49	39	0.9368058457
3448	49	40	0.6531458707
3449	49	41	0.5026070666
3450	49	42	0.9625482052
3451	49	43	0.1426226338
3452	49	44	0.4293596814
3453	49	45	0.9248842397
3454	49	46	0.1660435731
3455	49	47	0.3655130826
3456	49	48	0.0053593540
3457	49	49	0.8164607114
3458	49	50	0.3191520120
3459	49	51	0.6943245493
3460	49	52	0.9052963974
3461	49	53	0.2616939736
3462	49	54	0.0820781868
3463	49	55	0.0889943377
3464	49	56	0.1028604629
3465	49	57	0.3940261449
3466	49	58	0.5901143248
3467	49	59	0.8550912268
3468	49	60	0.3348966581
3469	49	61	0.1986798360
3470	49	62	0.2280935706
3471	49	63	0.2020875569
3472	49	64	0.6657191762
3473	49	65	0.7069539716
3474	49	66	0.0179156587
3475	49	67	0.0669641718
3476	49	68	0.8221828467
3477	49	69	0.5484290863
3478	49	70	0.0037700175
3479	49	71	0.4753287174
3480	50	1	0.0510361530
3481	50	2	0.9663182227
3482	50	3	0.6179513512
3483	50	4	0.4803958344
3484	50	5	0.8912024624
3485	50	6	0.7839949243
3486	50	7	0.8459089170
3487	50	8	0.8965618163
3488	50	9	0.6004556362
3489	50	10	0.1650609290
3490	50	11	0.5908863656
3491	50	12	0.5057520336
3492	50	13	0.4267549026
3493	50	14	0.6729645524
3494	50	15	0.5947463713
3495	50	16	0.5296153654
3496	50	17	0.0669906973
3497	50	18	0.1848606966
3498	50	19	0.3847065922
3499	50	20	0.4018873558
3500	50	21	0.3835405326
3501	50	22	0.6128001632
3502	50	23	0.6039749128
3503	50	24	0.0492597087
3504	50	25	0.3197541349
3505	50	26	0.6218905719
3506	50	27	0.1162238806
3507	50	28	0.1419369816
3508	50	29	0.1703196582
3509	50	30	0.1199938986
3510	50	31	0.6172656990
3511	50	32	0.2213558112
3512	50	33	0.0863121212
3513	50	34	0.2352170502
3514	50	35	0.7017516457
3515	50	36	0.9775145841
3516	50	37	0.0192119749
3517	50	38	0.5476605627
3518	50	39	0.8740764004
3519	50	40	0.6196676111
3520	50	41	0.7127214922
3521	50	42	0.4649627665
3522	50	43	0.1254196446
3523	50	44	0.1394763947
3524	50	45	0.1379273189
3525	50	46	0.7201660159
3526	50	47	0.6690917606
3527	50	48	0.2049180167
3528	50	49	0.9050267125
3529	50	50	0.0537983528
3530	50	51	0.6068053725
3531	50	52	0.2885672455
3532	50	53	0.6665985161
3533	50	54	0.2107802853
3534	50	55	0.3378269542
3535	50	56	0.9863526514
3536	50	57	0.8326708572
3537	50	58	0.4540508352
3538	50	59	0.1282896330
3539	50	60	0.0029905154
3540	50	61	0.5740447338
3541	50	62	0.7455553324
3542	50	63	0.2243463267
3543	50	64	0.6603568550
3544	50	65	0.9807723826
3545	50	66	0.9260979723
3546	50	67	0.6378714391
3547	50	68	0.9999843575
3548	50	69	0.4737585355
3549	50	70	0.5119478400
3550	50	71	0.6196519686
3551	51	1	0.1864800276
3552	51	2	0.9769106065
3553	51	3	0.7450716132
3554	51	4	0.3259564224
3555	51	5	0.1148379254
3556	51	6	0.4652376296
3557	51	7	0.9950481830
3558	51	8	0.3197559421
3559	51	9	0.3702643421
3560	51	10	0.0488465363
3561	51	11	0.9265613146
3562	51	12	0.6588315875
3563	51	13	0.7154450524
3564	51	14	0.1373416004
3565	51	15	0.9966585422
3566	51	16	0.7017977037
3567	51	17	0.9700124576
3568	51	18	0.4507093774
3569	51	19	0.8300873372
3570	51	20	0.9730029735
3571	51	21	0.0247541112
3572	51	22	0.5756426696
3573	51	23	0.1973493001
3574	51	24	0.6851109662
3575	51	25	0.5564150522
3576	51	26	0.1234472729
3577	51	27	0.3229824058
3578	51	28	0.5563994101
3579	51	29	0.5972058084
3580	51	30	0.8349302458
3581	51	31	0.1760513787
3582	51	32	0.7836858360
3583	51	33	0.8118408523
3584	51	34	0.9211229924
3585	51	35	0.1096422584
3586	51	36	0.9266787777
3587	51	37	0.3863606220
3588	51	38	0.1046904419
3589	51	39	0.2464347202
3590	51	40	0.7566249641
3591	51	41	0.1535369782
3592	51	42	0.1729960348
3593	51	43	0.4154565521
3594	51	44	0.8689820305
3595	51	45	0.3103376352
3596	51	46	0.4121150943
3597	51	47	0.5707797348
3598	51	48	0.2803500933
3599	51	49	0.8628244717
3600	51	50	0.4008670719
3601	51	51	0.2533530667
3602	51	52	0.8875785829
3603	51	53	0.9765097415
3604	51	54	0.4507023669
3605	51	55	0.5726895491
3606	51	56	0.5329247937
3607	51	57	0.5741496398
3608	51	58	0.8956719548
3609	51	59	0.0893242038
3610	51	60	0.1713554482
3611	51	61	0.7306022006
3612	51	62	0.2653755830
3613	51	63	0.9550412842
3614	51	64	0.5424430529
3615	51	65	0.1864985754
3616	51	66	0.0646835431
3617	51	67	0.4691218310
3618	51	68	0.5728591974
3619	51	69	0.1693739849
3620	51	70	0.7155565512
3621	51	71	0.3294841615
3622	52	1	0.3229109631
3623	52	2	0.8885525861
3624	52	3	0.7449407135
3625	52	4	0.1918929936
3626	52	5	0.1988902218
3627	52	6	0.1570558078
3628	52	7	0.7626727284
3629	52	8	0.4792403150
3630	52	9	0.0198802794
3631	52	10	0.1635398003
3632	52	11	0.7325933818
3633	52	12	0.9074588623
3634	52	13	0.1400495418
3635	52	14	0.1832957487
3636	52	15	0.4801484118
3637	52	16	0.6729743360
3638	52	17	0.7574453889
3639	52	18	0.3758203667
3640	52	19	0.7622985397
3641	52	20	0.9288008371
3642	52	21	0.1064225677
3643	52	22	0.0276741227
3644	52	23	0.8838421218
3645	52	24	0.6488656206
3646	52	25	0.2141726981
3647	52	26	0.9485256649
3648	52	27	0.1179874516
3649	52	28	0.7870318955
3650	52	29	0.1178996498
3651	52	30	0.8335440028
3652	52	31	0.1165160574
3653	52	32	0.4408106129
3654	52	33	0.7220965894
3655	52	34	0.8614567709
3656	52	35	0.6327036065
3657	52	36	0.9209868112
3658	52	37	0.0185125791
3659	52	38	0.3953763354
3660	52	39	0.4002271262
3661	52	40	0.0383928586
3662	52	41	0.5589161357
3663	52	42	0.1328205080
3664	52	43	0.9458517213
3665	52	44	0.6989656780
3666	52	45	0.3161162566
3667	52	46	0.4260001332
3668	52	47	0.3719400140
3669	52	48	0.0735616456
3670	52	49	0.8018204998
3671	52	50	0.1342385537
3672	52	51	0.0023624832
3673	52	52	0.9082430676
3674	52	53	0.1619126769
3675	52	54	0.8862046050
3676	52	55	0.5571086886
3677	52	56	0.3760853750
3678	52	57	0.8347302699
3679	52	58	0.6750961402
3680	52	59	0.1631172709
3681	52	60	0.9526299196
3682	52	61	0.5086401436
3683	52	62	0.2796333283
3684	52	63	0.3934405325
3685	52	64	0.2307367329
3686	52	65	0.1410900992
3687	52	66	0.0261441390
3688	52	67	0.1517235441
3689	52	68	0.1596026784
3690	52	69	0.4215204744
3691	52	70	0.5519506703
3692	52	71	0.1979955374
3693	53	1	0.9804366105
3694	53	2	0.6847711783
3695	53	3	0.1438472588
3696	53	4	0.6794022885
3697	53	5	0.0008874349
3698	53	6	0.5698473919
3699	53	7	0.0513423025
3700	53	8	0.0744490810
3701	53	9	0.3716678917
3702	53	10	0.1855808562
3703	53	11	0.0768115642
3704	53	12	0.2799109598
3705	53	13	0.3474935330
3706	53	14	0.9630161691
3707	53	15	0.8370196484
3708	53	16	0.7235789085
3709	53	17	0.7977464390
3710	53	18	0.5121157886
3711	53	19	0.8866961794
3712	53	20	0.7503763586
3713	53	21	0.0207559322
3714	53	22	0.1663295077
3715	53	23	0.1438168911
3716	53	24	0.2514926651
3717	53	25	0.3074196070
3718	53	26	0.1699610301
3719	53	27	0.4032162093
3720	53	28	0.4670222858
3721	53	29	0.5914815050
3722	53	30	0.9551668796
3723	53	31	0.6650178232
3724	53	32	0.5719181155
3725	53	33	0.6399380579
3726	53	34	0.8088650820
3727	53	35	0.2513204040
3728	53	36	0.6408254933
3729	53	37	0.3787124739
3730	53	38	0.3026627065
3731	53	39	0.7152745742
3732	53	40	0.7503803656
3733	53	41	0.4882435626
3734	53	42	0.7920861384
3735	53	43	0.0302913254
3736	53	44	0.8357370961
3737	53	45	0.7551023075
3738	53	46	0.8673109738
3739	53	47	0.5593160046
3740	53	48	0.5528487465
3741	53	49	0.3794267629
3742	53	50	0.4460121840
3743	53	51	0.3032251052
3744	53	52	0.4001826951
3745	53	53	0.6123416917
3746	53	54	0.4470419963
3747	53	55	0.6516753607
3748	53	56	0.9197612987
3749	53	57	0.6170030264
3750	53	58	0.0548915700
3751	53	59	0.3867835845
3752	53	60	0.2084845314
3753	53	61	0.0100584500
3754	53	62	0.0518014077
3755	53	63	0.7804026469
3756	53	64	0.6499965079
3757	53	65	0.8606664897
3758	53	66	0.0317230509
3759	53	67	0.2908220012
3760	53	68	0.2393789636
3761	53	69	0.3343857573
3762	53	70	0.0060965754
3763	53	71	0.9897593297
3764	54	1	0.8226293204
3765	54	2	0.7981827138
3766	54	3	0.0200506551
3767	54	4	0.6583664166
3768	54	5	0.5532850213
3769	54	6	0.8873616294
3770	54	7	0.2176824212
3771	54	8	0.1061337679
3772	54	9	0.2667883923
3773	54	10	0.6636946052
3774	54	11	0.4093588730
3775	54	12	0.6669710875
3776	54	13	0.2760362970
3777	54	14	0.8564008693
3778	54	15	0.3186464482
3779	54	16	0.1957975957
3780	54	17	0.4734038962
3781	54	18	0.3735380187
3782	54	19	0.5825811806
3783	54	20	0.6818884276
3784	54	21	0.3835964687
3785	54	22	0.6343825883
3786	54	23	0.4622910749
3787	54	24	0.0335929766
3788	54	25	0.4950490785
3789	54	26	0.4940141258
3790	54	27	0.3244149783
3791	54	28	0.7344280421
3792	54	29	0.8283998836
3793	54	30	0.3305115537
3794	54	31	0.7241873718
3795	54	32	0.6510292040
3796	54	33	0.1286942679
3797	54	34	0.7442380274
3798	54	35	0.3093956206
3799	54	36	0.6819792893
3800	54	37	0.6315996568
3801	54	38	0.5270780418
3802	54	39	0.7881130576
3803	54	40	0.8983880491
3804	54	41	0.1907726470
3805	54	42	0.1974719306
3806	54	43	0.5653591366
3807	54	44	0.4668089440
3808	54	45	0.0538728004
3809	54	46	0.8840055852
3810	54	47	0.6626065397
3811	54	48	0.5272766966
3812	54	49	0.2575436039
3813	54	50	0.2451877203
3814	54	51	0.2091651242
3815	54	52	0.6411400726
3816	54	53	0.8795703091
3817	54	54	0.6714561991
3818	54	55	0.6747330492
3819	54	56	0.3746193876
3820	54	57	0.1654703254
3821	54	58	0.9991480275
3822	54	59	0.1090474296
3823	54	60	0.9938702090
3824	54	61	0.3296595817
3825	54	62	0.8332348019
3826	54	63	0.6448994130
3827	54	64	0.4583538496
3828	54	65	0.5774728293
3829	54	66	0.9542950336
3830	54	67	0.1403331389
3831	54	68	0.2090724860
3832	54	69	0.4813730754
3833	54	70	0.9284461965
3834	54	71	0.1074605351
3835	55	1	0.6721457224
3836	55	2	0.1259181276
3837	55	3	0.6728196717
3838	55	4	0.1389546664
3839	55	5	0.1797909280
3840	55	6	0.5568252569
3841	55	7	0.8015612061
3842	55	8	0.7070676247
3843	55	9	0.8143688608
3844	55	10	0.0467489269
3845	55	11	0.9162327489
3846	55	12	0.4555089334
3847	55	13	0.9263192359
3848	55	14	0.5876889485
3849	55	15	0.1302419831
3850	55	16	0.3009386235
3851	55	17	0.7531592739
3852	55	18	0.1293900106
3853	55	19	0.4099860531
3854	55	20	0.7470294829
3855	55	21	0.4590495923
3856	55	22	0.2432208550
3857	55	23	0.3919288958
3858	55	24	0.9174034419
3859	55	25	0.8206936843
3860	55	26	0.3462239294
3861	55	27	0.0577365812
3862	55	28	0.0297661703
3863	55	29	0.8275970048
3864	55	30	0.9861827777
3865	55	31	0.1372267054
3866	55	32	0.4997427273
3867	55	33	0.1121009053
3868	55	34	0.8100463776
3869	55	35	0.6386973937
3870	55	36	0.2918918333
3871	55	37	0.3668716345
3872	55	38	0.4402585998
3873	55	39	0.9989594580
3874	55	40	0.1812404958
3875	55	41	0.4870075267
3876	55	42	0.9151922073
3877	55	43	0.6367494292
3878	55	44	0.4133267626
3879	55	45	0.5028811558
3880	55	46	0.7669914123
3881	55	47	0.7142653861
3882	55	48	0.2560404297
3883	55	49	0.8963814233
3884	55	50	0.1242514397
3885	55	51	0.0030699125
3886	55	52	0.3554310156
3887	55	53	0.3674722947
3888	55	54	0.3949988084
3889	55	55	0.2728344579
3890	55	56	0.1881659795
3891	55	57	0.7412227378
3892	55	58	0.3305710391
3893	55	59	0.2179321498
3894	55	60	0.5688197426
3895	55	61	0.3167538168
3896	55	62	0.3551588557
3897	55	63	0.0685624699
3898	55	64	0.4288547225
3899	55	65	0.1652052333
3900	55	66	0.7072598636
3901	55	67	0.7207465558
3902	55	68	0.5320768678
3903	55	69	0.1475184634
3904	55	70	0.7197060143
3905	55	71	0.7133173635
3906	56	1	0.6345259906
3907	56	2	0.6348982216
3908	56	3	0.3500667932
3909	56	4	0.0478527532
3910	56	5	0.1377793774
3911	56	6	0.1170582054
3912	56	7	0.7621181398
3913	56	8	0.3938198071
3914	56	9	0.0134396288
3915	56	10	0.8863695795
3916	56	11	0.3968897196
3917	56	12	0.3688706448
3918	56	13	0.2538418742
3919	56	14	0.7918885280
3920	56	15	0.6417051028
3921	56	16	0.4420078536
3922	56	17	0.5331112659
3923	56	18	0.9722761419
3924	56	19	0.6599400039
3925	56	20	0.1019310085
3926	56	21	0.2890299587
3927	56	22	0.0150988596
3928	56	23	0.1704934784
3929	56	24	0.7178846812
3930	56	25	0.1803040928
3931	56	26	0.8777533420
3932	56	27	0.4386312375
3933	56	28	0.7123809606
3934	56	29	0.0252718055
3935	56	30	0.1583372517
3936	56	31	0.4256983246
3937	56	32	0.6597977960
3938	56	33	0.7932354733
3939	56	34	0.7757651177
3940	56	35	0.7076505497
3941	56	36	0.9310148507
3942	56	37	0.8928233231
3943	56	38	0.4697686895
3944	56	39	0.3248346578
3945	56	40	0.9062629524
3946	56	41	0.3561382690
3947	56	42	0.7217243775
3948	56	43	0.2751335972
3949	56	44	0.6099801431
3950	56	45	0.5136129055
3951	56	46	0.9168387000
3952	56	47	0.0519879973
3953	56	48	0.0467241714
3954	56	49	0.8891148418
3955	56	50	0.7119280011
3956	56	51	0.1486551799
3957	56	52	0.1781448005
3958	56	53	0.7270268607
3959	56	54	0.3191486583
3960	56	55	0.8960294821
3961	56	56	0.9073309535
3962	56	57	0.1969020003
3963	56	58	0.3346607196
3964	56	59	0.6197119141
3965	56	60	0.2221738058
3966	56	61	0.4929979714
3967	56	62	0.0454102387
3968	56	63	0.8819716023
3969	56	64	0.2862334447
3970	56	65	0.8211753564
3971	56	66	0.5896221520
3972	56	67	0.2172482954
3973	56	68	0.7139986800
3974	56	69	0.0593908415
3975	56	70	0.5420829533
3976	56	71	0.6202616324
3977	57	1	0.4155291105
3978	57	2	0.2638073307
3979	57	3	0.8953952296
3980	57	4	0.0255092536
3981	57	5	0.7774202363
3982	57	6	0.8122339295
3983	57	7	0.0774972509
3984	57	8	0.8241444076
3985	57	9	0.7013487713
3986	57	10	0.7894252520
3987	57	11	0.9727995875
3988	57	12	0.8794935718
3989	57	13	0.5164521127
3990	57	14	0.2919482458
3991	57	15	0.7755230539
3992	57	16	0.4237830662
3993	57	17	0.4888502462
3994	57	18	0.1101837736
3995	57	19	0.0434949808
3996	57	20	0.7110240520
3997	57	21	0.6031817449
3998	57	22	0.0889052195
3999	57	23	0.5929956543
4000	57	24	0.8894151896
4001	57	25	0.9100805763
4002	57	26	0.1826178064
4003	57	27	0.1066634851
4004	57	28	0.6240792563
4005	57	29	0.2420086479
4006	57	30	0.6487464383
4007	57	31	0.2443408887
4008	57	32	0.6575377584
4009	57	33	0.9125537691
4010	57	34	0.1397361183
4011	57	35	0.6830470124
4012	57	36	0.6899740053
4013	57	37	0.9519700478
4014	57	38	0.7605442633
4015	57	39	0.5141184130
4016	57	40	0.6533188191
4017	57	41	0.5499695158
4018	57	42	0.4869180005
4019	57	43	0.5328123909
4020	57	44	0.0664216285
4021	57	45	0.7788662463
4022	57	46	0.3083354454
4023	57	47	0.4902046951
4024	57	48	0.2677164925
4025	57	49	0.4185192189
4026	57	50	0.5336996759
4027	57	51	0.9787405450
4028	57	52	0.0217009643
4029	57	53	0.6226048954
4030	57	54	0.5717361993
4031	57	55	0.9111161539
4032	57	56	0.5326854717
4033	57	57	0.7543540061
4034	57	58	0.0177796395
4035	57	59	0.1567647280
4036	57	60	0.9963626540
4037	57	61	0.6665260778
4038	57	62	0.4011056167
4039	57	63	0.6539004128
4040	57	64	0.5790798473
4041	57	65	0.5408417350
4042	57	66	0.3369474253
4043	57	67	0.2690538527
4044	57	68	0.4928117828
4045	57	69	0.0974916886
4046	57	70	0.7831722661
4047	57	71	0.1461306019
4048	58	1	0.6474612043
4049	58	2	0.2700902666
4050	58	3	0.6789429933
4051	58	4	0.7138828333
4052	58	5	0.0489565134
4053	58	6	0.9872784386
4054	58	7	0.2040875284
4055	58	8	0.3166730059
4056	58	9	0.4057976576
4057	58	10	0.7377872043
4058	58	11	0.2954135509
4059	58	12	0.4274986219
4060	58	13	0.3603920997
4061	58	14	0.8671497507
4062	58	15	0.3386147763
4063	58	16	0.8930775719
4064	58	17	0.6215037568
4065	58	18	0.3563944157
4066	58	19	0.0498422999
4067	58	20	0.6178664109
4068	58	21	0.0229204935
4069	58	22	0.4509479171
4070	58	23	0.2717668237
4071	58	24	0.6020003408
4072	58	25	0.9917896520
4073	58	26	0.6087142490
4074	58	27	0.8710541939
4075	58	28	0.4846014353
4076	58	29	0.7062059380
4077	58	30	0.6542264600
4078	58	31	0.6307320371
4079	58	32	0.3536671423
4080	58	33	0.9243167266
4081	58	34	0.3096750304
4082	58	35	0.0675499756
4083	58	36	0.9732732400
4084	58	37	0.2969534690
4085	58	38	0.2716375040
4086	58	39	0.2899462464
4087	58	40	0.7027511271
4088	58	41	0.0094247083
4089	58	42	0.5853597973
4090	58	43	0.1302497489
4091	58	44	0.3698168085
4092	58	45	0.4525095480
4093	58	46	0.4688645252
4094	58	47	0.2628943804
4095	58	48	0.0740133049
4096	58	49	0.8252589409
4097	58	50	0.3127366803
4098	58	51	0.6918797162
4099	58	52	0.8481794349
4100	58	53	0.7636845973
4101	58	54	0.9636465400
4102	58	55	0.4501797757
4103	58	56	0.7554742498
4104	58	57	0.5723607894
4105	58	58	0.3212339696
4106	58	59	0.2400756851
4107	58	60	0.2785667274
4108	58	61	0.9754604297
4109	58	62	0.8708077222
4110	58	63	0.6322338698
4111	58	64	0.8997771568
4112	58	65	0.1804827531
4113	58	66	0.6997838458
4114	58	67	0.8730503968
4115	58	68	0.4774362221
4116	58	69	0.9714213498
4117	58	70	0.1629966432
4118	58	71	0.1801873492
4119	59	1	0.9808460586
4120	59	2	0.7483564410
4121	59	3	0.3104370986
4122	59	4	0.3506628671
4123	59	5	0.2008659891
4124	59	6	0.7793016238
4125	59	7	0.6135572474
4126	59	8	0.2748792944
4127	59	9	0.6045605652
4128	59	10	0.9262939277
4129	59	11	0.9667590107
4130	59	12	0.4527400001
4131	59	13	0.6899785255
4132	59	14	0.9304055506
4133	59	15	0.9029197758
4134	59	16	0.4454527753
4135	59	17	0.5027663400
4136	59	18	0.2241537459
4137	59	19	0.6855284604
4138	59	20	0.7813330675
4139	59	21	0.1996141756
4140	59	22	0.5563361826
4141	59	23	0.4135669377
4142	59	24	0.0993913324
4143	59	25	0.7368189357
4144	59	26	0.1133507835
4145	59	27	0.9724417296
4146	59	28	0.2142551583
4147	59	29	0.0847721333
4148	59	30	0.1354383728
4149	59	31	0.3944425075
4150	59	32	0.0656181918
4151	59	33	0.8837948139
4152	59	34	0.7048796061
4153	59	35	0.4162810589
4154	59	36	0.0846608034
4155	59	37	0.4841812304
4156	59	38	0.0298383064
4157	59	39	0.3595400979
4158	59	40	0.0887417956
4159	59	41	0.9561322345
4160	59	42	0.3262991086
4161	59	43	0.5414817957
4162	59	44	0.6461107600
4163	59	45	0.2567046592
4164	59	46	0.4444015715
4165	59	47	0.0915635354
4166	59	48	0.7594709997
4167	59	49	0.6685553174
4168	59	50	0.7770919958
4169	59	51	0.5408040672
4170	59	52	0.8681694935
4171	59	53	0.3334281784
4172	59	54	0.9543710048
4173	59	55	0.9675608259
4174	59	56	0.0702471146
4175	59	57	0.0677217883
4176	59	58	0.9400025555
4177	59	59	0.2845022730
4178	59	60	0.1524939220
4179	59	61	0.0754409288
4180	59	62	0.6789447805
4181	59	63	0.2181121139
4182	59	64	0.9592357427
4183	59	65	0.3838243871
4184	59	66	0.6343931733
4185	59	67	0.0438965461
4186	59	68	0.8680056175
4187	59	69	0.6642314796
4188	59	70	0.4034366440
4189	59	71	0.9567474131
4190	60	1	0.6203637142
4191	60	2	0.7297357526
4192	60	3	0.4982292089
4193	60	4	0.2664744742
4194	60	5	0.9864404122
4195	60	6	0.9426307804
4196	60	7	0.3580380096
4197	60	8	0.7459114119
4198	60	9	0.6111860983
4199	60	10	0.1351300054
4200	60	11	0.2867154791
4201	60	12	0.4793555918
4202	60	13	0.4685581843
4203	60	14	0.2410864844
4204	60	15	0.4469164177
4205	60	16	0.5388052990
4206	60	17	0.3088082727
4207	60	18	0.3869189736
4208	60	19	0.8233075719
4209	60	20	0.4613021947
4210	60	21	0.4623599024
4211	60	22	0.5022523524
4212	60	23	0.6794143091
4213	60	24	0.4215956451
4214	60	25	0.8860767395
4215	60	26	0.3138074824
4216	60	27	0.4654921917
4217	60	28	0.7540823570
4218	60	29	0.9780389620
4219	60	30	0.8689288357
4220	60	31	0.7108297702
4221	60	32	0.5984026766
4222	60	33	0.5986645888
4223	60	34	0.2090589791
4224	60	35	0.8648771509
4225	60	36	0.5851050010
4226	60	37	0.1516897599
4227	60	38	0.2229151609
4228	60	39	0.3310164129
4229	60	40	0.7628758582
4230	60	41	0.3580451664
4231	60	42	0.6177318920
4232	60	43	0.2422314500
4233	60	44	0.8266033507
4234	60	45	0.8588183764
4235	60	46	0.6891478677
4236	60	47	0.3654086497
4237	60	48	0.1676266496
4238	60	49	0.0760668414
4239	60	50	0.1887162216
4240	60	51	0.6289288444
4241	60	52	0.5384267438
4242	60	53	0.6909685745
4243	60	54	0.3083431534
4244	60	55	0.9600223894
4245	60	56	0.5770453140
4246	60	57	0.6221506358
4247	60	58	0.4255145811
4248	60	59	0.3311276715
4249	60	60	0.6001895983
4250	60	61	0.2944434169
4251	60	62	0.0419574417
4252	60	63	0.1985922749
4253	60	64	0.8931080056
4254	60	65	0.2510164212
4255	60	66	0.0634694258
4256	60	67	0.4782130066
4257	60	68	0.4027061812
4258	60	69	0.2863845867
4259	60	70	0.8092294196
4260	60	71	0.1655820394
4261	61	1	0.6444297535
4262	61	2	0.4269613121
4263	61	3	0.4078134894
4264	61	4	0.4710331042
4265	61	5	0.2857796885
4266	61	6	0.0969613572
4267	61	7	0.8364417544
4268	61	8	0.4534063381
4269	61	9	0.1730281990
4270	61	10	0.0251579760
4271	61	11	0.0823351829
4272	61	12	0.7114549428
4273	61	13	0.7161265505
4274	61	14	0.3906783364
4275	61	15	0.6714773322
4276	61	16	0.2931718649
4277	61	17	0.0128289727
4278	61	18	0.0969919134
4279	61	19	0.6242995365
4280	61	20	0.6130185709
4281	61	21	0.3914353307
4282	61	22	0.6662569782
4283	61	23	0.8116108458
4284	61	24	0.2845433364
4285	61	25	0.9172733994
4286	61	26	0.8750802716
4287	61	27	0.7627563435
4288	61	28	0.3199795806
4289	61	29	0.1614648588
4290	61	30	0.5719857630
4291	61	31	0.4855616200
4292	61	32	0.8058946123
4293	61	33	0.9989470751
4294	61	34	0.8933751094
4295	61	35	0.2769277166
4296	61	36	0.2847267641
4297	61	37	0.9903364670
4298	61	38	0.1133694709
4299	61	39	0.7381331022
4300	61	40	0.1633646660
4301	61	41	0.1385274474
4302	61	42	0.8204682851
4303	61	43	0.8748196089
4304	61	44	0.8546539978
4305	61	45	0.2111466220
4306	61	46	0.5462969416
4307	61	47	0.1478258627
4308	61	48	0.2239755946
4309	61	49	0.6432888550
4310	61	50	0.7721253992
4311	61	51	0.8369941656
4312	61	52	0.0347241857
4313	61	53	0.4383823778
4314	61	54	0.6486050114
4315	61	55	0.3192675225
4316	61	56	0.3556557773
4317	61	57	0.5236852830
4318	61	58	0.0820238660
4319	61	59	0.6756353583
4320	61	60	0.6851501418
4321	61	61	0.6540096290
4322	61	62	0.1611969783
4323	61	63	0.4910447542
4324	61	64	0.6529567046
4325	61	65	0.0545720882
4326	61	66	0.7679724712
4327	61	67	0.9376834687
4328	61	68	0.0449085552
4329	61	69	0.8813419421
4330	61	70	0.6758165709
4331	61	71	0.2082732213
4332	62	1	0.0198693895
4333	62	2	0.4962848565
4334	62	3	0.0830928301
4335	62	4	0.8745233878
4336	62	5	0.7074314784
4337	62	6	0.6293897717
4338	62	7	0.0223492505
4339	62	8	0.9314070730
4340	62	9	0.2726786272
4341	62	10	0.7944746502
4342	62	11	0.7684012386
4343	62	12	0.3074028129
4344	62	13	0.2328570280
4345	62	14	0.4170062500
4346	62	15	0.6266703354
4347	62	16	0.5885128053
4348	62	17	0.9406915330
4349	62	18	0.7086942014
4350	62	19	0.2641481636
4351	62	20	0.6258416753
4352	62	21	0.3627038309
4353	62	22	0.4253451424
4354	62	23	0.1168864295
4355	62	24	0.0156605355
4356	62	25	0.4799172306
4357	62	26	0.8848589007
4358	62	27	0.9533440042
4359	62	28	0.5248257858
4360	62	29	0.7662008433
4361	62	30	0.6291605751
4362	62	31	0.7330990070
4363	62	32	0.7860702327
4364	62	33	0.1254454316
4365	62	34	0.8161918372
4366	62	35	0.6605936205
4367	62	36	0.8328769100
4368	62	37	0.4455816094
4369	62	38	0.6829428715
4370	62	39	0.7642839830
4371	62	40	0.7182602366
4372	62	41	0.4774175216
4373	62	42	0.5326852216
4374	62	43	0.0256630494
4375	62	44	0.7102745497
4376	62	45	0.9496914716
4377	62	46	0.6523333853
4378	62	47	0.2987873550
4379	62	48	0.8903830051
4380	62	49	0.3610275867
4381	62	50	0.5629355190
4382	62	51	0.5162246805
4383	62	52	0.7237314177
4384	62	53	0.9882806614
4385	62	54	0.6331111100
4386	62	55	0.7393919532
4387	62	56	0.4681978920
4388	62	57	0.5179700111
4389	62	58	0.6927359574
4390	62	59	0.9930236777
4391	62	60	0.2841708544
4392	62	61	0.3218965330
4393	62	62	0.7261226848
4394	62	63	0.0702410871
4395	62	64	0.4473419646
4396	62	65	0.5423145220
4397	62	66	0.7308347081
4398	62	67	0.2802188750
4399	62	68	0.9878961314
4400	62	69	0.4137775796
4401	62	70	0.0445028581
4402	62	71	0.7061563679
4403	63	1	0.8911951012
4404	63	2	0.5771880802
4405	63	3	0.7318194178
4406	63	4	0.6014696509
4407	63	5	0.5268795518
4408	63	6	0.3841528031
4409	63	7	0.9002570058
4410	63	8	0.4172625570
4411	63	9	0.7451803898
4412	63	10	0.4631925249
4413	63	11	0.9334872374
4414	63	12	0.4689118080
4415	63	13	0.4514731863
4416	63	14	0.5665983479
4417	63	15	0.2083037612
4418	63	16	0.9196710782
4419	63	17	0.0845683590
4420	63	18	0.9010397191
4421	63	19	0.9126947559
4422	63	20	0.3687392133
4423	63	21	0.2229362521
4424	63	22	0.6388174407
4425	63	23	0.4389803004
4426	63	24	0.6702782167
4427	63	25	0.1811319632
4428	63	26	0.1698150085
4429	63	27	0.9504970917
4430	63	28	0.1690280945
4431	63	29	0.5835925881
4432	63	30	0.9949999503
4433	63	31	0.8751844629
4434	63	32	0.4747876893
4435	63	33	0.5721880305
4436	63	34	0.6070038807
4437	63	35	0.0762573401
4438	63	36	0.0990675823
4439	63	37	0.9911566838
4440	63	38	0.9765143464
4441	63	39	0.5163301397
4442	63	40	0.7363370736
4443	63	41	0.4397068713
4444	63	42	0.4498173771
4445	63	43	0.2052488816
4446	63	44	0.8911800580
4447	63	45	0.0164157250
4448	63	46	0.4135526433
4449	63	47	0.8108511362
4450	63	48	0.1009840840
4451	63	49	0.3145923624
4452	63	50	0.7235458926
4453	63	51	0.4697232973
4454	63	52	0.5375286145
4455	63	53	0.3623633333
4456	63	54	0.9087035982
4457	63	55	0.2078068312
4458	63	56	0.5434952965
4459	63	57	0.0785186067
4460	63	58	0.1583039234
4461	63	59	0.7125233915
4462	63	60	0.6621111953
4463	63	61	0.1533038737
4464	63	62	0.5877078543
4465	63	63	0.1368988845
4466	63	64	0.7254919042
4467	63	65	0.1947117350
4468	63	66	0.2131562252
4469	63	67	0.8245594865
4470	63	68	0.1858684188
4471	63	69	0.1896705716
4472	63	70	0.3408896262
4473	63	71	0.9222054924
4474	64	1	0.6293774429
4475	64	2	0.7907070038
4476	64	3	0.1274543745
4477	64	4	0.5205575009
4478	64	5	0.8071227288
4479	64	6	0.5410070177
4480	64	7	0.3314086376
4481	64	8	0.9081068132
4482	64	9	0.8555993801
4483	64	10	0.0549545302
4484	64	11	0.3778301105
4485	64	12	0.3931279946
4486	64	13	0.4173178636
4487	64	14	0.2865337087
4488	64	15	0.6009348258
4489	64	16	0.9608131605
4490	64	17	0.3650523159
4491	64	18	0.7592387493
4492	64	19	0.6733365520
4493	64	20	0.0271635111
4494	64	21	0.9125426230
4495	64	22	0.2610444063
4496	64	23	0.1640623957
4497	64	24	0.6380345272
4498	64	25	0.4557561413
4499	64	26	0.3772186209
4500	64	27	0.4625940141
4501	64	28	0.6416245601
4502	64	29	0.5668891924
4503	64	30	0.8034836403
4504	64	31	0.5638300525
4505	64	32	0.1962666358
4506	64	33	0.5941906441
4507	64	34	0.6912844270
4508	64	35	0.7168241367
4509	64	36	0.4013133734
4510	64	37	0.2322914447
4511	64	38	0.0482327743
4512	64	39	0.3094201866
4513	64	40	0.0878908248
4514	64	41	0.1031873045
4515	64	42	0.6872502971
4516	64	43	0.4810188194
4517	64	44	0.5205051685
4518	64	45	0.9737840062
4519	64	46	0.0819536457
4520	64	47	0.4813183290
4521	64	48	0.3388363221
4522	64	49	0.8411923950
4523	64	50	0.1546548810
4524	64	51	0.3659998332
4525	64	52	0.7537350184
4526	64	53	0.4156992873
4527	64	54	0.5300622289
4528	64	55	0.3917695456
4529	64	56	0.8714554287
4530	64	57	0.9072808502
4531	64	58	0.8543635597
4532	64	59	0.5130799888
4533	64	60	0.4741700427
4534	64	61	0.6578472005
4535	64	62	0.0769100413
4536	64	63	0.6704366785
4537	64	64	0.2520378446
4538	64	65	0.7681944687
4539	64	66	0.3872608156
4540	64	67	0.6533512180
4541	64	68	0.0004859134
4542	64	69	0.4354935898
4543	64	70	0.9627714045
4544	64	71	0.0883767386
4545	65	1	0.5386808948
4546	65	2	0.6500217021
4547	65	3	0.5693955580
4548	65	4	0.0591860632
4549	65	5	0.6238057083
4550	65	6	0.6513492037
4551	65	7	0.5405043922
4552	65	8	0.9626420303
4553	65	9	0.4925415991
4554	65	10	0.6951592732
4555	65	11	0.3286418635
4556	65	12	0.2462766175
4557	65	13	0.1108585605
4558	65	14	0.8587040924
4559	65	15	0.6380461631
4560	65	16	0.9823139892
4561	65	17	0.7659849427
4562	65	18	0.4924097233
4563	65	19	0.4953939780
4564	65	20	0.2401549858
4565	65	21	0.1502569239
4566	65	22	0.5723040192
4567	65	23	0.9105916643
4568	65	24	0.4022947685
4569	65	25	0.3404984879
4570	65	26	0.2978524799
4571	65	27	0.0556459869
4572	65	28	0.3409844018
4573	65	29	0.7333460702
4574	65	30	0.0184173915
4575	65	31	0.4293611404
4576	65	32	0.2720269649
4577	65	33	0.6684390935
4578	65	34	0.9987566983
4579	65	35	0.3312130282
4580	65	36	0.2922448018
4581	65	37	0.6501059025
4582	65	38	0.8717174204
4583	65	39	0.2548868321
4584	65	40	0.1426475015
4585	65	41	0.5668766936
4586	65	42	0.5835286956
4587	65	43	0.3889241191
4588	65	44	0.6777352542
4589	65	45	0.4422327885
4590	65	46	0.0269702822
4591	65	47	0.6600492434
4592	65	48	0.2082177312
4593	65	49	0.5193800055
4594	65	50	0.1554432213
4595	65	51	0.4483727170
4596	65	52	0.6696369294
4597	65	53	0.7277472406
4598	65	54	0.3589643817
4599	65	55	0.0719316984
4600	65	56	0.0682457290
4601	65	57	0.6568168616
4602	65	58	0.1275776853
4603	65	59	0.4092301307
4604	65	60	0.3901629318
4605	65	61	0.1459950767
4606	65	62	0.8385912711
4607	65	63	0.6621898967
4608	65	64	0.8144341707
4609	65	65	0.8373479694
4610	65	66	0.9934029249
4611	65	67	0.1066789725
4612	65	68	0.4874538719
4613	65	69	0.8651203453
4614	65	70	0.3615658050
4615	65	71	0.6301013734
4616	66	1	0.4319970389
4617	66	2	0.9450945007
4618	66	3	0.0190254925
4619	66	4	0.1097322931
4620	66	5	0.3873272892
4621	66	6	0.0459957751
4622	66	7	0.7697815364
4623	66	8	0.5955450209
4624	66	9	0.5653757807
4625	66	10	0.9252247578
4626	66	11	0.0439177379
4627	66	12	0.2350127106
4628	66	13	0.6529719988
4629	66	14	0.4028821196
4630	66	15	0.3069444089
4631	66	16	0.7212177278
4632	66	17	0.0596989817
4633	66	18	0.4345220942
4634	66	19	0.1304478585
4635	66	20	0.4498619135
4636	66	21	0.5805171710
4637	66	22	0.9690391296
4638	66	23	0.1120518106
4639	66	24	0.3949513417
4640	66	25	0.8063870990
4641	66	26	0.1054547355
4642	66	27	0.5016303146
4643	66	28	0.2938409713
4644	66	29	0.9705750812
4645	66	30	0.8631961197
4646	66	31	0.9239423447
4647	66	32	0.4025721201
4648	66	33	0.8082906203
4649	66	34	0.9429678377
4650	66	35	0.5123044136
4651	66	36	0.1956179100
4652	66	37	0.9889636128
4653	66	38	0.2820859500
4654	66	39	0.7911629309
4655	66	40	0.5543393935
4656	66	41	0.2073107082
4657	66	42	0.8350806688
4658	66	43	0.7893521041
4659	66	44	0.8602827070
4660	66	45	0.2379627889
4661	66	46	0.0962965130
4662	66	47	0.5815004348
4663	66	48	0.2976617706
4664	66	49	0.5308186072
4665	66	50	0.7119482933
4666	66	51	0.7475236841
4667	66	52	0.1113357786
4668	66	53	0.6809874228
4669	66	54	0.8595754947
4670	66	55	0.5062871203
4671	66	56	0.4873745218
4672	66	57	0.9650302306
4673	66	58	0.0079174349
4674	66	59	0.7812154931
4675	66	60	0.9356053118
4676	66	61	0.8711135546
4677	66	62	0.7051578383
4678	66	63	0.3381774318
4679	66	64	0.6794041754
4680	66	65	0.6481256760
4681	66	66	0.8504818454
4682	66	67	0.8750220854
4683	66	68	0.6370892888
4684	66	69	0.1325677959
4685	66	70	0.6661850163
4686	66	71	0.1914286823
4687	67	1	0.3398785042
4688	67	2	0.5012656851
4689	67	3	0.9807807868
4690	67	4	0.2001612112
4691	67	5	0.7392284740
4692	67	6	0.0770772998
4693	67	7	0.7816616460
4694	67	8	0.0368902446
4695	67	9	0.6078959075
4696	67	10	0.4936099392
4697	67	11	0.7844139291
4698	67	12	0.7192316861
4699	67	13	0.1745973621
4700	67	14	0.6439894238
4701	67	15	0.2255188064
4702	67	16	0.6619718838
4703	67	17	0.6090196543
4704	67	18	0.2334362417
4705	67	19	0.4431873774
4706	67	20	0.5446249661
4707	67	21	0.1045497963
4708	67	22	0.1483452157
4709	67	23	0.8828023984
4710	67	24	0.7839539717
4711	67	25	0.7964708917
4712	67	26	0.7332842438
4713	67	27	0.6589760571
4714	67	28	0.4335601805
4715	67	29	0.8658520398
4716	67	30	0.3251610734
4717	67	31	0.6249888628
4718	67	32	0.2057305439
4719	67	33	0.8264267589
4720	67	34	0.6057696496
4721	67	35	0.4058917551
4722	67	36	0.5656552329
4723	67	37	0.6828469499
4724	67	38	0.1875534011
4725	67	39	0.6025454779
4726	67	40	0.2907428574
4727	67	41	0.6811633403
4728	67	42	0.3869594070
4729	67	43	0.0099745435
4730	67	44	0.8557607024
4731	67	45	0.0309488308
4732	67	46	0.2354933498
4733	67	47	0.5177325867
4734	67	48	0.6399684856
4735	67	49	0.4689295916
4736	67	50	0.9609199641
4737	67	51	0.1845934517
4738	67	52	0.5734793884
4739	67	53	0.1092651798
4740	67	54	0.0673958501
4741	67	55	0.3574333601
4742	67	56	0.9057360715
4743	67	57	0.8006800944
4744	67	58	0.0164094176
4745	67	59	0.3392962520
4746	67	60	0.6665321342
4747	67	61	0.3415704910
4748	67	62	0.9642851148
4749	67	63	0.8722626786
4750	67	64	0.1679972499
4751	67	65	0.5700547649
4752	67	66	0.2781544337
4753	67	67	0.7336524832
4754	67	68	0.2529017148
4755	67	69	0.4657078353
4756	67	70	0.3361979611
4757	67	71	0.5436445721
4758	68	1	0.1468711756
4759	68	2	0.7231573681
4760	68	3	0.5536191156
4761	68	4	0.0026318785
4762	68	5	0.7541061989
4763	68	6	0.7891124655
4764	68	7	0.5203644652
4765	68	8	0.3940746845
4766	68	9	0.2580420575
4767	68	10	0.4812844293
4768	68	11	0.5786681366
4769	68	12	0.8315214459
4770	68	13	0.5905496092
4771	68	14	0.6460639867
4772	68	15	0.1889548060
4773	68	16	0.4962856807
4774	68	17	0.4467440811
4775	68	18	0.2053642236
4776	68	19	0.8355819327
4777	68	20	0.1132762157
4778	68	21	0.5469347150
4779	68	22	0.7998670475
4780	68	23	0.9855388943
4781	68	24	0.7149319649
4782	68	25	0.3699218123
4783	68	26	0.2636933280
4784	68	27	0.4485844481
4785	68	28	0.6228235271
4786	68	29	0.7294011633
4787	68	30	0.7847824092
4788	68	31	0.1664680992
4789	68	32	0.8762723394
4790	68	33	0.5079397773
4791	68	34	0.7200872148
4792	68	35	0.8789042179
4793	68	36	0.2620459767
4794	68	37	0.5091996808
4795	68	38	0.3992686830
4796	68	39	0.6561206612
4797	68	40	0.7672417383
4798	68	41	0.8805531124
4799	68	42	0.2347887978
4800	68	43	0.5987631842
4801	68	44	0.4711027215
4802	68	45	0.8808527850
4803	68	46	0.7877179901
4804	68	47	0.9673884022
4805	68	48	0.3275968661
4806	68	49	0.9930822141
4807	68	50	0.8029703349
4808	68	51	0.4408730818
4809	68	52	0.5400169292
4810	68	53	0.6028373824
4811	68	54	0.4264119761
4812	68	55	0.2549488940
4813	68	56	0.9727591951
4814	68	57	0.6901053046
4815	68	58	0.7035333426
4816	68	59	0.5955827222
4817	68	60	0.4195064679
4818	68	61	0.4883157518
4819	68	62	0.7620508219
4820	68	63	0.2957788073
4821	68	64	0.9962555296
4822	68	65	0.4821380368
4823	68	66	0.1746830251
4824	68	67	0.2583015063
4825	68	68	0.9913377175
4826	68	69	0.5739517082
4827	68	70	0.9144221675
4828	68	71	0.7585794558
4829	69	1	0.4545048205
4830	69	2	0.1492109657
4831	69	3	0.3573426399
4832	69	4	0.9256075420
4833	69	5	0.0300637507
4834	69	6	0.1450606305
4835	69	7	0.8929959442
4836	69	8	0.3576606167
4837	69	9	0.1381428447
4838	69	10	0.6959662791
4839	69	11	0.7985336990
4840	69	12	0.6781597738
4841	69	13	0.2988036619
4842	69	14	0.2249456751
4843	69	15	0.9331086678
4844	69	16	0.2715628571
4845	69	17	0.9150509797
4846	69	18	0.6366420104
4847	69	19	0.8671455793
4848	69	20	0.3345574480
4849	69	21	0.1249577627
4850	69	22	0.6291964012
4851	69	23	0.6303362553
4852	69	24	0.1212132922
4853	69	25	0.1113344384
4854	69	26	0.8050192809
4855	69	27	0.3795147985
4856	69	28	0.1026721559
4857	69	29	0.3789709890
4858	69	30	0.2939369660
4859	69	31	0.8612516122
4860	69	32	0.8334758100
4861	69	33	0.4431479317
4862	69	34	0.2185942521
4863	69	35	0.7590833521
4864	69	36	0.4732116824
4865	69	37	0.3636548826
4866	69	38	0.6520792968
4867	69	39	0.8308722996
4868	69	40	0.5017977273
4869	69	41	0.3480455759
4870	69	42	0.6294059986
4871	69	43	0.1799575011
4872	69	44	0.6468492378
4873	69	45	0.8543516737
4874	69	46	0.1130661694
4875	69	47	0.9184120949
4876	69	48	0.7694026539
4877	69	49	0.7497081799
4878	69	50	0.7855576747
4879	69	51	0.1039601020
4880	69	52	0.8746659425
4881	69	53	0.4147540759
4882	69	54	0.7342963573
4883	69	55	0.9958792347
4884	69	56	0.5260885144
4885	69	57	0.5393156381
4886	69	58	0.3753940333
4887	69	59	0.6287606708
4888	69	60	0.9182866276
4889	69	61	0.6693309997
4890	69	62	0.4900122830
4891	69	63	0.7517624376
4892	69	64	0.1124789314
4893	69	65	0.7086065351
4894	69	66	0.5108457897
4895	69	67	0.5856906143
4896	69	68	0.0722614182
4897	69	69	0.1629250864
4898	69	70	0.4165629139
4899	69	71	0.5740591455
4900	70	1	0.5109706628
4901	70	2	0.0459689125
4902	70	3	0.7540166471
4903	70	4	0.1578199007
4904	70	5	0.9003205863
4905	70	6	0.8670828165
4906	70	7	0.0762319961
4907	70	8	0.6697232402
4908	70	9	0.6167909964
4909	70	10	0.8617896708
4910	70	11	0.7736833422
4911	70	12	0.4914569394
4912	70	13	0.2765437467
4913	70	14	0.5079796999
4914	70	15	0.4873361741
4915	70	16	0.8026322615
4916	70	17	0.0472953380
4917	70	18	0.8627302079
4918	70	19	0.4313929323
4919	70	20	0.9655819656
4920	70	21	0.5320612076
4921	70	22	0.9214052153
4922	70	23	0.7173444033
4923	70	24	0.6445401390
4924	70	25	0.6300117504
4925	70	26	0.2281901934
4926	70	27	0.2302307533
4927	70	28	0.7022731686
4928	70	29	0.3911152799
4929	70	30	0.6467936672
4930	70	31	0.2763323146
4931	70	32	0.9020859427
4932	70	33	0.6927625798
4933	70	34	0.0303489617
4934	70	35	0.0599058438
4935	70	36	0.5930831665
4936	70	37	0.8974317783
4937	70	38	0.1361378399
4938	70	39	0.2628064067
4939	70	40	0.5142227747
4940	70	41	0.9979275106
4941	70	42	0.0364897493
4942	70	43	0.0056797140
4943	70	44	0.2744712573
4944	70	45	0.5444694492
4945	70	46	0.4930158886
4946	70	47	0.0771035189
4947	70	48	0.5917647872
4948	70	49	0.3557460965
4949	70	50	0.5084964512
4950	70	51	0.5573467533
4951	70	52	0.8878073040
4952	70	53	0.4299016665
4953	70	54	0.2746911566
4954	70	55	0.5323474430
4955	70	56	0.0599134173
4956	70	57	0.5028813500
4957	70	58	0.7625781968
4958	70	59	0.7621865859
4959	70	60	0.8939966303
4960	70	61	0.4093718641
4961	70	62	0.0385189005
4962	70	63	0.7960825730
4963	70	64	0.1021344443
4964	70	65	0.0688678622
4965	70	66	0.8559884168
4966	70	67	0.6952176108
4967	70	68	0.9662996405
4968	70	69	0.9921262567
4969	70	70	0.9580240175
4970	70	71	0.4805224156
4971	71	1	0.9900537673
4972	71	2	0.9945137668
4973	71	3	0.4862021296
4974	71	4	0.2645250252
4975	71	5	0.5389832160
4976	71	6	0.9792180182
4977	71	7	0.3416285440
4978	71	8	0.1307480037
4979	71	9	0.3349641147
4980	71	10	0.8501249957
4981	71	11	0.6880947570
4982	71	12	0.2227714187
4983	71	13	0.2800266622
4984	71	14	0.9627859136
4985	71	15	0.7551188623
4986	71	16	0.3399400795
4987	71	17	0.4656672641
4988	71	18	0.5176970591
4989	71	19	0.1021266659
4990	71	20	0.3596638944
4991	71	21	0.9270689231
4992	71	22	0.1406455664
4993	71	23	0.1557464674
4994	71	24	0.0292033674
4995	71	25	0.2095134291
4996	71	26	0.0117348847
4997	71	27	0.7244209782
4998	71	28	0.1758130696
4999	71	29	0.0038611414
5000	71	30	0.6824449962
5001	71	31	0.6563354852
5002	71	32	0.9939149092
5003	71	33	0.6769587630
5004	71	34	0.1425376153
5005	71	35	0.2584399343
5006	71	36	0.2159419795
5007	71	37	0.1217556335
5008	71	38	0.6000684784
5009	71	39	0.3466899833
5010	71	40	0.4567197487
5011	71	41	0.4501934741
5012	71	42	0.0347847403
5013	71	43	0.6794911674
5014	71	44	0.7302201367
5015	71	45	0.9975706539
5016	71	46	0.4346100297
5017	71	47	0.0701602162
5018	71	48	0.4632379180
5019	71	49	0.9523070888
5020	71	50	0.1722868821
5021	71	51	0.8229018124
5022	71	52	0.8793760124
5023	71	53	0.3129324489
5024	71	54	0.9786482803
5025	71	55	0.9085793798
5026	71	56	0.5224458780
5027	71	57	0.9903831650
5028	71	58	0.6330003585
5029	71	59	0.6982589476
5030	71	60	0.9942443063
5031	71	61	0.3154453547
5032	71	62	0.3545944332
5033	71	63	0.9881592155
5034	71	64	0.9924041177
5035	71	65	0.4971320485
5036	71	66	0.2465991499
5037	71	67	0.2083460973
5038	71	68	0.6188876820
5039	71	69	0.8466676287
5040	71	70	0.5550360805
5041	71	71	0.0756074307
5042	72	1	0.2968611028
5043	72	2	0.5898208208
5044	72	3	0.7550985985
5045	72	4	0.0270812395
5046	72	5	0.5873914752
5047	72	6	0.1897086282
5048	72	7	0.0972414562
5049	72	8	0.0506293932
5050	72	9	0.1420157175
5051	72	10	0.2695283382
5052	72	11	0.8735312060
5053	72	12	0.0213917298
5054	72	13	0.5824607871
5055	72	14	0.8521794863
5056	72	15	0.9299711096
5057	72	16	0.1049066652
5058	72	17	0.8425626513
5059	72	18	0.5629714681
5060	72	19	0.8031656132
5061	72	20	0.8368069576
5062	72	21	0.8784168228
5063	72	22	0.1577600464
5064	72	23	0.8249661736
5065	72	24	0.8708209409
5066	72	25	0.6548920949
5067	72	26	0.0715653235
5068	72	27	0.0791670382
5069	72	28	0.2737797769
5070	72	29	0.9182329522
5071	72	30	0.6342031192
5072	72	31	0.3493872080
5073	72	32	0.2150940555
5074	72	33	0.2240239400
5075	72	34	0.1044858065
5076	72	35	0.2421752950
5077	72	36	0.8114154153
5078	72	37	0.2941944348
5079	72	38	0.3394167512
5080	72	39	0.8620448089
5081	72	40	0.4362101522
5082	72	41	0.6089450899
5083	72	42	0.7355760150
5084	72	43	0.4576018821
5085	72	44	0.1914058770
5086	72	45	0.5877555013
5087	72	46	0.3875729921
5088	72	47	0.2963125426
5089	72	48	0.4303181525
5090	72	49	0.9505444602
5091	72	50	0.0994781558
5092	72	51	0.2671251101
5093	72	52	0.8289612834
5094	72	53	0.2572382023
5095	72	54	0.0920912838
5096	72	55	0.6997822244
5097	72	56	0.9121302972
5098	72	57	0.1636566077
5099	72	58	0.7789492626
5100	72	59	0.1859100740
5101	72	60	0.0818895600
5102	72	61	0.4131523818
5103	72	62	0.5352972820
5104	72	63	0.2969836155
5105	72	64	0.6371763223
5106	72	65	0.6397830886
5107	72	66	0.5391589110
5108	72	67	0.4485917375
5109	72	68	0.9339775238
5110	72	69	0.8785756622
5111	72	70	0.3106365465
5112	72	71	0.3701876760
5113	73	1	0.4875207520
5114	73	2	0.0462125614
5115	73	3	0.8277895586
5116	73	4	0.6789266295
5117	73	5	0.6339680627
5118	73	6	0.2153625507
5119	73	7	0.9752391721
5120	73	8	0.0642862152
5121	73	9	0.1659070109
5122	73	10	0.0747173280
5123	73	11	0.3314113258
5124	73	12	0.9948682943
5125	73	13	0.3319555302
5126	73	14	0.4235026096
5127	73	15	0.6946505187
5128	73	16	0.2440858274
5129	73	17	0.5871592173
5130	73	18	0.4735997817
5131	73	19	0.4299959014
5132	73	20	0.6690487778
5133	73	21	0.8867521635
5134	73	22	0.9652931839
5135	73	23	0.9660323933
5136	73	24	0.5239284858
5137	73	25	0.6050762725
5138	73	26	0.5051913043
5139	73	27	0.9725202238
5140	73	28	0.5390537963
5141	73	29	0.3837669669
5142	73	30	0.2831567703
5143	73	31	0.9092414728
5144	73	32	0.8712877189
5145	73	33	0.3293693322
5146	73	34	0.7370310314
5147	73	35	0.5502143484
5148	73	36	0.9633373949
5149	73	37	0.9523935821
5150	73	38	0.5254535205
5151	73	39	0.0276236106
5152	73	40	0.1183005930
5153	73	41	0.6001708484
5154	73	42	0.3590349364
5155	73	43	0.1131688878
5156	73	44	0.9321263786
5157	73	45	0.7825375460
5158	73	46	0.8078194065
5159	73	47	0.1762122060
5160	73	48	0.3696967638
5161	73	49	0.2814191882
5162	73	50	0.6062081079
5163	73	51	0.0387455416
5164	73	52	0.1681713522
5165	73	53	0.5715012918
5166	73	54	0.0047779349
5167	73	55	0.6920998381
5168	73	56	0.1765775643
5169	73	57	0.5099692396
5170	73	58	0.6646200619
5171	73	59	0.7156313611
5172	73	60	0.8937362065
5173	73	61	0.9477768326
5174	73	62	0.6248728340
5175	73	63	0.7650239253
5176	73	64	0.2771461648
5177	73	65	0.3619038654
5178	73	66	0.3152382742
5179	73	67	0.2404835597
5180	73	68	0.3142974474
5181	73	69	0.8406917946
5182	73	70	0.2681071702
5183	73	71	0.4325980404
5184	74	1	0.4408626435
5185	74	2	0.6271421066
5186	74	3	0.5457669282
5187	74	4	0.3729890222
5188	74	5	0.4096796531
5189	74	6	0.3535863352
5190	74	7	0.5492012287
5191	74	8	0.7793764169
5192	74	9	0.6350055235
5193	74	10	0.1554093366
5194	74	11	0.8181219585
5195	74	12	0.8031768757
5196	74	13	0.7269106284
5197	74	14	0.8228998934
5198	74	15	0.4952767142
5199	74	16	0.9034881927
5200	74	17	0.3328691330
5201	74	18	0.1598967761
5202	74	19	0.6191195538
5203	74	20	0.2266053394
5204	74	21	0.1076736087
5205	74	22	0.2439923878
5206	74	23	0.9916292652
5207	74	24	0.3848197735
5208	74	25	0.6058962531
5209	74	26	0.3068675394
5210	74	27	0.6253033336
5211	74	28	0.9201937006
5212	74	29	0.1475593341
5213	74	30	0.8934105039
5214	74	31	0.3527917415
5215	74	32	0.5884219776
5216	74	33	0.5205526110
5217	74	34	0.8985586697
5218	74	35	0.9614110002
5219	74	36	0.9302322641
5220	74	37	0.2521450049
5221	74	38	0.5106122289
5222	74	39	0.7096086810
5223	74	40	0.8871505288
5224	74	41	0.6660215654
5225	74	42	0.5277306396
5226	74	43	0.6903274045
5227	74	44	0.3929321938
5228	74	45	0.3506305330
5229	74	46	0.1856041187
5230	74	47	0.2964203865
5231	74	48	0.6834996664
5232	74	49	0.3455008953
5233	74	50	0.9155399408
5234	74	51	0.9101050058
5235	74	52	0.4531745040
5236	74	53	0.1595323286
5237	74	54	0.9017342711
5238	74	55	0.8379942779
5239	74	56	0.7654285822
5240	74	57	0.2086018105
5241	74	58	0.4632976116
5242	74	59	0.6856222828
5243	74	60	0.3561611450
5244	74	61	0.3567081154
5245	74	62	0.0384140243
5246	74	63	0.9445831226
5247	74	64	0.8772607264
5248	74	65	0.9369726945
5249	74	66	0.9059941228
5250	74	67	0.8074929905
5251	74	68	0.1891176994
5252	74	69	0.4166063517
5253	74	70	0.5171016715
5254	74	71	0.0762682282
5255	75	1	0.0826279172
5256	75	2	0.0448323111
5257	75	3	0.7665956332
5258	75	4	0.4755601110
5259	75	5	0.3954628445
5260	75	6	0.9521997520
5261	75	7	0.7719804980
5262	75	8	0.0789625109
5263	75	9	0.2977006473
5264	75	10	0.6875204388
5265	75	11	0.9890675168
5266	75	12	0.7508751517
5267	75	13	0.8470527674
5268	75	14	0.8908017883
5269	75	15	0.5888694297
5270	75	16	0.6124813496
5271	75	17	0.0994035988
5272	75	18	0.0521670412
5273	75	19	0.2981036329
5274	75	20	0.4555647438
5275	75	21	0.4088751567
5276	75	22	0.3365176572
5277	75	23	0.4001478669
5278	75	24	0.2861358835
5279	75	25	0.2734903516
5280	75	26	0.3061419898
5281	75	27	0.0936288740
5282	75	28	0.4626080515
5283	75	29	0.7227483420
5284	75	30	0.6107305461
5285	75	31	0.5388762797
5286	75	32	0.8053762591
5287	75	33	0.6555628572
5288	75	34	0.3054719130
5289	75	35	0.2809363706
5290	75	36	0.0510257017
5291	75	37	0.2576716654
5292	75	38	0.0529168686
5293	75	39	0.1299882126
5294	75	40	0.5553723127
5295	75	41	0.7404373074
5296	75	42	0.1190557298
5297	75	43	0.3062474644
5298	75	44	0.5874900748
5299	75	45	0.0098575181
5300	75	46	0.8951168940
5301	75	47	0.1999714249
5302	75	48	0.1092611169
5303	75	49	0.9472839353
5304	75	50	0.4980750578
5305	75	51	0.5648258612
5306	75	52	0.3561590924
5307	75	53	0.8345927149
5308	75	54	0.9649737282
5309	75	55	0.6422949759
5310	75	56	0.1080830670
5311	75	57	0.2711157179
5312	75	58	0.7359238500
5313	75	59	0.5706911185
5314	75	60	0.9938640599
5315	75	61	0.3466543960
5316	75	62	0.1095673982
5317	75	63	0.7992403195
5318	75	64	0.0022172537
5319	75	65	0.4150393116
5320	75	66	0.0801766901
5321	75	67	0.0532429554
5322	75	68	0.6727109770
5323	75	69	0.1330935587
5324	75	70	0.1832311684
5325	75	71	0.2280832897
5358	76	33	0.9987421748
5397	77	1	0.7209773092
5398	77	2	0.5453999694
5399	77	3	0.4011358218
5400	77	4	0.0979445148
5401	77	5	0.2151286122
5402	77	6	0.9475574400
5403	77	7	0.5766549264
5404	77	8	0.1071780962
5405	77	9	0.6050885613
5406	77	10	0.7277996624
5407	77	11	0.2154124817
5408	77	12	0.7203835817
5409	77	13	0.6609461210
5410	77	14	0.3390720878
5411	77	15	0.2956597549
5412	77	16	0.7911336143
5413	77	17	0.5583336046
5414	77	18	0.3841600367
5415	77	19	0.7910731193
5416	77	20	0.0062905913
5417	77	21	0.1691155951
5418	77	22	0.8888479252
5419	77	23	0.5564739141
5420	77	24	0.9528133282
5421	77	25	0.6187887876
5422	77	26	0.6699045133
5423	77	27	0.0473976531
5424	77	28	0.4103433546
5425	77	29	0.0075747557
5426	77	30	0.8742741030
5427	77	31	0.6402432104
5428	77	32	0.7285520649
5429	77	33	0.4196740729
5430	77	34	0.0413790322
5431	77	35	0.8264965797
5432	77	36	0.6348026851
5433	77	37	0.9889364727
5434	77	38	0.4031515061
5435	77	39	0.7419807818
5436	77	40	0.5940250340
5437	77	41	0.1309511685
5438	77	42	0.9573932635
5439	77	43	0.3144086162
5440	77	44	0.7918972899
5441	77	45	0.2964653512
5442	77	46	0.6100683711
5443	77	47	0.5830309042
5444	77	48	0.8547989558
5445	77	49	0.9942284077
5446	77	50	0.3741040234
5447	77	51	0.8610895476
5448	77	52	0.1633440028
5449	77	53	0.2629519491
5450	77	54	0.4175634617
5451	77	55	0.1161573315
5452	77	56	0.8817407368
5453	77	57	0.0874679750
5454	77	58	0.1635549846
5455	77	59	0.2920840913
5456	77	60	0.0950427311
5457	77	61	0.0378290880
5458	77	62	0.9323273017
5459	77	63	0.8235947960
5460	77	64	0.4575031609
5461	77	65	0.9737063344
5462	77	66	0.6500913762
5463	77	67	0.0923058460
5464	77	68	0.9626428070
5465	77	69	0.0532428822
5466	77	70	0.8342866278
5467	77	71	0.5566678410
5468	78	1	0.1841940512
5469	78	2	0.7916798913
5470	78	3	0.8710764572
5471	78	4	0.9760913411
5472	78	5	0.0881452425
5473	78	6	0.4811448287
5474	78	7	0.5591222453
5475	78	8	0.9429441988
5476	78	9	0.4753732365
5477	78	10	0.9332262692
5478	78	11	0.8040337465
5479	78	12	0.6387172397
5480	78	13	0.1961782183
5481	78	14	0.2215972082
5482	78	15	0.7548745712
5483	78	16	0.0779189551
5484	78	17	0.3090651832
5485	78	18	0.9184295558
5486	78	19	0.3700030465
5487	78	20	0.4041079143
5488	78	21	0.9562586439
5489	78	22	0.3023303482
5490	78	23	0.2277027108
5491	78	24	0.4137618048
5492	78	25	0.2760366825
5493	78	26	0.8777940869
5494	78	27	0.5060676513
5495	78	28	0.2386794896
5496	78	29	0.9310369692
5497	78	30	0.3403542791
5498	78	31	0.7953473311
5499	78	32	0.1152310204
5500	78	33	0.1320341709
5501	78	34	0.6664237883
5502	78	35	0.0913223615
5503	78	36	0.2201794134
5504	78	37	0.1475686170
5505	78	38	0.6504446073
5506	78	39	0.1631236123
5507	78	40	0.6229418539
5508	78	41	0.5836708765
5509	78	42	0.9671573588
5510	78	43	0.2616590937
5511	78	44	0.7798490948
5512	78	45	0.1887545669
5513	78	46	0.0165336649
5514	78	47	0.8577680499
5515	78	48	0.4978197506
5516	78	49	0.9349632207
5517	78	50	0.2277710964
5518	78	51	0.9019276649
5519	78	52	0.8912218651
5520	78	53	0.5301014446
5521	78	54	0.1296303757
5522	78	55	0.3049836699
5523	78	56	0.8061381276
5524	78	57	0.0074244626
5525	78	58	0.8110513212
5526	78	59	0.0448176172
5527	78	60	0.9384614322
5528	78	61	0.1514056008
5529	78	62	0.8401649483
5530	78	63	0.0536924526
5531	78	64	0.2834397717
5532	78	65	0.5065887370
5533	78	66	0.1450148146
5534	78	67	0.5036191852
5535	78	68	0.6541573540
5536	78	69	0.7954594218
5537	78	70	0.6667427979
5538	78	71	0.2770992080
5539	79	1	0.3791302983
5540	79	2	0.6339001567
5541	79	3	0.5387583016
5542	79	4	0.1589793931
5543	79	5	0.8226547241
5544	79	6	0.5552919665
5545	79	7	0.0167474430
5546	79	8	0.3204744747
5547	79	9	0.4902551877
5548	79	10	0.2445185394
5549	79	11	0.2224021396
5550	79	12	0.3814770528
5551	79	13	0.7746199840
5552	79	14	0.3520325157
5553	79	15	0.6864607227
5554	79	16	0.5807581116
5555	79	17	0.3594569783
5556	79	18	0.4975120444
5557	79	19	0.6255757292
5558	79	20	0.2979184105
5559	79	21	0.6489176452
5560	79	22	0.4657406774
5561	79	23	0.3516108636
5562	79	24	0.9323574170
5563	79	25	0.9723294144
5564	79	26	0.4966256781
5565	79	27	0.4359766021
5566	79	28	0.6264867689
5567	79	29	0.2920851000
5568	79	30	0.1027194001
5569	79	31	0.9035859769
5570	79	32	0.6712153982
5571	79	33	0.7366195573
5572	79	34	0.4423442790
5573	79	35	0.8301947913
5574	79	36	0.5592742814
5575	79	37	0.9976362456
5576	79	38	0.8469422343
5577	79	39	0.8797487561
5578	79	40	0.4878914333
5579	79	41	0.0914607737
5580	79	42	0.1021508956
5581	79	43	0.8693684861
5582	79	44	0.8660807577
5583	79	45	0.4541834113
5584	79	46	0.5558292093
5585	79	47	0.4468388697
5586	79	48	0.8136403901
5587	79	49	0.0533412537
5588	79	50	0.0724145989
5589	79	51	0.1115588006
5590	79	52	0.7022588989
5591	79	53	0.5381552763
5592	79	54	0.4631696641
5593	79	55	0.6346163158
5594	79	56	0.5104846912
5595	79	57	0.9597953423
5596	79	58	0.0705929180
5597	79	59	0.1369714602
5598	79	60	0.2518804423
5599	79	61	0.1733123185
5600	79	62	0.0405574371
5601	79	63	0.9230958405
5602	79	64	0.9099318758
5603	79	65	0.4829017161
5604	79	66	0.7532906318
5605	79	67	0.4692061571
5606	79	68	0.4805379622
5607	79	69	0.6002328661
5608	79	70	0.3489549132
5609	79	71	0.9684293955
5610	80	1	0.6916936398
5611	80	2	0.4511058088
5612	80	3	0.8377978820
5613	80	4	0.5577743980
5614	80	5	0.9052892206
5615	80	6	0.3936270913
5616	80	7	0.0046132677
5617	80	8	0.7189296107
5618	80	9	0.4469683450
5619	80	10	0.0770278666
5620	80	11	0.8304884112
5621	80	12	0.1492272438
5622	80	13	0.6151831429
5623	80	14	0.2936580759
5624	80	15	0.7838435597
5625	80	16	0.1256678342
5626	80	17	0.2534534181
5627	80	18	0.8544364776
5628	80	19	0.2626392944
5629	80	20	0.5053338609
5630	80	21	0.0277487962
5631	80	22	0.3031967320
5632	80	23	0.4284297014
5633	80	24	0.9376806719
5634	80	25	0.7860984481
5635	80	26	0.1817203336
5636	80	27	0.4068868291
5637	80	28	0.2666364103
5638	80	29	0.7819531998
5639	80	30	0.7558417423
5640	80	31	0.2350658062
5641	80	32	0.4736468401
5642	80	33	0.2069475516
5643	80	34	0.0728636882
5644	80	35	0.0314212381
5645	80	36	0.1122367722
5646	80	37	0.4664907795
5647	80	38	0.0360345058
5648	80	39	0.8311663829
5649	80	40	0.9134591245
5650	80	41	0.1130623724
5651	80	42	0.6616547941
5652	80	43	0.0626863684
5653	80	44	0.7282455154
5654	80	45	0.9553128700
5655	80	46	0.8465299280
5656	80	47	0.8539133500
5657	80	48	0.2087662886
5658	80	49	0.7009664057
5659	80	50	0.1165526444
5660	80	51	0.7141001495
5661	80	52	0.7287152023
5662	80	53	0.4197493764
5663	80	54	0.1425298508
5664	80	55	0.6663958742
5665	80	56	0.2058478249
5666	80	57	0.3242501845
5667	80	58	0.0732827038
5668	80	59	0.4724842352
5669	80	60	0.1062033847
5670	80	61	0.8291244460
5671	80	62	0.7075500414
5672	80	63	0.5798502248
5673	80	64	0.0360719976
5674	80	65	0.7804137296
5675	80	66	0.6112714629
5676	80	67	0.1483087698
5677	80	68	0.2469045091
5678	80	69	0.6473059687
5679	80	70	0.9794751527
5680	80	71	0.1603636337
5681	81	1	0.7603683411
5682	81	2	0.6411299473
5683	81	3	0.2230500020
5684	81	4	0.4886138565
5685	81	5	0.5964428172
5686	81	6	0.0695799300
5687	81	7	0.3425272065
5688	81	8	0.8052091058
5689	81	9	0.7705463362
5690	81	10	0.4590798514
5691	81	11	0.5193092553
5692	81	12	0.4992615385
5693	81	13	0.8788292278
5694	81	14	0.6618391066
5695	81	15	0.1656574127
5696	81	16	0.0846770527
5697	81	17	0.9860892911
5698	81	18	0.2389401165
5699	81	19	0.5571612883
5700	81	20	0.0922926757
5701	81	21	0.0680645630
5702	81	22	0.2647113297
5703	81	23	0.6721429005
5704	81	24	0.1041365606
5705	81	25	0.0451250598
5706	81	26	0.2834143634
5707	81	27	0.2524453308
5708	81	28	0.2920295689
5709	81	29	0.9307203321
5710	81	30	0.2319204835
5711	81	31	0.4523932030
5712	81	32	0.6910886732
5713	81	33	0.8730504308
5714	81	34	0.6754432051
5715	81	35	0.1797025301
5716	81	36	0.4694932485
5717	81	37	0.7450231356
5718	81	38	0.5222297367
5719	81	39	0.2747023543
5720	81	40	0.5155694718
5721	81	41	0.9813095881
5722	81	42	0.7940116101
5723	81	43	0.0148310103
5724	81	44	0.8601388163
5725	81	45	0.4558507167
5726	81	46	0.1804884230
5727	81	47	0.9448158690
5728	81	48	0.4419400077
5729	81	49	0.4194285399
5730	81	50	0.5019771573
5731	81	51	0.5342326839
5732	81	52	0.4874931029
5733	81	53	0.7666884875
5734	81	54	0.2063755845
5735	81	55	0.5916296635
5736	81	56	0.8118135473
5737	81	57	0.4897899483
5738	81	58	0.8440749943
5739	81	59	0.1038431162
5740	81	60	0.4205102804
5741	81	61	0.0759954783
5742	81	62	0.5562363192
5743	81	63	0.1115989541
5744	81	64	0.9490459091
5745	81	65	0.2316795248
5746	81	66	0.2913014842
5747	81	67	0.4185391576
5748	81	68	0.9767026603
5749	81	69	0.8135312209
5750	81	70	0.6932415124
5751	81	71	0.4922721321
5752	82	1	0.7948408094
5753	82	2	0.4872531225
5754	82	3	0.5071031423
5755	82	4	0.6549796257
5756	82	5	0.9431038392
5757	82	6	0.6875915653
5758	82	7	0.5997954947
5759	82	8	0.3850438469
5760	82	9	0.1070201052
5761	82	10	0.1017726525
5762	82	11	0.9192765309
5763	82	12	0.5945132081
5764	82	13	0.8684611400
5765	82	14	0.1256521158
5766	82	15	0.1861428721
5767	82	16	0.6802746872
5768	82	17	0.6154420641
5769	82	18	0.0302178664
5770	82	19	0.7841178034
5771	82	20	0.0359523445
5772	82	21	0.1062133447
5773	82	22	0.3403541232
5774	82	23	0.1475512986
5775	82	24	0.0552592543
5776	82	25	0.5720336479
5777	82	26	0.4388527828
5778	82	27	0.4737984119
5779	82	28	0.5487363082
5780	82	29	0.2523840042
5781	82	30	0.1670399243
5782	82	31	0.0410084403
5783	82	32	0.0472248136
5784	82	33	0.6542930468
5785	82	34	0.5481115826
5786	82	35	0.7022044393
5787	82	36	0.5973968860
5788	82	37	0.2357031479
5789	82	38	0.3019999340
5790	82	39	0.9824407334
5791	82	40	0.3427232536
5792	82	41	0.4037725865
5793	82	42	0.9017172642
5794	82	43	0.9372364618
5795	82	44	0.2722337265
5796	82	45	0.0273693800
5797	82	46	0.1233793339
5798	82	47	0.9525084137
5799	82	48	0.6428114441
5800	82	49	0.1535972008
5801	82	50	0.7366262176
5802	82	51	0.6787637891
5803	82	52	0.2598105455
5804	82	53	0.0769803408
5805	82	54	0.8263150877
5806	82	55	0.3150697998
5807	82	56	0.6490139887
5808	82	57	0.2651678710
5809	82	58	0.7888682121
5810	82	59	0.1977502969
5811	82	60	0.5175518752
5812	82	61	0.9559081364
5813	82	62	0.2387587372
5814	82	63	0.5647766888
5815	82	64	0.6102011837
5816	82	65	0.7868703199
5817	82	66	0.2669811281
5818	82	67	0.2075980697
5819	82	68	0.0225734678
5820	82	69	0.5689810622
5821	82	70	0.1900388030
5822	82	71	0.3652967215
5823	83	1	0.9727536491
5824	83	2	0.0917560677
5825	83	3	0.3025331837
5826	83	4	0.2449873756
5827	83	5	0.1191254477
5828	83	6	0.4259125176
5829	83	7	0.1974957897
5830	83	8	0.7619368923
5831	83	9	0.5795097183
5832	83	10	0.9341220073
5833	83	11	0.4407006814
5834	83	12	0.8393202643
5835	83	13	0.0111023481
5836	83	14	0.2670157691
5837	83	15	0.1543900641
5838	83	16	0.6601163368
5839	83	17	0.5321836402
5840	83	18	0.9432582762
5841	83	19	0.8578666337
5842	83	20	0.0497355154
5843	83	21	0.8991664131
5844	83	22	0.0966253709
5845	83	23	0.6145122042
5846	83	24	0.5093675968
5847	83	25	0.8834956908
5848	83	26	0.8814933323
5849	83	27	0.7169656665
5850	83	28	0.9060691586
5851	83	29	0.4504743950
5852	83	30	0.9070044700
5853	83	31	0.2713658805
5854	83	32	0.4232280441
5855	83	33	0.9987605377
5856	83	34	0.5738990642
5857	83	35	0.6682154196
5858	83	36	0.1178859854
5859	83	37	0.9998115818
5860	83	38	0.8657112094
5861	83	39	0.8798228777
5862	83	40	0.5793213006
5863	83	41	0.7998332167
5864	83	42	0.3205235591
5865	83	43	0.4186415649
5866	83	44	0.8109355648
5867	83	45	0.5875393287
5868	83	46	0.5730316290
5869	83	47	0.4710519016
5870	83	48	0.1197229689
5871	83	49	0.5162899056
5872	83	50	0.3289185353
5873	83	51	0.1694584847
5874	83	52	0.4154563188
5875	83	53	0.4255439062
5876	83	54	0.7839706889
5877	83	55	0.9248239156
5878	83	56	0.3090395969
5879	83	57	0.6654640217
5880	83	58	0.6417895821
5881	83	59	0.2151087560
5882	83	60	0.1159384167
5883	83	61	0.5487940521
5884	83	62	0.4864746365
5885	83	63	0.5391664607
5886	83	64	0.5475545898
5887	83	65	0.0603737007
5888	83	66	0.2073818804
5889	83	67	0.6654405757
5890	83	68	0.0601852825
5891	83	69	0.0730930902
5892	83	70	0.5452634534
5893	83	71	0.6395065831
5894	84	1	0.8729263069
5895	84	2	0.8657870130
5896	84	3	0.0581481480
5897	84	4	0.6838618722
5898	84	5	0.4533263417
5899	84	6	0.6311797774
5900	84	7	0.1549137738
5901	84	8	0.5730493106
5902	84	9	0.1474696831
5903	84	10	0.4838323095
5904	84	11	0.7425077953
5905	84	12	0.5629260018
5906	84	13	0.9093762157
5907	84	14	0.5264784847
5908	84	15	0.4877499174
5909	84	16	0.2184158131
5910	84	17	0.1919425065
5911	84	18	0.1295394995
5912	84	19	0.4335245690
5913	84	20	0.3078809232
5914	84	21	0.6783335521
5915	84	22	0.9199992055
5916	84	23	0.8470473839
5917	84	24	0.2258881419
5918	84	25	0.9803729062
5919	84	26	0.0544292643
5920	84	27	0.8913287176
5921	84	28	0.0405581887
5922	84	29	0.1275223545
5923	84	30	0.4365921714
5924	84	31	0.6800647723
5925	84	32	0.0004486619
5926	84	33	0.3023791844
5927	84	34	0.7382129203
5928	84	35	0.6843105340
5929	84	36	0.7557055261
5930	84	37	0.3693926977
5931	84	38	0.8392243078
5932	84	39	0.3287548367
5933	84	40	0.5168623808
5934	84	41	0.3230566173
5935	84	42	0.0712626325
5936	84	43	0.0797883826
5937	84	44	0.2324328334
5938	84	45	0.5977411172
5939	84	46	0.5675383001
5940	84	47	0.4508486465
5941	84	48	0.7896836237
5942	84	49	0.6970778001
5943	84	50	0.8843732155
5944	84	51	0.0975645469
5945	84	52	0.3754113521
5946	84	53	0.8043724210
5947	84	54	0.9446119308
5948	84	55	0.6012994940
5949	84	56	0.7847453272
5950	84	57	0.9990411950
5951	84	58	0.4926282121
5952	84	59	0.8253035159
5953	84	60	0.1265635500
5954	84	61	0.9292203835
5955	84	62	0.5053682881
5956	84	63	0.1270122118
5957	84	64	0.2315995679
5958	84	65	0.2435812089
5959	84	66	0.8113227459
5960	84	67	0.9873050940
5961	84	68	0.6129739066
5962	84	69	0.6505470537
5963	84	70	0.3160599307
5964	84	71	0.1298362878
5965	85	1	0.9736036714
5966	85	2	0.3873225632
5967	85	3	0.2096246704
5968	85	4	0.2060365048
5969	85	5	0.9850636804
5970	85	6	0.7771629710
5971	85	7	0.6568851513
5972	85	8	0.7747473042
5973	85	9	0.4742407710
5974	85	10	0.5412583668
5975	85	11	0.8723118510
5976	85	12	0.8496521232
5977	85	13	0.3456307878
5978	85	14	0.8169237818
5979	85	15	0.4509516172
5980	85	16	0.1303761150
5981	85	17	0.8159649773
5982	85	18	0.9435798293
5983	85	19	0.9556796309
5984	85	20	0.9425285272
5985	85	21	0.8728002128
5986	85	22	0.4610479195
5987	85	23	0.0695407391
5988	85	24	0.1043997807
5989	85	25	0.7046291283
5990	85	26	0.8808634849
5991	85	27	0.0917048748
5992	85	28	0.3176030349
5993	85	29	0.5314105386
5994	85	30	0.4077648059
5995	85	31	0.4474393227
5996	85	32	0.5050142100
5997	85	33	0.7950873692
5998	85	34	0.6570639936
5999	85	35	0.7110507148
6000	85	36	0.7801510501
6001	85	37	0.4342269646
6002	85	38	0.3679358661
6003	85	39	0.5548983542
6004	85	40	0.9084677356
6005	85	41	0.9091942329
6006	85	42	0.4272102057
6007	85	43	0.7581198588
6008	85	44	0.2548250207
6009	85	45	0.2441339875
6010	85	46	0.2090714760
6011	85	47	0.3852011357
6012	85	48	0.0600989647
6013	85	49	0.1526513058
6014	85	50	0.3408807670
6015	85	51	0.0026274920
6016	85	52	0.0254515186
6017	85	53	0.8019286864
6018	85	54	0.0721682310
6019	85	55	0.1298512998
6020	85	56	0.5065578148
6021	85	57	0.9530317159
6022	85	58	0.2215561746
6023	85	59	0.8241608497
6024	85	60	0.4844422550
6025	85	61	0.6293209805
6026	85	62	0.2716001729
6027	85	63	0.9894564650
6028	85	64	0.4244083501
6029	85	65	0.9286641665
6030	85	66	0.7005071803
6031	85	67	0.2045594002
6032	85	68	0.3628911311
6033	85	69	0.0684430464
6034	85	70	0.7594577544
6035	85	71	0.2713588667
6036	86	1	0.9776372798
6037	86	2	0.1866679601
6038	86	3	0.0294787255
6039	86	4	0.2324623005
6040	86	5	0.4308019481
6041	86	6	0.2385502015
6042	86	7	0.6176634366
6043	86	8	0.4909009128
6044	86	9	0.3912015073
6045	86	10	0.9585442035
6046	86	11	0.4935284052
6047	86	12	0.4166530264
6048	86	13	0.7604728900
6049	86	14	0.5656966362
6050	86	15	0.5465043262
6051	86	16	0.2670307048
6052	86	17	0.5187283526
6053	86	18	0.7680605007
6054	86	19	0.0911915544
6055	86	20	0.0031706076
6056	86	21	0.3973814817
6057	86	22	0.3627917273
6058	86	23	0.9926270726
6059	86	24	0.8217898319
6060	86	25	0.2914558938
6061	86	26	0.6931342529
6062	86	27	0.0263492321
6063	86	28	0.6543470249
6064	86	29	0.7615772998
6065	86	30	0.7858069865
6066	86	31	0.9257058916
6067	86	32	0.7392145796
6068	86	33	0.9724749471
6069	86	34	0.9551846171
6070	86	35	0.9716768800
6071	86	36	0.4032768952
6072	86	37	0.1937348191
6073	86	38	0.5893403166
6074	86	39	0.8941778080
6075	86	40	0.5849363264
6076	86	41	0.5478845201
6077	86	42	0.3877062132
6078	86	43	0.0015893527
6079	86	44	0.3083574101
6080	86	45	0.9534028498
6081	86	46	0.5480936789
6082	86	47	0.5753881149
6083	86	48	0.4721312025
6084	86	49	0.3161541801
6085	86	50	0.6665796698
6086	86	51	0.4753018101
6087	86	52	0.7135356618
6088	86	53	0.0293713971
6089	86	54	0.4679288827
6090	86	55	0.5353254937
6091	86	56	0.3208272913
6092	86	57	0.1610631361
6093	86	58	0.5616747257
6094	86	59	0.9751743162
6095	86	60	0.9226404359
6096	86	61	0.3474817122
6097	86	62	0.9008802082
6098	86	63	0.6618550154
6099	86	64	0.3199566593
6100	86	65	0.8560648253
6101	86	66	0.6335318955
6102	86	67	0.7232335545
6103	86	68	0.0497996444
6104	86	69	0.2228722125
6105	86	70	0.6174113629
6106	86	71	0.6347359712
6107	87	1	0.7707567327
6108	87	2	0.0051175761
6109	87	3	0.6363253240
6110	87	4	0.0791141433
6111	87	5	0.9585204259
6112	87	6	0.1844190033
6113	87	7	0.6545022582
6114	87	8	0.4306516284
6115	87	9	0.5005731834
6116	87	10	0.3210819280
6117	87	11	0.9059534385
6118	87	12	0.2141088452
6119	87	13	0.3504533255
6120	87	14	0.3738823216
6121	87	15	0.7494343389
6122	87	16	0.6712806169
6123	87	17	0.5349454577
6124	87	18	0.3111090646
6125	87	19	0.6464549331
6126	87	20	0.4575858936
6127	87	21	0.6585907768
6128	87	22	0.5473351413
6129	87	23	0.1194409090
6130	87	24	0.9785474367
6131	87	25	0.4033999671
6132	87	26	0.7529728045
6133	87	27	0.7017809912
6134	87	28	0.4531996115
6135	87	29	0.9758450170
6136	87	30	0.3191923541
6137	87	31	0.0879355827
6138	87	32	0.7466017501
6139	87	33	0.3243099307
6140	87	34	0.7242609072
6141	87	35	0.8257158934
6142	87	36	0.2828303566
6143	87	37	0.9086799105
6144	87	38	0.4802181516
6145	87	39	0.7134819855
6146	87	40	0.4092530939
6147	87	41	0.8013000800
6148	87	42	0.6194354240
6149	87	43	0.6233619391
6150	87	44	0.1517534056
6151	87	45	0.9933177456
6152	87	46	0.3727962780
6153	87	47	0.8230340225
6154	87	48	0.5282632033
6155	87	49	0.6839053426
6156	87	50	0.4694889556
6157	87	51	0.9858490969
6158	87	52	0.3424961194
6159	87	53	0.0168240974
6160	87	54	0.1052900059
6161	87	55	0.3210435561
6162	87	56	0.4202240645
6163	87	57	0.8582628109
6164	87	58	0.0228245477
6165	87	59	0.8734236760
6166	87	60	0.8341078279
6167	87	61	0.3420169018
6168	87	62	0.9613592592
6169	87	63	0.5807095780
6170	87	64	0.6663268325
6171	87	65	0.6856201664
6172	87	66	0.4064254714
6173	87	67	0.9491571896
6174	87	68	0.5943000768
6175	87	69	0.8866436235
6176	87	70	0.6626391751
6177	87	71	0.0035531707
6178	88	1	0.6879437035
6179	88	2	0.2820745991
6180	88	3	0.6269151098
6181	88	4	0.8396971091
6182	88	5	0.2753923452
6183	88	6	0.9997113878
6184	88	7	0.6627311315
6185	88	8	0.8036555485
6186	88	9	0.6836167304
6187	88	10	0.1322200871
6188	88	11	0.7895046459
6189	88	12	0.0261128498
6190	88	13	0.1490441845
6191	88	14	0.8947946518
6192	88	15	0.3471564064
6193	88	16	0.5692682490
6194	88	17	0.7530574626
6195	88	18	0.3699809541
6196	88	19	0.4426919254
6197	88	20	0.5871652910
6198	88	21	0.7119978559
6199	88	22	0.4040511847
6200	88	23	0.1678748690
6201	88	24	0.3783246889
6202	88	25	0.0896713510
6203	88	26	0.5743003408
6204	88	27	0.3274818785
6205	88	28	0.6839714278
6206	88	29	0.4609439643
6207	88	30	0.9901210535
6208	88	31	0.6875245986
6209	88	32	0.1488876678
6210	88	33	0.2721956526
6211	88	34	0.3144397084
6212	88	35	0.9885847769
6213	88	36	0.5475879977
6214	88	37	0.3141510962
6215	88	38	0.6513159084
6216	88	39	0.3512435467
6217	88	40	0.9977678265
6218	88	41	0.7835359955
6219	88	42	0.1407481926
6220	88	43	0.0238806764
6221	88	44	0.9325801805
6222	88	45	0.0355428443
6223	88	46	0.3710370827
6224	88	47	0.5018484294
6225	88	48	0.7886003074
6226	88	49	0.7410180368
6227	88	50	0.9445403549
6228	88	51	0.3757655984
6229	88	52	0.4530158932
6230	88	53	0.3485915395
6231	88	54	0.5436404673
6232	88	55	0.8313405821
6233	88	56	0.4382628906
6234	88	57	0.1179408082
6235	88	58	0.1588224606
6236	88	59	0.1222343184
6237	88	60	0.5788847725
6238	88	61	0.1489435141
6239	88	62	0.8097589170
6240	88	63	0.7277724403
6241	88	64	0.4211391667
6242	88	65	0.1241986253
6243	88	66	0.7163572172
6244	88	67	0.9687271649
6245	88	68	0.4383497215
6246	88	69	0.3676731256
6247	88	70	0.3199707116
6248	88	71	0.4361175480
6249	89	1	0.1512091216
6250	89	2	0.4607189042
6251	89	3	0.4599982249
6252	89	4	0.0837893020
6253	89	5	0.4962617485
6254	89	6	0.8310353076
6255	89	7	0.5856377315
6256	89	8	0.2848620559
6257	89	9	0.5720533449
6258	89	10	0.5301780868
6259	89	11	0.6606276543
6260	89	12	0.0250692382
6261	89	13	0.8787696264
6262	89	14	0.2042681221
6263	89	15	0.8564098203
6264	89	16	0.3170325174
6265	89	17	0.3222089303
6266	89	18	0.0152322808
6267	89	19	0.4392668358
6268	89	20	0.9010937032
6269	89	21	0.1641757949
6270	89	22	0.2490257532
6271	89	23	0.6288661435
6272	89	24	0.5853149616
6273	89	25	0.3732243786
6274	89	26	0.3452233612
6275	89	27	0.5540421265
6276	89	28	0.8115741005
6277	89	29	0.7128964867
6278	89	30	0.8740128381
6279	89	31	0.2476916485
6280	89	32	0.8641056083
6281	89	33	0.3347317423
6282	89	34	0.7076898734
6283	89	35	0.9478949104
6284	89	36	0.8309934912
6285	89	37	0.5387251815
6286	89	38	0.5335326423
6287	89	39	0.1158555471
6288	89	40	0.1107785264
6289	89	41	0.0637107291
6290	89	42	0.7764832019
6291	89	43	0.1358477646
6292	89	44	0.9424803555
6293	89	45	0.9807513240
6294	89	46	0.9922575848
6295	89	47	0.2595128729
6296	89	48	0.3029602543
6297	89	49	0.0074898656
6298	89	50	0.6987797092
6299	89	51	0.2040539575
6300	89	52	0.1716656606
6301	89	53	0.9478054624
6302	89	54	0.8329201015
6303	89	55	0.7569806222
6304	89	56	0.3210298410
6305	89	57	0.1781434626
6306	89	58	0.3110227492
6307	89	59	0.1326039415
6308	89	60	0.8910399494
6309	89	61	0.1850355873
6310	89	62	0.3802955905
6311	89	63	0.7551455582
6312	89	64	0.5197673300
6313	89	65	0.0879854639
6314	89	66	0.7030404685
6315	89	67	0.3507608213
6316	89	68	0.6267106454
6317	89	69	0.2365731108
6318	89	70	0.4666163684
6319	89	71	0.7374891718
6320	90	1	0.3002838399
6321	90	2	0.2430995703
6322	90	3	0.8733369363
6323	90	4	0.2427641959
6324	90	5	0.2238508943
6325	90	6	0.8655945212
6326	90	7	0.5022770688
6327	90	8	0.5268111490
6328	90	9	0.8730843868
6329	90	10	0.2010567780
6330	90	11	0.7308651065
6331	90	12	0.0447500474
6332	90	13	0.1488622404
6333	90	14	0.5637852079
6334	90	15	0.8017306700
6335	90	16	0.4698920818
6336	90	17	0.7419286706
6337	90	18	0.1127534192
6338	90	19	0.6024960233
6339	90	20	0.6329686204
6340	90	21	0.2977890065
6341	90	22	0.9827916138
6342	90	23	0.3881141786
6343	90	24	0.8175563365
6344	90	25	0.0707770782
6345	90	26	0.0911546471
6346	90	27	0.1683171578
6347	90	28	0.6974877235
6348	90	29	0.3277277583
6349	90	30	0.6349335266
6350	90	31	0.4349768958
6351	90	32	0.6280115983
6352	90	33	0.8780330969
6353	90	34	0.3083138322
6354	90	35	0.8707757941
6355	90	36	0.1018839916
6356	90	37	0.1739083538
6357	90	38	0.3730528634
6358	90	39	0.6286951406
6359	90	40	0.0469927406
6360	90	41	0.5741096414
6361	90	42	0.3595602470
6362	90	43	0.0917427884
6363	90	44	0.7229718822
6364	90	45	0.9233454554
6365	90	46	0.8934734585
6366	90	47	0.1928639640
6367	90	48	0.6652741260
6368	90	49	0.0062268777
6369	90	50	0.7953599873
6370	90	51	0.2982427464
6371	90	52	0.3040158842
6372	90	53	0.7781516016
6373	90	54	0.6863569249
6374	90	55	0.1215722212
6375	90	56	0.8489286797
6376	90	57	0.7775115725
6377	90	58	0.2898893789
6378	90	59	0.5464164033
6379	90	60	0.1052393308
6380	90	61	0.9248229056
6381	90	62	0.9813932991
6382	90	63	0.7332509290
6383	90	64	0.8028560029
6384	90	65	0.2897071317
6385	90	66	0.6040267237
6386	90	67	0.9047399946
6387	90	68	0.4636154855
6388	90	69	0.9770795871
6389	90	70	0.5334351351
6390	90	71	0.5106082261
6391	91	1	0.5511892284
6392	91	2	0.8929953822
6393	91	3	0.6023510145
6394	91	4	0.2741611106
6395	91	5	0.8163408376
6396	91	6	0.4958244730
6397	91	7	0.4670250746
6398	91	8	0.4816149641
6399	91	9	0.5020513507
6400	91	10	0.2623850624
6401	91	11	0.7798577105
6402	91	12	0.8060672353
6403	91	13	0.0405366640
6404	91	14	0.4662146359
6405	91	15	0.9276394565
6406	91	16	0.8894653437
6407	91	17	0.2437262083
6408	91	18	0.2175288354
6409	91	19	0.4358817469
6410	91	20	0.3489655391
6411	91	21	0.1423517414
6412	91	22	0.4172750465
6413	91	23	0.0822164682
6414	91	24	0.9452077444
6415	91	25	0.7069821781
6416	91	26	0.6862431918
6417	91	27	0.8499477389
6418	91	28	0.1705976636
6419	91	29	0.6633227789
6420	91	30	0.3833828741
6421	91	31	0.6812058897
6422	91	32	0.2145120078
6423	91	33	0.2763782563
6424	91	34	0.2835569046
6425	91	35	0.4886731184
6426	91	36	0.0927190944
6427	91	37	0.7793813776
6428	91	38	0.9556981935
6429	91	39	0.5743340584
6430	91	40	0.2814327287
6431	91	41	0.2180832559
6432	91	42	0.3541917689
6433	91	43	0.0874999641
6434	91	44	0.2586199199
6435	91	45	0.8204064048
6436	91	46	0.0151394205
6437	91	47	0.1480852636
6438	91	48	0.0641326131
6439	91	49	0.2326682559
6440	91	50	0.5839670105
6441	91	51	0.4130981523
6442	91	52	0.3750199974
6443	91	53	0.0012420570
6444	91	54	0.4953146209
6445	91	55	0.3202277417
6446	91	56	0.7082242351
6447	91	57	0.1815578127
6448	91	58	0.1701754807
6449	91	59	0.8788218987
6450	91	60	0.8448805921
6451	91	61	0.5535583547
6452	91	62	0.5600277889
6453	91	63	0.0593925999
6454	91	64	0.8299366115
6455	91	65	0.8435846935
6456	91	66	0.5480657183
6457	91	67	0.9226557058
6458	91	68	0.6229660711
6459	91	69	0.5037639118
6460	91	70	0.4969897643
6461	91	71	0.9043987999
6462	92	1	0.7218471677
6463	92	2	0.8511815332
6464	92	3	0.9918987639
6465	92	4	0.9804670876
6466	92	5	0.6715879384
6467	92	6	0.0070381844
6468	92	7	0.1285523511
6469	92	8	0.7357205516
6470	92	9	0.2397064408
6471	92	10	0.7125193621
6472	92	11	0.1488187043
6473	92	12	0.6147264382
6474	92	13	0.7137614191
6475	92	14	0.6441333252
6476	92	15	0.9349541804
6477	92	16	0.4219856546
6478	92	17	0.8256911379
6479	92	18	0.1051296610
6480	92	19	0.3008075533
6481	92	20	0.6705717300
6482	92	21	0.6586880162
6483	92	22	0.8608353422
6484	92	23	0.7299643299
6485	92	24	0.4886246277
6486	92	25	0.7044200357
6487	92	26	0.2780300486
6488	92	27	0.4112803335
6489	92	28	0.3273861073
6490	92	29	0.7817939604
6491	92	30	0.9082700978
6492	92	31	0.2317849072
6493	92	32	0.5036411285
6494	92	33	0.7594516310
6495	92	34	0.2236836716
6496	92	35	0.4841082161
6497	92	36	0.4310395694
6498	92	37	0.2307218560
6499	92	38	0.6126605677
6500	92	39	0.1667601215
6501	92	40	0.4704282968
6502	92	41	0.3251799298
6503	92	42	0.3155788258
6504	92	43	0.0851547355
6505	92	44	0.0389413489
6506	92	45	0.9597121510
6507	92	46	0.0201089159
6508	92	47	0.4609270035
6509	92	48	0.7854032889
6510	92	49	0.1252385769
6511	92	50	0.7617345573
6512	92	51	0.4559750194
6513	92	52	0.7839265931
6514	92	53	0.6225698995
6515	92	54	0.1859393492
6516	92	55	0.2725512208
6517	92	56	0.3269899357
6518	92	57	0.4639693978
6519	92	58	0.6838315544
6520	92	59	0.6543760430
6521	92	60	0.2457633587
6522	92	61	0.5921016522
6523	92	62	0.8861609502
6524	92	63	0.7494044872
6525	92	64	0.3515532836
6526	92	65	0.1098446217
6527	92	66	0.2335127033
6528	92	67	0.7825928531
6529	92	68	0.3405664782
6530	92	69	0.8461732711
6531	92	70	0.9493529745
6532	92	71	0.8109947750
6533	93	1	0.1713532009
6534	93	2	0.2649318003
6535	93	3	0.8961495105
6536	93	4	0.2102945503
6537	93	5	0.2246439513
6538	93	6	0.9162584264
6539	93	7	0.6712215538
6540	93	8	0.0100472406
6541	93	9	0.0414970038
6542	93	10	0.4329561112
6543	93	11	0.4660222600
6544	93	12	0.8254235969
6545	93	13	0.0555260112
6546	93	14	0.6519616093
6547	93	15	0.0979748182
6548	93	16	0.3825159469
6549	93	17	0.1159310075
6550	93	18	0.7818063726
6551	93	19	0.0368919899
6552	93	20	0.3616943662
6553	93	21	0.3739080252
6554	93	22	0.9230529401
6555	93	23	0.1110988534
6556	93	24	0.7254613088
6557	93	25	0.0328975623
6558	93	26	0.3446115567
6559	93	27	0.5080541619
6560	93	28	0.3734640405
6561	93	29	0.1907848283
6562	93	30	0.4574071369
6563	93	31	0.1844588155
6564	93	32	0.3621380292
6565	93	33	0.7223389372
6566	93	34	0.0806083265
6567	93	35	0.5724325795
6568	93	36	0.9469828890
6569	93	37	0.9968667529
6570	93	38	0.2436541338
6571	93	39	0.9570301296
6572	93	40	0.0383637566
6573	93	41	0.6766102449
6574	93	42	0.4230523896
6575	93	43	0.8637873540
6576	93	44	0.7321362561
6577	93	45	0.0750139989
6578	93	46	0.9617621722
6579	93	47	0.1146522029
6580	93	48	0.1909450064
6581	93	49	0.7435685447
6582	93	50	0.1515441928
6583	93	51	0.5526393726
6584	93	52	0.1174765700
6585	93	53	0.0745971333
6586	93	54	0.6637382261
6587	93	55	0.8429378788
6588	93	56	0.1074946956
6589	93	57	0.0083497833
6590	93	58	0.3509920412
6591	93	59	0.4809587360
6592	93	60	0.1991346115
6593	93	61	0.8083991781
6594	93	62	0.6654175515
6595	93	63	0.5612726407
6596	93	64	0.5307381153
6597	93	65	0.7460258780
6598	93	66	0.1337052207
6599	93	67	0.4777210043
6600	93	68	0.7428926313
6601	93	69	0.3773593544
6602	93	70	0.4347511339
6603	93	71	0.7812563879
6604	94	1	0.0539695993
6605	94	2	0.8578035235
6606	94	3	0.6450437419
6607	94	4	0.7861058558
6608	94	5	0.9328175229
6609	94	6	0.6068059141
6610	94	7	0.9007580588
6611	94	8	0.1237625293
6612	94	9	0.3503744593
6613	94	10	0.0523022520
6614	94	11	0.6764019025
6615	94	12	0.4678510292
6616	94	13	0.1268993854
6617	94	14	0.3401401285
6618	94	15	0.3107889085
6619	94	16	0.2343940809
6620	94	17	0.3484899118
6621	94	18	0.6617809497
6622	94	19	0.7153528170
6623	94	20	0.5476245233
6624	94	21	0.4701801278
6625	94	22	0.3807703685
6626	94	23	0.1088971645
6627	94	24	0.0009182431
6628	94	25	0.1267962470
6629	94	26	0.2426023851
6630	94	27	0.4786392478
6631	94	28	0.8696888783
6632	94	29	0.6199617395
6633	94	30	0.9133903817
6634	94	31	0.6509452662
6635	94	32	0.6739313388
6636	94	33	0.7711939057
6637	94	34	0.2959890086
6638	94	35	0.4600371947
6639	94	36	0.7040114286
6640	94	37	0.9027949227
6641	94	38	0.3607952539
6642	94	39	0.8277739580
6643	94	40	0.2531693820
6644	94	41	0.4130975059
6645	94	42	0.5041758604
6646	94	43	0.7210204117
6647	94	44	0.5399968913
6648	94	45	0.8443159894
6649	94	46	0.0318093202
6650	94	47	0.7743909722
6651	94	48	0.1928059012
6652	94	49	0.6935902699
6653	94	50	0.4897437892
6654	94	51	0.7404304249
6655	94	52	0.1637703977
6656	94	53	0.8705141577
6657	94	54	0.8493275894
6658	94	55	0.1646886407
6659	94	56	0.9973104047
6660	94	57	0.0919299745
6661	94	58	0.6433278886
6662	94	59	0.8669992830
6663	94	60	0.7118917140
6664	94	61	0.5567182708
6665	94	62	0.5179445497
6666	94	63	0.3858230528
6667	94	64	0.3279121765
6668	94	65	0.8139335583
6669	94	66	0.8458602480
6670	94	67	0.0319236051
6671	94	68	0.7167284810
6672	94	69	0.2066555019
6673	94	70	0.8596975631
6674	94	71	0.9698978635
6675	95	1	0.6197530078
6676	95	2	0.3638734240
6677	95	3	0.6909182752
6678	95	4	0.1597498991
6679	95	5	0.2081894134
6680	95	6	0.7227275954
6681	95	7	0.9341408713
6682	95	8	0.4009953146
6683	95	9	0.4163178653
6684	95	10	0.4238846605
6685	95	11	0.1414257395
6686	95	12	0.5800882629
6687	95	13	0.2943988182
6688	95	14	0.9907533289
6689	95	15	0.7447769037
6690	95	16	0.2917092233
6691	95	17	0.0826833034
6692	95	18	0.3881047927
6693	95	19	0.1587085063
6694	95	20	0.7945750174
6695	95	21	0.9448230634
6696	95	22	0.6766530559
6697	95	23	0.1803980707
6698	95	24	0.2727352399
6699	95	25	0.4905866142
6700	95	26	0.0262583187
6701	95	27	0.3046588451
6702	95	28	0.2073150957
6703	95	29	0.2329138205
6704	95	30	0.1643564082
6705	95	31	0.1772129592
6706	95	32	0.8526668283
6707	95	33	0.5282298322
6708	95	34	0.8681312343
6709	95	35	0.0124167274
6710	95	36	0.7364192456
6711	95	37	0.5908588297
6712	95	38	0.9465575987
6713	95	39	0.1374145607
6714	95	40	0.0071766949
6715	95	41	0.3704422591
6716	95	42	0.2788403002
6717	95	43	0.5872649578
6718	95	44	0.6648410773
6719	95	45	0.2695936295
6720	95	46	0.3320418615
6721	95	47	0.9565503006
6722	95	48	0.3522769329
6723	95	49	0.7201466542
6724	95	50	0.1152588073
6725	95	51	0.1468519508
6726	95	52	0.6649697176
6727	95	53	0.7919118633
6728	95	54	0.3272500215
6729	95	55	0.9377049576
6730	95	56	0.2824984780
6731	95	57	0.3535083402
6732	95	58	0.2423638026
6733	95	59	0.4898135737
6734	95	60	0.5864221607
6735	95	61	0.4067202113
6736	95	62	0.6670265328
6737	95	63	0.4390889890
6738	95	64	0.9349500434
6739	95	65	0.5351577671
6740	95	66	0.4515057164
6741	95	67	0.6713692895
6742	95	68	0.1260165968
6743	95	69	0.3980633151
6744	95	70	0.8087838502
6745	95	71	0.1331932917
6746	96	1	0.7685055742
6747	96	2	0.0876241503
6748	96	3	0.7204582496
6749	96	4	0.4333466515
6750	96	5	0.3572177798
6751	96	6	0.0525001111
6752	96	7	0.3898969525
6753	96	8	0.7094947132
6754	96	9	0.7726467657
6755	96	10	0.5051557599
6756	96	11	0.8563466640
6757	96	12	0.4376164833
6758	96	13	0.2970676231
6759	96	14	0.1835966855
6760	96	15	0.3753214413
6761	96	16	0.5795661011
6762	96	17	0.5371050257
6763	96	18	0.6176852440
6764	96	19	0.0693796747
6765	96	20	0.1235271865
6766	96	21	0.0244054552
6767	96	22	0.7364062076
6768	96	23	0.5626161755
6769	96	24	0.9593554991
6770	96	25	0.2715639747
6771	96	26	0.0141218919
6772	96	27	0.6307247886
6773	96	28	0.3975805715
6774	96	29	0.4121852070
6775	96	30	0.4395086388
6776	96	31	0.5307738632
6777	96	32	0.1806907812
6778	96	33	0.5271327891
6779	96	34	0.2512321128
6780	96	35	0.6140374327
6781	96	36	0.8843505695
6782	96	37	0.3037322243
6783	96	38	0.0039343853
6784	96	39	0.5938452827
6785	96	40	0.0763789900
6786	96	41	0.5090901451
6787	96	42	0.4501919467
6788	96	43	0.5139954733
6789	96	44	0.8061577687
6790	96	45	0.6337886322
6791	96	46	0.8893169146
6792	96	47	0.3857238698
6793	96	48	0.1708936580
6794	96	49	0.5070021590
6795	96	50	0.4551035450
6796	96	51	0.2944208444
6797	96	52	0.5314076142
6798	96	53	0.1915097525
6799	96	54	0.8570370199
6800	96	55	0.4907631134
6801	96	56	0.4630737277
6802	96	57	0.8711589118
6803	96	58	0.1214879020
6804	96	59	0.8606542991
6805	96	60	0.2833441189
6806	96	61	0.5609965408
6807	96	62	0.3914281628
6808	96	63	0.4640349001
6809	96	64	0.0881293304
6810	96	65	0.6426602756
6811	96	66	0.0780723328
6812	96	67	0.9724798999
6813	96	68	0.9463924998
6814	96	69	0.0820067185
6815	96	70	0.5663251826
6816	96	71	0.0227714898
6817	97	1	0.5910968636
6818	97	2	0.0165171293
6819	97	3	0.5367669635
6820	97	4	0.3972546323
6821	97	5	0.6503057615
6822	97	6	0.4260838781
6823	97	7	0.7829785026
6824	97	8	0.8211994194
6825	97	9	0.9330860372
6826	97	10	0.2380820476
6827	97	11	0.1156202639
6828	97	12	0.4644936519
6829	97	13	0.4295918001
6830	97	14	0.9726572838
6831	97	15	0.9552567652
6832	97	16	0.8926655278
6833	97	17	0.8438161956
6834	97	18	0.0767446677
6835	97	19	0.7533198274
6836	97	20	0.1271603145
6837	97	21	0.6377412085
6838	97	22	0.1447479902
6839	97	23	0.5911952145
6840	97	24	0.7258705390
6841	97	25	0.7874082658
6842	97	26	0.6692675473
6843	97	27	0.6983504388
6844	97	28	0.7338007661
6845	97	29	0.7512742658
6846	97	30	0.2646756214
6847	97	31	0.7565722559
6848	97	32	0.3423711299
6849	97	33	0.2811927507
6850	97	34	0.2933392194
6851	97	35	0.7396257622
6852	97	36	0.9314985122
6853	97	37	0.7194230980
6854	97	38	0.5226042648
6855	97	39	0.7526979316
6856	97	40	0.6525091352
6857	97	41	0.7606863123
6858	97	42	0.8683181955
6859	97	43	0.1170027871
6860	97	44	0.1902781129
6861	97	45	0.8409754792
6862	97	46	0.0722595528
6863	97	47	0.0829436406
6864	97	48	0.6847916748
6865	97	49	0.1490042205
6866	97	50	0.8362634680
6867	97	51	0.8119519893
6868	97	52	0.7867454290
6869	97	53	0.9810114582
6870	97	54	0.4031472038
6871	97	55	0.5126159685
6872	97	56	0.7684197244
6873	97	57	0.0724147516
6874	97	58	0.2109664073
6875	97	59	0.5022204905
6876	97	60	0.8236890174
6877	97	61	0.4756420292
6878	97	62	0.2587927463
6879	97	63	0.1660601473
6880	97	64	0.7568347799
6881	97	65	0.5521319662
6882	97	66	0.9056859100
6883	97	67	0.6883332925
6884	97	68	0.2715550642
6885	97	69	0.4282901748
6886	97	70	0.4410312241
6887	97	71	0.9240641994
6888	98	1	0.1889764876
6889	98	2	0.3093494200
6890	98	3	0.0410669870
6891	98	4	0.3792546005
6892	98	5	0.1503248992
6893	98	6	0.1133265398
6894	98	7	0.4621982411
6895	98	8	0.8351165745
6896	98	9	0.2623307602
6897	98	10	0.2984617096
6898	98	11	0.6470685638
6899	98	12	0.0490761893
6900	98	13	0.2794731678
6901	98	14	0.0502157682
6902	98	15	0.5616921578
6903	98	16	0.0478928923
6904	98	17	0.1226305198
6905	98	18	0.7726585655
6906	98	19	0.5501133827
6907	98	20	0.9463195372
6908	98	21	0.2483005947
6909	98	22	0.8089061296
6910	98	23	0.1123796850
6911	98	24	0.0051353746
6912	98	25	0.3610380958
6913	98	26	0.0180655951
6914	98	27	0.6934686671
6915	98	28	0.6325931600
6916	98	29	0.4463557699
6917	98	30	0.1344998917
6918	98	31	0.5566573595
6919	98	32	0.6353322575
6920	98	33	0.4438493117
6921	98	34	0.5977243464
6922	98	35	0.0145868580
6923	98	36	0.5941742109
6924	98	37	0.7110508862
6925	98	38	0.4767850996
6926	98	39	0.4292907855
6927	98	40	0.9733816464
6928	98	41	0.7752468092
6929	98	42	0.0763593498
6930	98	43	0.0224578362
6931	98	44	0.0547199771
6932	98	45	0.1265751179
6933	98	46	0.5841499940
6934	98	47	0.1026128698
6935	98	48	0.2492056377
6936	98	49	0.3568085595
6937	98	50	0.6527262526
6938	98	51	0.1955251750
6939	98	52	0.6051091542
6940	98	53	0.4616323821
6941	98	54	0.3079048600
6942	98	55	0.6102445293
6943	98	56	0.8226704779
6944	98	57	0.3259704551
6945	98	58	0.3037131964
6946	98	59	0.4552636379
6947	98	60	0.7723262254
6948	98	61	0.4382130881
6949	98	62	0.0119209979
6950	98	63	0.4076584829
6951	98	64	0.8820623998
6952	98	65	0.6096453443
6953	98	66	0.4222453414
6954	98	67	0.4762366111
6955	98	68	0.3206962310
6956	98	69	0.8990304410
6957	98	70	0.9055273966
6958	98	71	0.2940778774
6959	99	1	0.6742772502
6960	99	2	0.9818867464
6961	99	3	0.3165357136
6962	99	4	0.7289972273
6963	99	5	0.1084618643
6964	99	6	0.9006857080
6965	99	7	0.8316100971
6966	99	8	0.3576675020
6967	99	9	0.2574942675
6968	99	10	0.4843363501
6969	99	11	0.5531926774
6970	99	12	0.8626034223
6971	99	13	0.9459687322
6972	99	14	0.8610975374
6973	99	15	0.4728479516
6974	99	16	0.7686392106
6975	99	17	0.1870679930
6976	99	18	0.7765611480
6977	99	19	0.2239028485
6978	99	20	0.9593942184
6979	99	21	0.2147742365
6980	99	22	0.2358238464
6981	99	23	0.3670527013
6982	99	24	0.0968366363
6983	99	25	0.8454691912
6984	99	26	0.7892980427
6985	99	27	0.5730732474
6986	99	28	0.1661654222
6987	99	29	0.6883284836
6988	99	30	0.4786006445
6989	99	31	0.4602432996
6990	99	32	0.3626057338
6991	99	33	0.4604873909
6992	99	34	0.7767790137
6993	99	35	0.0916029615
6994	99	36	0.5689492556
6995	99	37	0.6774647217
6996	99	38	0.9232130586
6997	99	39	0.9266167576
6998	99	40	0.9349589893
6999	99	41	0.4075494087
7000	99	42	0.4798094351
7001	99	43	0.7975624115
7002	99	44	0.3535181414
7003	99	45	0.3409069730
7004	99	46	0.2704103631
7005	99	47	0.1221573520
7006	99	48	0.5279749660
7007	99	49	0.0469715116
7008	99	50	0.3460602006
7009	99	51	0.4873691844
7010	99	52	0.2617457481
7011	99	53	0.5818840475
7012	99	54	0.8544218857
7013	99	55	0.3585823844
7014	99	56	0.4273532387
7015	99	57	0.6437199288
7016	99	58	0.9316556323
7017	99	59	0.5935186609
7018	99	60	0.3320484124
7019	99	61	0.4102562768
7020	99	62	0.0537619605
7021	99	63	0.6946541467
7022	99	64	0.8707436677
7023	99	65	0.8305409742
7024	99	66	0.7862571082
7025	99	67	0.4396929233
7026	99	68	0.5080056959
7027	99	69	0.7094701668
7028	99	70	0.3663096814
7029	99	71	0.4429646856
7030	100	1	0.1170195760
7031	100	2	0.8461191165
7032	100	3	0.2405270971
7033	100	4	0.4705377175
7034	100	5	0.1870260895
7035	100	6	0.5109374607
7036	100	7	0.5926950695
7037	100	8	0.7150010555
7038	100	9	0.5579089723
7039	100	10	0.9387552701
7040	100	11	0.2023702399
7041	100	12	0.8196547204
7042	100	13	0.5206393176
7043	100	14	0.0567921260
7044	100	15	0.1782371048
7045	100	16	0.9479925563
7046	100	17	0.7005120548
7047	100	18	0.1098927371
7048	100	19	0.5415112171
7049	100	20	0.0325604673
7050	100	21	0.5201490140
7051	100	22	0.5952731781
7052	100	23	0.7272146139
7053	100	24	0.3908926821
7054	100	25	0.4258141522
7055	100	26	0.5134717221
7056	100	27	0.8305856055
7057	100	28	0.9338198486
7058	100	29	0.2229418894
7059	100	30	0.1968952869
7060	100	31	0.3767845342
7061	100	32	0.3399614654
7062	100	33	0.0430144039
7063	100	34	0.6173116313
7064	100	35	0.8104991829
7065	100	36	0.2300404934
7066	100	37	0.1282490920
7067	100	38	0.4031942524
7068	100	39	0.9450415494
7069	100	40	0.6861580643
7070	100	41	0.3419495225
7071	100	42	0.1474117893
7072	100	43	0.5058127847
7073	100	44	0.8625888405
7074	100	45	0.2042039153
7075	100	46	0.6840498899
7076	100	47	0.8105813968
7077	100	48	0.9047159702
7078	100	49	0.7939426270
7079	100	50	0.3520926144
7080	100	51	0.9372764379
7081	100	52	0.3140916415
7082	100	53	0.9473657925
7083	100	54	0.6644910518
7084	100	55	0.7049843236
7085	100	56	0.3731799447
7086	100	57	0.1779627744
7087	100	58	0.5355699291
7088	100	59	0.3069997933
7089	100	60	0.4009046638
7090	100	61	0.7324652164
7091	100	62	0.6837843275
7092	100	63	0.7408661293
7093	100	64	0.7754796203
7094	100	65	0.3010959593
7095	100	66	0.5513653122
7096	100	67	0.0055201137
7097	100	68	0.4293450513
7098	100	69	0.9545595646
7099	100	70	0.9505616631
7100	100	71	0.1155031160
7101	101	1	0.2965090871
7102	101	2	0.0979734529
7103	101	3	0.6213159007
7104	101	4	0.1590979276
7105	101	5	0.3021773682
7106	101	6	0.3053657906
7107	101	7	0.9696793249
7108	101	8	0.2068933388
7109	101	9	0.0993084181
7110	101	10	0.3217719393
7111	101	11	0.1441697767
7112	101	12	0.4134000596
7113	101	13	0.2691377318
7114	101	14	0.8086608285
7115	101	15	0.1183843832
7116	101	16	0.6423176765
7117	101	17	0.9866236029
7118	101	18	0.6539543122
7119	101	19	0.9493174702
7120	101	20	0.3875282668
7121	101	21	0.3864195286
7122	101	22	0.6331017977
7123	101	23	0.1283943960
7124	101	24	0.1618991490
7125	101	25	0.9341977569
7126	101	26	0.6797597082
7127	101	27	0.1674192632
7128	101	28	0.3635428087
7129	101	29	0.6343192728
7130	101	30	0.1179809263
7131	101	31	0.4790459247
7132	101	32	0.9308283604
7133	101	33	0.2159543792
7134	101	34	0.1003618254
7135	101	35	0.0899262880
7136	101	36	0.5181317478
7137	101	37	0.4057276165
7138	101	38	0.0596056129
7139	101	39	0.7250250867
7140	101	40	0.5050360346
7141	101	41	0.3813775522
7142	101	42	0.8691948634
7143	101	43	0.9184360942
7144	101	44	0.6505152839
7145	101	45	0.6778556919
7146	101	46	0.0368204773
7147	101	47	0.2928329608
7148	101	48	0.6644792953
7149	101	49	0.6907747895
7150	101	50	0.2421504310
7151	101	51	0.0520075620
7152	101	52	0.0771943186
7153	101	53	0.8752522287
7154	101	54	0.1804019585
7155	101	55	0.2390934676
7156	101	56	0.8094499861
7157	101	57	0.8601616668
7158	101	58	0.4065127308
7159	101	59	0.1729927948
7160	101	60	0.4944809400
7161	101	61	0.5244936575
7162	101	62	0.6520387195
7163	101	63	0.4253093004
7164	101	64	0.7404480367
7165	101	65	0.7524005449
7166	101	66	0.5152355884
7167	101	67	0.2585797845
7168	101	68	0.1581281614
7169	101	69	0.5748412018
7170	101	70	0.9836048712
7171	101	71	0.6631641961
7204	102	33	0.7838443210
7243	103	1	0.8663127506
7244	103	2	0.5233641076
7245	103	3	0.6740594078
7246	103	4	0.7850925722
7247	103	5	0.3157629445
7248	103	6	0.4202933065
7249	103	7	0.5302920393
7250	103	8	0.3958676914
7251	103	9	0.1985232807
7252	103	10	0.2749039466
7253	103	11	0.2581592882
7254	103	12	0.5332429870
7255	103	13	0.6709670131
7256	103	14	0.3279470354
7257	103	15	0.1649004631
7258	103	16	0.4708817843
7259	103	17	0.1204665215
7260	103	18	0.3520754934
7261	103	19	0.8327764217
7262	103	20	0.2105589486
7263	103	21	0.0783729497
7264	103	22	0.4198151221
7265	103	23	0.5544430707
7266	103	24	0.1965925661
7267	103	25	0.8135981755
7268	103	26	0.7588529261
7269	103	27	0.2373897703
7270	103	28	0.6325463499
7271	103	29	0.7233555140
7272	103	30	0.3958992837
7273	103	31	0.1858552028
7274	103	32	0.5896682646
7275	103	33	0.9192633913
7276	103	34	0.8599146106
7277	103	35	0.3747608373
7278	103	36	0.2350263358
7279	103	37	0.2802079171
7280	103	38	0.9050528766
7281	103	39	0.6308940272
7282	103	40	0.4787311978
7283	103	41	0.1799568231
7284	103	42	0.8890533154
7285	103	43	0.0119741852
7286	103	44	0.8509238362
7287	103	45	0.2170003508
7288	103	46	0.1768746483
7289	103	47	0.3218056206
7290	103	48	0.3374668728
7291	103	49	0.5289501422
7292	103	50	0.1545820427
7293	103	51	0.5480258213
7294	103	52	0.6073230919
7295	103	53	0.5743971649
7296	103	54	0.1024688925
7297	103	55	0.8039156580
7298	103	56	0.3879953404
7299	103	57	0.8613218185
7300	103	58	0.0413054284
7301	103	59	0.0205416903
7302	103	60	0.5846773330
7303	103	61	0.4372047125
7304	103	62	0.2063968931
7305	103	63	0.1743455976
7306	103	64	0.3564681038
7307	103	65	0.0663115038
7308	103	66	0.5491064349
7309	103	67	0.5914944401
7310	103	68	0.3465194209
7311	103	69	0.4541593120
7312	103	70	0.2223884673
7313	103	71	0.8252506191
7314	104	1	0.6341161351
7315	104	2	0.1114417831
7316	104	3	0.8372248043
7317	104	4	0.4850399718
7318	104	5	0.3284421340
7319	104	6	0.0140994526
7320	104	7	0.8068455923
7321	104	8	0.6659090067
7322	104	9	0.5430495949
7323	104	10	0.9614276350
7324	104	11	0.2139348285
7325	104	12	0.1503726868
7326	104	13	0.5358247999
7327	104	14	0.3164037210
7328	104	15	0.9542883453
7329	104	16	0.9238201403
7330	104	17	0.1777255395
7331	104	18	0.9955937737
7332	104	19	0.9443618306
7333	104	20	0.7624028726
7334	104	21	0.4327984862
7335	104	22	0.1507587237
7336	104	23	0.9367484706
7337	104	24	0.7892665905
7338	104	25	0.2170702275
7339	104	26	0.4858549056
7340	104	27	0.3807610306
7341	104	28	0.5635896488
7342	104	29	0.9400142175
7343	104	30	0.6031494979
7344	104	31	0.3888402679
7345	104	32	0.5741303531
7346	104	33	0.7145912810
7347	104	34	0.2260650722
7348	104	35	0.0591703248
7349	104	36	0.0430334155
7350	104	37	0.2401645249
7351	104	38	0.8660159172
7352	104	39	0.7089424222
7353	104	40	0.7832141202
7354	104	41	0.8274435527
7355	104	42	0.9228772507
7356	104	43	0.9335868070
7357	104	44	0.3632683526
7358	104	45	0.2392809717
7359	104	46	0.8878751523
7360	104	47	0.2870884934
7361	104	48	0.4170065117
7362	104	49	0.8834689264
7363	104	50	0.2314503239
7364	104	51	0.1794093843
7365	104	52	0.3162674126
7366	104	53	0.3822090481
7367	104	54	0.1161578549
7368	104	55	0.1055340031
7369	104	56	0.5992792756
7370	104	57	0.6020127609
7371	104	58	0.4862950337
7372	104	59	0.1628689244
7373	104	60	0.5420269785
7374	104	61	0.0894445321
7375	104	62	0.5517091923
7376	104	63	0.1161573315
7377	104	64	0.8040358131
7378	104	65	0.7777742646
7379	104	66	0.1753276563
7380	104	67	0.8470692285
7381	104	68	0.0179387899
7382	104	69	0.0413435739
7383	104	70	0.5560116512
7384	104	71	0.8011529101
7385	105	1	0.8687871266
7386	105	2	0.4788889019
7387	105	3	0.7347397171
7388	105	4	0.2320554792
7389	105	5	0.7181698740
7390	105	6	0.6226148698
7391	105	7	0.5191439725
7392	105	8	0.1351763858
7393	105	9	0.5060837963
7394	105	10	0.7505942970
7395	105	11	0.3145857700
7396	105	12	0.8223512089
7397	105	13	0.1328033451
7398	105	14	0.4307436254
7399	105	15	0.9278852125
7400	105	16	0.7320826207
7401	105	17	0.0327563863
7402	105	18	0.4141802462
7403	105	19	0.8949515456
7404	105	20	0.5747833648
7405	105	21	0.5036247782
7406	105	22	0.4466607380
7407	105	23	0.6909406967
7408	105	24	0.3076605918
7409	105	25	0.2244350030
7410	105	26	0.8662683531
7411	105	27	0.1547298203
7412	105	28	0.2423737929
7413	105	29	0.9076119270
7414	105	30	0.7107414715
7415	105	31	0.0435267030
7416	105	32	0.7763990536
7417	105	33	0.1896303738
7418	105	34	0.7782664201
7419	105	35	0.0084545333
7420	105	36	0.9078002479
7421	105	37	0.4008812900
7422	105	38	0.5275985058
7423	105	39	0.0429766336
7424	105	40	0.9069650862
7425	105	41	0.2781928028
7426	105	42	0.3575624037
7427	105	43	0.7293162956
7428	105	44	0.4109961479
7429	105	45	0.7883060290
7430	105	46	0.6572015081
7431	105	47	0.1430787691
7432	105	48	0.8210624154
7433	105	49	0.0713817542
7434	105	50	0.0380303147
7435	105	51	0.3958457806
7436	105	52	0.5750065329
7437	105	53	0.4846910527
7438	105	54	0.0867864774
7439	105	55	0.8826671247
7440	105	56	0.7091260557
7441	105	57	0.9530548304
7442	105	58	0.0373969451
7443	105	59	0.9514998486
7444	105	60	0.8606667579
7445	105	61	0.7481384170
7446	105	62	0.9950265517
7447	105	63	0.6370658115
7448	105	64	0.9377687909
7449	105	65	0.7732929722
7450	105	66	0.6455203448
7451	105	67	0.8455690388
7452	105	68	0.1741742622
7453	105	69	0.1731188511
7454	105	70	0.8885456724
7455	105	71	0.0811393489
7456	106	1	0.4513116539
7457	106	2	0.2461080761
7458	106	3	0.8104556445
7459	106	4	0.8623078023
7460	106	5	0.0344141056
7461	106	6	0.4676571526
7462	106	7	0.0053865714
7463	106	8	0.8554765210
7464	106	9	0.5390389068
7465	106	10	0.0434168861
7466	106	11	0.2513223016
7467	106	12	0.1140454398
7468	106	13	0.5281079388
7469	106	14	0.3381087789
7470	106	15	0.9967125645
7471	106	16	0.2372339950
7472	106	17	0.2911636098
7473	106	18	0.0341095100
7474	106	19	0.1887338436
7475	106	20	0.1518303677
7476	106	21	0.7822479270
7477	106	22	0.1837603957
7478	106	23	0.7888961793
7479	106	24	0.7200167179
7480	106	25	0.9570533680
7481	106	26	0.4344165246
7482	106	27	0.5655857567
7483	106	28	0.1312276302
7484	106	29	0.6075353757
7485	106	30	0.4541314291
7486	106	31	0.2123669791
7487	106	32	0.0588470297
7488	106	33	0.7002395052
7489	106	34	0.0228226236
7490	106	35	0.9211548320
7491	106	36	0.7346536107
7492	106	37	0.4904797762
7493	106	38	0.9265414034
7494	106	39	0.5901301322
7495	106	40	0.0295186834
7496	106	41	0.9699582895
7497	106	42	0.8414524337
7498	106	43	0.1435641232
7499	106	44	0.4980662288
7500	106	45	0.1795612131
7501	106	46	0.1402766882
7502	106	47	0.7353002238
7503	106	48	0.4707248230
7504	106	49	0.1743861982
7505	106	50	0.9240340674
7506	106	51	0.6225551907
7507	106	52	0.9566341252
7508	106	53	0.1077944632
7509	106	54	0.4114513700
7510	106	55	0.6766508431
7511	106	56	0.0648478311
7512	106	57	0.8458678946
7513	106	58	0.2422365998
7514	106	59	0.1960754618
7515	106	60	0.4534032703
7516	106	61	0.6963680289
7517	106	62	0.4084424409
7518	106	63	0.5122503005
7519	106	64	0.3966075340
7520	106	65	0.4312650650
7521	106	66	0.4334051325
7522	106	67	0.1312611452
7523	106	68	0.9217448412
7524	106	69	0.3599465364
7525	106	70	0.7213912774
7526	106	71	0.9512635246
7527	107	1	0.3299048259
7528	107	2	0.5628437111
7529	107	3	0.0948276483
7530	107	4	0.8279710547
7531	107	5	0.7424049242
7532	107	6	0.2351043364
7533	107	7	0.5632712785
7534	107	8	0.2131297472
7535	107	9	0.4094905346
7536	107	10	0.4873053464
7537	107	11	0.8356849379
7538	107	12	0.3661246598
7539	107	13	0.5950998096
7540	107	14	0.2471363083
7541	107	15	0.0427755029
7542	107	16	0.6599476412
7543	107	17	0.0930042029
7544	107	18	0.2850121027
7545	107	19	0.8560231030
7546	107	20	0.5464074737
7547	107	21	0.9813801316
7548	107	22	0.2644655439
7549	107	23	0.0586577742
7550	107	24	0.3779876656
7551	107	25	0.6957306089
7552	107	26	0.4920629067
7553	107	27	0.5092488108
7554	107	28	0.6174754505
7555	107	29	0.8520094431
7556	107	30	0.2306400882
7557	107	31	0.5687389751
7558	107	32	0.1819142695
7559	107	33	0.7934837998
7560	107	34	0.6635666233
7561	107	35	0.0098853242
7562	107	36	0.5358887240
7563	107	37	0.8986709598
7564	107	38	0.5731566031
7565	107	39	0.7490184717
7566	107	40	0.3081614943
7567	107	41	0.0604619496
7568	107	42	0.5847034096
7569	107	43	0.6742861541
7570	107	44	0.6555617591
7571	107	45	0.8318397179
7572	107	46	0.7170616570
7573	107	47	0.3155094003
7574	107	48	0.9248439213
7575	107	49	0.0020737597
7576	107	50	0.1715325033
7577	107	51	0.4712513951
7578	107	52	0.9834538912
7579	107	53	0.4359980477
7580	107	54	0.5299091693
7581	107	55	0.3614415573
7582	107	56	0.1317286566
7583	107	57	0.0219720760
7584	107	58	0.8706903681
7585	107	59	0.7492041071
7586	107	60	0.8739815196
7587	107	61	0.1013304568
7588	107	62	0.3179430827
7589	107	63	0.0558957891
7590	107	64	0.8948142566
7591	107	65	0.9815097060
7592	107	66	0.0657811132
7593	107	67	0.4307029806
7594	107	68	0.8801806662
7595	107	69	0.6389377164
7596	107	70	0.1797214523
7597	107	71	0.1883421605
7598	108	1	0.6993996659
7599	108	2	0.7644248623
7600	108	3	0.8626283151
7601	108	4	0.3549614255
7602	108	5	0.5962645803
7603	108	6	0.5796899721
7604	108	7	0.6704708259
7605	108	8	0.5211085016
7606	108	9	0.5817637322
7607	108	10	0.8420033297
7608	108	11	0.9923598967
7609	108	12	0.5652176235
7610	108	13	0.2780013774
7611	108	14	0.5222690660
7612	108	15	0.9266591808
7613	108	16	0.4097300339
7614	108	17	0.5442411425
7615	108	18	0.7973495494
7616	108	19	0.1589341415
7617	108	20	0.4182226621
7618	108	21	0.8986800062
7619	108	22	0.4768772242
7620	108	23	0.4741184511
7621	108	24	0.7934942627
7622	108	25	0.4583869302
7623	108	26	0.5398995643
7624	108	27	0.2241972433
7625	108	28	0.3385675964
7626	108	29	0.1788372812
7627	108	30	0.4039186961
7628	108	31	0.5269097574
7629	108	32	0.8782369471
7630	108	33	0.1683435584
7631	108	34	0.3895380725
7632	108	35	0.2331983726
7633	108	36	0.7646081387
7634	108	37	0.9692280446
7635	108	38	0.9036691990
7636	108	39	0.2857166408
7637	108	40	0.5509917769
7638	108	41	0.7456725286
7639	108	42	0.2780765374
7640	108	43	0.1162094008
7641	108	44	0.0236739060
7642	108	45	0.8003456038
7643	108	46	0.0428685816
7644	108	47	0.4334039399
7645	108	48	0.3445867463
7646	108	49	0.8402181310
7647	108	50	0.5923380814
7648	108	51	0.7628094084
7649	108	52	0.7388981371
7650	108	53	0.0692153056
7651	108	54	0.2369278595
7652	108	55	0.5323923999
7653	108	56	0.5276022363
7654	108	57	0.7768274238
7655	108	58	0.7565896437
7656	108	59	0.8661698326
7657	108	60	0.9556647050
7658	108	61	0.1605083398
7659	108	62	0.3930795901
7660	108	63	0.8339016526
7661	108	64	0.3288518982
7662	108	65	0.7826176626
7663	108	66	0.0671000252
7664	108	67	0.0934600369
7665	108	68	0.7518457077
7666	108	69	0.9707692242
7667	108	70	0.3791766777
7668	108	71	0.3028374845
7669	109	1	0.7164417529
7670	109	2	0.6572532156
7671	109	3	0.4190468853
7672	109	4	0.7401156588
7673	109	5	0.4575988194
7674	109	6	0.4619154674
7675	109	7	0.1735195993
7676	109	8	0.8021855657
7677	109	9	0.3021335984
7678	109	10	0.7658576807
7679	109	11	0.5649949741
7680	109	12	0.0410317359
7681	109	13	0.8350729868
7682	109	14	0.8019228335
7683	109	15	0.5734241358
7684	109	16	0.3626752230
7685	109	17	0.5787502574
7686	109	18	0.3300137795
7687	109	19	0.2288450557
7688	109	20	0.5344149629
7689	109	21	0.4905221192
7690	109	22	0.6219246462
7691	109	23	0.3683166155
7692	109	24	0.8193740174
7693	109	25	0.4045423088
7694	109	26	0.4354166407
7695	109	27	0.9128340548
7696	109	28	0.1563880164
7697	109	29	0.4061858654
7698	109	30	0.2920107325
7699	109	31	0.4592255014
7700	109	32	0.1226276183
7701	109	33	0.9492639480
7702	109	34	0.8782723867
7703	109	35	0.8627432776
7704	109	36	0.4068627674
7705	109	37	0.3401878541
7706	109	38	0.0362628768
7707	109	39	0.2090483331
7708	109	40	0.6423214530
7709	109	41	0.8021205575
7710	109	42	0.7740433072
7711	109	43	0.6833531889
7712	109	44	0.6371935443
7713	109	45	0.5759661407
7714	109	46	0.2567773247
7715	109	47	0.9998687673
7716	109	48	0.1547163986
7717	109	49	0.5867911046
7718	109	50	0.2287138235
7719	109	51	0.6891313614
7720	109	52	0.0773132239
7721	109	53	0.8506384697
7722	109	54	0.0574479769
7723	109	55	0.8966872417
7724	109	56	0.2551807784
7725	109	57	0.4928646176
7726	109	58	0.8095212965
7727	109	59	0.4115687953
7728	109	60	0.8990504830
7729	109	61	0.1015320290
7730	109	62	0.8707942967
7731	109	63	0.0216781017
7732	109	64	0.0507959775
7733	109	65	0.7490666835
7734	109	66	0.8844213793
7735	109	67	0.4576587449
7736	109	68	0.0892545381
7737	109	69	0.9206842561
7738	109	70	0.6667070785
7739	109	71	0.7315759910
7740	110	1	0.7228048136
7741	110	2	0.4407503856
7742	110	3	0.4149291799
7743	110	4	0.3599983584
7744	110	5	0.0167165268
7745	110	6	0.6717065047
7746	110	7	0.3598671257
7747	110	8	0.1714329254
7748	110	9	0.2584976093
7749	110	10	0.5885809492
7750	110	11	0.8605642868
7751	110	12	0.3358108336
7752	110	13	0.4392194189
7753	110	14	0.9180122637
7754	110	15	0.2324980753
7755	110	16	0.6944001978
7756	110	17	0.4108768813
7757	110	18	0.0420193719
7758	110	19	0.1059689932
7759	110	20	0.3099273648
7760	110	21	0.1435514009
7761	110	22	0.9767632899
7762	110	23	0.3316054665
7763	110	24	0.1943473783
7764	110	25	0.7258299734
7765	110	26	0.2160268459
7766	110	27	0.6520061237
7767	110	28	0.8150845114
7768	110	29	0.1367111020
7769	110	30	0.3187132021
7770	110	31	0.5466605024
7771	110	32	0.8595159156
7772	110	33	0.7594635878
7773	110	34	0.9615896824
7774	110	35	0.2195142740
7775	110	36	0.7761801146
7776	110	37	0.6332961875
7777	110	38	0.5793814003
7778	110	39	0.9476130400
7779	110	40	0.8917937968
7780	110	41	0.1679623495
7781	110	42	0.8081773268
7782	110	43	0.2276046304
7783	110	44	0.6071817689
7784	110	45	0.7261895905
7785	110	46	0.4601027058
7786	110	47	0.3015819667
7787	110	48	0.1370664723
7788	110	49	0.5021220776
7789	110	50	0.4075509598
7790	110	51	0.4469938371
7791	110	52	0.6456734790
7792	110	53	0.3843142497
7793	110	54	0.7785993037
7794	110	55	0.8400208573
7795	110	56	0.1101442231
7796	110	57	0.9946261495
7797	110	58	0.4920269810
7798	110	59	0.9252287350
7799	110	60	0.1313372515
7800	110	61	0.8107401831
7801	110	62	0.4718892374
7802	110	63	0.9908531671
7803	110	64	0.5702037713
7804	110	65	0.4334789203
7805	110	66	0.2103674416
7806	110	67	0.3463838859
7807	110	68	0.0667751078
7808	110	69	0.7897488419
7809	110	70	0.2939969264
7810	110	71	0.9585689045
7811	111	1	0.9577111914
7812	111	2	0.1021742532
7813	111	3	0.1861735354
7814	111	4	0.5648929602
7815	111	5	0.8283638442
7816	111	6	0.6462762412
7817	111	7	0.8664749269
7818	111	8	0.9654303165
7819	111	9	0.1483983193
7820	111	10	0.2740258868
7821	111	11	0.4124241536
7822	111	12	0.7940717982
7823	111	13	0.6583401365
7824	111	14	0.1910234573
7825	111	15	0.6340926555
7826	111	16	0.7684843601
7827	111	17	0.1856496069
7828	111	18	0.1261196369
7829	111	19	0.6937130950
7830	111	20	0.3169868584
7831	111	21	0.9368598200
7832	111	22	0.1656023324
7833	111	23	0.3078400255
7834	111	24	0.5070635914
7835	111	25	0.5990812527
7836	111	26	0.5182074672
7837	111	27	0.8534474778
7838	111	28	0.6658563605
7839	111	29	0.3079563091
7840	111	30	0.1474444042
7841	111	31	0.6244252655
7842	111	32	0.2656675009
7843	111	33	0.2496186574
7844	111	34	0.8105988009
7845	111	35	0.8305604612
7846	111	36	0.0779825016
7847	111	37	0.4568750421
7848	111	38	0.6970353886
7849	111	39	0.0434128181
7850	111	40	0.6052733613
7851	111	41	0.9710612753
7852	111	42	0.4558369718
7853	111	43	0.3993451595
7854	111	44	0.6294014123
7855	111	45	0.6468604291
7856	111	46	0.0334378155
7857	111	47	0.3978857724
7858	111	48	0.8325100360
7859	111	49	0.1595574524
7860	111	50	0.0915988674
7861	111	51	0.1494968943
7862	111	52	0.0964172725
7863	111	53	0.2572011999
7864	111	54	0.4573369203
7865	111	55	0.6034808643
7866	111	56	0.8562824531
7867	111	57	0.9755443875
7868	111	58	0.4569283421
7869	111	59	0.5221388135
7870	111	60	0.2835006970
7871	111	61	0.6043727463
7872	111	62	0.1465640790
7873	111	63	0.5491681979
7874	111	64	0.8539914037
7875	111	65	0.9571628799
7876	111	66	0.3797286591
7877	111	67	0.9319739058
7878	111	68	0.4140379224
7879	111	69	0.0767640476
7880	111	70	0.9753867239
7881	111	71	0.0193112837
7882	112	1	0.0478253234
7883	112	2	0.4312236961
7884	112	3	0.4186564437
7885	112	4	0.6772267357
7886	112	5	0.0780841252
7887	112	6	0.4520942592
7888	112	7	0.0751125081
7889	112	8	0.9105941616
7890	112	9	0.6116517116
7891	112	10	0.1667113756
7892	112	11	0.0600910559
7893	112	12	0.7080689841
7894	112	13	0.4239125755
7895	112	14	0.5174279762
7896	112	15	0.3115498484
7897	112	16	0.2801950285
7898	112	17	0.4929723642
7899	112	18	0.7684781905
7900	112	19	0.8023338425
7901	112	20	0.7764730612
7902	112	21	0.3728509368
7903	112	22	0.9488979215
7904	112	23	0.3256412591
7905	112	24	0.2268423410
7906	112	25	0.9060608018
7907	112	26	0.7053699181
7908	112	27	0.1588162468
7909	112	28	0.3200987242
7910	112	29	0.7821339662
7911	112	30	0.1342029707
7912	112	31	0.3394100079
7913	112	32	0.8299592896
7914	112	33	0.5654266668
7915	112	34	0.7580664516
7916	112	35	0.5071860254
7917	112	36	0.6435107924
7918	112	37	0.2101607108
7919	112	38	0.5822985335
7920	112	39	0.5541049540
7921	112	40	0.8218124225
7922	112	41	0.7490099091
7923	112	42	0.6141960099
7924	112	43	0.5298814070
7925	112	44	0.1729224846
7926	112	45	0.1316239866
7927	112	46	0.8414312555
7928	112	47	0.4531175136
7929	112	48	0.6245963508
7930	112	49	0.6099094464
7931	112	50	0.2554513561
7932	112	51	0.4010694120
7933	112	52	0.9827603833
7934	112	53	0.2043492775
7935	112	54	0.7267106711
7936	112	55	0.2096027243
7937	112	56	0.1104100794
7938	112	57	0.4320805892
7939	112	58	0.3684189711
7940	112	59	0.4305088036
7941	112	60	0.2142145555
7942	112	61	0.5026219422
7943	112	62	0.7699188120
7944	112	63	0.0441738451
7945	112	64	0.0680486090
7946	112	65	0.5279852636
7947	112	66	0.5513598705
7948	112	67	0.7115594014
7949	112	68	0.7381459749
7950	112	69	0.1336584040
7951	112	70	0.2656643554
7952	112	71	0.5599583974
7953	113	1	0.8826683131
7954	113	2	0.8798603658
7955	113	3	0.0898398045
7956	113	4	0.0555907981
7957	113	5	0.0114843524
7958	113	6	0.9312710604
7959	113	7	0.5087083117
7960	113	8	0.6360807032
7961	113	9	0.5411805068
7962	113	10	0.7641596678
7963	113	11	0.0371501152
7964	113	12	0.5239408901
7965	113	13	0.9685089453
7966	113	14	0.7638607863
7967	113	15	0.7335436149
7968	113	16	0.0789190251
7969	113	17	0.1959413756
7970	113	18	0.1019625859
7971	113	19	0.5094278287
7972	113	20	0.4101559315
7973	113	21	0.6045845281
7974	113	22	0.2793466407
7975	113	23	0.4543297766
7976	113	24	0.6726331376
7977	113	25	0.8073319048
7978	113	26	0.0056896475
7979	113	27	0.3841925389
7980	113	28	0.5454778797
7981	113	29	0.1393480515
7982	113	30	0.6498568947
7983	113	31	0.1054362771
7984	113	32	0.0220163651
7985	113	33	0.5297172605
7986	113	34	0.1952760820
7987	113	35	0.0776071632
7988	113	36	0.5412016129
7989	113	37	0.1265471424
7990	113	38	0.5863154749
7991	113	39	0.1772823161
7992	113	40	0.6677276492
7993	113	41	0.3504751427
7994	113	42	0.2144324314
7995	113	43	0.1916685393
7996	113	44	0.3189840880
7997	113	45	0.9782932177
7998	113	46	0.9252121542
7999	113	47	0.3979031132
8000	113	48	0.1742345933
8001	113	49	0.0271747406
8002	113	50	0.9073309423
8003	113	51	0.5843905248
8004	113	52	0.6317592687
8005	113	53	0.1866775830
8006	113	54	0.0387203018
8007	113	55	0.3043924063
8008	113	56	0.9940094878
8009	113	57	0.0444099493
8010	113	58	0.6885849456
8011	113	59	0.5394873675
8012	113	60	0.1837580008
8013	113	61	0.3384418404
8014	113	62	0.6449236451
8015	113	63	0.2057743659
8016	113	64	0.8681591009
8017	113	65	0.8401997271
8018	113	66	0.2833815292
8019	113	67	0.4093607138
8020	113	68	0.9667468695
8021	113	69	0.8696970041
8022	113	70	0.5866430299
8023	113	71	0.6344745187
8024	114	1	0.2201721468
8025	114	2	0.8010754613
8026	114	3	0.8261430580
8027	114	4	0.5391562353
8028	114	5	0.7793686790
8029	114	6	0.7513552126
8030	114	7	0.9370593484
8031	114	8	0.9536032723
8032	114	9	0.7785299532
8033	114	10	0.8443902908
8034	114	11	0.5379937976
8035	114	12	0.4102892219
8036	114	13	0.0310678743
8037	114	14	0.5767140994
8038	114	15	0.7146816286
8039	114	16	0.0250773621
8040	114	17	0.6211240487
8041	114	18	0.4032665743
8042	114	19	0.5645647300
8043	114	20	0.8048820496
8044	114	21	0.7417084146
8045	114	22	0.2094883751
8046	114	23	0.0106564160
8047	114	24	0.6098675155
8048	114	25	0.0496881022
8049	114	26	0.2940379451
8050	114	27	0.0192282293
8051	114	28	0.0164349717
8052	114	29	0.1637349497
8053	114	30	0.6058712592
8054	114	31	0.6509094904
8055	114	32	0.3839070965
8056	114	33	0.4069467206
8057	114	34	0.4770525484
8058	114	35	0.9230633317
8059	114	36	0.1863153996
8060	114	37	0.2284077611
8061	114	38	0.8601226807
8062	114	39	0.1399186719
8063	114	40	0.0069377143
8064	114	41	0.7045129715
8065	114	42	0.6779124695
8066	114	43	0.4172269367
8067	114	44	0.7355808457
8068	114	45	0.2546265689
8069	114	46	0.1319085653
8070	114	47	0.7606582083
8071	114	48	0.8757506176
8072	114	49	0.5351751396
8073	114	50	0.3252229383
8074	114	51	0.6806326676
8075	114	52	0.2768835542
8076	114	53	0.5347113134
8077	114	54	0.6912890836
8078	114	55	0.8867510697
8079	114	56	0.5843994156
8080	114	57	0.9853270287
8081	114	58	0.9059792990
8082	114	59	0.6008343874
8083	114	60	0.1490619783
8084	114	61	0.5118505582
8085	114	62	0.2517438778
8086	114	63	0.5329690753
8087	114	64	0.9187972788
8088	114	65	0.7287964262
8089	114	66	0.4560324070
8090	114	67	0.1051126784
8091	114	68	0.9572041878
8092	114	69	0.3161550877
8093	114	70	0.2450313503
8094	114	71	0.9641419020
8095	115	1	0.0206680596
8096	115	2	0.9229438202
8097	115	3	0.3813688387
8098	115	4	0.7562489053
8099	115	5	0.1775703891
8100	115	6	0.5132774040
8101	115	7	0.5169071136
8102	115	8	0.0533210072
8103	115	9	0.0484525436
8104	115	10	0.8421300519
8105	115	11	0.7339536748
8106	115	12	0.3253360977
8107	115	13	0.3768413654
8108	115	14	0.4252427584
8109	115	15	0.2120871674
8110	115	16	0.9612407810
8111	115	17	0.4105697870
8112	115	18	0.1180664664
8113	115	19	0.5620751684
8114	115	20	0.5596317658
8115	115	21	0.6299170246
8116	115	22	0.8138190461
8117	115	23	0.0926008411
8118	115	24	0.5487143034
8119	115	25	0.5426154728
8120	115	26	0.5486332481
8121	115	27	0.6538269818
8122	115	28	0.4998196606
8123	115	29	0.8647883362
8124	115	30	0.8988583325
8125	115	31	0.4639615626
8126	115	32	0.8854563958
8127	115	33	0.8218021528
8128	115	34	0.8453304018
8129	115	35	0.6417053011
8130	115	36	0.9993725419
8131	115	37	0.3586078058
8132	115	38	0.1586124152
8133	115	39	0.0526935491
8134	115	40	0.4070603498
8135	115	41	0.0007424671
8136	115	42	0.7866472239
8137	115	43	0.7323964476
8138	115	44	0.3775838329
8139	115	45	0.2118899822
8140	115	46	0.9444836155
8141	115	47	0.3388246140
8142	115	48	0.6224597697
8143	115	49	0.0625500819
8144	115	50	0.9008997828
8145	115	51	0.1820915355
8146	115	52	0.6924671070
8147	115	53	0.7147188289
8148	115	54	0.2746923766
8149	115	55	0.2411814104
8150	115	56	0.2573343017
8151	115	57	0.8233256247
8152	115	58	0.8950083926
8153	115	59	0.7571539623
8154	115	60	0.6881139609
8155	115	61	0.7938667252
8156	115	62	0.2211155253
8157	115	63	0.5735703567
8158	115	64	0.6156688780
8159	115	65	0.0664459271
8160	115	66	0.2152756583
8161	115	67	0.6150414199
8162	115	68	0.4250537329
8163	115	69	0.3738880735
8164	115	70	0.6677349694
8165	115	71	0.8321140828
8166	116	1	0.3746305406
8167	116	2	0.4543821933
8168	116	3	0.5645105308
8169	116	4	0.7522143736
8170	116	5	0.6662721760
8171	116	6	0.5089941463
8172	116	7	0.0910389880
8173	116	8	0.2887319457
8174	116	9	0.5715442281
8175	116	10	0.9919387707
8176	116	11	0.4708234812
8177	116	12	0.2640113351
8178	116	13	0.7066575997
8179	116	14	0.7455158578
8180	116	15	0.5051927459
8181	116	16	0.9639919018
8182	116	17	0.5688414825
8183	116	18	0.4002011386
8184	116	19	0.7211458641
8185	116	20	0.2569554439
8186	116	21	0.1940678637
8187	116	22	0.9422613895
8188	116	23	0.8305258006
8189	116	24	0.8097367417
8190	116	25	0.0087073166
8191	116	26	0.0458014589
8192	116	27	0.4247781616
8193	116	28	0.4337610500
8194	116	29	0.4196895324
8195	116	30	0.0925131310
8196	116	31	0.2658751328
8197	116	32	0.7943200734
8198	116	33	0.5468953247
8199	116	34	0.8303856635
8200	116	35	0.5465344470
8201	116	36	0.2131675007
8202	116	37	0.3393798098
8203	116	38	0.6375734350
8204	116	39	0.5018994464
8205	116	40	0.9109240384
8206	116	41	0.6295122057
8207	116	42	0.9727229276
8208	116	43	0.1749353735
8209	116	44	0.3361698058
8210	116	45	0.7182387854
8211	116	46	0.6801281194
8212	116	47	0.3001617077
8213	116	48	0.2870802679
8214	116	49	0.0803292580
8215	116	50	0.0213075718
8216	116	51	0.5440357118
8217	116	52	0.2743971217
8218	116	53	0.9635689617
8219	116	54	0.3745615128
8220	116	55	0.0841338634
8221	116	56	0.9722762783
8222	116	57	0.4203629717
8223	116	58	0.5089120255
8224	116	59	0.4060373283
8225	116	60	0.8400525046
8226	116	61	0.6014251565
8227	116	62	0.6719124615
8228	116	63	0.6343725780
8229	116	64	0.1483204812
8230	116	65	0.5022981251
8231	116	66	0.1809070250
8232	116	67	0.3614879819
8233	116	68	0.8416779353
8234	116	69	0.8184804604
8235	116	70	0.8633874282
8236	116	71	0.7526019737
8237	117	1	0.4479926662
8238	117	2	0.8361103558
8239	117	3	0.9275373472
8240	117	4	0.7841624720
8241	117	5	0.5543491412
8242	117	6	0.6076654671
8243	117	7	0.0843241797
8244	117	8	0.8414294096
8245	117	9	0.6879947251
8246	117	10	0.1056317519
8247	117	11	0.3854651214
8248	117	12	0.9623918473
8249	117	13	0.0692007137
8250	117	14	0.7600266342
8251	117	15	0.0465257107
8252	117	16	0.0414769920
8253	117	17	0.1803896064
8254	117	18	0.5554377362
8255	117	19	0.4475143207
8256	117	20	0.0204421110
8257	117	21	0.1568628931
8258	117	22	0.1194267822
8259	117	23	0.6548146890
8260	117	24	0.3051833743
8261	117	25	0.6217249073
8262	117	26	0.8357217140
8263	117	27	0.6666713567
8264	117	28	0.4634028426
8265	117	29	0.6542021744
8266	117	30	0.5300587849
8267	117	31	0.2160048163
8268	117	32	0.1021948410
8269	117	33	0.3661691411
8270	117	34	0.1435421640
8271	117	35	0.8863573130
8272	117	36	0.9205182823
8273	117	37	0.7512076311
8274	117	38	0.9706814932
8275	117	39	0.7619476919
8276	117	40	0.4392023562
8277	117	41	0.0763132451
8278	117	42	0.1474128137
8279	117	43	0.4015942034
8280	117	44	0.1455139588
8281	117	45	0.9074394479
8282	117	46	0.4481199146
8283	117	47	0.1869909507
8284	117	48	0.0878290543
8285	117	49	0.0035576508
8286	117	50	0.6345052714
8287	117	51	0.1082711653
8288	117	52	0.1604205440
8289	117	53	0.7539320537
8290	117	54	0.7630858542
8291	117	55	0.4656039188
8292	117	56	0.3756569615
8293	117	57	0.5988075687
8294	117	58	0.1322752754
8295	117	59	0.8390598041
8296	117	60	0.2530097431
8297	117	61	0.6623340603
8298	117	62	0.0550646209
8299	117	63	0.3552045841
8300	117	64	0.0285032014
8301	117	65	0.1986067849
8302	117	66	0.2415618976
8303	117	67	0.9490214842
8304	117	68	0.9498144160
8305	117	69	0.2122433907
8306	117	70	0.7109691761
8307	117	71	0.3890167722
8308	118	1	0.2885566358
8309	118	2	0.8583819899
8310	118	3	0.7906109761
8311	118	4	0.4340705946
8312	118	5	0.7658214383
8313	118	6	0.2387308907
8314	118	7	0.6210615453
8315	118	8	0.8536504926
8316	118	9	0.2422885415
8317	118	10	0.2555668172
8318	118	11	0.9619216584
8319	118	12	0.4027090860
8320	118	13	0.0094988709
8321	118	14	0.7250075126
8322	118	15	0.8683130047
8323	118	16	0.3851558324
8324	118	17	0.3238150813
8325	118	18	0.0005882801
8326	118	19	0.2242156370
8327	118	20	0.5768248248
8328	118	21	0.6629223404
8329	118	22	0.2792802579
8330	118	23	0.9320294089
8331	118	24	0.6914255423
8332	118	25	0.4778870428
8333	118	26	0.1735913064
8334	118	27	0.6404470266
8335	118	28	0.4277014588
8336	118	29	0.3858346972
8337	118	30	0.3514162027
8338	118	31	0.8167182310
8339	118	32	0.6743913330
8340	118	33	0.2097981931
8341	118	34	0.6073292070
8342	118	35	0.1084619276
8343	118	36	0.9756196314
8344	118	37	0.8460600977
8345	118	38	0.7295234734
8346	118	39	0.8292701240
8347	118	40	0.0883486397
8348	118	41	0.9850902907
8349	118	42	0.7911917823
8350	118	43	0.4910577256
8351	118	44	0.9945891616
8352	118	45	0.5161992954
8353	118	46	0.3593707304
8354	118	47	0.3797449945
8355	118	48	0.8400143767
8356	118	49	0.3599590105
8357	118	50	0.6039606314
8358	118	51	0.4168392015
8359	118	52	0.0228813509
8360	118	53	0.8832408893
8361	118	54	0.3488686108
8362	118	55	0.7143068933
8363	118	56	0.3611279321
8364	118	57	0.5224599172
8365	118	58	0.3547539199
8366	118	59	0.7888293909
8367	118	60	0.9082946149
8368	118	61	0.7061701231
8369	118	62	0.6055476218
8370	118	63	0.5826859479
8371	118	64	0.9159683161
8372	118	65	0.2128768293
8373	118	66	0.6911478760
8374	118	67	0.8915879475
8375	118	68	0.0589369270
8376	118	69	0.4206713494
8377	118	70	0.7208580715
8378	118	71	0.1472855667
8379	119	1	0.4057616401
8380	119	2	0.5120498543
8381	119	3	0.6383432923
8382	119	4	0.4003508016
8383	119	5	0.0282491497
8384	119	6	0.9977140226
8385	119	7	0.7800957961
8386	119	8	0.8682635264
8387	119	9	0.3576730331
8388	119	10	0.3840564275
8389	119	11	0.2851027283
8390	119	12	0.3805543846
8391	119	13	0.2672973168
8392	119	14	0.6339713391
8393	119	15	0.0948612778
8394	119	16	0.6284252489
8395	119	17	0.1564312563
8396	119	18	0.4496151982
8397	119	19	0.4172546398
8398	119	20	0.0647258712
8399	119	21	0.1557853213
8400	119	22	0.0228022621
8401	119	23	0.6474118195
8402	119	24	0.0717536374
8403	119	25	0.2356790914
8404	119	26	0.3385596955
8405	119	27	0.9633415849
8406	119	28	0.2946160184
8407	119	29	0.7592310449
8408	119	30	0.6841996564
8409	119	31	0.4419015856
8410	119	32	0.1649926850
8411	119	33	0.1962495106
8412	119	34	0.0802448778
8413	119	35	0.5653434866
8414	119	36	0.2244986603
8415	119	37	0.0779589009
8416	119	38	0.3454392832
8417	119	39	0.0927621871
8418	119	40	0.4356319341
8419	119	41	0.7294957107
8420	119	42	0.3778649154
8421	119	43	0.8161863186
8422	119	44	0.9967930280
8423	119	45	0.0118362545
8424	119	46	0.9110475970
8425	119	47	0.6252182769
8426	119	48	0.1682675108
8427	119	49	0.3606627951
8428	119	50	0.0424729171
8429	119	51	0.2329933825
8430	119	52	0.5164481164
8431	119	53	0.0652751792
8432	119	54	0.8804052020
8433	119	55	0.5882017538
8434	119	56	0.3009542706
8435	119	57	0.2189648976
8436	119	58	0.5515433387
8437	119	59	0.5955702891
8438	119	60	0.9781959425
8439	119	61	0.2357429950
8440	119	62	0.0374718746
8441	119	63	0.1431886274
8442	119	64	0.4319925061
8443	119	65	0.1177167529
8444	119	66	0.7085321140
8445	119	67	0.6564911664
8446	119	68	0.1956756539
8447	119	69	0.0539713972
8448	119	70	0.7492533536
8449	119	71	0.6313075880
8450	120	1	0.7834671084
8451	120	2	0.1271182690
8452	120	3	0.4474939071
8453	120	4	0.7802601364
8454	120	5	0.1389545235
8455	120	6	0.3585415040
8456	120	7	0.4054784132
8457	120	8	0.3072220348
8458	120	9	0.7192042992
8459	120	10	0.4479513303
8460	120	11	0.5402154173
8461	120	12	0.2356524155
8462	120	13	0.5132265096
8463	120	14	0.4206206193
8464	120	15	0.8238541693
8465	120	16	0.8141807802
8466	120	17	0.6395855169
8467	120	18	0.3753975080
8468	120	19	0.4097510697
8469	120	20	0.6177814594
8470	120	21	0.6111405031
8471	120	22	0.4472229443
8472	120	23	0.7609700868
8473	120	24	0.0431330092
8474	120	25	0.5649396973
8475	120	26	0.4695022008
8476	120	27	0.6996241761
8477	120	28	0.7606153511
8478	120	29	0.5234735985
8479	120	30	0.4488775297
8480	120	31	0.3919229396
8481	120	32	0.3069407069
8482	120	33	0.5759957992
8483	120	34	0.8394168466
8484	120	35	0.0872008433
8485	120	36	0.7149503226
8486	120	37	0.1979583506
8487	120	38	0.4926792565
8488	120	39	0.0221723574
8489	120	40	0.9171626498
8490	120	41	0.9406305873
8491	120	42	0.5623877747
8492	120	43	0.1528150653
8493	120	44	0.4538570968
8494	120	45	0.9830083940
8495	120	46	0.9766692347
8496	120	47	0.2680378775
8497	120	48	0.6225939109
8498	120	49	0.3520667427
8499	120	50	0.6777889472
8500	120	51	0.2403753703
8501	120	52	0.9632072458
8502	120	53	0.1250118916
8503	120	54	0.0013454570
8504	120	55	0.0063402555
8505	120	56	0.6899515893
8506	120	57	0.4708476583
8507	120	58	0.7059644316
8508	120	59	0.4505669405
8509	120	60	0.9943212569
8510	120	61	0.1548419613
8511	120	62	0.8424898800
8512	120	63	0.3012619638
8513	120	64	0.7308377605
8514	120	65	0.6819067267
8515	120	66	0.3884628071
8516	120	67	0.4457880836
8517	120	68	0.8798650773
8518	120	69	0.8811420635
8519	120	70	0.4679604410
8520	120	71	0.7970277271
8553	121	33	0.7838671664
8592	122	1	0.5465052444
8593	122	2	0.5987589709
8594	122	3	0.6974512101
8595	122	4	0.6692074058
8596	122	5	0.7859305111
8597	122	6	0.0305734952
8598	122	7	0.8283296213
8599	122	8	0.3216210585
8600	122	9	0.3177864831
8601	122	10	0.4744388317
8602	122	11	0.2001518710
8603	122	12	0.7139321361
8604	122	13	0.4500249173
8605	122	14	0.7227849113
8606	122	15	0.9498482146
8607	122	16	0.4369946043
8608	122	17	0.2779829875
8609	122	18	0.4713228024
8610	122	19	0.3152129711
8611	122	20	0.7468881626
8612	122	21	0.7463163408
8613	122	22	0.8817077447
8614	122	23	0.9512730879
8615	122	24	0.8051770455
8616	122	25	0.0863217181
8617	122	26	0.1667675115
8618	122	27	0.6612615273
8619	122	28	0.8555669179
8620	122	29	0.9370390591
8621	122	30	0.9505203078
8622	122	31	0.4680221151
8623	122	32	0.4835443036
8624	122	33	0.5492792786
8625	122	34	0.1654733256
8626	122	35	0.1527517093
8627	122	36	0.3352097897
8628	122	37	0.1960468208
8629	122	38	0.9810813311
8630	122	39	0.6568308487
8631	122	40	0.5138333039
8632	122	41	0.4555201628
8633	122	42	0.8569827196
8634	122	43	0.2277654405
8635	122	44	0.9055450801
8636	122	45	0.5797676309
8637	122	46	0.1776136551
8638	122	47	0.3425396848
8639	122	48	0.8577506184
8640	122	49	0.6489364579
8641	122	50	0.6577526559
8642	122	51	0.6046387809
8643	122	52	0.3952527987
8644	122	53	0.5394604011
8645	122	54	0.5559118688
8646	122	55	0.2004298442
8647	122	56	0.6257821191
8648	122	57	0.7226793803
8649	122	58	0.8616913715
8650	122	59	0.4813490370
8651	122	60	0.6597184394
8652	122	61	0.8122116793
8653	122	62	0.9493711526
8654	122	63	0.1432627430
8655	122	64	0.3614909579
8656	122	65	0.1148444782
8657	122	66	0.2960144528
8658	122	67	0.6967007481
8659	122	68	0.3108912990
8660	122	69	0.2770957840
8661	122	70	0.3535315967
8662	122	71	0.8247246030
8663	123	1	0.7326159468
8664	123	2	0.2105143163
8665	123	3	0.0524900435
8666	123	4	0.6381610273
8667	123	5	0.7902819472
8668	123	6	0.2301036990
8669	123	7	0.9807007122
8670	123	8	0.6480325661
8671	123	9	0.8790401570
8672	123	10	0.6384533681
8673	123	11	0.2526713470
8674	123	12	0.2742929556
8675	123	13	0.1779137691
8676	123	14	0.8085832163
8677	123	15	0.4747227998
8678	123	16	0.8036958883
8679	123	17	0.5312625966
8680	123	18	0.3364141714
8681	123	19	0.2850449258
8682	123	20	0.1909810365
8683	123	21	0.1486258507
8684	123	22	0.2344160783
8685	123	23	0.3342437795
8686	123	24	0.5101168086
8687	123	25	0.3492605565
8688	123	26	0.6302582324
8689	123	27	0.2068175566
8690	123	28	0.6601518556
8691	123	29	0.9073540163
8692	123	30	0.5603491534
8693	123	31	0.4848764585
8694	123	32	0.6399699636
8695	123	33	0.7708634697
8696	123	34	0.5373665025
8697	123	35	0.2781309909
8698	123	36	0.5611454174
8699	123	37	0.7674702015
8700	123	38	0.2588317031
8701	123	39	0.2091779835
8702	123	40	0.6465103584
8703	123	41	0.8972850712
8704	123	42	0.4618493305
8705	123	43	0.9208033141
8706	123	44	0.0751988408
8707	123	45	0.2704325467
8708	123	46	0.3955261139
8709	123	47	0.8788947291
8710	123	48	0.8016951438
8711	123	49	0.7319402853
8712	123	50	0.1639396548
8713	123	51	0.9926761803
8714	123	52	0.8805661360
8715	123	53	0.3983557331
8716	123	54	0.3269199599
8717	123	55	0.3906829446
8718	123	56	0.7476162896
8719	123	57	0.9571781927
8720	123	58	0.5975005017
8721	123	59	0.4077681452
8722	123	60	0.8645322090
8723	123	61	0.1578496550
8724	123	62	0.8926446042
8725	123	63	0.5045021726
8726	123	64	0.9287131252
8727	123	65	0.4300111067
8728	123	66	0.7826331635
8729	123	67	0.4898585426
8730	123	68	0.1974813081
8731	123	69	0.0414648666
8732	123	70	0.6990365260
8733	123	71	0.8439916666
8734	124	1	0.9387499383
8735	124	2	0.1608858565
8736	124	3	0.7647949806
8737	124	4	0.0139487791
8738	124	5	0.4313184037
8739	124	6	0.1603210946
8740	124	7	0.8928435082
8741	124	8	0.2330135475
8742	124	9	0.8922613799
8743	124	10	0.0567831635
8744	124	11	0.2256897278
8745	124	12	0.7728275158
8746	124	13	0.4551388966
8747	124	14	0.5526096877
8748	124	15	0.1635104604
8749	124	16	0.2027551867
8750	124	17	0.5097878803
8751	124	18	0.7610109621
8752	124	19	0.6105233319
8753	124	20	0.3743200898
8754	124	21	0.9188606176
8755	124	22	0.5031679361
8756	124	23	0.8788222624
8757	124	24	0.8475737427
8758	124	25	0.9331790428
8759	124	26	0.6614554264
8760	124	27	0.3374322853
8761	124	28	0.1306603509
8762	124	29	0.7029202930
8763	124	30	0.0364688113
8764	124	31	0.9746520175
8765	124	32	0.6416702312
8766	124	33	0.1973546678
8767	124	34	0.7394469981
8768	124	35	0.6556190103
8769	124	36	0.6286730715
8770	124	37	0.8997680927
8771	124	38	0.5484625190
8772	124	39	0.8616866190
8773	124	40	0.7920294725
8774	124	41	0.6052456824
8775	124	42	0.0873763468
8776	124	43	0.5648569884
8777	124	44	0.0603845790
8778	124	45	0.6399860349
8779	124	46	0.7283674493
8780	124	47	0.2631397657
8781	124	48	0.1497739153
8782	124	49	0.4893784113
8783	124	50	0.8736630981
8784	124	51	0.5240940051
8785	124	52	0.4082390289
8786	124	53	0.3768310342
8787	124	54	0.4029162680
8788	124	55	0.2558127716
8789	124	56	0.3100100774
8790	124	57	0.0643716943
8791	124	58	0.5932450569
8792	124	59	0.4406704283
8793	124	60	0.7672919873
8794	124	61	0.6297138683
8795	124	62	0.4153224463
8796	124	63	0.4089622190
8797	124	64	0.8270685365
8798	124	65	0.1547694444
8799	124	66	0.0645812294
8800	124	67	0.4557416080
8801	124	68	0.0545375375
8802	124	69	0.6130437483
8803	124	70	0.3174282275
8804	124	71	0.8465670100
8805	125	1	0.2182894307
8806	125	2	0.4048045743
8807	125	3	0.4114239989
8808	125	4	0.2786740102
8809	125	5	0.0447906093
8810	125	6	0.1397914481
8811	125	7	0.5418137759
8812	125	8	0.1945645250
8813	125	9	0.6291698595
8814	125	10	0.4154768740
8815	125	11	0.7186585302
8816	125	12	0.0374088888
8817	125	13	0.7923079086
8818	125	14	0.1215747981
8819	125	15	0.2932216604
8820	125	16	0.1023179861
8821	125	17	0.1859464925
8822	125	18	0.8864667178
8823	125	19	0.5429884144
8824	125	20	0.9532384803
8825	125	21	0.5161805861
8826	125	22	0.9583108607
8827	125	23	0.3622006993
8828	125	24	0.3432491226
8829	125	25	0.1130803055
8830	125	26	0.4267819286
8831	125	27	0.7989907311
8832	125	28	0.1676178430
8833	125	29	0.0398256774
8834	125	30	0.1164189586
8835	125	31	0.0141848531
8836	125	32	0.2581151081
8837	125	33	0.5212235330
8838	125	34	0.4256088519
8839	125	35	0.5367891183
8840	125	36	0.5660141427
8841	125	37	0.5654003001
8842	125	38	0.0786028947
8843	125	39	0.7605786677
8844	125	40	0.1945701600
8845	125	41	0.4940797687
8846	125	42	0.4792371979
8847	125	43	0.2319790488
8848	125	44	0.2863876773
8849	125	45	0.6008119965
8850	125	46	0.5252007092
8851	125	47	0.3887056634
8852	125	48	0.7867584890
8853	125	49	0.4116674270
8854	125	50	0.9316940783
8855	125	51	0.7399969692
8856	125	52	0.9278480136
8857	125	53	0.8900049389
8858	125	54	0.1021976685
8859	125	55	0.2710971362
8860	125	56	0.0030852444
8861	125	57	0.5289795976
8862	125	58	0.0700878673
8863	125	59	0.1707030875
8864	125	60	0.5688052750
8865	125	61	0.1865068260
8866	125	62	0.1848879410
8867	125	63	0.8269203831
8868	125	64	0.7077303594
8869	125	65	0.6104967929
8870	125	66	0.3637095019
8871	125	67	0.2737445021
8872	125	68	0.1758970935
8873	125	69	0.4423123966
8874	125	70	0.0343231698
8875	125	71	0.3704672535
8876	126	1	0.9363921653
8877	126	2	0.5135603677
8878	126	3	0.6024463023
8879	126	4	0.2227798430
8880	126	5	0.1143723642
8881	126	6	0.1276470115
8882	126	7	0.6114855064
8883	126	8	0.9011308537
8884	126	9	0.5393144391
8885	126	10	0.5431795847
8886	126	11	0.6411278229
8887	126	12	0.4671624526
8888	126	13	0.4331845241
8889	126	14	0.7433254919
8890	126	15	0.7382595888
8891	126	16	0.4362697685
8892	126	17	0.2723050895
8893	126	18	0.8083474566
8894	126	19	0.6069728564
8895	126	20	0.8411103645
8896	126	21	0.9948542826
8897	126	22	0.7918607974
8898	126	23	0.6680307477
8899	126	24	0.7025846420
8900	126	25	0.4023575904
8901	126	26	0.0317402496
8902	126	27	0.9763291441
8903	126	28	0.5782546839
8904	126	29	0.4740526462
8905	126	30	0.0106523139
8906	126	31	0.9487219374
8907	126	32	0.4104448119
8908	126	33	0.5242126822
8909	126	34	0.5511682397
8910	126	35	0.6332246549
8911	126	36	0.6385850464
8912	126	37	0.6788152517
8913	126	38	0.2447101614
8914	126	39	0.5397159001
8915	126	40	0.2181296907
8916	126	41	0.7878897465
8917	126	42	0.1808437235
8918	126	43	0.6852921434
8919	126	44	0.2210742706
8920	126	45	0.9241692154
8921	126	46	0.4235517322
8922	126	47	0.6573440391
8923	126	48	0.1964743049
8924	126	49	0.2318991888
8925	126	50	0.2643168955
8926	126	51	0.0375846694
8927	126	52	0.2267534719
8928	126	53	0.0561776930
8929	126	54	0.7056154171
8930	126	55	0.9293381139
8931	126	56	0.4585352838
8932	126	57	0.7373556672
8933	126	58	0.9056672584
8934	126	59	0.0367899677
8935	126	60	0.2114083134
8936	126	61	0.9163195724
8937	126	62	0.9855119055
8938	126	63	0.6218531253
8939	126	64	0.4405322545
8940	126	65	0.5366801452
8941	126	66	0.2550777802
8942	126	67	0.0791173014
8943	126	68	0.2154953969
8944	126	69	0.4997879420
8945	126	70	0.6188332015
8946	126	71	0.4336250876
8947	127	1	0.2876776885
8948	127	2	0.7996769249
8949	127	3	0.1189172310
8950	127	4	0.5087519591
8951	127	5	0.7238461403
8952	127	6	0.5424689637
8953	127	7	0.1660959981
8954	127	8	0.9203204452
8955	127	9	0.7743681525
8956	127	10	0.4304128941
8957	127	11	0.9579051146
8958	127	12	0.0011216244
8959	127	13	0.4865905871
8960	127	14	0.6635205322
8961	127	15	0.9304597387
8962	127	16	0.9451258709
8963	127	17	0.4008761994
8964	127	18	0.8361269971
8965	127	19	0.9819158390
8966	127	20	0.6122845127
8967	127	21	0.7524465695
8968	127	22	0.9674277445
8969	127	23	0.2341376385
8970	127	24	0.1929788245
8971	127	25	0.5041078897
8972	127	26	0.4892154187
8973	127	27	0.2720961259
8974	127	28	0.7196032871
8975	127	29	0.9890033607
8976	127	30	0.8909293273
8977	127	31	0.1532283747
8978	127	32	0.2766810493
8979	127	33	0.6906062528
8980	127	34	0.2721456061
8981	127	35	0.7854330083
8982	127	36	0.4144523931
8983	127	37	0.8146145698
8984	127	38	0.9515290069
8985	127	39	0.3347728387
8986	127	40	0.5889827223
8987	127	41	0.3819419011
8988	127	42	0.2926779534
8989	127	43	0.5901043471
8990	127	44	0.8685324881
8991	127	45	0.9561984856
8992	127	46	0.5205640858
8993	127	47	0.8136583595
8994	127	48	0.3570746849
8995	127	49	0.3566910829
8996	127	50	0.7955741985
8997	127	51	0.9693591981
8998	127	52	0.1091376524
8999	127	53	0.7630019430
9000	127	54	0.2034968366
9001	127	55	0.3021164769
9002	127	56	0.2671098327
9003	127	57	0.6927122553
9004	127	58	0.5742126028
9005	127	59	0.9867131198
9006	127	60	0.6817156165
9007	127	61	0.4651419306
9008	127	62	0.1399414949
9009	127	63	0.9583966658
9010	127	64	0.1557481834
9011	127	65	0.4120871010
9012	127	66	0.7438296746
9013	127	67	0.5702005764
9014	127	68	0.2267016708
9015	127	69	0.6953586815
9016	127	70	0.9049734152
9017	127	71	0.8156843930
9018	128	1	0.0773005825
9019	128	2	0.1976513690
9020	128	3	0.4057887401
9021	128	4	0.9458330707
9022	128	5	0.1538498546
9023	128	6	0.9263528259
9024	128	7	0.7594914301
9025	128	8	0.5109245400
9026	128	9	0.2830439089
9027	128	10	0.5550656286
9028	128	11	0.4802837381
9029	128	12	0.3921815618
9030	128	13	0.3180675716
9031	128	14	0.6837805747
9032	128	15	0.6942980387
9033	128	16	0.5851774048
9034	128	17	0.3764928300
9035	128	18	0.2685106420
9036	128	19	0.5718905246
9037	128	20	0.0582084465
9038	128	21	0.7336525726
9039	128	22	0.7118320195
9040	128	23	0.0166051127
9041	128	24	0.8894007560
9042	128	25	0.1239191205
9043	128	26	0.7604347873
9044	128	27	0.4596013324
9045	128	28	0.3506207913
9046	128	29	0.4557934687
9047	128	30	0.3645747481
9048	128	31	0.1663051848
9049	128	32	0.5330940513
9050	128	33	0.5622261171
9051	128	34	0.5720939250
9052	128	35	0.4789271220
9053	128	36	0.7160759717
9054	128	37	0.4984467514
9055	128	38	0.2384185526
9056	128	39	0.2270005117
9057	128	40	0.7814906603
9058	128	41	0.7934841812
9059	128	42	0.7072842498
9060	128	43	0.1736722221
9061	128	44	0.1115517532
9062	128	45	0.3910648245
9063	128	46	0.8679702613
9064	128	47	0.6967291581
9065	128	48	0.7675576550
9066	128	49	0.1364809033
9067	128	50	0.2686196826
9068	128	51	0.8257661015
9069	128	52	0.8701334759
9070	128	53	0.9804517026
9071	128	54	0.8423712142
9072	128	55	0.7595342319
9073	128	56	0.1043708231
9074	128	57	0.6028060014
9075	128	58	0.2191355643
9076	128	59	0.4549916149
9077	128	60	0.0585994702
9078	128	61	0.5837103124
9079	128	62	0.6212967997
9080	128	63	0.5916935215
9081	128	64	0.1459364295
9082	128	65	0.1933907247
9083	128	66	0.0706206439
9084	128	67	0.8620124017
9085	128	68	0.6918374761
9086	128	69	0.3090391965
9087	128	70	0.0890129134
9088	128	71	0.4733281368
9089	129	1	0.1025233776
9090	129	2	0.7962971637
9091	129	3	0.6470003589
9092	129	4	0.2140751309
9093	129	5	0.1873619882
9094	129	6	0.5149706202
9095	129	7	0.9108042889
9096	129	8	0.9549196432
9097	129	9	0.6514515234
9098	129	10	0.1794239720
9099	129	11	0.7806857452
9100	129	12	0.5215849993
9101	129	13	0.1598756746
9102	129	14	0.6230569594
9103	129	15	0.2811192311
9104	129	16	0.2642464978
9105	129	17	0.2258629613
9106	129	18	0.5002547959
9107	129	19	0.7192381127
9108	129	20	0.2844624314
9109	129	21	0.0839651083
9110	129	22	0.3405349124
9111	129	23	0.8761559534
9112	129	24	0.2299015382
9113	129	25	0.5339256376
9114	129	26	0.9467765973
9115	129	27	0.0919139399
9116	129	28	0.2257631137
9117	129	29	0.2558157938
9118	129	30	0.1809268533
9119	129	31	0.6990912505
9120	129	32	0.3583391714
9121	129	33	0.9772240170
9122	129	34	0.3460916099
9123	129	35	0.5724143027
9124	129	36	0.1645860057
9125	129	37	0.8610622301
9126	129	38	0.4832185917
9127	129	39	0.1195056490
9128	129	40	0.5125137540
9129	129	41	0.6626425637
9130	129	42	0.9001913941
9131	129	43	0.0340987532
9132	129	44	0.8225182383
9133	129	45	0.5232483540
9134	129	46	0.3152179848
9135	129	47	0.0867647366
9136	129	48	0.7491113152
9137	129	49	0.8154727807
9138	129	50	0.8060028492
9139	129	51	0.0335737467
9140	129	52	0.8994378890
9141	129	53	0.1465377621
9142	129	54	0.9097297001
9143	129	55	0.1293394272
9144	129	56	0.6804633997
9145	129	57	0.8565062974
9146	129	58	0.2212533671
9147	129	59	0.9062265134
9148	129	60	0.1123220911
9149	129	61	0.4021802209
9150	129	62	0.6053177644
9151	129	63	0.4706612630
9152	129	64	0.3794042380
9153	129	65	0.9514093744
9154	129	66	0.0430755657
9155	129	67	0.5439902437
9156	129	68	0.8124716044
9157	129	69	0.5262941574
9158	129	70	0.6634958931
9159	129	71	0.3249853584
9160	130	1	0.1889367215
9161	130	2	0.5636872873
9162	130	3	0.3590841121
9163	130	4	0.0114549599
9164	130	5	0.0869356412
9165	130	6	0.6743020969
9166	130	7	0.0982196964
9167	130	8	0.8360469565
9168	130	9	0.4897748777
9169	130	10	0.9042225461
9170	130	11	0.8696207036
9171	130	12	0.3892127667
9172	130	13	0.0507603083
9173	130	14	0.7793504037
9174	130	15	0.5185521943
9175	130	16	0.7312237080
9176	130	17	0.6358567015
9177	130	18	0.7398055615
9178	130	19	0.6374502215
9179	130	20	0.7481787927
9180	130	21	0.1419857824
9181	130	22	0.2427679859
9182	130	23	0.2188400556
9183	130	24	0.5213900208
9184	130	25	0.1941773603
9185	130	26	0.2619156213
9186	130	27	0.0653802645
9187	130	28	0.0066489652
9188	130	29	0.7882097792
9189	130	30	0.7288761577
9190	130	31	0.3316343236
9191	130	32	0.9771465007
9192	130	33	0.2925634454
9193	130	34	0.6907184357
9194	130	35	0.9886014606
9195	130	36	0.3794990866
9196	130	37	0.3650205326
9197	130	38	0.0868211575
9198	130	39	0.2155460436
9199	130	40	0.8547954103
9200	130	41	0.9910437036
9201	130	42	0.0851667472
9202	130	43	0.2440081774
9203	130	44	0.0418040119
9204	130	45	0.8645171509
9205	130	46	0.7625603718
9206	130	47	0.7730277199
9207	130	48	0.5003738524
9208	130	49	0.5023659333
9209	130	50	0.4104779414
9210	130	51	0.2485526456
9211	130	52	0.6443517162
9212	130	53	0.6532459278
9213	130	54	0.4673927012
9214	130	55	0.1657417370
9215	130	56	0.8474232880
9216	130	57	0.7293083230
9217	130	58	0.2311220015
9218	130	59	0.8540722532
9219	130	60	0.5175181022
9220	130	61	0.9599981597
9221	130	62	0.1857065773
9222	130	63	0.4946646029
9223	130	64	0.2525616051
9224	130	65	0.8764250129
9225	130	66	0.4832660635
9226	130	67	0.6320606917
9227	130	68	0.2414455460
9228	130	69	0.5700872210
9229	130	70	0.8476067353
9230	130	71	0.0962409563
9231	131	1	0.5611309246
9232	131	2	0.9327734825
9233	131	3	0.3402491338
9234	131	4	0.6029349365
9235	131	5	0.7972906339
9236	131	6	0.1028095055
9237	131	7	0.3759626565
9238	131	8	0.2976644863
9239	131	9	0.6051754393
9240	131	10	0.7864405983
9241	131	11	0.5462171319
9242	131	12	0.2495271554
9243	131	13	0.4396865261
9244	131	14	0.0136098335
9245	131	15	0.4152688924
9246	131	16	0.2871098141
9247	131	17	0.7429181566
9248	131	18	0.6463908940
9249	131	19	0.1411820678
9250	131	20	0.2604362587
9251	131	21	0.6063890536
9252	131	22	0.3268886451
9253	131	23	0.7551008617
9254	131	24	0.8589506587
9255	131	25	0.2033136580
9256	131	26	0.2383669252
9257	131	27	0.4910113509
9258	131	28	0.4447592041
9259	131	29	0.8084541466
9260	131	30	0.3386180862
9261	131	31	0.5410001609
9262	131	32	0.3695850712
9263	131	33	0.2713915692
9264	131	34	0.8812492946
9265	131	35	0.9725200082
9266	131	36	0.0686822031
9267	131	37	0.9840588006
9268	131	38	0.3484826647
9269	131	39	0.3663466894
9270	131	40	0.5892342399
9271	131	41	0.1349232630
9272	131	42	0.9125638218
9273	131	43	0.8387613953
9274	131	44	0.5746097891
9275	131	45	0.9261736553
9276	131	46	0.2540302877
9277	131	47	0.8617196037
9278	131	48	0.6690918119
9279	131	49	0.9004211817
9280	131	50	0.0029016715
9281	131	51	0.9295280706
9282	131	52	0.5068102358
9283	131	53	0.3297903165
9284	131	54	0.6846289323
9285	131	55	0.3657608945
9286	131	56	0.5331039745
9287	131	57	0.9229958574
9288	131	58	0.8567722454
9289	131	59	0.9778631791
9290	131	60	0.7314500040
9291	131	61	0.1953903320
9292	131	62	0.5188633399
9293	131	63	0.1010350757
9294	131	64	0.4667819012
9295	131	65	0.4001126345
9296	131	66	0.0735550839
9297	131	67	0.5354641043
9298	131	68	0.3841714351
9299	131	69	0.4220377486
9300	131	70	0.9018107937
9301	131	71	0.9734056750
9302	132	1	0.5569610121
9303	132	2	0.8143746154
9304	132	3	0.8121670703
9305	132	4	0.1315708011
9306	132	5	0.7405482708
9307	132	6	0.0661973581
9308	132	7	0.9932904048
9309	132	8	0.4096400826
9310	132	9	0.9666185402
9311	132	10	0.9961920762
9312	132	11	0.3391681532
9313	132	12	0.4734287760
9314	132	13	0.3259823928
9315	132	14	0.0237970855
9316	132	15	0.8391896705
9317	132	16	0.8590863678
9318	132	17	0.9467929434
9319	132	18	0.6959619164
9320	132	19	0.8369495468
9321	132	20	0.6782429474
9322	132	21	0.8913522484
9323	132	22	0.3558128867
9324	132	23	0.7792780232
9325	132	24	0.3581341496
9326	132	25	0.7559255213
9327	132	26	0.8528331071
9328	132	27	0.8935982538
9329	132	28	0.1400969569
9330	132	29	0.2748708562
9331	132	30	0.7954090475
9332	132	31	0.1135026319
9333	132	32	0.8318318683
9334	132	33	0.6097836634
9335	132	34	0.9256697027
9336	132	35	0.9634026694
9337	132	36	0.3503319342
9338	132	37	0.9918670608
9339	132	38	0.9566930747
9340	132	39	0.7599720173
9341	132	40	0.9584856010
9342	132	41	0.9528851509
9343	132	42	0.0991401705
9344	132	43	0.4319143770
9345	132	44	0.2788675441
9346	132	45	0.1229372565
9347	132	46	0.2711040480
9348	132	47	0.1379539119
9349	132	48	0.0697301999
9350	132	49	0.9670659644
9351	132	50	0.9749034587
9352	132	51	0.7479731473
9353	132	52	0.8584182127
9354	132	53	0.3307163455
9355	132	54	0.5272511709
9356	132	55	0.2165523623
9357	132	56	0.0866418667
9358	132	57	0.3800842781
9359	132	58	0.1101506162
9360	132	59	0.2267388236
9361	132	60	0.6549551343
9362	132	61	0.9055596637
9363	132	62	0.3402414559
9364	132	63	0.4867870025
9365	132	64	0.5153433271
9366	132	65	0.2659111586
9367	132	66	0.4501896724
9368	132	67	0.8656752617
9369	132	68	0.2577782194
9370	132	69	0.4068827471
9371	132	70	0.6256472790
9372	132	71	0.2162638209
9373	133	1	0.3597678980
9374	133	2	0.7247874495
9375	133	3	0.6481781979
9376	133	4	0.6386354421
9377	133	5	0.8477247059
9378	133	6	0.9192822459
9379	133	7	0.7765893540
9380	133	8	0.9174549058
9381	133	9	0.8863482103
9382	133	10	0.7514928128
9383	133	11	0.6654280536
9384	133	12	0.7447664230
9385	133	13	0.0822091582
9386	133	14	0.1926792245
9387	133	15	0.9613187853
9388	133	16	0.1688510254
9389	133	17	0.5727635026
9390	133	18	0.0714694015
9391	133	19	0.3955898490
9392	133	20	0.2277186373
9393	133	21	0.9770290656
9394	133	22	0.7358313049
9395	133	23	0.7145056399
9396	133	24	0.4923723927
9397	133	25	0.0017424636
9398	133	26	0.1646953123
9399	133	27	0.3580476544
9400	133	28	0.2595206834
9401	133	29	0.5715780593
9402	133	30	0.9836949334
9403	133	31	0.4757845043
9404	133	32	0.9313459578
9405	133	33	0.7084823833
9406	133	34	0.1239627022
9407	133	35	0.5699813999
9408	133	36	0.5562070892
9409	133	37	0.0432449486
9410	133	38	0.3465707544
9411	133	39	0.4736619955
9412	133	40	0.9295931589
9413	133	41	0.0980635672
9414	133	42	0.1390900491
9415	133	43	0.6743595824
9416	133	44	0.1802727259
9417	133	45	0.3317692736
9418	133	46	0.6356783677
9419	133	47	0.3491237513
9420	133	48	0.9045327762
9421	133	49	0.7071477696
9422	133	50	0.7447136003
9423	133	51	0.1322514135
9424	133	52	0.6841768352
9425	133	53	0.4805449056
9426	133	54	0.8467570539
9427	133	55	0.1765492279
9428	133	56	0.4822873692
9429	133	57	0.0114523661
9430	133	58	0.5345968828
9431	133	59	0.7418080526
9432	133	60	0.5830304259
9433	133	61	0.5182918161
9434	133	62	0.2175925570
9435	133	63	0.5143763837
9436	133	64	0.2267741994
9437	133	65	0.3415552597
9438	133	66	0.0843577837
9439	133	67	0.7829812891
9440	133	68	0.3848002083
9441	133	69	0.4309285381
9442	133	70	0.2566432846
9443	133	71	0.3143933672
9444	134	1	0.5289921057
9445	134	2	0.3957333337
9446	134	3	0.9887529495
9447	134	4	0.7092648316
9448	134	5	0.7275026073
9449	134	6	0.6244313177
9450	134	7	0.0583885829
9451	134	8	0.6320353835
9452	134	9	0.3315790873
9453	134	10	0.8031021832
9454	134	11	0.7642867975
9455	134	12	0.0157559225
9456	134	13	0.2836470888
9457	134	14	0.6110438514
9458	134	15	0.1923051504
9459	134	16	0.7659344585
9460	134	17	0.6224962175
9461	134	18	0.7269020332
9462	134	19	0.5077425111
9463	134	20	0.2055266434
9464	134	21	0.2451938498
9465	134	22	0.7253350685
9466	134	23	0.7199030272
9467	134	24	0.4719680492
9468	134	25	0.0668903282
9469	134	26	0.8042608113
9470	134	27	0.2549493383
9471	134	28	0.4516905365
9472	134	29	0.2351893494
9473	134	30	0.5115926228
9474	134	31	0.7660839036
9475	134	32	0.7641814551
9476	134	33	0.9073259565
9477	134	34	0.7548368536
9478	134	35	0.4734462867
9479	134	36	0.6348285638
9480	134	37	0.3792681713
9481	134	38	0.5318348696
9482	134	39	0.2668639477
9483	134	40	0.7108472586
9484	134	41	0.3349370533
9485	134	42	0.0311507452
9486	134	43	0.7266031811
9487	134	44	0.6185841421
9488	134	45	0.6421945966
9489	134	46	0.9189083315
9490	134	47	0.3845186005
9491	134	48	0.2646908141
9492	134	49	0.6458103652
9493	134	50	0.8922611121
9494	134	51	0.4702174580
9495	134	52	0.8910042150
9496	134	53	0.6175961806
9497	134	54	0.1901204851
9498	134	55	0.3629722642
9499	134	56	0.6844865088
9500	134	57	0.9943812964
9501	134	58	0.6179216029
9502	134	59	0.1361770453
9503	134	60	0.2295706463
9504	134	61	0.1295142258
9505	134	62	0.9022609489
9506	134	63	0.9937521014
9507	134	64	0.0368401827
9508	134	65	0.6570978025
9509	134	66	0.4671983887
9510	134	67	0.6716687465
9511	134	68	0.0363659738
9512	134	69	0.9990332583
9513	134	70	0.9385326942
9514	134	71	0.7472132323
9515	135	1	0.3339703116
9516	135	2	0.9696834395
9517	135	3	0.4738164134
9518	135	4	0.9525544541
9519	135	5	0.6118780361
9520	135	6	0.3927247454
9521	135	7	0.3370730546
9522	135	8	0.8765688506
9523	135	9	0.0385351107
9524	135	10	0.2293341667
9525	135	11	0.3467863086
9526	135	12	0.9295393256
9527	135	13	0.8469303474
9528	135	14	0.5369067937
9529	135	15	0.2925115898
9530	135	16	0.5314168562
9531	135	17	0.5312880906
9532	135	18	0.9104331927
9533	135	19	0.6675939015
9534	135	20	0.7608587369
9535	135	21	0.0399474190
9536	135	22	0.5698548509
9537	135	23	0.7546108384
9538	135	24	0.0767876017
9539	135	25	0.2269526534
9540	135	26	0.2218092270
9541	135	27	0.7484563482
9542	135	28	0.2633186276
9543	135	29	0.2208424858
9544	135	30	0.6869890429
9545	135	31	0.0105318599
9546	135	32	0.5548127973
9547	135	33	0.6566724824
9548	135	34	0.4843482738
9549	135	35	0.5073672514
9550	135	36	0.2685505189
9551	135	37	0.8770730193
9552	135	38	0.8444403065
9553	135	39	0.1451193695
9554	135	40	0.9156081299
9555	135	41	0.0737744733
9556	135	42	0.4919056781
9557	135	43	0.8451474556
9558	135	44	0.9207048211
9559	135	45	0.0288124718
9560	135	46	0.1376590454
9561	135	47	0.4521216773
9562	135	48	0.5601005624
9563	135	49	0.0480922386
9564	135	50	0.1197155793
9565	135	51	0.3209592993
9566	135	52	0.0880396576
9567	135	53	0.6895704302
9568	135	54	0.0755701382
9569	135	55	0.1648272593
9570	135	56	0.9165230836
9571	135	57	0.2973793652
9572	135	58	0.9132836075
9573	135	59	0.1798417112
9574	135	60	0.5182218510
9575	135	61	0.6002726504
9576	135	62	0.1903735716
9577	135	63	0.0730346488
9578	135	64	0.2569451332
9579	135	65	0.6747218454
9580	135	66	0.5804019002
9581	135	67	0.5254956521
9582	135	68	0.5517948647
9583	135	69	0.4248422068
9584	135	70	0.6706150216
9585	135	71	0.4674029946
9586	136	1	0.4986166805
9587	136	2	0.1625206997
9588	136	3	0.3125504502
9589	136	4	0.4193215016
9590	136	5	0.1913331714
9591	136	6	0.4502094956
9592	136	7	0.8714431790
9593	136	8	0.7514337343
9594	136	9	0.4983017342
9595	136	10	0.9911587583
9596	136	11	0.0723930337
9597	136	12	0.5863413918
9598	136	13	0.6807291885
9599	136	14	0.1479631718
9600	136	15	0.7511686510
9601	136	16	0.5972522725
9602	136	17	0.4453425375
9603	136	18	0.6644522590
9604	136	19	0.7770939837
9605	136	20	0.9635643885
9606	136	21	0.2647249093
9607	136	22	0.9674675553
9608	136	23	0.0365990372
9609	136	24	0.5216700425
9610	136	25	0.6421894007
9611	136	26	0.6170009379
9612	136	27	0.0471656946
9613	136	28	0.1939842654
9614	136	29	0.0418431447
9615	136	30	0.7177807163
9616	136	31	0.6613872601
9617	136	32	0.5404598252
9618	136	33	0.8803014159
9619	136	34	0.9739377103
9620	136	35	0.9597813268
9621	136	36	0.0716345878
9622	136	37	0.4241472064
9623	136	38	0.8312245063
9624	136	39	0.8230683221
9625	136	40	0.9224489406
9626	136	41	0.8223832645
9627	136	42	0.8954613558
9628	136	43	0.5087903328
9629	136	44	0.5031124535
9630	136	45	0.0434245281
9631	136	46	0.2599589839
9632	136	47	0.1003647260
9633	136	48	0.4887670656
9634	136	49	0.9244112428
9635	136	50	0.8774587098
9636	136	51	0.4523314540
9637	136	52	0.1891361526
9638	136	53	0.8449262655
9639	136	54	0.4889304917
9640	136	55	0.7108061952
9641	136	56	0.4871156663
9642	136	57	0.1059314297
9643	136	58	0.7579718903
9644	136	59	0.6810999322
9645	136	60	0.1477745743
9646	136	61	0.4757526065
9647	136	62	0.3424871922
9648	136	63	0.6882344000
9649	136	64	0.3560540229
9650	136	65	0.3164249030
9651	136	66	0.6480157268
9652	136	67	0.4276886107
9653	136	68	0.7405721094
9654	136	69	0.4792402331
9655	136	70	0.2507569329
9656	136	71	0.6630210499
9657	137	1	0.3016234981
9658	137	2	0.1462182887
9659	137	3	0.1718113828
9660	137	4	0.8047359516
9661	137	5	0.1896428168
9662	137	6	0.4317703671
9663	137	7	0.9051006776
9664	137	8	0.6784098824
9665	137	9	0.3561816099
9666	137	10	0.7825593874
9667	137	11	0.1307413368
9668	137	12	0.5453177625
9669	137	13	0.6274856529
9670	137	14	0.6196718286
9671	137	15	0.2561239582
9672	137	16	0.1146013197
9673	137	17	0.7256032582
9674	137	18	0.0140958484
9675	137	19	0.7957012518
9676	137	20	0.8733778326
9677	137	21	0.4898484549
9678	137	22	0.1381884441
9679	137	23	0.5616122326
9680	137	24	0.8459024779
9681	137	25	0.4546133471
9682	137	26	0.2096279599
9683	137	27	0.2735910886
9684	137	28	0.1951854564
9685	137	29	0.6888681930
9686	137	30	0.5243480215
9687	137	31	0.8582065068
9688	137	32	0.9904916910
9689	137	33	0.6705663106
9690	137	34	0.0300178896
9691	137	35	0.7952276426
9692	137	36	0.8602091274
9693	137	37	0.4617882567
9694	137	38	0.7003283203
9695	137	39	0.5386190102
9696	137	40	0.8179698670
9697	137	41	0.4828877081
9698	137	42	0.6693603471
9699	137	43	0.3632876296
9700	137	44	0.1103733610
9701	137	45	0.2890321757
9702	137	46	0.6194115877
9703	137	47	0.2249746807
9704	137	48	0.0146354339
9705	137	49	0.6335074361
9706	137	50	0.0206759325
9707	137	51	0.8880132665
9708	137	52	0.1233558916
9709	137	53	0.1588643771
9710	137	54	0.4496254995
9711	137	55	0.9692583694
9712	137	56	0.6134777241
9713	137	57	0.6592534594
9714	137	58	0.2428494585
9715	137	59	0.8086631810
9716	137	60	0.3481216524
9717	137	61	0.7671974800
9718	137	62	0.6668696878
9719	137	63	0.3386133439
9720	137	64	0.4377637906
9721	137	65	0.6968875774
9722	137	66	0.1338409865
9723	137	67	0.2979729185
9724	137	68	0.1586758345
9725	137	69	0.8341693073
9726	137	70	0.8365919287
9727	137	71	0.9766457016
9728	138	1	0.3170570154
9729	138	2	0.5059522758
9730	138	3	0.3399333311
9731	138	4	0.4274303764
9732	138	5	0.7949844515
9733	138	6	0.9593449193
9734	138	7	0.6524050576
9735	138	8	0.8096198854
9736	138	9	0.5928523554
9737	138	10	0.6730809901
9738	138	11	0.6976331519
9739	138	12	0.7162082470
9740	138	13	0.8319453672
9741	138	14	0.1472586514
9742	138	15	0.6854666169
9743	138	16	0.4454230918
9744	138	17	0.8065121109
9745	138	18	0.9283160754
9746	138	19	0.2540862728
9747	138	20	0.1546337637
9748	138	21	0.6955135553
9749	138	22	0.9209559606
9750	138	23	0.4932471076
9751	138	24	0.1332773464
9752	138	25	0.6178435381
9753	138	26	0.6270880941
9754	138	27	0.4312502649
9755	138	28	0.7765193726
9756	138	29	0.4612574014
9757	138	30	0.2678421936
9758	138	31	0.7531650742
9759	138	32	0.7783144168
9760	138	33	0.7737944694
9761	138	34	0.0930984057
9762	138	35	0.2057447936
9763	138	36	0.5687789209
9764	138	37	0.0524433251
9765	138	38	0.8581498512
9766	138	39	0.3783988063
9767	138	40	0.6452956805
9768	138	41	0.5312308413
9769	138	42	0.0760319582
9770	138	43	0.3615039280
9771	138	44	0.3631762089
9772	138	45	0.2232906101
9773	138	46	0.0469705448
9774	138	47	0.8085993007
9775	138	48	0.0298027210
9776	138	49	0.9752866202
9777	138	50	0.0626855735
9778	138	51	0.1844364847
9779	138	52	0.6708001755
9780	138	53	0.9836415341
9781	138	54	0.6776835923
9782	138	55	0.8040775219
9783	138	56	0.6014850722
9784	138	57	0.3047716869
9785	138	58	0.2353277868
9786	138	59	0.3780044452
9787	138	60	0.7660290883
9788	138	61	0.5031699804
9789	138	62	0.1311695194
9790	138	63	0.5443435055
9791	138	64	0.2769644498
9792	138	65	0.2242679251
9793	138	66	0.7500882992
9794	138	67	0.8457433707
9795	138	68	0.2767112502
9796	138	69	0.6082381504
9797	138	70	0.2241421770
9798	138	71	0.9220069312
9799	139	1	0.1394689917
9800	139	2	0.3001741357
9801	139	3	0.2835108591
9802	139	4	0.5026452006
9803	139	5	0.5234647458
9804	139	6	0.3304814040
9805	139	7	0.3112445013
9806	139	8	0.5532674668
9807	139	9	0.3057680242
9808	139	10	0.3739300747
9809	139	11	0.7377039520
9810	139	12	0.9765681997
9811	139	13	0.3575716089
9812	139	14	0.4153875443
9813	139	15	0.7806457221
9814	139	16	0.9590566815
9815	139	17	0.7201592312
9816	139	18	0.0159735088
9817	139	19	0.3370611267
9818	139	20	0.4861883200
9819	139	21	0.5191434897
9820	139	22	0.4682306461
9821	139	23	0.0305318255
9822	139	24	0.7961079394
9823	139	25	0.6924985717
9824	139	26	0.7806201247
9825	139	27	0.6418513106
9826	139	28	0.9692098219
9827	139	29	0.3888582750
9828	139	30	0.8659934876
9829	139	31	0.8912167531
9830	139	32	0.5283272667
9831	139	33	0.1661676234
9832	139	34	0.1747276122
9833	139	35	0.0309724677
9834	139	36	0.6896323692
9835	139	37	0.5052090161
9836	139	38	0.3422169690
9837	139	39	0.2428998365
9838	139	40	0.8109770403
9839	139	41	0.7161470442
9840	139	42	0.9806037885
9841	139	43	0.7875452405
9842	139	44	0.0737186531
9843	139	45	0.3959913328
9844	139	46	0.5681909625
9845	139	47	0.0327753345
9846	139	48	0.1161505645
9847	139	49	0.5841644714
9848	139	50	0.3698364613
9849	139	51	0.6023388845
9850	139	52	0.1033079610
9851	139	53	0.8380671078
9852	139	54	0.6328707100
9853	139	55	0.8994159009
9854	139	56	0.5305656795
9855	139	57	0.4134908346
9856	139	58	0.5412672115
9857	139	59	0.4997755014
9858	139	60	0.8023491097
9859	139	61	0.4072606992
9860	139	62	0.3909922550
9861	139	63	0.3306763764
9862	139	64	0.5734283230
9863	139	65	0.5657198671
9864	139	66	0.3616488441
9865	139	67	0.2630606922
9866	139	68	0.0709288837
9867	139	69	0.7038658136
9868	139	70	0.5059605287
9869	139	71	0.8819059241
9870	140	1	0.4200128578
9871	140	2	0.4865643173
9872	140	3	0.6694511645
9873	140	4	0.4937315108
9874	140	5	0.8825556505
9875	140	6	0.2376421271
9876	140	7	0.5265068458
9877	140	8	0.9987062151
9878	140	9	0.8218065989
9879	140	10	0.8963433071
9880	140	11	0.6010450996
9881	140	12	0.9251145599
9882	140	13	0.7344104149
9883	140	14	0.2339158095
9884	140	15	0.8245304609
9885	140	16	0.2649760945
9886	140	17	0.6474066442
9887	140	18	0.3657976724
9888	140	19	0.7647515964
9889	140	20	0.4497557539
9890	140	21	0.7730583721
9891	140	22	0.1557438513
9892	140	23	0.7804321302
9893	140	24	0.3464866951
9894	140	25	0.7214637185
9895	140	26	0.1420809748
9896	140	27	0.6095473873
9897	140	28	0.7923926022
9898	140	29	0.8459467883
9899	140	30	0.1155079165
9900	140	31	0.6742985267
9901	140	32	0.2659596461
9902	140	33	0.6020722338
9903	140	34	0.3437496913
9904	140	35	0.7596911569
9905	140	36	0.4846278843
9906	140	37	0.5813918188
9907	140	38	0.2861980028
9908	140	39	0.4833340994
9909	140	40	0.4031984177
9910	140	41	0.1825413103
9911	140	42	0.0843791990
9912	140	43	0.3283129777
9913	140	44	0.9169517253
9914	140	45	0.3182950085
9915	140	46	0.1528434390
9916	140	47	0.1819278202
9917	140	48	0.9657016527
9918	140	49	0.5186411114
9919	140	50	0.9466794166
9920	140	51	0.4154574065
9921	140	52	0.2916994835
9922	140	53	0.1024232679
9923	140	54	0.1958895372
9924	140	55	0.6381861786
9925	140	56	0.8238869864
9926	140	57	0.3379705120
9927	140	58	0.2477335664
9928	140	59	0.6162795890
9929	140	60	0.1839173003
9930	140	61	0.3632414830
9931	140	62	0.2905781157
9932	140	63	0.4498769464
9933	140	64	0.9653137168
9934	140	65	0.6343278070
9935	140	66	0.2095681033
9936	140	67	0.4499416016
9937	140	68	0.2157196258
9938	140	69	0.4957661065
9939	140	70	0.9332757010
9940	140	71	0.6189180436
9941	141	1	0.6783074168
9942	141	2	0.0176549004
9943	141	3	0.9472310217
9944	141	4	0.5952591421
9945	141	5	0.3359499089
9946	141	6	0.1000744607
9947	141	7	0.7771869623
9948	141	8	0.3016515621
9949	141	9	0.6187155722
9950	141	10	0.7238663789
9951	141	11	0.7171089686
9952	141	12	0.9104150562
9953	141	13	0.8262896468
9954	141	14	0.9129985059
9955	141	15	0.5486012348
9956	141	16	0.6501766336
9957	141	17	0.2509690179
9958	141	18	0.7963348012
9959	141	19	0.2664562226
9960	141	20	0.4348863182
9961	141	21	0.1595762842
9962	141	22	0.5570343384
9963	141	23	0.8847632646
9964	141	24	0.1248900015
9965	141	25	0.1913621454
9966	141	26	0.0943313683
9967	141	27	0.5748316031
9968	141	28	0.4070817716
9969	141	29	0.5900974749
9970	141	30	0.5081073041
9971	141	31	0.0259998152
9972	141	32	0.2684048917
9973	141	33	0.5257622045
9974	141	34	0.9732308369
9975	141	35	0.8636640338
9976	141	36	0.8617121140
9977	141	37	0.0733052976
9978	141	38	0.6408509966
9979	141	39	0.1633636761
9980	141	40	0.6920208703
9981	141	41	0.3647173755
9982	141	42	0.8804726447
9983	141	43	0.6024359264
9984	141	44	0.1910070227
9985	141	45	0.7934711510
9986	141	46	0.1510371612
9987	141	47	0.8411836564
9988	141	48	0.0444401689
9989	141	49	0.9473719629
9990	141	50	0.1076398790
9991	141	51	0.4793264875
9992	141	52	0.1069482472
9993	141	53	0.6646742173
9994	141	54	0.3640897521
9995	141	55	0.2318382487
9996	141	56	0.8560363627
9997	141	57	0.4584211204
9998	141	58	0.8066698518
9999	141	59	0.2631181343
10000	141	60	0.0485185953
10001	141	61	0.3147771563
10002	141	62	0.2891179500
10003	141	63	0.3169234870
10004	141	64	0.8405393609
10005	141	65	0.2623487869
10006	141	66	0.1805875213
10007	141	67	0.7022514748
10008	141	68	0.3356540850
10009	141	69	0.8214385179
10010	141	70	0.8656151509
10011	141	71	0.0276749553
10012	142	1	0.1861558934
10013	142	2	0.7460877961
10014	142	3	0.6301108818
10015	142	4	0.3771629161
10016	142	5	0.5395589471
10017	142	6	0.7811480430
10018	142	7	0.2183465725
10019	142	8	0.5839991160
10020	142	9	0.7285200059
10021	142	10	0.3259864515
10022	142	11	0.0633256035
10023	142	12	0.8354682536
10024	142	13	0.9906606688
10025	142	14	0.4274153560
10026	142	15	0.0673065023
10027	142	16	0.8466970320
10028	142	17	0.8858364765
10029	142	18	0.8739763545
10030	142	19	0.1098151663
10031	142	20	0.9343550722
10032	142	21	0.1887535108
10033	142	22	0.3989331163
10034	142	23	0.2512785592
10035	142	24	0.0292928717
10036	142	25	0.6612819037
10037	142	26	0.4318660805
10038	142	27	0.7315443470
10039	142	28	0.9969359888
10040	142	29	0.2533045984
10041	142	30	0.5971594979
10042	142	31	0.0246109441
10043	142	32	0.4394604922
10044	142	33	0.3432472940
10045	142	34	0.6547218258
10046	142	35	0.8166234083
10047	142	36	0.8828062410
10048	142	37	0.4358698688
10049	142	38	0.0349699813
10050	142	39	0.4668053575
10051	142	40	0.1643898753
10052	142	41	0.3609564328
10053	142	42	0.5301309610
10054	142	43	0.9998581288
10055	142	44	0.3516171020
10056	142	45	0.9575463170
10057	142	46	0.0671646311
10058	142	47	0.1983141340
10059	142	48	0.8433827939
10060	142	49	0.9411409856
10061	142	50	0.3081293004
10062	142	51	0.7777378662
10063	142	52	0.1298944964
10064	142	53	0.7070624172
10065	142	54	0.0290164254
10066	142	55	0.1591873686
10067	142	56	0.3683443209
10068	142	57	0.4608825063
10069	142	58	0.8907317156
10070	142	59	0.3652803097
10071	142	60	0.7141871047
10072	142	61	0.4878912135
10073	142	62	0.3898912538
10074	142	63	0.1536475969
10075	142	64	0.8311385079
10076	142	65	0.0446130796
10077	142	66	0.9702710058
10078	142	67	0.7139447490
10079	142	68	0.4804829485
10080	142	69	0.0052409871
10081	142	70	0.1807501065
10082	142	71	0.6448728237
10115	143	33	0.7574557960
10154	144	1	0.8724381765
10155	144	2	0.5256622005
10156	144	3	0.4049805063
10157	144	4	0.6509507773
10158	144	5	0.0714680771
10159	144	6	0.3644982255
10160	144	7	0.7291280734
10161	144	8	0.3967209309
10162	144	9	0.1568660955
10163	144	10	0.4722503736
10164	144	11	0.2156078671
10165	144	12	0.2699753297
10166	144	13	0.2702089325
10167	144	14	0.6817764821
10168	144	15	0.5349644367
10169	144	16	0.1676168288
10170	144	17	0.7654977827
10171	144	18	0.6657781652
10172	144	19	0.6449570120
10173	144	20	0.4720127550
10174	144	21	0.8431666223
10175	144	22	0.3471023059
10176	144	23	0.1675188197
10177	144	24	0.7780108755
10178	144	25	0.9187836633
10179	144	26	0.5698304987
10180	144	27	0.1387383100
10181	144	28	0.0718966681
10182	144	29	0.5950764483
10183	144	30	0.4371591047
10184	144	31	0.4594778903
10185	144	32	0.4675146248
10186	144	33	0.9628213057
10187	144	34	0.8644583966
10188	144	35	0.1184654022
10189	144	36	0.0342893829
10190	144	37	0.2289566221
10191	144	38	0.8475934756
10192	144	39	0.4310103143
10193	144	40	0.3858227176
10194	144	41	0.3198438496
10195	144	42	0.6466181814
10196	144	43	0.6557980473
10197	144	44	0.5900527821
10198	144	45	0.3283946635
10199	144	46	0.1907624844
10200	144	47	0.7576696109
10201	144	48	0.0938924463
10202	144	49	0.8565406497
10203	144	50	0.4026266234
10204	144	51	0.5659052017
10205	144	52	0.6997072720
10206	144	53	0.7497289293
10207	144	54	0.7334240214
10208	144	55	0.4777181474
10209	144	56	0.6685125926
10210	144	57	0.3032545205
10211	144	58	0.6164564574
10212	144	59	0.7404092606
10213	144	60	0.8983309688
10214	144	61	0.0536155626
10215	144	62	0.1998871509
10216	144	63	0.3658455936
10217	144	64	0.0164368683
10218	144	65	0.0643455475
10219	144	66	0.4843109958
10220	144	67	0.0507262512
10221	144	68	0.2933021695
10222	144	69	0.3319044719
10223	144	70	0.4817365655
10224	144	71	0.6791248871
10225	145	1	0.6517483215
10226	145	2	0.1283547468
10227	145	3	0.3349229349
10228	145	4	0.2418011036
10229	145	5	0.4567494108
10230	145	6	0.5256854193
10231	145	7	0.9994707145
10232	145	8	0.5506418571
10233	145	9	0.3822260690
10234	145	10	0.4020973379
10235	145	11	0.1165470588
10236	145	12	0.0819333415
10237	145	13	0.1518262676
10238	145	14	0.8499710807
10239	145	15	0.5596514889
10240	145	16	0.8203388602
10241	145	17	0.1532256012
10242	145	18	0.1761079468
10243	145	19	0.5607481212
10244	145	20	0.0515565700
10245	145	21	0.2297235094
10246	145	22	0.7606352721
10247	145	23	0.4174021636
10248	145	24	0.2461603777
10249	145	25	0.8249808201
10250	145	26	0.9017131594
10251	145	27	0.2968866290
10252	145	28	0.1182829896
10253	145	29	0.2336176313
10254	145	30	0.7786231949
10255	145	31	0.7974078772
10256	145	32	0.8853659527
10257	145	33	0.9069779417
10258	145	34	0.1323308120
10259	145	35	0.1271670563
10260	145	36	0.3637273526
10261	145	37	0.6580162314
10262	145	38	0.1266377713
10263	145	39	0.9143692101
10264	145	40	0.0402423004
10265	145	41	0.5287351091
10266	145	42	0.0309162689
10267	145	43	0.1221756418
10268	145	44	0.6805613767
10269	145	45	0.8808873496
10270	145	46	0.6818271312
10271	145	47	0.5009002374
10272	145	48	0.0341129508
10273	145	49	0.8579350780
10274	145	50	0.0616483586
10275	145	51	0.0856695208
10276	145	52	0.0876585874
10277	145	53	0.8222836307
10278	145	54	0.5030716844
10279	145	55	0.3338189651
10280	145	56	0.6472644508
10281	145	57	0.4047848443
10282	145	58	0.6307055941
10283	145	59	0.7655474409
10284	145	60	0.6384024755
10285	145	61	0.4093287890
10286	145	62	0.5629553180
10287	145	63	0.5237684287
10288	145	64	0.3163067312
10289	145	65	0.6952861301
10290	145	66	0.6509354850
10291	145	67	0.6800340838
10292	145	68	0.3533023614
10293	145	69	0.7775732563
10294	145	70	0.5944032939
10295	145	71	0.3935446618
10296	146	1	0.3063083659
10297	146	2	0.6253195633
10298	146	3	0.5157203041
10299	146	4	0.9868697426
10300	146	5	0.5062069129
10301	146	6	0.1975474353
10302	146	7	0.4877699800
10303	146	8	0.5403198642
10304	146	9	0.0554825133
10305	146	10	0.5494183386
10306	146	11	0.6259893849
10307	146	12	0.1431411006
10308	146	13	0.3717019698
10309	146	14	0.1290610698
10310	146	15	0.4769600658
10311	146	16	0.0189664206
10312	146	17	0.5338459141
10313	146	18	0.1076656599
10314	146	19	0.7845138614
10315	146	20	0.1722483896
10316	146	21	0.5169944493
10317	146	22	0.3474691794
10318	146	23	0.6960168183
10319	146	24	0.8333011805
10320	146	25	0.0427553095
10321	146	26	0.3469523038
10322	146	27	0.5133352643
10323	146	28	0.3960576709
10324	146	29	0.1245255601
10325	146	30	0.1077385587
10326	146	31	0.7896023332
10327	146	32	0.4308339260
10328	146	33	0.7330581220
10329	146	34	0.3053226373
10330	146	35	0.4177036691
10331	146	36	0.2392650349
10332	146	37	0.5028700726
10333	146	38	0.9054736490
10334	146	39	0.7795848991
10335	146	40	0.5583525859
10336	146	41	0.4548919881
10337	146	42	0.4055742845
10338	146	43	0.7014936865
10339	146	44	0.8265939578
10340	146	45	0.5346353543
10341	146	46	0.1784537523
10342	146	47	0.8455603784
10343	146	48	0.0684812684
10344	146	49	0.2861194122
10345	146	50	0.6300742403
10346	146	51	0.2407296579
10347	146	52	0.8031138615
10348	146	53	0.9775434197
10349	146	54	0.9367464767
10350	146	55	0.6364150420
10351	146	56	0.0202987297
10352	146	57	0.2836987805
10353	146	58	0.1497503067
10354	146	59	0.4163564006
10355	146	60	0.4082243405
10356	146	61	0.2574888654
10357	146	62	0.2059587338
10358	146	63	0.8390582670
10359	146	64	0.9905469874
10360	146	65	0.5112813711
10361	146	66	0.2567619360
10362	146	67	0.2298120223
10363	146	68	0.0141514437
10364	146	69	0.1622355850
10365	146	70	0.0093969218
10366	146	71	0.5725040296
10367	147	1	0.6171275731
10368	147	2	0.4149712063
10369	147	3	0.2739977161
10370	147	4	0.4437215310
10371	147	5	0.9496065606
10372	147	6	0.4524514684
10373	147	7	0.2892819098
10374	147	8	0.0180878290
10375	147	9	0.7385708811
10376	147	10	0.9193561501
10377	147	11	0.2588174869
10378	147	12	0.5416847426
10379	147	13	0.8968995698
10380	147	14	0.1955639636
10381	147	15	0.1780997850
10382	147	16	0.9171982994
10383	147	17	0.4792627441
10384	147	18	0.3278500917
10385	147	19	0.3335547005
10386	147	20	0.8874870851
10387	147	21	0.5853389571
10388	147	22	0.5395134343
10389	147	23	0.7265453520
10390	147	24	0.5758859445
10391	147	25	0.0507948059
10392	147	26	0.9833072880
10393	147	27	0.8056979668
10394	147	28	0.0649462496
10395	147	29	0.1455428731
10396	147	30	0.8150948887
10397	147	31	0.6374502797
10398	147	32	0.7626704467
10399	147	33	0.2300660950
10400	147	34	0.9114479958
10401	147	35	0.2063919776
10402	147	36	0.1796726556
10403	147	37	0.3638994647
10404	147	38	0.4956738874
10405	147	39	0.1977604846
10406	147	40	0.1024703458
10407	147	41	0.4150300375
10408	147	42	0.4565779720
10409	147	43	0.6441550883
10410	147	44	0.3119296078
10411	147	45	0.6521419357
10412	147	46	0.8222548733
10413	147	47	0.2291279072
10414	147	48	0.1314046802
10415	147	49	0.1501049651
10416	147	50	0.5626826077
10417	147	51	0.0188917653
10418	147	52	0.7354439222
10419	147	53	0.1021960424
10420	147	54	0.7454371173
10421	147	55	0.3113298668
10422	147	56	0.1529908483
10423	147	57	0.7287444053
10424	147	58	0.1170278341
10425	147	59	0.2179370979
10426	147	60	0.8742872784
10427	147	61	0.9321227227
10428	147	62	0.8553873776
10429	147	63	0.6369577250
10430	147	64	0.1621888182
10431	147	65	0.7668353738
10432	147	66	0.8433497031
10433	147	67	0.3418614739
10434	147	68	0.1307348385
10435	147	69	0.3390235906
10436	147	70	0.5396219590
10437	147	71	0.2332051843
10438	148	1	0.7540536285
10439	148	2	0.9961999310
10440	148	3	0.8773602727
10441	148	4	0.0659832363
10442	148	5	0.6483418667
10443	148	6	0.6996151465
10444	148	7	0.2951111435
10445	148	8	0.7797465469
10446	148	9	0.8497201116
10447	148	10	0.8577937516
10448	148	11	0.7986383121
10449	148	12	0.5851640343
10450	148	13	0.9599897941
10451	148	14	0.5440754294
10452	148	15	0.8964939010
10453	148	16	0.1129806424
10454	148	17	0.2728198348
10455	148	18	0.0135217351
10456	148	19	0.3309177402
10457	148	20	0.1471071136
10458	148	21	0.9456444583
10459	148	22	0.1863051183
10460	148	23	0.7840648387
10461	148	24	0.1078332765
10462	148	25	0.9531404921
10463	148	26	0.6274145418
10464	148	27	0.4496947504
10465	148	28	0.0838753306
10466	148	29	0.9664381328
10467	148	30	0.9893167093
10468	148	31	0.3170805150
10469	148	32	0.7204917613
10470	148	33	0.9855166404
10471	148	34	0.1944407877
10472	148	35	0.7864749976
10473	148	36	0.6338585075
10474	148	37	0.8940559342
10475	148	38	0.0815861411
10476	148	39	0.4136050544
10477	148	40	0.7437760462
10478	148	41	0.9393798928
10479	148	42	0.2122433670
10480	148	43	0.3289400805
10481	148	44	0.8993696868
10482	148	45	0.7563187964
10483	148	46	0.2254339815
10484	148	47	0.0123503292
10485	148	48	0.0291386317
10486	148	49	0.2389557171
10487	148	50	0.3432680699
10488	148	51	0.1762457453
10489	148	52	0.1846001754
10490	148	53	0.5295731882
10491	148	54	0.9603105839
10492	148	55	0.2924334519
10493	148	56	0.4827136802
10494	148	57	0.5877251262
10495	148	58	0.7421282022
10496	148	59	0.5665890109
10497	148	60	0.5541632590
10498	148	61	0.7314449120
10499	148	62	0.8836695259
10500	148	63	0.2746550203
10501	148	64	0.7169615524
10502	148	65	0.0781103135
10503	148	66	0.0611300180
10504	148	67	0.3508200599
10505	148	68	0.9721662481
10506	148	69	0.1427161591
10507	148	70	0.7644251147
10508	148	71	0.7159422943
10509	149	1	0.0820960524
10510	149	2	0.9766684817
10511	149	3	0.0448823748
10512	149	4	0.9814657392
10513	149	5	0.7329872781
10514	149	6	0.2703163563
10515	149	7	0.9938160689
10516	149	8	0.7621259098
10517	149	9	0.5092720734
10518	149	10	0.3370841388
10519	149	11	0.9383716551
10520	149	12	0.6938722488
10521	149	13	0.8666573269
10522	149	14	0.8986822395
10523	149	15	0.9863057006
10524	149	16	0.3493710072
10525	149	17	0.4864073656
10526	149	18	0.7284339033
10527	149	19	0.9159600181
10528	149	20	0.0405706246
10529	149	21	0.4598788153
10530	149	22	0.7996295439
10531	149	23	0.3152256450
10532	149	24	0.1768403677
10533	149	25	0.8777398574
10534	149	26	0.3763556629
10535	149	27	0.5276604281
10536	149	28	0.8499061055
10537	149	29	0.5190718221
10538	149	30	0.2920855428
10539	149	31	0.5658483999
10540	149	32	0.6011678744
10541	149	33	0.2687540245
10542	149	34	0.6107307747
10543	149	35	0.5826336141
10544	149	36	0.0017413027
10545	149	37	0.8810471315
10546	149	38	0.5764496829
10547	149	39	0.7638672129
10548	149	40	0.3903192049
10549	149	41	0.9135338217
10550	149	42	0.7022388680
10551	149	43	0.0841914541
10552	149	44	0.7801911486
10553	149	45	0.6009211075
10554	149	46	0.0704971547
10555	149	47	0.1295621558
10556	149	48	0.0873284731
10557	149	49	0.7989310580
10558	149	50	0.0455221739
10559	149	51	0.1278990977
10560	149	52	0.2588098734
10561	149	53	0.8451517178
10562	149	54	0.4431247427
10563	149	55	0.4356502416
10564	149	56	0.7228915752
10565	149	57	0.8194804057
10566	149	58	0.9633106696
10567	149	59	0.5727976812
10568	149	60	0.3385522282
10569	149	61	0.2553962125
10570	149	62	0.1386460811
10571	149	63	0.9397201026
10572	149	64	0.5241502370
10573	149	65	0.7493768563
10574	149	66	0.5223537167
10575	149	67	0.5258915396
10576	149	68	0.6304239877
10577	149	69	0.0988033996
10578	149	70	0.2897587526
10579	149	71	0.0207431926
10580	150	1	0.0123372213
10581	150	2	0.9919976210
10582	150	3	0.1049346467
10583	150	4	0.7925283699
10584	150	5	0.5929187285
10585	150	6	0.1754318019
10586	150	7	0.9220905257
10587	150	8	0.6802472020
10588	150	9	0.9743628600
10589	150	10	0.9676126996
10590	150	11	0.8081462998
10591	150	12	0.2331727338
10592	150	13	0.8127644174
10593	150	14	0.2512710430
10594	150	15	0.6688229754
10595	150	16	0.5356559930
10596	150	17	0.0707514486
10597	150	18	0.6321336450
10598	150	19	0.1084536742
10599	150	20	0.4093036768
10600	150	21	0.8875298575
10601	150	22	0.2470997553
10602	150	23	0.3490237799
10603	150	24	0.4116800944
10604	150	25	0.9964766116
10605	150	26	0.8713774965
10606	150	27	0.9375716341
10607	150	28	0.6269005993
10608	150	29	0.9701808966
10609	150	30	0.2273303871
10610	150	31	0.6476437924
10611	150	32	0.9825181179
10612	150	33	0.2193280081
10613	150	34	0.7525784392
10614	150	35	0.7750464883
10615	150	36	0.8122467366
10616	150	37	0.9280102411
10617	150	38	0.6971370140
10618	150	39	0.4924939387
10619	150	40	0.9023731016
10620	150	41	0.6647497141
10621	150	42	0.3006402389
10622	150	43	0.1355458354
10623	150	44	0.4775141315
10624	150	45	0.5519112819
10625	150	46	0.8043688107
10626	150	47	0.0131701245
10627	150	48	0.6226627305
10628	150	49	0.4365024557
10629	150	50	0.1216237987
10630	150	51	0.0319664078
10631	150	52	0.3240323132
10632	150	53	0.3687235545
10633	150	54	0.3809901876
10634	150	55	0.7357124076
10635	150	56	0.3652001661
10636	150	57	0.2523676842
10637	150	58	0.6732840417
10638	150	59	0.9921007659
10639	150	60	0.2225485807
10640	150	61	0.9006144288
10641	150	62	0.6397445584
10642	150	63	0.2050666991
10643	150	64	0.1199424369
10644	150	65	0.3923229976
10645	150	66	0.9801131873
10646	150	67	0.9321891740
10647	150	68	0.3203332392
10648	150	69	0.6772502013
10649	150	70	0.4246831127
10650	150	71	0.2227063407
10651	151	1	0.3419999154
10652	151	2	0.7253233516
10653	151	3	0.3582521761
10654	151	4	0.8195140474
10655	151	5	0.2772346335
10656	151	6	0.1626209868
10657	151	7	0.8326841719
10658	151	8	0.8998973644
10659	151	9	0.5991234425
10660	151	10	0.9543079711
10661	151	11	0.9318637722
10662	151	12	0.9231557557
10663	151	13	0.3230315256
10664	151	14	0.3128539599
10665	151	15	0.6588681634
10666	151	16	0.6882316917
10667	151	17	0.5652216440
10668	151	18	0.3321522051
10669	151	19	0.6803324576
10670	151	20	0.7877702252
10671	151	21	0.2327666343
10672	151	22	0.3200770160
10673	151	23	0.9928369243
10674	151	24	0.3527090712
10675	151	25	0.7124000140
10676	151	26	0.9729501116
10677	151	27	0.2848982452
10678	151	28	0.0327332532
10679	151	29	0.6502003130
10680	151	30	0.7095813584
10681	151	31	0.2554395939
10682	151	32	0.9922002289
10683	151	33	0.4349047099
10684	151	34	0.6136917700
10685	151	35	0.8117142762
10686	151	36	0.7121393438
10687	151	37	0.7763127568
10688	151	38	0.6443984481
10689	151	39	0.6120367083
10690	151	40	0.3754361994
10691	151	41	0.5987064191
10692	151	42	0.5439004805
10693	151	43	0.2985919551
10694	151	44	0.9217379447
10695	151	45	0.8567544403
10696	151	46	0.9574601185
10697	151	47	0.6099696369
10698	151	48	0.4219760844
10699	151	49	0.2896123235
10700	151	50	0.2903020945
10701	151	51	0.2097463096
10702	151	52	0.5223789578
10703	151	53	0.6103791110
10704	151	54	0.2025832338
10705	151	55	0.8750880295
10706	151	56	0.3227791251
10707	151	57	0.1755333454
10708	151	58	0.1599862748
10709	151	59	0.3555123783
10710	151	60	0.8257336589
10711	151	61	0.8695676331
10712	151	62	0.6109519722
10713	151	63	0.8179338877
10714	151	64	0.3044723435
10715	151	65	0.2246437422
10716	151	66	0.6296481639
10717	151	67	0.0166116874
10718	151	68	0.0009564990
10719	151	69	0.2740466120
10720	151	70	0.6286483957
10721	151	71	0.3763926984
10722	152	1	0.8727530316
10723	152	2	0.1725488761
10724	152	3	0.6749846535
10725	152	4	0.7944909763
10726	152	5	0.0293033165
10727	152	6	0.6324447719
10728	152	7	0.4044606132
10729	152	8	0.4512794008
10730	152	9	0.9220570954
10731	152	10	0.6947627082
10732	152	11	0.6610257109
10733	152	12	0.4444360537
10734	152	13	0.3051418192
10735	152	14	0.8636089447
10736	152	15	0.3195240833
10737	152	16	0.6279209442
10738	152	17	0.0391422906
10739	152	18	0.4795103581
10740	152	19	0.9834333225
10741	152	20	0.8648759495
10742	152	21	0.3490779917
10743	152	22	0.5943852947
10744	152	23	0.6828098372
10745	152	24	0.6535503352
10746	152	25	0.8190290369
10747	152	26	0.3124580011
10748	152	27	0.6701620226
10749	152	28	0.8199855359
10750	152	29	0.5865046130
10751	152	30	0.2988104182
10752	152	31	0.1963782343
10753	152	32	0.4592576446
10754	152	33	0.4713592944
10755	152	34	0.8713628878
10756	152	35	0.2537486213
10757	152	36	0.5006626109
10758	152	37	0.5038076597
10759	152	38	0.6582092345
10760	152	39	0.9519420117
10761	152	40	0.4258647552
10762	152	41	0.3529719426
10763	152	42	0.6129677226
10764	152	43	0.8703008089
10765	152	44	0.6581137618
10766	152	45	0.4765766677
10767	152	46	0.1898248922
10768	152	47	0.2860347060
10769	152	48	0.5157189583
10770	152	49	0.6693352507
10771	152	50	0.2694680286
10772	152	51	0.3805949078
10773	152	52	0.0184132424
10774	152	53	0.8638533233
10775	152	54	0.0634047450
10776	152	55	0.6719635776
10777	152	56	0.6828823602
10778	152	57	0.3758627460
10779	152	58	0.3421256002
10780	152	59	0.5028678961
10781	152	60	0.9623673591
10782	152	61	0.6409360184
10783	152	62	0.6992461304
10784	152	63	0.4216250041
10785	152	64	0.1122953128
10786	152	65	0.5706090182
10787	152	66	0.6753736255
10788	152	67	0.6129579237
10789	152	68	0.0744166779
10790	152	69	0.3335828600
10791	152	70	0.5648999354
10792	152	71	0.5002814336
10793	153	1	0.6865548030
10794	153	2	0.1778676584
10795	153	3	0.3705822425
10796	153	4	0.3446685649
10797	153	5	0.6544443262
10798	153	6	0.5604071352
10799	153	7	0.6307032714
10800	153	8	0.1701632845
10801	153	9	0.2297423859
10802	153	10	0.9001712999
10803	153	11	0.5507581923
10804	153	12	0.2481556283
10805	153	13	0.7640246237
10806	153	14	0.6141629373
10807	153	15	0.9201192060
10808	153	16	0.4469069839
10809	153	17	0.9900256833
10810	153	18	0.2622448062
10811	153	19	0.9497748804
10812	153	20	0.9523930424
10813	153	21	0.9031808246
10814	153	22	0.6490210108
10815	153	23	0.3740180465
10816	153	24	0.0154761374
10817	153	25	0.2196300295
10818	153	26	0.0493916720
10819	153	27	0.6284340611
10820	153	28	0.2940467075
10821	153	29	0.3829745324
10822	153	30	0.1933339965
10823	153	31	0.7943281410
10824	153	32	0.0695293355
10825	153	33	0.3712016549
10826	153	34	0.1649103840
10827	153	35	0.4141979003
10828	153	36	0.0256459811
10829	153	37	0.7253175192
10830	153	38	0.0449011717
10831	153	39	0.1958092656
10832	153	40	0.9550599051
10833	153	41	0.9450724721
10834	153	42	0.7465674579
10835	153	43	0.2032155334
10836	153	44	0.7090970958
10837	153	45	0.3607303952
10838	153	46	0.1233347394
10839	153	47	0.1560040796
10840	153	48	0.3507560785
10841	153	49	0.3855795455
10842	153	50	0.1057789600
10843	153	51	0.3031491213
10844	153	52	0.2887603701
10845	153	53	0.7547999714
10846	153	54	0.6771671679
10847	153	55	0.3042365075
10848	153	56	0.9744300009
10849	153	57	0.7265588404
10850	153	58	0.9326705686
10851	153	59	0.2684767083
10852	153	60	0.1095333728
10853	153	61	0.1260045650
10854	153	62	0.0628048498
10855	153	63	0.1790627083
10856	153	64	0.4972062204
10857	153	65	0.2277152338
10858	153	66	0.5932606086
10859	153	67	0.5228522015
10860	153	68	0.9530327530
10861	153	69	0.6381617808
10862	153	70	0.7186614675
10863	153	71	0.9080926580
10864	154	1	0.5832342529
10865	154	2	0.4652289255
10866	154	3	0.1113081914
10867	154	4	0.2923313486
10868	154	5	0.8259593211
10869	154	6	0.2346429308
10870	154	7	0.4483354283
10871	154	8	0.1767153996
10872	154	9	0.6202224763
10873	154	10	0.5541143888
10874	154	11	0.4798645210
10875	154	12	0.9089828464
10876	154	13	0.3089143601
10877	154	14	0.1570316893
10878	154	15	0.2132193539
10879	154	16	0.2833443610
10880	154	17	0.8835905297
10881	154	18	0.1458899225
10882	154	19	0.5518210693
10883	154	20	0.9931239025
10884	154	21	0.2718944876
10885	154	22	0.6146259191
10886	154	23	0.1721866108
10887	154	24	0.7691007080
10888	154	25	0.8423411530
10889	154	26	0.7654472194
10890	154	27	0.2919529099
10891	154	28	0.7953739059
10892	154	29	0.4036090001
10893	154	30	0.0106143774
10894	154	31	0.7034665640
10895	154	32	0.9868432530
10896	154	33	0.4758433029
10897	154	34	0.8147747554
10898	154	35	0.2791746017
10899	154	36	0.3018026240
10900	154	37	0.0494176862
10901	154	38	0.7275100304
10902	154	39	0.4785180241
10903	154	40	0.6696401625
10904	154	41	0.2816244191
10905	154	42	0.9583825450
10906	154	43	0.5786230089
10907	154	44	0.5905387793
10908	154	45	0.1154142343
10909	154	46	0.7918423628
10910	154	47	0.8738831403
10911	154	48	0.9990047640
10912	154	49	0.9377322854
10913	154	50	0.4257042096
10914	154	51	0.9921286665
10915	154	52	0.2096267734
10916	154	53	0.0403301292
10917	154	54	0.1643152772
10918	154	55	0.9787274813
10919	154	56	0.8826712822
10920	154	57	0.9297624971
10921	154	58	0.2706803912
10922	154	59	0.6780451885
10923	154	60	0.3333714972
10924	154	61	0.2812947687
10925	154	62	0.3815117525
10926	154	63	0.3202147507
10927	154	64	0.7571380720
10928	154	65	0.1962865083
10929	154	66	0.5993893524
10930	154	67	0.0589406961
10931	154	68	0.2457041945
10932	154	69	0.3268993828
10933	154	70	0.5374587202
10934	154	71	0.9153443575
10967	155	33	0.8132501850
11006	156	1	0.4871920343
11007	156	2	0.0614209296
11008	156	3	0.7040219260
11009	156	4	0.6816958212
11010	156	5	0.4652800192
11011	156	6	0.3909494416
11012	156	7	0.2978509511
11013	156	8	0.5656058146
11014	156	9	0.7604536191
11015	156	10	0.0137026128
11016	156	11	0.6957698129
11017	156	12	0.0938292267
11018	156	13	0.2107625590
11019	156	14	0.1759867654
11020	156	15	0.1482143374
11021	156	16	0.0853172978
11022	156	17	0.6056460245
11023	156	18	0.9825496469
11024	156	19	0.8830710244
11025	156	20	0.3116469732
11026	156	21	0.1342938757
11027	156	22	0.5193680958
11028	156	23	0.9025134132
11029	156	24	0.0992882894
11030	156	25	0.4881758788
11031	156	26	0.5773079265
11032	156	27	0.4887883882
11033	156	28	0.0753041031
11034	156	29	0.4089762345
11035	156	30	0.9130544369
11036	156	31	0.5042947838
11037	156	32	0.8961682688
11038	156	33	0.9744753665
11039	156	34	0.2083167103
11040	156	35	0.5778640900
11041	156	36	0.4397553857
11042	156	37	0.5992661519
11043	156	38	0.8757150415
11044	156	39	0.0053612003
11045	156	40	0.3597197710
11046	156	41	0.8894176544
11047	156	42	0.7011310137
11048	156	43	0.4535489981
11049	156	44	0.1001802138
11050	156	45	0.8771177791
11051	156	46	0.6017633355
11052	156	47	0.1854975116
11053	156	48	0.4827638040
11054	156	49	0.5843129824
11055	156	50	0.0685685361
11056	156	51	0.7944107773
11057	156	52	0.7186068580
11058	156	53	0.5879366319
11059	156	54	0.6969241905
11060	156	55	0.8178951475
11061	156	56	0.0761125106
11062	156	57	0.2742321175
11063	156	58	0.3066835357
11064	156	59	0.1514166137
11065	156	60	0.6832083520
11066	156	61	0.2197379731
11067	156	62	0.6557113980
11068	156	63	0.5793766212
11069	156	64	0.1942133396
11070	156	65	0.8640281083
11071	156	66	0.1572407112
11072	156	67	0.6339687258
11073	156	68	0.4632942602
11074	156	69	0.0329557527
11075	156	70	0.6393299261
11076	156	71	0.8230140316
11077	157	1	0.9223734075
11078	157	2	0.3404609398
11079	157	3	0.2765630297
11080	157	4	0.0225536213
11081	157	5	0.2175787194
11082	157	6	0.8783263653
11083	157	7	0.2080511330
11084	157	8	0.7003425234
11085	157	9	0.4626393477
11086	157	10	0.2766196695
11087	157	11	0.4947533007
11088	157	12	0.1812462057
11089	157	13	0.8645563014
11090	157	14	0.1916774912
11091	157	15	0.9991413532
11092	157	16	0.9406688125
11093	157	17	0.4659096086
11094	157	18	0.3058248889
11095	157	19	0.0920854262
11096	157	20	0.1491179611
11097	157	21	0.5255628619
11098	157	22	0.7477968242
11099	157	23	0.7284945822
11100	157	24	0.7197762020
11101	157	25	0.6118249325
11102	157	26	0.8857352934
11103	157	27	0.3537449278
11104	157	28	0.0751191932
11105	157	29	0.9186910465
11106	157	30	0.9930748539
11107	157	31	0.8981332248
11108	157	32	0.8410644541
11109	157	33	0.3335357942
11110	157	34	0.1746962545
11111	157	35	0.8636180754
11112	157	36	0.5511145135
11113	157	37	0.0530226198
11114	157	38	0.0716692084
11115	157	39	0.2514570369
11116	157	40	0.5156619675
11117	157	41	0.3482888779
11118	157	42	0.7462103376
11119	157	43	0.6969081732
11120	157	44	0.2128451797
11121	157	45	0.9378878288
11122	157	46	0.6960495263
11123	157	47	0.1535139922
11124	157	48	0.4037974379
11125	157	49	0.0018744152
11126	157	50	0.2455994184
11127	157	51	0.5529153990
11128	157	52	0.5274372776
11129	157	53	0.9933962431
11130	157	54	0.2814099812
11131	157	55	0.2472134796
11132	157	56	0.6052211756
11133	157	57	0.1671452746
11134	157	58	0.6009584074
11135	157	59	0.6803403688
11136	157	60	0.0858363211
11137	157	61	0.5940332613
11138	157	62	0.5784735936
11139	157	63	0.9269007752
11140	157	64	0.9275690555
11141	157	65	0.7531698481
11142	157	66	0.7905188506
11143	157	67	0.4786835690
11144	157	68	0.8061924679
11145	157	69	0.8621880594
11146	157	70	0.7301406059
11147	157	71	0.3218544354
11148	158	1	0.2104769372
11149	158	2	0.4763509436
11150	158	3	0.0187626085
11151	158	4	0.4233221170
11152	158	5	0.4142387728
11153	158	6	0.7148121349
11154	158	7	0.5768361092
11155	158	8	0.8180362107
11156	158	9	0.7166865505
11157	158	10	0.8224355280
11158	158	11	0.3709516097
11159	158	12	0.2441238281
11160	158	13	0.8158317711
11161	158	14	0.6523615909
11162	158	15	0.4913373077
11163	158	16	0.4210529467
11164	158	17	0.8195068655
11165	158	18	0.0922957151
11166	158	19	0.1013933159
11167	158	20	0.9053431870
11168	158	21	0.6863289764
11169	158	22	0.6798669095
11170	158	23	0.8322439622
11171	158	24	0.6138980323
11172	158	25	0.4330367581
11173	158	26	0.6227628132
11174	158	27	0.0925816013
11175	158	28	0.2392292260
11176	158	29	0.4849508726
11177	158	30	0.8227222078
11178	158	31	0.5610836619
11179	158	32	0.6954278098
11180	158	33	0.2990731513
11181	158	34	0.5798462704
11182	158	35	0.1187499273
11183	158	36	0.7133119241
11184	158	37	0.2946584057
11185	158	38	0.6955860364
11186	158	39	0.5313481349
11187	158	40	0.0113449562
11188	158	41	0.5180215645
11189	158	42	0.9022997445
11190	158	43	0.2554687844
11191	158	44	0.3338533356
11192	158	45	0.5546613354
11193	158	46	0.7468060921
11194	158	47	0.7549062828
11195	158	48	0.3741682013
11196	158	49	0.8391018072
11197	158	50	0.8562995987
11198	158	51	0.2795113884
11199	158	52	0.5254307836
11200	158	53	0.5361665082
11201	158	54	0.1117553506
11202	158	55	0.1393288160
11203	158	56	0.9692032663
11204	158	57	0.7345181638
11205	158	58	0.2319104178
11206	158	59	0.2084324928
11207	158	60	0.2194690364
11208	158	61	0.0546326255
11209	158	62	0.7695161547
11210	158	63	0.9148968467
11211	158	64	0.3537057769
11212	158	65	0.3493624250
11213	158	66	0.0336467740
11214	158	67	0.0670177015
11215	158	68	0.6440208307
11216	158	69	0.7292328104
11217	158	70	0.5983658363
11218	158	71	0.6553657870
11251	159	33	0.9678000105
11290	160	1	0.5846677385
11291	160	2	0.1575631439
11292	160	3	0.7649599854
11293	160	4	0.1223630025
11294	160	5	0.1399535541
11295	160	6	0.3382340758
11296	160	7	0.3577416339
11297	160	8	0.6776239863
11298	160	9	0.3049206552
11299	160	10	0.4992361260
11300	160	11	0.9900434762
11301	160	12	0.7196523487
11302	160	13	0.3163626334
11303	160	14	0.9921088717
11304	160	15	0.9361349335
11305	160	16	0.1584835807
11306	160	17	0.7174669458
11307	160	18	0.0213861112
11308	160	19	0.6696197996
11309	160	20	0.8953505098
11310	160	21	0.5737717180
11311	160	22	0.5051370771
11312	160	23	0.7730139391
11313	160	24	0.0939573357
11314	160	25	0.5758699849
11315	160	26	0.9315649443
11316	160	27	0.6372698811
11317	160	28	0.5394591861
11318	160	29	0.7070175200
11319	160	30	0.6332044727
11320	160	31	0.8926471523
11321	160	32	0.2916852585
11322	160	33	0.7907676166
11323	160	34	0.6576071382
11324	160	35	0.4140482610
11325	160	36	0.9307211712
11326	160	37	0.9958412140
11327	160	38	0.7717898954
11328	160	39	0.6083451575
11329	160	40	0.3007618692
11330	160	41	0.2710260213
11331	160	42	0.5983886337
11332	160	43	0.0204142178
11333	160	44	0.5873886547
11334	160	45	0.5904975054
11335	160	46	0.9565491513
11336	160	47	0.7458722359
11337	160	48	0.3079644516
11338	160	49	0.9779352625
11339	160	50	0.4154920354
11340	160	51	0.2033149614
11341	160	52	0.5517069809
11342	160	53	0.9206291130
11343	160	54	0.9763289005
11344	160	55	0.6456643166
11345	160	56	0.4964990979
11346	160	57	0.9078938453
11347	160	58	0.2829341982
11348	160	59	0.0359582840
11349	160	60	0.6149113653
11350	160	61	0.9161386709
11351	160	62	0.9286054368
11352	160	63	0.9065966243
11353	160	64	0.7069062875
11354	160	65	0.5862125750
11355	160	66	0.3206448853
11356	160	67	0.6376274587
11357	160	68	0.5820537889
11358	160	69	0.0924347807
11359	160	70	0.2459726161
11360	160	71	0.8828156586
11361	161	1	0.3634608025
11362	161	2	0.8443612503
11363	161	3	0.9032298764
11364	161	4	0.9508494572
11365	161	5	0.4348587557
11366	161	6	0.8597790282
11367	161	7	0.6967216930
11368	161	8	0.7428232073
11369	161	9	0.8377142907
11370	161	10	0.1122137289
11371	161	11	0.9461381692
11372	161	12	0.3894212716
11373	161	13	0.0328428419
11374	161	14	0.9224670697
11375	161	15	0.0350855887
11376	161	16	0.5293419398
11377	161	17	0.8303609150
11378	161	18	0.3180197868
11379	161	19	0.5653002239
11380	161	20	0.4452722808
11381	161	21	0.2341584577
11382	161	22	0.4939056607
11383	161	23	0.3518689051
11384	161	24	0.9410647452
11385	161	25	0.0801182357
11386	161	26	0.6725137904
11387	161	27	0.5786922043
11388	161	28	0.6621720251
11389	161	29	0.7649485716
11390	161	30	0.8246648205
11391	161	31	0.5449876837
11392	161	32	0.1284093740
11393	161	33	0.6690260707
11394	161	34	0.4482175601
11395	161	35	0.0792588312
11396	161	36	0.1038848269
11397	161	37	0.3079965883
11398	161	38	0.7759805247
11399	161	39	0.8467080342
11400	161	40	0.1457108795
11401	161	41	0.8881942537
11402	161	42	0.7928462033
11403	161	43	0.5351321511
11404	161	44	0.9210370956
11405	161	45	0.7153132735
11406	161	46	0.5702177398
11407	161	47	0.4503790354
11408	161	48	0.5456741885
11409	161	49	0.8882375266
11410	161	50	0.0156792593
11411	161	51	0.9909464694
11412	161	52	0.1223959844
11413	161	53	0.5095849205
11414	161	54	0.3428153745
11415	161	55	0.0634607300
11416	161	56	0.5897031561
11417	161	57	0.0153291654
11418	161	58	0.6421529343
11419	161	59	0.2518751812
11420	161	60	0.7802777370
11421	161	61	0.4668177548
11422	161	62	0.7968628649
11423	161	63	0.9086871110
11424	161	64	0.1358438260
11425	161	65	0.2450804254
11426	161	66	0.9879459422
11427	161	67	0.2397286529
11428	161	68	0.5530770137
11429	161	69	0.7639264669
11430	161	70	0.0864366870
11431	161	71	0.6987878932
11432	162	1	0.6521207206
11433	162	2	0.8792828908
11434	162	3	0.2339200447
11435	162	4	0.5731578162
11436	162	5	0.5945961643
11437	162	6	0.8041377845
11438	162	7	0.0235368516
11439	162	8	0.1402703528
11440	162	9	0.6923753116
11441	162	10	0.0392161114
11442	162	11	0.1312168227
11443	162	12	0.8147712960
11444	162	13	0.5488010319
11445	162	14	0.4740321971
11446	162	15	0.8782320260
11447	162	16	0.1385041880
11448	162	17	0.4893613625
11449	162	18	0.5203849603
11450	162	19	0.3903793697
11451	162	20	0.2696390995
11452	162	21	0.9872027156
11453	162	22	0.1872422346
11454	162	23	0.1783262105
11455	162	24	0.1230465416
11456	162	25	0.4323226600
11457	162	26	0.1662721531
11458	162	27	0.3627751945
11459	162	28	0.9853996742
11460	162	29	0.9301986201
11461	162	30	0.4492118815
11462	162	31	0.6841875673
11463	162	32	0.5823193411
11464	162	33	0.3284947723
11465	162	34	0.9181076121
11466	162	35	0.1554771573
11467	162	36	0.9230909366
11468	162	37	0.7222453970
11469	162	38	0.1790140094
11470	162	39	0.0633612899
11471	162	40	0.4146207087
11472	162	41	0.2182301208
11473	162	42	0.1945781126
11474	162	43	0.2293920047
11475	162	44	0.7670311527
11476	162	45	0.6686103097
11477	162	46	0.1076240311
11478	162	47	0.9055353408
11479	162	48	0.1579716727
11480	162	49	0.6280089915
11481	162	50	0.2959147105
11482	162	51	0.4276107722
11483	162	52	0.6152117071
11484	162	53	0.4831569456
11485	162	54	0.6059369831
11486	162	55	0.7382582487
11487	162	56	0.9154796056
11488	162	57	0.7722091363
11489	162	58	0.1010334431
11490	162	59	0.9008792797
11491	162	60	0.7024077564
11492	162	61	0.5502453251
11493	162	62	0.5850668475
11494	162	63	0.2847270975
11495	162	64	0.8787400974
11496	162	65	0.5031744596
11497	162	66	0.4402042553
11498	162	67	0.8018310345
11499	162	68	0.2254198566
11500	162	69	0.6192182647
11501	162	70	0.8651923244
11502	162	71	0.6400405653
11503	163	1	0.8374483855
11504	163	2	0.0597704370
11505	163	3	0.8694325704
11506	163	4	0.6044795383
11507	163	5	0.7283807467
11508	163	6	0.9770566016
11509	163	7	0.5100148791
11510	163	8	0.8863524194
11511	163	9	0.6050655930
11512	163	10	0.8059295900
11513	163	11	0.3139631920
11514	163	12	0.2202773006
11515	163	13	0.2890865356
11516	163	14	0.9199001752
11517	163	15	0.9585355492
11518	163	16	0.2045661411
11519	163	17	0.6921093115
11520	163	18	0.0595689928
11521	163	19	0.1054454213
11522	163	20	0.3945170678
11523	163	21	0.6098143179
11524	163	22	0.6905122688
11525	163	23	0.6792441658
11526	163	24	0.4885544153
11527	163	25	0.1936867284
11528	163	26	0.1194484211
11529	163	27	0.2903854498
11530	163	28	0.4191065854
11531	163	29	0.7386666858
11532	163	30	0.1555777742
11533	163	31	0.0591471507
11534	163	32	0.5761150713
11535	163	33	0.2153482111
11536	163	34	0.9285797211
11537	163	35	0.1805946096
11538	163	36	0.9437289583
11539	163	37	0.9056363227
11540	163	38	0.6906094886
11541	163	39	0.8300813776
11542	163	40	0.5107019162
11543	163	41	0.4965390787
11544	163	42	0.1440445697
11545	163	43	0.7309792168
11546	163	44	0.7856256142
11547	163	45	0.0639447449
11548	163	46	0.6895147660
11549	163	47	0.9901917558
11550	163	48	0.7560540563
11551	163	49	0.7490837588
11552	163	50	0.0956371771
11553	163	51	0.1505711246
11554	163	52	0.3588980767
11555	163	53	0.7861494459
11556	163	54	0.8298152904
11557	163	55	0.8474524925
11558	163	56	0.9798361743
11559	163	57	0.9492637115
11560	163	58	0.1378379422
11561	163	59	0.3989427597
11562	163	60	0.6879303972
11563	163	61	0.2934157168
11564	163	62	0.4580899109
11565	163	63	0.2640454685
11566	163	64	0.5087639280
11567	163	65	0.3866696320
11568	163	66	0.4446400781
11569	163	67	0.4524928862
11570	163	68	0.2923059552
11571	163	69	0.1352495668
11572	163	70	0.2825742643
11573	163	71	0.8030078714
11574	164	1	0.6317886459
11575	164	2	0.4266188340
11576	164	3	0.5339870881
11577	164	4	0.4174142601
11578	164	5	0.4905635794
11579	164	6	0.2235018541
11580	164	7	0.4076060159
11581	164	8	0.2466176357
11582	164	9	0.9725856134
11583	164	10	0.5032431930
11584	164	11	0.3971887603
11585	164	12	0.3314836901
11586	164	13	0.2893926390
11587	164	14	0.2270040507
11588	164	15	0.1789361825
11589	164	16	0.2692288137
11590	164	17	0.1762677622
11591	164	18	0.3167741252
11592	164	19	0.6681715734
11593	164	20	0.8641981594
11594	164	21	0.6101898421
11595	164	22	0.1262614843
11596	164	23	0.1282436280
11597	164	24	0.1189537700
11598	164	25	0.5129311169
11599	164	26	0.5728837061
11600	164	27	0.5714466567
11601	164	28	0.8052370721
11602	164	29	0.7081332733
11603	164	30	0.8540209210
11604	164	31	0.6082449434
11605	164	32	0.3399219192
11606	164	33	0.2806397551
11607	164	34	0.1422320316
11608	164	35	0.7573361793
11609	164	36	0.7712033344
11610	164	37	0.3657338857
11611	164	38	0.1649421956
11612	164	39	0.0178209706
11613	164	40	0.3383194990
11614	164	41	0.6681853887
11615	164	42	0.4150097310
11616	164	43	0.6698031896
11617	164	44	0.9575780281
11618	164	45	0.6420137822
11619	164	46	0.8487393721
11620	164	47	0.2268068418
11621	164	48	0.8182815444
11622	164	49	0.1655134973
11623	164	50	0.8949784152
11624	164	51	0.6824797043
11625	164	52	0.7757033394
11626	164	53	0.0212399000
11627	164	54	0.8107233322
11628	164	55	0.8946571099
11629	164	56	0.5341710169
11630	164	57	0.3836070388
11631	164	58	0.4661037666
11632	164	59	0.3394080889
11633	164	60	0.0917403121
11634	164	61	0.3201246876
11635	164	62	0.9476530324
11636	164	63	0.4316622312
11637	164	64	0.6007644427
11638	164	65	0.0898850639
11639	164	66	0.1889984105
11640	164	67	0.3719677776
11641	164	68	0.4556189496
11642	164	69	0.3539406061
11643	164	70	0.3897887482
11644	164	71	0.7939384491
11645	165	1	0.0221259953
11646	165	2	0.8047984792
11647	165	3	0.4637416387
11648	165	4	0.9797040233
11649	165	5	0.4468122614
11650	165	6	0.3124810108
11651	165	7	0.2065108651
11652	165	8	0.2650938062
11653	165	9	0.4779945086
11654	165	10	0.1014892804
11655	165	11	0.9475735105
11656	165	12	0.2536978479
11657	165	13	0.1227291804
11658	165	14	0.7582968427
11659	165	15	0.1483549578
11660	165	16	0.6569001973
11661	165	17	0.1419038814
11662	165	18	0.6144587244
11663	165	19	0.9963082862
11664	165	20	0.2336441935
11665	165	21	0.9345834120
11666	165	22	0.9439613186
11667	165	23	0.6653064247
11668	165	24	0.5353478552
11669	165	25	0.0338463825
11670	165	26	0.8543048357
11671	165	27	0.9073156328
11672	165	28	0.4894653326
11673	165	29	0.2082454418
11674	165	30	0.2971043810
11675	165	31	0.2834037817
11676	165	32	0.2303714370
11677	165	33	0.1019028602
11678	165	34	0.7471454204
11679	165	35	0.2100754604
11680	165	36	0.5487151220
11681	165	37	0.0596264312
11682	165	38	0.4165863255
11683	165	39	0.8138089282
11684	165	40	0.5376209398
11685	165	41	0.5180756063
11686	165	42	0.7613824387
11687	165	43	0.7913187882
11688	165	44	0.6408047867
11689	165	45	0.5196792814
11690	165	46	0.9396737460
11691	165	47	0.2977049844
11692	165	48	0.6615831633
11693	165	49	0.5541324709
11694	165	50	0.2940132706
11695	165	51	0.8952273568
11696	165	52	0.4887158829
11697	165	53	0.2379745897
11698	165	54	0.5605337820
11699	165	55	0.0240637381
11700	165	56	0.2718209722
11701	165	57	0.4148386177
11702	165	58	0.9313793709
11703	165	59	0.7612863048
11704	165	60	0.6230840595
11705	165	61	0.2284837519
11706	165	62	0.0446900865
11707	165	63	0.8534554970
11708	165	64	0.3303866126
11709	165	65	0.7918355069
11710	165	66	0.0635309573
11711	165	67	0.8791017346
11712	165	68	0.8514619386
11713	165	69	0.4801172833
11714	165	70	0.6929106629
11715	165	71	0.3890828784
11716	166	1	0.9981928896
11717	166	2	0.4542931016
11718	166	3	0.1804016666
11719	166	4	0.6389976763
11720	166	5	0.9739723830
11721	166	6	0.1200754130
11722	166	7	0.9367026608
11723	166	8	0.6355555463
11724	166	9	0.6742078839
11725	166	10	0.2307159319
11726	166	11	0.5307829035
11727	166	12	0.1629237668
11728	166	13	0.4686905215
11729	166	14	0.0913166855
11730	166	15	0.1869875053
11731	166	16	0.7405114938
11732	166	17	0.5061553032
11733	166	18	0.1183668762
11734	166	19	0.5017977990
11735	166	20	0.1292393627
11736	166	21	0.3468506285
11737	166	22	0.5464878855
11738	166	23	0.9826948596
11739	166	24	0.6772372411
11740	166	25	0.3383233929
11741	166	26	0.0462258174
11742	166	27	0.5563389757
11743	166	28	0.1897853315
11744	166	29	0.5263431007
11745	166	30	0.2492496385
11746	166	31	0.5788682099
11747	166	32	0.5245359903
11748	166	33	0.7035427401
11749	166	34	0.7592698769
11750	166	35	0.1635336666
11751	166	36	0.6775151230
11752	166	37	0.8793452899
11753	166	38	0.1002363279
11754	166	39	0.3130706698
11755	166	40	0.5535531738
11756	166	41	0.3309522597
11757	166	42	0.8438535733
11758	166	43	0.7164769405
11759	166	44	0.7996427813
11760	166	45	0.9351702589
11761	166	46	0.9034644458
11762	166	47	0.5401542750
11763	166	48	0.4413255621
11764	166	49	0.0218313225
11765	166	50	0.0419520740
11766	166	51	0.5705649247
11767	166	52	0.3686819510
11768	166	53	0.5884399600
11769	166	54	0.5532597848
11770	166	55	0.0459191920
11771	166	56	0.9267633529
11772	166	57	0.5994856022
11773	166	58	0.6022581677
11774	166	59	0.1165486844
11775	166	60	0.1258287029
11776	166	61	0.8515078062
11777	166	62	0.6954168943
11778	166	63	0.6503646933
11779	166	64	0.5550505463
11780	166	65	0.4546867711
11781	166	66	0.8138983599
11782	166	67	0.2325656693
11783	166	68	0.3340320610
11784	166	69	0.9141346877
11785	166	70	0.5456363391
11786	166	71	0.8875852348
11787	167	1	0.2450869475
11788	167	2	0.3894899124
11789	167	3	0.6040621758
11790	167	4	0.0447297287
11791	167	5	0.3246601713
11792	167	6	0.5075266217
11793	167	7	0.5848840042
11794	167	8	0.7659857334
11795	167	9	0.5293579441
11796	167	10	0.6268360782
11797	167	11	0.3365506586
11798	167	12	0.8980398951
11799	167	13	0.2152760383
11800	167	14	0.8898104434
11801	167	15	0.9439590871
11802	167	16	0.1420393912
11803	167	17	0.4892960456
11804	167	18	0.5462172548
11805	167	19	0.2585880756
11806	167	20	0.6151247486
11807	167	21	0.3977250610
11808	167	22	0.9540049704
11809	167	23	0.2654894418
11810	167	24	0.9527756074
11811	167	25	0.4086917415
11812	167	26	0.0793878017
11813	167	27	0.1853412772
11814	167	28	0.7427238030
11815	167	29	0.9935224899
11816	167	30	0.7309776163
11817	167	31	0.6303090379
11818	167	32	0.2386094374
11819	167	33	0.1204675292
11820	167	34	0.2343712137
11821	167	35	0.2833391665
11822	167	36	0.4451277005
11823	167	37	0.7418978359
11824	167	38	0.8682231707
11825	167	39	0.2111134343
11826	167	40	0.2712557800
11827	167	41	0.4950592490
11828	167	42	0.5476640929
11829	167	43	0.1692956756
11830	167	44	0.7103352877
11831	167	45	0.4374745362
11832	167	46	0.1132547627
11833	167	47	0.8523746789
11834	167	48	0.9267705819
11835	167	49	0.6594720180
11836	167	50	0.1109627550
11837	167	51	0.5418953304
11838	167	52	0.0571970791
11839	167	53	0.0649677254
11840	167	54	0.8073847722
11841	167	55	0.0099726869
11842	167	56	0.4736594670
11843	167	57	0.8867725739
11844	167	58	0.1953139640
11845	167	59	0.2163832700
11846	167	60	0.8802950638
11847	167	61	0.9262915803
11848	167	62	0.8466923083
11849	167	63	0.1189045017
11850	167	64	0.0467591095
11851	167	65	0.0810635220
11852	167	66	0.4022436682
11853	167	67	0.4918868104
11854	167	68	0.8229613579
11855	167	69	0.2704668390
11856	167	70	0.7030002447
11857	167	71	0.0942171384
11858	168	1	0.7655260880
11859	168	2	0.2506643375
11860	168	3	0.2635128140
11861	168	4	0.4758613757
11862	168	5	0.6881388738
11863	168	6	0.3767675767
11864	168	7	0.3282360551
11865	168	8	0.6149094556
11866	168	9	0.0362395947
11867	168	10	0.4391988101
11868	168	11	0.1568047861
11869	168	12	0.0934366742
11870	168	13	0.5041665356
11871	168	14	0.9641895583
11872	168	15	0.1034093611
11873	168	16	0.9778260025
11874	168	17	0.8509621322
11875	168	18	0.2987233251
11876	168	19	0.1942092730
11877	168	20	0.7312571965
11878	168	21	0.2250149054
11879	168	22	0.0409015813
11880	168	23	0.8501616982
11881	168	24	0.2717740154
11882	168	25	0.1219651033
11883	168	26	0.2524053664
11884	168	27	0.7636608258
11885	168	28	0.9449264617
11886	168	29	0.5228722054
11887	168	30	0.4666610705
11888	168	31	0.0391436000
11889	168	32	0.2883982933
11890	168	33	0.7173254080
11891	168	34	0.3026564140
11892	168	35	0.7642596695
11893	168	36	0.4054642818
11894	168	37	0.6794239907
11895	168	38	0.0924957246
11896	168	39	0.0203737374
11897	168	40	0.7156635858
11898	168	41	0.5316945347
11899	168	42	0.1771785235
11900	168	43	0.8091002600
11901	168	44	0.0358610703
11902	168	45	0.1413680818
11903	168	46	0.9125096211
11904	168	47	0.0136870728
11905	168	48	0.9923302140
11906	168	49	0.2112329463
11907	168	50	0.2078963458
11908	168	51	0.7235874105
11909	168	52	0.4362478517
11910	168	53	0.2487979271
11911	168	54	0.5737491087
11912	168	55	0.7080218671
11913	168	56	0.3707630308
11914	168	57	0.8261544751
11915	168	58	0.4716826929
11916	168	59	0.3156894925
11917	168	60	0.3490266805
11918	168	61	0.9383437634
11919	168	62	0.3548330925
11920	168	63	0.6374249742
11921	168	64	0.6556691714
11922	168	65	0.6574895065
11923	168	66	0.4016846437
11924	168	67	0.0611334532
11925	168	68	0.3369134972
11926	168	69	0.4941803683
11927	168	70	0.0815071906
11928	168	71	0.0525770830
11929	169	1	0.0258749030
11930	169	2	0.2586857141
11931	169	3	0.8616773430
11932	169	4	0.0617359732
11933	169	5	0.4000537959
11934	169	6	0.7741869641
11935	169	7	0.0754230460
11936	169	8	0.3923840104
11937	169	9	0.9854199104
11938	169	10	0.2833193922
11939	169	11	0.1159714209
11940	169	12	0.4216677626
11941	169	13	0.5321173193
11942	169	14	0.6897205301
11943	169	15	0.1296896297
11944	169	16	0.9028803501
11945	169	17	0.5158750052
11946	169	18	0.6013723230
11947	169	19	0.2185698426
11948	169	20	0.8649016861
11949	169	21	0.5397160864
11950	169	22	0.5734029352
11951	169	23	0.5023266603
11952	169	24	0.1953852582
11953	169	25	0.2308924417
11954	169	26	0.9040113040
11955	169	27	0.2565187113
11956	169	28	0.5678059394
11957	169	29	0.3981916723
11958	169	30	0.3380259024
11959	169	31	0.6203830224
11960	169	32	0.4240665752
11961	169	33	0.5967116165
11962	169	34	0.4820603658
11963	169	35	0.4858025485
11964	169	36	0.9967654129
11965	169	37	0.2562473300
11966	169	38	0.5612255945
11967	169	39	0.3891494232
11968	169	40	0.2416672409
11969	169	41	0.8445449867
11970	169	42	0.5051208441
11971	169	43	0.6633350034
11972	169	44	0.3766623065
11973	169	45	0.1948413742
11974	169	46	0.7930246331
11975	169	47	0.2795426566
11976	169	48	0.7107163798
11977	169	49	0.3943969561
11978	169	50	0.4981124997
11979	169	51	0.5756180659
11980	169	52	0.9341130429
11981	169	53	0.0715154349
11982	169	54	0.0779447262
11983	169	55	0.1294983011
11984	169	56	0.3024078771
11985	169	57	0.9819560302
11986	169	58	0.3860170124
11987	169	59	0.8702138164
11988	169	60	0.3801477025
11989	169	61	0.7240429148
11990	169	62	0.4905968388
11991	169	63	0.8042142778
11992	169	64	0.3207545318
11993	169	65	0.9726572046
11994	169	66	0.2900168262
11995	169	67	0.3175199446
11996	169	68	0.2289045351
11997	169	69	0.8512424207
11998	169	70	0.7066693678
11999	169	71	0.4705717759
12000	170	1	0.6957874079
12001	170	2	0.2117902120
12002	170	3	0.1339067793
12003	170	4	0.0724497144
12004	170	5	0.4066315866
12005	170	6	0.9269314124
12006	170	7	0.3519923710
12007	170	8	0.1173479664
12008	170	9	0.3213283690
12009	170	10	0.8501048707
12010	170	11	0.6929660323
12011	170	12	0.2554414119
12012	170	13	0.9216203061
12013	170	14	0.7709107585
12014	170	15	0.3849397129
12015	170	16	0.2240281831
12016	170	17	0.7528667888
12017	170	18	0.7709567253
12018	170	19	0.0942419996
12019	170	20	0.1330144913
12020	170	21	0.4949996406
12021	170	22	0.5848388383
12022	170	23	0.9372287691
12023	170	24	0.8157541724
12024	170	25	0.5574960434
12025	170	26	0.2272455953
12026	170	27	0.1332741170
12027	170	28	0.7864005785
12028	170	29	0.0784880160
12029	170	30	0.8399434849
12030	170	31	0.2569723544
12031	170	32	0.7742754240
12032	170	33	0.0517336968
12033	170	34	0.3908791337
12034	170	35	0.8467251384
12035	170	36	0.4583652834
12036	170	37	0.3178105461
12037	170	38	0.1987175099
12038	170	39	0.5757132499
12039	170	40	0.6391389151
12040	170	41	0.0488223806
12041	170	42	0.2686792822
12042	170	43	0.8945803270
12043	170	44	0.9704426867
12044	170	45	0.0395900407
12045	170	46	0.2795200399
12046	170	47	0.1944708698
12047	170	48	0.7924568295
12048	170	49	0.0504767657
12049	170	50	0.2887128694
12050	170	51	0.9254713207
12051	170	52	0.5454764063
12052	170	53	0.8735517082
12053	170	54	0.8627000898
12054	170	55	0.3612305787
12055	170	56	0.4310477516
12056	170	57	0.0899456851
12057	170	58	0.4945046958
12058	170	59	0.2174483300
12059	170	60	0.1684337016
12060	170	61	0.3344481806
12061	170	62	0.4744206844
12062	170	63	0.9427091256
12063	170	64	0.3861818775
12064	170	65	0.8652998181
12065	170	66	0.7894342644
12066	170	67	0.8445471614
12067	170	68	0.1831103642
12068	170	69	0.9881517743
12069	170	70	0.4202604112
12070	170	71	0.8222492798
12071	171	1	0.0369741549
12072	171	2	0.6889396938
12073	171	3	0.7168296068
12074	171	4	0.0074168420
12075	171	5	0.7285297345
12076	171	6	0.9963496472
12077	171	7	0.2018877119
12078	171	8	0.5209865645
12079	171	9	0.0468264129
12080	171	10	0.4906005817
12081	171	11	0.4464578852
12082	171	12	0.5923028192
12083	171	13	0.3641522899
12084	171	14	0.3091579755
12085	171	15	0.9535333980
12086	171	16	0.7952000415
12087	171	17	0.3991036606
12088	171	18	0.4480380937
12089	171	19	0.0126483715
12090	171	20	0.5675373622
12091	171	21	0.7824862744
12092	171	22	0.4870690559
12093	171	23	0.5102464883
12094	171	24	0.1686681518
12095	171	25	0.3523688740
12096	171	26	0.2996807527
12097	171	27	0.0132153132
12098	171	28	0.5354792383
12099	171	29	0.2878325270
12100	171	30	0.4334757249
12101	171	31	0.3577285181
12102	171	32	0.3248066818
12103	171	33	0.1224154187
12104	171	34	0.0745581253
12105	171	35	0.3322235239
12106	171	36	0.8509451533
12107	171	37	0.0709077725
12108	171	38	0.5341112362
12109	171	39	0.3719317177
12110	171	40	0.1177341854
12111	171	41	0.0247118180
12112	171	42	0.8183896034
12113	171	43	0.7100370047
12114	171	44	0.3888641079
12115	171	45	0.1275475789
12116	171	46	0.6635704027
12117	171	47	0.1840641494
12118	171	48	0.5266512395
12119	171	49	0.1116084964
12120	171	50	0.1967125209
12121	171	51	0.0941886022
12122	171	52	0.8940947708
12123	171	53	0.6837815768
12124	171	54	0.6044350904
12125	171	55	0.0627629226
12126	171	56	0.0361504508
12127	171	57	0.9041158431
12128	171	58	0.0759782363
12129	171	59	0.5716296891
12130	171	60	0.1919483701
12131	171	61	0.5094539612
12132	171	62	0.9293582076
12133	171	63	0.5167550519
12134	171	64	0.6318693799
12135	171	65	0.0039163330
12136	171	66	0.8489785763
12137	171	67	0.4828145332
12138	171	68	0.0748241055
12139	171	69	0.3830898125
12140	171	70	0.8547462514
12141	171	71	0.1925582909
12142	172	1	0.4078016304
12143	172	2	0.6731358548
12144	172	3	0.9025952956
12145	172	4	0.7966657383
12146	172	5	0.8006834337
12147	172	6	0.5661656982
12148	172	7	0.9807298877
12149	172	8	0.3273346731
12150	172	9	0.6777741946
12151	172	10	0.1774424086
12152	172	11	0.4215232753
12153	172	12	0.5718689654
12154	172	13	0.8612239854
12155	172	14	0.0259583658
12156	172	15	0.6346318880
12157	172	16	0.8973744363
12158	172	17	0.9300742089
12159	172	18	0.7106101243
12160	172	19	0.4690041253
12161	172	20	0.1220225790
12162	172	21	0.2200640854
12163	172	22	0.3983623330
12164	172	23	0.6387776313
12165	172	24	0.8519334653
12166	172	25	0.4022786659
12167	172	26	0.4877562076
12168	172	27	0.3347479990
12169	172	28	0.4771027714
12170	172	29	0.8708460201
12171	172	30	0.1894942503
12172	172	31	0.6696610623
12173	172	32	0.2786476505
12174	172	33	0.8626301051
12175	172	34	0.5722563579
12176	172	35	0.0753133888
12177	172	36	0.6633135388
12178	172	37	0.1384220561
12179	172	38	0.0560432766
12180	172	39	0.9906482119
12181	172	40	0.8161962507
12182	172	41	0.2334856852
12183	172	42	0.4121714877
12184	172	43	0.3880652161
12185	172	44	0.0947096706
12186	172	45	0.4381298535
12187	172	46	0.0226971046
12188	172	47	0.9920841069
12189	172	48	0.3682040628
12190	172	49	0.7333072289
12191	172	50	0.4610882322
12192	172	51	0.4902266418
12193	172	52	0.9533713148
12194	172	53	0.8594505657
12195	172	54	0.1290042731
12196	172	55	0.8053047801
12197	172	56	0.2617292316
12198	172	57	0.6167604807
12199	172	58	0.1400527791
12200	172	59	0.7388320034
12201	172	60	0.4876065007
12202	172	61	0.3295470295
12203	172	62	0.4084930657
12204	172	63	0.7662541512
12205	172	64	0.1921771346
12206	172	65	0.9807494241
12207	172	66	0.8415675401
12208	172	67	0.8554906733
12209	172	68	0.1191714802
12210	172	69	0.8976108166
12211	172	70	0.8461388857
12212	172	71	0.9353677314
12213	173	1	0.1310965018
12214	173	2	0.2583103734
12215	173	3	0.3234329475
12216	173	4	0.2258061725
12217	173	5	0.6964402269
12218	173	6	0.3461300521
12219	173	7	0.2178902794
12220	173	8	0.0646442897
12221	173	9	0.0794372815
12222	173	10	0.6789785121
12223	173	11	0.5548709319
12224	173	12	0.0328085963
12225	173	13	0.5384290777
12226	173	14	0.6838752050
12227	173	15	0.8381133764
12228	173	16	0.8001583093
12229	173	17	0.3006356861
12230	173	18	0.9781661560
12231	173	19	0.5389903127
12232	173	20	0.7882421869
12233	173	21	0.3077131854
12234	173	22	0.9474833789
12235	173	23	0.5544963386
12236	173	24	0.4998903205
12237	173	25	0.9282328030
12238	173	26	0.3960638787
12239	173	27	0.3553809938
12240	173	28	0.0474042832
12241	173	29	0.2936746958
12242	173	30	0.2015198795
12243	173	31	0.9827720146
12244	173	32	0.4247711976
12245	173	33	0.4598302529
12246	173	34	0.3062049625
12247	173	35	0.6505773705
12248	173	36	0.1562704802
12249	173	37	0.6523350147
12250	173	38	0.8684676499
12251	173	39	0.2209147699
12252	173	40	0.7317722961
12253	173	41	0.5474461620
12254	173	42	0.7757857018
12255	173	43	0.7645808924
12256	173	44	0.0858752397
12257	173	45	0.4596609073
12258	173	46	0.6026942693
12259	173	47	0.8860335494
12260	173	48	0.7602965934
12261	173	49	0.5808604253
12262	173	50	0.4250238622
12263	173	51	0.5485387803
12264	173	52	0.8885736107
12265	173	53	0.3725072411
12266	173	54	0.1030351189
12267	173	55	0.3884639312
12268	173	56	0.3007400441
12269	173	57	0.4990989980
12270	173	58	0.7438449254
12271	173	59	0.3481443278
12272	173	60	0.7927736938
12273	173	61	0.9453648049
12274	173	62	0.3309163423
12275	173	63	0.2175448914
12276	173	64	0.4051950583
12277	173	65	0.6371213049
12278	173	66	0.8681222619
12279	173	67	0.5614655386
12280	173	68	0.2894563200
12281	173	69	0.7365899123
12282	173	70	0.7823803085
12283	173	71	0.0212286161
12284	174	1	0.2840360743
12285	174	2	0.5581660108
12286	174	3	0.7858095090
12287	174	4	0.3699113145
12288	174	5	0.0178269180
12289	174	6	0.3885037783
12290	174	7	0.2559448639
12291	174	8	0.7781235115
12292	174	9	0.9693642035
12293	174	10	0.6809687261
12294	174	11	0.3266622918
12295	174	12	0.8579378142
12296	174	13	0.0534759676
12297	174	14	0.4296974111
12298	174	15	0.2464017458
12299	174	16	0.3542160117
12300	174	17	0.9287964092
12301	174	18	0.9902466713
12302	174	19	0.7023603395
12303	174	20	0.7215701030
12304	174	21	0.9356114762
12305	174	22	0.0332766823
12306	174	23	0.9391149944
12307	174	24	0.3408065345
12308	174	25	0.6703979871
12309	174	26	0.8072372568
12310	174	27	0.9022720731
12311	174	28	0.9598543071
12312	174	29	0.5438271691
12313	174	30	0.6846523820
12314	174	31	0.9810829237
12315	174	32	0.8278632434
12316	174	33	0.2428183928
12317	174	34	0.7668924327
12318	174	35	0.1977745579
12319	174	36	0.2606453109
12320	174	37	0.1553962110
12321	174	38	0.4537194218
12322	174	39	0.0387688223
12323	174	40	0.1247604145
12324	174	41	0.1346881483
12325	174	42	0.3654311141
12326	174	43	0.9826982287
12327	174	44	0.1881641159
12328	174	45	0.7951285252
12329	174	46	0.2290999745
12330	174	47	0.5423801276
12331	174	48	0.7239249344
12332	174	49	0.2193466458
12333	174	50	0.2447404675
12334	174	51	0.4454950374
12335	174	52	0.1549581224
12336	174	53	0.2780171498
12337	174	54	0.3846100322
12338	174	55	0.4957646569
12339	174	56	0.9484151369
12340	174	57	0.1918472890
12341	174	58	0.3980367305
12342	174	59	0.9082694445
12343	174	60	0.7356744581
12344	174	61	0.0826891125
12345	174	62	0.8893523682
12346	174	63	0.5635377015
12347	174	64	0.3255075053
12348	174	65	0.6562448009
12349	174	66	0.7613122598
12350	174	67	0.5861528162
12351	174	68	0.8116410119
12352	174	69	0.2150316816
12353	174	70	0.6249216385
12354	174	71	0.9364014263
12355	175	1	0.3497198299
12356	175	2	0.9903527526
12357	175	3	0.9190996550
12358	175	4	0.5378839457
12359	175	5	0.7854812783
12360	175	6	0.1481996300
12361	175	7	0.0802640738
12362	175	8	0.5094062127
12363	175	9	0.3675462757
12364	175	10	0.3250045413
12365	175	11	0.9549012505
12366	175	12	0.5225043981
12367	175	13	0.6030216911
12368	175	14	0.3395112827
12369	175	15	0.0182690555
12370	175	16	0.5514368280
12371	175	17	0.5313585717
12372	175	18	0.4163057860
12373	175	19	0.4597062725
12374	175	20	0.2670330298
12375	175	21	0.4989948985
12376	175	22	0.3490586407
12377	175	23	0.8305707313
12378	175	24	0.8245024038
12379	175	25	0.0053034415
12380	175	26	0.5918829911
12381	175	27	0.4106552200
12382	175	28	0.8169444534
12383	175	29	0.8069146732
12384	175	30	0.0355768586
12385	175	31	0.7533458797
12386	175	32	0.1566345030
12387	175	33	0.0259296112
12388	175	34	0.6724455352
12389	175	35	0.6945184493
12390	175	36	0.8114108895
12391	175	37	0.8206451652
12392	175	38	0.7747825230
12393	175	39	0.3208171027
12394	175	40	0.1881914409
12395	175	41	0.0997870644
12396	175	42	0.2757183532
12397	175	43	0.7106958395
12398	175	44	0.7028087554
12399	175	45	0.6152296360
12400	175	46	0.7289648950
12401	175	47	0.2542455834
12402	175	48	0.1465882077
12403	175	49	0.1452706810
12404	175	50	0.7139518564
12405	175	51	0.4136212375
12406	175	52	0.6442655795
12407	175	53	0.0630104970
12408	175	54	0.2441919688
12409	175	55	0.4687679834
12410	175	56	0.0683139390
12411	175	57	0.8360749604
12412	175	58	0.8794232034
12413	175	59	0.8852583924
12414	175	60	0.6429896336
12415	175	61	0.9150000620
12416	175	62	0.6386042726
12417	175	63	0.7996241366
12418	175	64	0.9409296731
12419	175	65	0.3110498078
12420	175	66	0.4941425859
12421	175	67	0.7523405631
12422	175	68	0.1316949730
12423	175	69	0.2689251089
12424	175	70	0.0731576658
12425	175	71	0.3198864139
12426	176	1	0.3687121733
12427	176	2	0.3488760190
12428	176	3	0.0305822534
12429	176	4	0.0715209288
12430	176	5	0.9641056550
12431	176	6	0.7595471484
12432	176	7	0.3257665127
12433	176	8	0.1106938627
12434	176	9	0.9048178294
12435	176	10	0.0397183690
12436	176	11	0.5243151002
12437	176	12	0.5490834089
12438	176	13	0.1027288660
12439	176	14	0.7685070690
12440	176	15	0.0178513923
12441	176	16	0.1710428051
12442	176	17	0.6045820294
12443	176	18	0.8972745957
12444	176	19	0.0563011980
12445	176	20	0.2475716630
12446	176	21	0.8122746577
12447	176	22	0.6949054706
12448	176	23	0.0471958001
12449	176	24	0.7532043313
12450	176	25	0.0059552784
12451	176	26	0.5413383860
12452	176	27	0.5055448944
12453	176	28	0.1376502514
12454	176	29	0.8102634954
12455	176	30	0.5787025602
12456	176	31	0.4575366653
12457	176	32	0.1789756687
12458	176	33	0.9275785792
12459	176	34	0.4881189191
12460	176	35	0.2504965980
12461	176	36	0.8916842341
12462	176	37	0.2476660674
12463	176	38	0.5762631106
12464	176	39	0.0023780968
12465	176	40	0.1524838973
12466	176	41	0.6159814796
12467	176	42	0.5266931970
12468	176	43	0.7015673062
12469	176	44	0.7187103457
12470	176	45	0.2952002659
12471	176	46	0.7194186989
12472	176	47	0.8897531512
12473	176	48	0.8997822958
12474	176	49	0.6166932946
12475	176	50	0.9460543492
12476	176	51	0.1473539588
12477	176	52	0.4289679527
12478	176	53	0.6409598198
12479	176	54	0.1945497589
12480	176	55	0.1821722840
12481	176	56	0.6469150982
12482	176	57	0.7358881454
12483	176	58	0.6877171784
12484	176	59	0.7845653496
12485	176	60	0.5461516408
12486	176	61	0.2664197385
12487	176	62	0.2421020148
12488	176	63	0.7251273096
12489	176	64	0.1939983177
12490	176	65	0.7302209339
12491	176	66	0.9756239075
12492	176	67	0.0856825518
12493	176	68	0.9778870018
12494	176	69	0.5518870181
12495	176	70	0.0880606486
12496	176	71	0.1303708991
12497	177	1	0.1678684978
12498	177	2	0.6147538456
12499	177	3	0.8319382053
12500	177	4	0.8865788439
12501	177	5	0.9099541116
12502	177	6	0.5513569042
12503	177	7	0.7763319951
12504	177	8	0.8097364074
12505	177	9	0.1680501993
12506	177	10	0.7223863443
12507	177	11	0.9570903666
12508	177	12	0.5970181520
12509	177	13	0.3633461641
12510	177	14	0.1516401256
12511	177	15	0.7791904360
12512	177	16	0.0102612623
12513	177	17	0.8875282709
12514	177	18	0.4669076144
12515	177	19	0.7948266119
12516	177	20	0.4336799118
12517	177	21	0.7333273529
12518	177	22	0.0369286267
12519	177	23	0.1588072218
12520	177	24	0.9273256706
12521	177	25	0.7671495611
12522	177	26	0.1344311293
12523	177	27	0.0130082224
12524	177	28	0.7450365629
12525	177	29	0.6863181479
12526	177	30	0.1010688711
12527	177	31	0.8754074620
12528	177	32	0.8541866457
12529	177	33	0.7158227167
12530	177	34	0.7073456673
12531	177	35	0.7407654896
12532	177	36	0.6257768283
12533	177	37	0.2587025720
12534	177	38	0.5170974848
12535	177	39	0.4355132361
12536	177	40	0.4267527713
12537	177	41	0.2394838291
12538	177	42	0.3926036027
12539	177	43	0.0237709233
12540	177	44	0.6028299932
12541	177	45	0.5442437283
12542	177	46	0.8029613593
12543	177	47	0.6130912555
12544	177	48	0.4317719997
12545	177	49	0.2698689736
12546	177	50	0.4079178674
12547	177	51	0.8654519115
12548	177	52	0.0031963266
12549	177	53	0.4448464946
12550	177	54	0.0242591333
12551	177	55	0.9305219972
12552	177	56	0.2119960557
12553	177	57	0.1586902631
12554	177	58	0.9435302196
12555	177	59	0.9570326186
12556	177	60	0.8450084110
12557	177	61	0.0445990907
12558	177	62	0.8324400806
12559	177	63	0.6991950567
12560	177	64	0.7604218074
12561	177	65	0.5397857479
12562	177	66	0.4399605468
12563	177	67	0.3861986357
12564	177	68	0.7984883199
12565	177	69	0.9570580316
12566	177	70	0.8217118718
12567	177	71	0.2252410911
12568	178	1	0.1965418612
12569	178	2	0.2143154745
12570	178	3	0.2490120144
12571	178	4	0.7993718544
12572	178	5	0.7585592032
12573	178	6	0.0519733736
12574	178	7	0.4124631104
12575	178	8	0.1903312029
12576	178	9	0.3218423473
12577	178	10	0.8203809778
12578	178	11	0.0557831144
12579	178	12	0.3250386738
12580	178	13	0.2652274724
12581	178	14	0.0800422481
12582	178	15	0.2555606710
12583	178	16	0.4772235281
12584	178	17	0.2387325112
12585	178	18	0.1990908906
12586	178	19	0.4342561467
12587	178	20	0.0837409222
12588	178	21	0.2436899813
12589	178	22	0.2666962272
12590	178	23	0.7829359788
12591	178	24	0.0041117887
12592	178	25	0.8064819756
12593	178	26	0.2228965256
12594	178	27	0.3903104248
12595	178	28	0.6049702954
12596	178	29	0.1799545577
12597	178	30	0.2120222966
12598	178	31	0.8302113870
12599	178	32	0.3764964188
12600	178	33	0.4263377716
12601	178	34	0.0792234014
12602	178	35	0.1758682732
12603	178	36	0.1848969748
12604	178	37	0.1311967755
12605	178	38	0.5883313837
12606	178	39	0.3752281778
12607	178	40	0.4530391227
12608	178	41	0.4087123619
12609	178	42	0.4310112922
12610	178	43	0.7780777970
12611	178	44	0.6739398343
12612	178	45	0.5110535403
12613	178	46	0.0336384680
12614	178	47	0.1511633629
12615	178	48	0.7497860515
12616	178	49	0.2327293591
12617	178	50	0.5854195096
12618	178	51	0.8335269736
12619	178	52	0.4764193404
12620	178	53	0.8521157373
12621	178	54	0.6164629529
12622	178	55	0.4805311295
12623	178	56	0.6585977129
12624	178	57	0.8393594786
12625	178	58	0.8708415544
12626	178	59	0.2635680083
12627	178	60	0.0193140362
12628	178	61	0.0828638510
12629	178	62	0.0937793953
12630	178	63	0.3958104551
12631	178	64	0.5092016226
12632	178	65	0.1730027972
12633	178	66	0.5716787288
12634	178	67	0.6940985974
12635	178	68	0.3041995727
12636	178	69	0.1600101124
12637	178	70	0.0693267751
12638	178	71	0.7572386954
12639	179	1	0.5687224744
12640	179	2	0.5003380678
12641	179	3	0.5353164924
12642	179	4	0.2426623092
12643	179	5	0.0113916080
12644	179	6	0.5689549609
12645	179	7	0.3938256721
12646	179	8	0.7611776600
12647	179	9	0.8016843200
12648	179	10	0.9792451817
12649	179	11	0.5947046336
12650	179	12	0.2781036603
12651	179	13	0.8313609189
12652	179	14	0.2111675865
12653	179	15	0.7586347898
12654	179	16	0.4899586318
12655	179	17	0.0505270655
12656	179	18	0.6294763442
12657	179	19	0.7535266406
12658	179	20	0.0698411018
12659	179	21	0.7123401957
12660	179	22	0.8473060359
12661	179	23	0.4656515573
12662	179	24	0.2215418182
12663	179	25	0.0203088331
12664	179	26	0.0373302861
12665	179	27	0.9156404161
12666	179	28	0.3245084058
12667	179	29	0.1973403986
12668	179	30	0.9849671912
12669	179	31	0.0817471016
12670	179	32	0.7660628734
12671	179	33	0.4853052590
12672	179	34	0.6170635941
12673	179	35	0.0087251826
12674	179	36	0.4966968675
12675	179	37	0.1860185550
12676	179	38	0.4025508547
12677	179	39	0.2578745275
12678	179	40	0.9877028749
12679	179	41	0.3817960364
12680	179	42	0.8525791611
12681	179	43	0.2658065357
12682	179	44	0.2131569558
12683	179	45	0.0637467480
12684	179	46	0.0244413256
12685	179	47	0.7031155876
12686	179	48	0.1142738136
12687	179	49	0.6539176702
12688	179	50	0.4566422282
12689	179	51	0.1841149153
12690	179	52	0.3662578659
12691	179	53	0.3039482646
12692	179	54	0.6497664726
12693	179	55	0.5877996841
12694	179	56	0.3242570977
12695	179	57	0.6870967587
12696	179	58	0.5034401002
12697	179	59	0.6487655039
12698	179	60	0.8844371578
12699	179	61	0.4884072919
12700	179	62	0.7305126055
12701	179	63	0.6505000312
12702	179	64	0.9737125509
12703	179	65	0.3475761996
12704	179	66	0.6592252138
12705	179	67	0.4704094185
12706	179	68	0.5335947550
12707	179	69	0.0617760685
12708	179	70	0.7282839459
12709	179	71	0.5212976299
12710	180	1	0.4435721049
12711	180	2	0.5808631075
12712	180	3	0.7871041656
12713	180	4	0.6567290607
12714	180	5	0.6446098555
12715	180	6	0.8115454917
12716	180	7	0.3598446487
12717	180	8	0.7588836690
12718	180	9	0.4654631619
12719	180	10	0.8164868769
12720	180	11	0.9429985844
12721	180	12	0.8317210278
12722	180	13	0.1204351415
12723	180	14	0.5927650575
12724	180	15	0.4195207120
12725	180	16	0.4446922396
12726	180	17	0.2798618162
12727	180	18	0.9229608127
12728	180	19	0.0934577435
12729	180	20	0.1642989740
12730	180	21	0.4113681046
12731	180	22	0.8239703490
12732	180	23	0.8147990052
12733	180	24	0.3850806556
12734	180	25	0.1715465486
12735	180	26	0.4740242190
12736	180	27	0.8554900745
12737	180	28	0.7051413036
12738	180	29	0.5358002875
12739	180	30	0.5837740204
12740	180	31	0.2264389340
12741	180	32	0.9793723929
12742	180	33	0.1646371279
12743	180	34	0.0135430996
12744	180	35	0.6361014536
12745	180	36	0.8092469834
12746	180	37	0.8250885913
12747	180	38	0.9959461023
12748	180	39	0.5681306524
12749	180	40	0.2905517532
12750	180	41	0.8124329797
12751	180	42	0.5111292372
12752	180	43	0.1222727811
12753	180	44	0.9328681212
12754	180	45	0.1038942947
12755	180	46	0.5417934936
12756	180	47	0.3775603608
12757	180	48	0.3837561109
12758	180	49	0.4647543062
12759	180	50	0.4710181043
12760	180	51	0.5480550854
12761	180	52	0.8761224109
12762	180	53	0.2949884534
12763	180	54	0.3628540905
12764	180	55	0.2612030664
12765	180	56	0.4665350025
12766	180	57	0.8368783100
12767	180	58	0.1166931409
12768	180	59	0.1716763061
12769	180	60	0.3726785975
12770	180	61	0.7004671618
12771	180	62	0.3981152400
12772	180	63	0.3520509903
12773	180	64	0.8651042897
12774	180	65	0.4116583401
12775	180	66	0.9881524444
12776	180	67	0.6743512736
12777	180	68	0.2367469314
12778	180	69	0.9840985467
12779	180	70	0.2424819260
12780	180	71	0.5272986852
12781	181	1	0.7965315264
12782	181	2	0.7536111632
12783	181	3	0.6495714663
12784	181	4	0.7293996480
12785	181	5	0.8575054579
12786	181	6	0.1913649598
12787	181	7	0.1069600089
12788	181	8	0.2412615693
12789	181	9	0.6561192661
12790	181	10	0.5779781137
12791	181	11	0.7893166547
12792	181	12	0.5322416769
12793	181	13	0.8729665671
12794	181	14	0.1521707452
12795	181	15	0.7934447438
12796	181	16	0.3395015695
12797	181	17	0.9890490551
12798	181	18	0.9101378848
12799	181	19	0.5111778760
12800	181	20	0.3617276531
12801	181	21	0.6106050466
12802	181	22	0.9092931161
12803	181	23	0.7137786434
12804	181	24	0.4757093368
12805	181	25	0.3209514562
12806	181	26	0.7019310878
12807	181	27	0.1500606104
12808	181	28	0.5576983881
12809	181	29	0.6860296349
12810	181	30	0.3925425364
12811	181	31	0.0849970733
12812	181	32	0.4825611613
12813	181	33	0.1461537001
12814	181	34	0.7345685395
12815	181	35	0.2119608093
12816	181	36	0.0036591580
12817	181	37	0.9259334998
12818	181	38	0.3189208186
12819	181	39	0.2449207273
12820	181	40	0.5820527659
12821	181	41	0.8968989323
12822	181	42	0.0342373820
12823	181	43	0.1142944433
12824	181	44	0.7698654993
12825	181	45	0.1864081277
12826	181	46	0.9077391871
12827	181	47	0.1093670693
12828	181	48	0.1754571828
12829	181	49	0.8178770719
12830	181	50	0.6205449454
12831	181	51	0.5371848359
12832	181	52	0.4284821190
12833	181	53	0.5298380614
12834	181	54	0.2509634797
12835	181	55	0.9041914558
12836	181	56	0.8507895181
12837	181	57	0.9528945675
12838	181	58	0.0542520662
12839	181	59	0.4084879062
12840	181	60	0.6389242024
12841	181	61	0.4467946026
12842	181	62	0.4934849795
12843	181	63	0.1214853642
12844	181	64	0.5929483026
12845	181	65	0.2280535190
12846	181	66	0.3334461735
12847	181	67	0.5966074611
12848	181	68	0.1539870189
12849	181	69	0.6523669921
12850	181	70	0.8415281884
12851	181	71	0.7360397852
12852	182	1	0.5492659244
12853	182	2	0.8757655709
12854	182	3	0.8503342285
12855	182	4	0.3191314242
12856	182	5	0.0621736986
12857	182	6	0.7580734156
12858	182	7	0.4284984935
12859	182	8	0.2376308814
12860	182	9	0.5759504875
12861	182	10	0.0490434389
12862	182	11	0.7748157177
12863	182	12	0.0044326065
12864	182	13	0.5788815003
12865	182	14	0.0257791975
12866	182	15	0.9086240623
12867	182	16	0.4296710184
12868	182	17	0.9786737650
12869	182	18	0.9628761285
12870	182	19	0.8381589246
12871	182	20	0.6175979679
12872	182	21	0.4096707315
12873	182	22	0.3316439041
12874	182	23	0.7390833320
12875	182	24	0.0026190341
12876	182	25	0.5596974236
12877	182	26	0.0725295055
12878	182	27	0.5992264953
12879	182	28	0.7136844425
12880	182	29	0.7248964980
12881	182	30	0.4407546842
12882	182	31	0.4497242277
12883	182	32	0.2741624224
12884	182	33	0.3165202551
12885	182	34	0.3000584561
12886	182	35	0.5932938466
12887	182	36	0.3786939536
12888	182	37	0.0581318717
12889	182	38	0.0217923401
12890	182	39	0.6163248350
12891	182	40	0.6340823597
12892	182	41	0.0708357790
12893	182	42	0.3911405527
12894	182	43	0.6385149662
12895	182	44	0.6497172797
12896	182	45	0.4169197502
12897	182	46	0.5471390290
12898	182	47	0.0793882981
12899	182	48	0.3955935156
12900	182	49	0.5100151575
12901	182	50	0.9175472232
12902	182	51	0.0131914834
12903	182	52	0.9196858890
12904	182	53	0.2491911273
12905	182	54	0.7522748155
12906	182	55	0.9223049236
12907	182	56	0.8088885508
12908	182	57	0.8248043209
12909	182	58	0.5215314189
12910	182	59	0.5225729938
12911	182	60	0.5497008190
12912	182	61	0.9622861031
12913	182	62	0.9722972214
12914	182	63	0.8238632418
12915	182	64	0.2788063581
12916	182	65	0.2723556780
12917	182	66	0.4171570884
12918	182	67	0.6575003117
12919	182	68	0.3304875498
12920	182	69	0.4389494290
12921	182	70	0.2738251472
12922	182	71	0.9645699095
12923	183	1	0.5097852079
12924	183	2	0.6649656999
12925	183	3	0.6030848762
12926	183	4	0.1595024876
12927	183	5	0.0818854505
12928	183	6	0.1502239052
12929	183	7	0.2388907862
12930	183	8	0.4774789661
12931	183	9	0.6602390627
12932	183	10	0.1564380093
12933	183	11	0.4906704496
12934	183	12	0.5799249522
12935	183	13	0.4056291366
12936	183	14	0.2429452650
12937	183	15	0.5022298759
12938	183	16	0.2145176879
12939	183	17	0.0677495860
12940	183	18	0.0237612948
12941	183	19	0.7370906817
12942	183	20	0.6174504054
12943	183	21	0.9860473983
12944	183	22	0.7093879031
12945	183	23	0.4413136472
12946	183	24	0.2648537564
12947	183	25	0.9817435811
12948	183	26	0.8584707356
12949	183	27	0.9223540686
12950	183	28	0.3122311314
12951	183	29	0.2974201646
12952	183	30	0.1961792158
12953	183	31	0.2768010409
12954	183	32	0.8072053730
12955	183	33	0.8611449157
12956	183	34	0.8798859171
12957	183	35	0.9667078606
12958	183	36	0.9430303662
12959	183	37	0.0301098223
12960	183	38	0.2055986468
12961	183	39	0.4205093323
12962	183	40	0.6903488855
12963	183	41	0.3620366561
12964	183	42	0.9111797819
12965	183	43	0.2702738377
12966	183	44	0.7676657932
12967	183	45	0.1541250469
12968	183	46	0.7725037136
12969	183	47	0.9821834811
12970	183	48	0.2218746333
12971	183	49	0.7962650084
12972	183	50	0.7192741628
12973	183	51	0.8393250387
12974	183	52	0.7823124067
12975	183	53	0.4286620659
12976	183	54	0.2806386859
12977	183	55	0.0471661636
12978	183	56	0.4104056475
12979	183	57	0.1391094215
12980	183	58	0.9695202322
12981	183	59	0.7226367788
12982	183	60	0.4365295866
12983	183	61	0.1656994480
12984	183	62	0.9994378197
12985	183	63	0.2437349595
12986	183	64	0.0268443637
12987	183	65	0.8793237372
12988	183	66	0.2104428201
12989	183	67	0.9698747303
12990	183	68	0.9094335595
12991	183	69	0.4160414673
12992	183	70	0.3903840627
12993	183	71	0.5997824450
12994	184	1	0.7780781235
12995	184	2	0.3015638450
12996	184	3	0.8700562827
12997	184	4	0.5457439166
12998	184	5	0.4556888919
12999	184	6	0.6425599963
13000	184	7	0.5279273978
13001	184	8	0.6775635253
13002	184	9	0.4388250052
13003	184	10	0.2472015605
13004	184	11	0.5168885640
13005	184	12	0.2211374119
13006	184	13	0.6758636269
13007	184	14	0.7975272499
13008	184	15	0.2683035755
13009	184	16	0.0862692744
13010	184	17	0.9366366719
13011	184	18	0.2378238076
13012	184	19	0.8089060532
13013	184	20	0.3731662584
13014	184	21	0.4035232556
13015	184	22	0.8083438729
13016	184	23	0.6169012180
13017	184	24	0.4303676197
13018	184	25	0.6876676101
13019	184	26	0.8273440381
13020	184	27	0.4002423501
13021	184	28	0.5971011701
13022	184	29	0.2433855054
13023	184	30	0.7906264127
13024	184	31	0.1968836151
13025	184	32	0.0214636293
13026	184	33	0.0921902577
13027	184	34	0.0669398983
13028	184	35	0.5672075460
13029	184	36	0.5478791501
13030	184	37	0.7094998946
13031	184	38	0.0951349442
13032	184	39	0.2254426754
13033	184	40	0.1483248998
13034	184	41	0.3423365047
13035	184	42	0.7423312399
13036	184	43	0.3694623122
13037	184	44	0.0182001316
13038	184	45	0.5398584898
13039	184	46	0.6377658877
13040	184	47	0.1044694060
13041	184	48	0.4764951617
13042	184	49	0.8755896958
13043	184	50	0.9133754591
13044	184	51	0.8496614201
13045	184	52	0.2791129514
13046	184	53	0.7217193325
13047	184	54	0.4665626381
13048	184	55	0.7094805711
13049	184	56	0.4093869426
13050	184	57	0.2939066766
13051	184	58	0.1097229212
13052	184	59	0.0064881127
13053	184	60	0.5372921820
13054	184	61	0.9003493343
13055	184	62	0.2033717283
13056	184	63	0.5587558113
13057	184	64	0.9925395921
13058	184	65	0.2703116266
13059	184	66	0.1259633577
13060	184	67	0.5404187422
13061	184	68	0.9798115212
13062	184	69	0.2210983019
13063	184	70	0.7658614181
13064	184	71	0.1281364216
13065	185	1	0.5634348067
13066	185	2	0.5081926580
13067	185	3	0.4975987338
13068	185	4	0.5816349387
13069	185	5	0.0480511477
13070	185	6	0.1353646214
13071	185	7	0.6861043447
13072	185	8	0.5245463098
13073	185	9	0.0109543172
13074	185	10	0.5994798043
13075	185	11	0.3742077299
13076	185	12	0.2900672690
13077	185	13	0.3211991368
13078	185	14	0.8407703685
13079	185	15	0.9995478401
13080	185	16	0.7305860794
13081	185	17	0.1346770450
13082	185	18	0.1092707617
13083	185	19	0.7370741926
13084	185	20	0.6719692270
13085	185	21	0.0096200961
13086	185	22	0.9404459209
13087	185	23	0.2307250388
13088	185	24	0.0021596882
13089	185	25	0.2107575475
13090	185	26	0.3566883965
13091	185	27	0.5425784308
13092	185	28	0.1905690688
13093	185	29	0.5777866985
13094	185	30	0.3084398489
13095	185	31	0.3187054903
13096	185	32	0.1412215051
13097	185	33	0.8166325069
13098	185	34	0.8163042241
13099	185	35	0.7228564438
13100	185	36	0.8646836546
13101	185	37	0.9516688460
13102	185	38	0.4089607890
13103	185	39	0.3892299645
13104	185	40	0.9626231631
13105	185	41	0.0084405933
13106	185	42	0.7634376949
13107	185	43	0.2526904321
13108	185	44	0.3296397300
13109	185	45	0.6042080633
13110	185	46	0.2522382727
13111	185	47	0.0602258095
13112	185	48	0.7388851084
13113	185	49	0.3615090344
13114	185	50	0.7973000021
13115	185	51	0.4108543354
13116	185	52	0.3711291305
13117	185	53	0.7377459230
13118	185	54	0.6415793742
13119	185	55	0.3732888186
13120	185	56	0.9485034705
13121	185	57	0.9982677707
13122	185	58	0.9158672495
13123	185	59	0.1390725398
13124	185	60	0.5760544692
13125	185	61	0.2243070984
13126	185	62	0.4577780301
13127	185	63	0.7172759748
13128	185	64	0.0409396053
13129	185	65	0.2740822546
13130	185	66	0.4401324186
13131	185	67	0.9056232604
13132	185	68	0.2257511006
13133	185	69	0.8490932076
13134	185	70	0.2948532249
13135	185	71	0.1883742637
13136	186	1	0.8575338009
13137	186	2	0.0582909198
13138	186	3	0.4410646963
13139	186	4	0.1871735309
13140	186	5	0.6624989831
13141	186	6	0.6933029690
13142	186	7	0.2473993408
13143	186	8	0.4013840915
13144	186	9	0.0548120034
13145	186	10	0.0446993429
13146	186	11	0.8122384273
13147	186	12	0.4259411339
13148	186	13	0.7824452664
13149	186	14	0.4538178016
13150	186	15	0.7992299525
13151	186	16	0.7309487369
13152	186	17	0.4520855728
13153	186	18	0.7150972025
13154	186	19	0.8700212766
13155	186	20	0.0281400420
13156	186	21	0.9394043009
13157	186	22	0.3277993072
13158	186	23	0.7454160168
13159	186	24	0.9803439067
13160	186	25	0.6018815618
13161	186	26	0.1855484359
13162	186	27	0.8859671671
13163	186	28	0.8276326624
13164	186	29	0.0346416435
13165	186	30	0.1808203920
13166	186	31	0.0160069261
13167	186	32	0.8921754449
13168	186	33	0.2391113122
13169	186	34	0.4570716224
13170	186	35	0.0793489758
13171	186	36	0.9016102953
13172	186	37	0.1503745914
13173	186	38	0.3267483166
13174	186	39	0.3029943872
13175	186	40	0.2051865947
13176	186	41	0.3714476600
13177	186	42	0.1152328146
13178	186	43	0.6311277286
13179	186	44	0.1538929264
13180	186	45	0.5690506161
13181	186	46	0.4303576816
13182	186	47	0.8848416633
13183	186	48	0.0211361889
13184	186	49	0.1454548840
13185	186	50	0.7548629404
13186	186	51	0.0492762313
13187	186	52	0.0848591849
13188	186	53	0.0826622476
13189	186	54	0.7946922481
13190	186	55	0.0652030916
13191	186	56	0.6845438094
13192	186	57	0.9802406840
13193	186	58	0.9511702587
13194	186	59	0.5121764718
13195	186	60	0.0148823280
13196	186	61	0.1319906511
13197	186	62	0.5281833978
13198	186	63	0.9070577729
13199	186	64	0.3711019633
13200	186	65	0.9852550207
13201	186	66	0.9864067486
13202	186	67	0.2727122586
13203	186	68	0.1356296120
13204	186	69	0.3131550658
13205	186	70	0.5757066458
13206	186	71	0.3408162072
13207	187	1	0.6846027258
13208	187	2	0.6909394604
13209	187	3	0.9719439358
13210	187	4	0.8384956522
13211	187	5	0.2599900770
13212	187	6	0.4023016174
13213	187	7	0.7233373155
13214	187	8	0.2811262659
13215	187	9	0.5477565015
13216	187	10	0.4782002559
13217	187	11	0.3304024972
13218	187	12	0.6326156869
13219	187	13	0.5608625035
13220	187	14	0.1250947458
13221	187	15	0.6978187785
13222	187	16	0.2454063129
13223	187	17	0.1053354298
13224	187	18	0.6489890376
13225	187	19	0.7575827846
13226	187	20	0.1202177578
13227	187	21	0.7809796887
13228	187	22	0.2857661829
13229	187	23	0.0272755306
13230	187	24	0.1520816521
13231	187	25	0.2710212036
13232	187	26	0.0136822797
13233	187	27	0.4247939107
13234	187	28	0.4066508156
13235	187	29	0.3268373455
13236	187	30	0.0005005570
13237	187	31	0.7474670229
13238	187	32	0.0114400713
13239	187	33	0.6914400174
13240	187	34	0.7194109592
13241	187	35	0.8499357235
13242	187	36	0.9514300944
13243	187	37	0.1217125766
13244	187	38	0.5732730390
13245	187	39	0.2325563608
13246	187	40	0.6694690785
13247	187	41	0.0514732953
13248	187	42	0.5629588580
13249	187	43	0.3020847654
13250	187	44	0.6123357988
13251	187	45	0.6880536037
13252	187	46	0.9999035439
13253	187	47	0.8577421121
13254	187	48	0.7933890340
13255	187	49	0.6488925815
13256	187	50	0.6153248968
13257	187	51	0.9136067918
13258	187	52	0.4298722702
13259	187	53	0.9010910797
13260	187	54	0.9408823228
13261	187	55	0.5819539223
13262	187	56	0.1721122833
13263	187	57	0.9545646026
13264	187	58	0.0067478335
13265	187	59	0.5787630994
13266	187	60	0.2814019481
13267	187	61	0.0072483905
13268	187	62	0.3262301222
13269	187	63	0.2928420193
13270	187	64	0.6986884079
13271	187	65	0.0456410814
13272	187	66	0.1427777428
13273	187	67	0.6501185028
13274	187	68	0.1673536585
13275	187	69	0.7160507818
13276	187	70	0.8826748636
13277	187	71	0.8368227370
13278	188	1	0.7675240771
13279	188	2	0.4456337215
13280	188	3	0.1389075024
13281	188	4	0.3798598764
13282	188	5	0.1336873258
13283	188	6	0.1388110463
13284	188	7	0.2376019885
13285	188	8	0.9270763597
13286	188	9	0.7877036282
13287	188	10	0.8529268852
13288	188	11	0.8406831515
13289	188	12	0.2175758984
13290	188	13	0.7540179654
13291	188	14	0.7815654743
13292	188	15	0.7995298211
13293	188	16	0.9261302487
13294	188	17	0.7361300769
13295	188	18	0.8062776546
13296	188	19	0.5048933481
13297	188	20	0.0175320250
13298	188	21	0.8135260451
13299	188	22	0.8311234708
13300	188	23	0.3103740443
13301	188	24	0.5122144530
13302	188	25	0.8767645522
13303	188	26	0.4531517872
13304	188	27	0.1623329557
13305	188	28	0.0441182107
13306	188	29	0.1692025694
13307	188	30	0.0450078193
13308	188	31	0.8809409477
13309	188	32	0.9367266465
13310	188	33	0.4906415413
13311	188	34	0.0198484501
13312	188	35	0.3165865229
13313	188	36	0.6243288671
13314	188	37	0.1586594968
13315	188	38	0.5541885113
13316	188	39	0.5514052268
13317	188	40	0.9463631250
13318	188	41	0.4071153970
13319	188	42	0.3920883783
13320	188	43	0.1639390234
13321	188	44	0.1611333624
13322	188	45	0.1736538531
13323	188	46	0.9634688445
13324	188	47	0.0872636111
13325	188	48	0.9097839301
13326	188	49	0.7697464991
13327	188	50	0.5921569597
13328	188	51	0.9273159555
13329	188	52	0.5832725442
13330	188	53	0.4232804305
13331	188	54	0.2376899999
13332	188	55	0.0954869976
13333	188	56	0.3000449827
13334	188	57	0.6908417875
13335	188	58	0.2578199534
13336	188	59	0.3441631938
13337	188	60	0.8600443569
13338	188	61	0.3028277732
13339	188	62	0.2251041415
13340	188	63	0.7967710034
13341	188	64	0.7934693145
13342	188	65	0.2449525921
13343	188	66	0.1133575267
13344	188	67	0.4177981815
13345	188	68	0.4036120889
13346	188	69	0.6675460381
13347	188	70	0.9692034083
13348	188	71	0.3499752139
13349	189	1	0.0746614351
13350	189	2	0.3612917867
13351	189	3	0.5139142373
13352	189	4	0.2357947975
13353	189	5	0.5349456398
13354	189	6	0.4773830823
13355	189	7	0.3230584092
13356	189	8	0.4447295703
13357	189	9	0.2471295814
13358	189	10	0.9152153688
13359	189	11	0.3720455258
13360	189	12	0.8304021261
13361	189	13	0.3384957993
13362	189	14	0.6097355257
13363	189	15	0.9258891237
13364	189	16	0.6385407820
13365	189	17	0.3005773132
13366	189	18	0.1837090771
13367	189	19	0.9827039759
13368	189	20	0.1606216701
13369	189	21	0.4865368502
13370	189	22	0.2078081178
13371	189	23	0.9573926739
13372	189	24	0.2800061647
13373	189	25	0.4527607099
13374	189	26	0.0707502007
13375	189	27	0.6978043462
13376	189	28	0.8563727988
13377	189	29	0.7382962387
13378	189	30	0.6670077546
13379	189	31	0.2063480127
13380	189	32	0.8129576743
13381	189	33	0.0282995417
13382	189	34	0.7202622499
13383	189	35	0.0487524718
13384	189	36	0.5632451815
13385	189	37	0.1976453322
13386	189	38	0.3718108810
13387	189	39	0.0079747518
13388	189	40	0.4447749141
13389	189	41	0.2870262498
13390	189	42	0.3800202776
13391	189	43	0.2751770401
13392	189	44	0.6255220491
13393	189	45	0.9897558037
13394	189	46	0.2010661638
13395	189	47	0.2640628316
13396	189	48	0.2903331169
13397	189	49	0.3847752409
13398	189	50	0.2467668075
13399	189	51	0.4509547874
13400	189	52	0.8713120916
13401	189	53	0.4545749254
13402	189	54	0.4083474614
13403	189	55	0.1513182563
13404	189	56	0.9073356353
13405	189	57	0.4790976620
13406	189	58	0.8491226030
13407	189	59	0.7637084341
13408	189	60	0.2173939007
13409	189	61	0.5161303575
13410	189	62	0.9700564467
13411	189	63	0.0303515750
13412	189	64	0.5444298992
13413	189	65	0.6903186971
13414	189	66	0.0791040473
13415	189	67	0.1076750811
13416	189	68	0.8879640293
13417	189	69	0.4509149282
13418	189	70	0.1156498329
13419	189	71	0.3327389434
13420	190	1	0.7379411785
13421	190	2	0.4956701109
13422	190	3	0.6079159835
13423	190	4	0.3634632276
13424	190	5	0.4854259146
13425	190	6	0.8089821474
13426	190	7	0.6275260593
13427	190	8	0.7757590315
13428	190	9	0.1937573887
13429	190	10	0.8742928673
13430	190	11	0.2267138190
13431	190	12	0.0650694803
13432	190	13	0.3288677926
13433	190	14	0.6350612803
13434	190	15	0.2163877366
13435	190	16	0.2362034284
13436	190	17	0.1141589424
13437	190	18	0.0655103396
13438	190	19	0.9999118624
13439	190	20	0.3315528436
13440	190	21	0.5816406976
13441	190	22	0.9699683096
13442	190	23	0.3619044186
13443	190	24	0.1260705967
13444	190	25	0.6602870068
13445	190	26	0.4410084658
13446	190	27	0.2337456779
13447	190	28	0.5482510361
13448	190	29	0.8919233945
13449	190	30	0.3493955112
13450	190	31	0.8809899800
13451	190	32	0.6298645730
13452	190	33	0.8450656221
13453	190	34	0.4889059635
13454	190	35	0.9933278007
13455	190	36	0.3304915368
13456	190	37	0.2978881113
13457	190	38	0.6208538604
13458	190	39	0.1062505683
13459	190	40	0.4916455001
13460	190	41	0.4951467277
13461	190	42	0.3329643877
13462	190	43	0.5567149804
13463	190	44	0.8240145203
13464	190	45	0.9680256681
13465	190	46	0.7731027170
13466	190	47	0.0602179486
13467	190	48	0.0821846109
13468	190	49	0.8386130570
13469	190	50	0.0601298115
13470	190	51	0.4137374545
13471	190	52	0.4202537546
13472	190	53	0.0300981211
13473	190	54	0.7756418730
13474	190	55	0.5463243513
13475	190	56	0.6903851279
13476	190	57	0.2166503393
13477	190	58	0.7800700297
13478	190	59	0.2386361640
13479	190	60	0.1085737338
13480	190	61	0.1294655409
13481	190	62	0.1196261439
13482	190	63	0.7384383068
13483	190	64	0.9745311630
13484	190	65	0.6085321079
13485	190	66	0.7317661075
13486	190	67	0.3050226998
13487	190	68	0.9064202192
13488	190	69	0.3526199679
13489	190	70	0.4112732681
13490	190	71	0.3980657193
13491	191	1	0.8477666955
13492	191	2	0.7442376558
13493	191	3	0.9547806997
13494	191	4	0.6717812163
13495	191	5	0.7122633243
13496	191	6	0.7278834167
13497	191	7	0.7319991649
13498	191	8	0.7944479352
13499	191	9	0.5664964737
13500	191	10	0.7921289764
13501	191	11	0.2081853896
13502	191	12	0.9867502283
13503	191	13	0.8222270976
13504	191	14	0.9838272627
13505	191	15	0.5330745801
13506	191	16	0.5126122255
13507	191	17	0.2004776020
13508	191	18	0.3131446098
13509	191	19	0.7512483899
13510	191	20	0.3090513358
13511	191	21	0.4426101507
13512	191	22	0.8708745339
13513	191	23	0.0474896426
13514	191	24	0.4171413137
13515	191	25	0.4794066418
13516	191	26	0.7792557506
13517	191	27	0.7221640134
13518	191	28	0.3858268610
13519	191	29	0.1318757185
13520	191	30	0.1334372815
13521	191	31	0.7838925803
13522	191	32	0.9796424145
13523	191	33	0.8776749377
13524	191	34	0.7386732800
13525	191	35	0.6514236308
13526	191	36	0.5899382620
13527	191	37	0.4665566972
13528	191	38	0.3834227957
13529	191	39	0.3843861972
13530	191	40	0.0330531709
13531	191	41	0.1755517726
13532	191	42	0.5925715868
13533	191	43	0.0198033997
13534	191	44	0.9977788702
13535	191	45	0.5763988495
13536	191	46	0.5528779798
13537	191	47	0.5103910961
13538	191	48	0.7768764519
13539	191	49	0.8660225896
13540	191	50	0.2616394861
13541	191	51	0.0859277877
13542	191	52	0.3086327403
13543	191	53	0.1325140200
13544	191	54	0.1334174308
13545	191	55	0.7257740539
13546	191	56	0.6119206622
13547	191	57	0.9126731814
13548	191	58	0.4479380674
13549	191	59	0.9977475232
13550	191	60	0.0445488999
13551	191	61	0.5813753488
13552	191	62	0.7816401040
13553	191	63	0.0241913144
13554	191	64	0.4590502866
13555	191	65	0.5203133840
13556	191	66	0.6756149451
13557	191	67	0.0489885486
13558	191	68	0.9868700812
13559	191	69	0.0590377413
13560	191	70	0.4333747458
13561	191	71	0.0199232525
13562	192	1	0.2345895139
13563	192	2	0.0259463326
13564	192	3	0.0397266522
13565	192	4	0.2323683840
13566	192	5	0.6023451826
13567	192	6	0.5926046320
13568	192	7	0.7427594801
13569	192	8	0.3792216345
13570	192	9	0.4586272216
13571	192	10	0.0043989662
13572	192	11	0.4651494222
13573	192	12	0.7672599619
13574	192	13	0.1369129866
13575	192	14	0.5985668530
13576	192	15	0.4930340159
13577	192	16	0.7488336489
13578	192	17	0.5112400344
13579	192	18	0.9409720832
13580	192	19	0.7465811721
13581	192	20	0.5557889347
13582	192	21	0.5223474321
13583	192	22	0.5282212761
13584	192	23	0.5799802491
13585	192	24	0.9813977191
13586	192	25	0.0485346606
13587	192	26	0.2555951946
13588	192	27	0.0303862677
13589	192	28	0.0354047418
13590	192	29	0.3146329359
13591	192	30	0.4637610139
13592	192	31	0.0553279943
13593	192	32	0.5492224498
13594	192	33	0.4897073465
13595	192	34	0.0950546465
13596	192	35	0.7815908338
13597	192	36	0.0920525291
13598	192	37	0.6876592785
13599	192	38	0.5243503144
13600	192	39	0.4712741636
13601	192	40	0.1462865002
13602	192	41	0.5287492806
13603	192	42	0.9364235862
13604	192	43	0.9135464621
13605	192	44	0.6656622672
13606	192	45	0.5349904392
13607	192	46	0.4065804780
13608	192	47	0.4144959161
13609	192	48	0.0462304740
13610	192	49	0.3475525612
13611	192	50	0.1610770887
13612	192	51	0.6020194087
13613	192	52	0.8698999938
13614	192	53	0.6892983648
13615	192	54	0.1819996578
13616	192	55	0.8512977129
13617	192	56	0.7378330254
13618	192	57	0.4375948524
13619	192	58	0.8816839806
13620	192	59	0.7732377676
13621	192	60	0.7522277883
13622	192	61	0.3454449945
13623	192	62	0.8285657619
13624	192	63	0.3014502381
13625	192	64	0.8351523415
13626	192	65	0.9236204089
13627	192	66	0.0830410724
13628	192	67	0.9272048706
13629	192	68	0.6112796874
13630	192	69	0.6073913868
13631	192	70	0.3984790347
13632	192	71	0.7575661880
13633	193	1	0.1361406674
13634	193	2	0.3349026209
13635	193	3	0.6711126501
13636	193	4	0.8018029351
13637	193	5	0.8698930601
13638	193	6	0.0776931285
13639	193	7	0.2162988512
13640	193	8	0.9161235341
13641	193	9	0.4252456897
13642	193	10	0.3773759399
13643	193	11	0.5181429428
13644	193	12	0.2951456835
13645	193	13	0.0666743051
13646	193	14	0.7001426010
13647	193	15	0.1464433963
13648	193	16	0.8045073305
13649	193	17	0.1377374534
13650	193	18	0.0281273774
13651	193	19	0.5777450982
13652	193	20	0.8899652422
13653	193	21	0.3735723719
13654	193	22	0.4063108605
13655	193	23	0.1914154803
13656	193	24	0.2087247134
13657	193	25	0.3299312694
13658	193	26	0.2744565527
13659	193	27	0.1359295845
13660	193	28	0.9412109568
13661	193	29	0.8818479395
13662	193	30	0.5344086192
13663	193	31	0.6987771448
13664	193	32	0.0179886073
13665	193	33	0.8693112400
13666	193	34	0.3698897953
13667	193	35	0.8197915424
13668	193	36	0.7392043001
13669	193	37	0.4475829238
13670	193	38	0.0360903936
13671	193	39	0.6553278347
13672	193	40	0.8728286135
13673	193	41	0.4134663339
13674	193	42	0.1734707775
13675	193	43	0.1679742974
13676	193	44	0.4801406390
13677	193	45	0.8736133785
13678	193	46	0.3144176938
13679	193	47	0.2846479695
13680	193	48	0.0113508324
13681	193	49	0.3425450712
13682	193	50	0.8623930681
13683	193	51	0.9013160747
13684	193	52	0.7161174435
13685	193	53	0.2687039287
13686	193	54	0.0927315550
13687	193	55	0.9248421569
13688	193	56	0.5986351981
13689	193	57	0.3671881082
13690	193	58	0.0607717414
13691	193	59	0.5398461549
13692	193	60	0.2490360476
13693	193	61	0.5951803606
13694	193	62	0.2386233001
13695	193	63	0.2670246549
13696	193	64	0.4644916006
13697	193	65	0.6085130954
13698	193	66	0.0868161973
13699	193	67	0.2036959012
13700	193	68	0.0560960192
13701	193	69	0.1229065913
13702	193	70	0.8590237359
13703	193	71	0.9289246327
13704	194	1	0.5363729252
13705	194	2	0.0324945133
13706	194	3	0.0968989301
13707	194	4	0.0165135642
13708	194	5	0.9061078923
13709	194	6	0.4113166244
13710	194	7	0.3011615337
13711	194	8	0.9174587247
13712	194	9	0.7538616955
13713	194	10	0.1635546018
13714	194	11	0.8187747994
13715	194	12	0.4699791390
13716	194	13	0.4322585305
13717	194	14	0.9115063543
13718	194	15	0.3948212964
13719	194	16	0.0308937286
13720	194	17	0.2786944625
13721	194	18	0.4555930379
13722	194	19	0.5707398839
13723	194	20	0.5277305106
13724	194	21	0.0507733990
13725	194	22	0.8093631840
13726	194	23	0.7947551655
13727	194	24	0.5152649996
13728	194	25	0.4178762794
13729	194	26	0.8815713632
13730	194	27	0.7189609008
13731	194	28	0.4739722987
13732	194	29	0.0044779545
13733	194	30	0.5779846366
13734	194	31	0.4028969314
13735	194	32	0.5408508796
13736	194	33	0.6104791504
13737	194	34	0.4997958620
13738	194	35	0.5573644438
13739	194	36	0.5165870427
13740	194	37	0.9111124864
13741	194	38	0.8585259775
13742	194	39	0.4340457674
13743	194	40	0.6649741819
13744	194	41	0.0220805798
13745	194	42	0.2528205668
13746	194	43	0.1349533214
13747	194	44	0.4543391103
13748	194	45	0.1643269211
13749	194	46	0.5297746179
13750	194	47	0.4852328394
13751	194	48	0.4430213841
13752	194	49	0.9853676558
13753	194	50	0.0559727233
13754	194	51	0.9707518946
13755	194	52	0.0361410547
13756	194	53	0.8653359073
13757	194	54	0.7655070601
13758	194	55	0.5514060548
13759	194	56	0.2832121868
13760	194	57	0.6470784233
13761	194	58	0.2703669555
13762	194	59	0.7571844854
13763	194	60	0.6515563778
13764	194	61	0.8483515927
13765	194	62	0.1600814168
13766	194	63	0.1924072574
13767	194	64	0.4588307431
13768	194	65	0.6598772788
13769	194	66	0.7497717012
13770	194	67	0.9754177858
13771	194	68	0.5709897652
13772	194	69	0.6082976791
13773	194	70	0.4094635532
13774	194	71	0.2359639476
13775	195	1	0.6303782589
13776	195	2	0.6622841200
13777	195	3	0.3709172690
13778	195	4	0.0847173692
13779	195	5	0.8266110411
13780	195	6	0.9006918869
13781	195	7	0.5699502085
13782	195	8	0.2696324252
13783	195	9	0.8860595427
13784	195	10	0.6259229318
13785	195	11	0.2403843198
13786	195	12	0.9222005978
13787	195	13	0.4912588391
13788	195	14	0.0058913804
13789	195	15	0.4736066526
13790	195	16	0.7744710259
13791	195	17	0.6529698037
13792	195	18	0.7439736081
13793	195	19	0.5316555114
13794	195	20	0.3045261819
13795	195	21	0.5923252008
13796	195	22	0.6917369287
13797	195	23	0.4969334393
13798	195	24	0.0511559439
13799	195	25	0.3516142075
13800	195	26	0.2467051409
13801	195	27	0.0265737297
13802	195	28	0.9226039732
13803	195	29	0.8550028200
13804	195	30	0.4360372829
13805	195	31	0.1585679208
13806	195	32	0.4853810789
13807	195	33	0.0983214029
13808	195	34	0.5294851898
13809	195	35	0.5700984481
13810	195	36	0.9249324445
13811	195	37	0.4301770767
13812	195	38	0.1400486571
13813	195	39	0.1945648696
13814	195	40	0.3162366194
13815	195	41	0.7659715889
13816	195	42	0.4349491899
13817	195	43	0.2384372172
13818	195	44	0.2572304285
13819	195	45	0.4408405703
13820	195	46	0.7120438698
13821	195	47	0.0317014544
13822	195	48	0.0938103739
13823	195	49	0.4560174784
13824	195	50	0.5633569662
13825	195	51	0.3983365558
13826	195	52	0.0483426792
13827	195	53	0.2550938949
13828	195	54	0.8952699956
13829	195	55	0.0994986235
13830	195	56	0.6067081024
13831	195	57	0.1419751365
13832	195	58	0.1260723532
13833	195	59	0.5293120756
13834	195	60	0.9969779565
13835	195	61	0.5621096366
13836	195	62	0.6878799964
13837	195	63	0.4823590354
13838	195	64	0.6604310395
13839	195	65	0.2173651862
13840	195	66	0.0524574835
13841	195	67	0.5853634840
13842	195	68	0.6475422629
13843	195	69	0.1925061406
13844	195	70	0.7799283541
13845	195	71	0.9637788828
13846	196	1	0.9584777299
13847	196	2	0.2148775440
13848	196	3	0.2022160999
13849	196	4	0.2157081584
13850	196	5	0.6557181142
13851	196	6	0.9142599702
13852	196	7	0.2474096129
13853	196	8	0.7495284881
13854	196	9	0.3702774486
13855	196	10	0.8107665791
13856	196	11	0.1478650444
13857	196	12	0.4186201277
13858	196	13	0.0658604740
13859	196	14	0.0431350400
13860	196	15	0.5181187512
13861	196	16	0.6725685769
13862	196	17	0.1851101764
13863	196	18	0.6441911049
13864	196	19	0.2018806525
13865	196	20	0.1820881329
13866	196	21	0.2063007415
13867	196	22	0.8897606493
13868	196	23	0.6644471684
13869	196	24	0.8667317810
13870	196	25	0.1071258355
13871	196	26	0.7169046518
13872	196	27	0.4520952655
13873	196	28	0.7546680989
13874	196	29	0.9094107929
13875	196	30	0.2320236196
13876	196	31	0.7184469816
13877	196	32	0.8678885228
13878	196	33	0.4469011636
13879	196	34	0.9206630816
13880	196	35	0.0835966812
13881	196	36	0.1026192778
13882	196	37	0.8349230518
13883	196	38	0.3310062941
13884	196	39	0.8521477659
13885	196	40	0.2052005003
13886	196	41	0.1417728737
13887	196	42	0.0000128103
13888	196	43	0.6238206285
13889	196	44	0.2076333477
13890	196	45	0.0431478503
13891	196	46	0.1419393797
13892	196	47	0.8802019246
13893	196	48	0.2282580268
13894	196	49	0.7861304847
13895	196	50	0.0820825775
13896	196	51	0.4103461597
13897	196	52	0.9924312262
13898	196	53	0.9718432268
13899	196	54	0.0747933281
13900	196	55	0.8591630077
13901	196	56	0.0789690623
13902	196	57	0.7916979804
13903	196	58	0.3112582732
13904	196	59	0.8336371612
13905	196	60	0.7011087732
13906	196	61	0.5432818928
13907	196	62	0.5520841428
13908	196	63	0.5689972960
13909	196	64	0.9901830563
13910	196	65	0.4727472248
13911	196	66	0.6525939773
13912	196	67	0.0928023341
13913	196	68	0.3076702766
13914	196	69	0.9836002714
13915	196	70	0.9449501000
13916	196	71	0.5128707774
13917	197	1	0.1253731451
13918	197	2	0.9449629108
13919	197	3	0.1366914059
13920	197	4	0.3330064933
13921	197	5	0.9881107612
13922	197	6	0.2786307856
13923	197	7	0.2132084179
13924	197	8	0.2163687884
13925	197	9	0.0647612708
13926	197	10	0.2952909954
13927	197	11	0.6267149481
13928	197	12	0.0571924970
13929	197	13	0.2671342222
13930	197	14	0.7015082766
13931	197	15	0.9163555047
13932	197	16	0.3461032850
13933	197	17	0.4932062570
13934	197	18	0.2276137779
13935	197	19	0.1797404462
13936	197	20	0.1943150302
13937	197	21	0.7708956706
13938	197	22	0.7318245894
13939	197	23	0.7633123263
13940	197	24	0.7610787270
13941	197	25	0.2045718143
13942	197	26	0.4159063036
13943	197	27	0.8538810611
13944	197	28	0.5122420909
13945	197	29	0.3995065750
13946	197	30	0.7988311616
13947	197	31	0.0251128683
13948	197	32	0.5248797205
13949	197	33	0.7437940724
13950	197	34	0.1618042742
13951	197	35	0.8578862138
13952	197	36	0.7319048336
13953	197	37	0.4404350603
13954	197	38	0.0710946317
13955	197	39	0.9482736220
13956	197	40	0.5051963311
13957	197	41	0.3663856275
13958	197	42	0.5749885705
13959	197	43	0.5623888280
13960	197	44	0.6335198497
13961	197	45	0.2764968472
13962	197	46	0.4787443331
13963	197	47	0.9796231347
13964	197	48	0.7697031042
13965	197	49	0.7063581110
13966	197	50	0.1593635813
13967	197	51	0.9640181344
13968	197	52	0.4772537821
13969	197	53	0.8911881708
13970	197	54	0.7273304607
13971	197	55	0.2383325091
13972	197	56	0.0957599850
13973	197	57	0.1432367642
13974	197	58	0.0922135706
13975	197	59	0.6080020759
13976	197	60	0.5427433392
13977	197	61	0.8910447322
13978	197	62	0.6331149447
13979	197	63	0.0676230597
13980	197	64	0.6348388046
13981	197	65	0.7949192189
13982	197	66	0.9255092735
13983	197	67	0.3667436382
13984	197	68	0.2353542792
13985	197	69	0.9966039057
13986	197	70	0.3150172606
13987	197	71	0.7405506102
13988	198	1	0.3629895332
13989	198	2	0.8900058311
13990	198	3	0.3029394387
13991	198	4	0.9965093830
13992	198	5	0.1665026783
13993	198	6	0.7816837719
13994	198	7	0.9761325181
13995	198	8	0.9362057825
13996	198	9	0.4880418829
13997	198	10	0.1354960995
13998	198	11	0.9002239169
13999	198	12	0.9652956650
14000	198	13	0.0266842702
14001	198	14	0.6275543775
14002	198	15	0.2036281745
14003	198	16	0.1224442553
14004	198	17	0.7707911418
14005	198	18	0.2958417451
14006	198	19	0.7304463312
14007	198	20	0.3135344810
14008	198	21	0.1868864773
14009	198	22	0.3635612759
14010	198	23	0.3811575412
14011	198	24	0.8217252819
14012	198	25	0.1584804952
14013	198	26	0.3066668147
14014	198	27	0.1884689201
14015	198	28	0.3938347744
14016	198	29	0.3032707204
14017	198	30	0.5034861807
14018	198	31	0.1343853851
14019	198	32	0.6662602536
14020	198	33	0.3934920118
14021	198	34	0.4373248238
14022	198	35	0.6627696371
14023	198	36	0.5599946901
14024	198	37	0.2190085957
14025	198	38	0.6389021552
14026	198	39	0.4962004726
14027	198	40	0.7070504786
14028	198	41	0.7743982547
14029	198	42	0.3964243894
14030	198	43	0.6723461440
14031	198	44	0.8010825249
14032	198	45	0.0239787670
14033	198	46	0.8759743185
14034	198	47	0.9235267802
14035	198	48	0.7947699088
14036	198	49	0.1718160636
14037	198	50	0.6539731114
14038	198	51	0.1083043902
14039	198	52	0.3587025409
14040	198	53	0.0175343878
14041	198	54	0.4894619314
14042	198	55	0.1804278228
14043	198	56	0.1760148830
14044	198	57	0.7961287461
14045	198	58	0.3688967428
14046	198	59	0.5698496574
14047	198	60	0.0993994670
14048	198	61	0.8723829240
14049	198	62	0.7042350424
14050	198	63	0.7656597206
14051	198	64	0.2658749358
14052	198	65	0.1415598663
14053	198	66	0.4284293577
14054	198	67	0.8258696264
14055	198	68	0.3605684619
14056	198	69	0.0673315129
14057	198	70	0.3220700989
14058	198	71	0.0676189410
14059	199	1	0.8417297676
14060	199	2	0.7184944889
14061	199	3	0.7399650849
14062	199	4	0.6428122926
14063	199	5	0.7424732558
14064	199	6	0.6159394034
14065	199	7	0.5663390728
14066	199	8	0.5372431651
14067	199	9	0.7877554670
14068	199	10	0.2203121847
14069	199	11	0.6455475553
14070	199	12	0.1464580079
14071	199	13	0.2378465724
14072	199	14	0.1350094867
14073	199	15	0.3268858306
14074	199	16	0.4138614554
14075	199	17	0.9311382328
14076	199	18	0.6957825734
14077	199	19	0.9837111128
14078	199	20	0.0305376998
14079	199	21	0.5681654974
14080	199	22	0.6879461557
14081	199	23	0.7961974209
14082	199	24	0.8340404336
14083	199	25	0.8295060219
14084	199	26	0.2246267786
14085	199	27	0.6599100600
14086	199	28	0.1900744843
14087	199	29	0.2919582920
14088	199	30	0.9819801589
14089	199	31	0.2576934253
14090	199	32	0.1336880596
14091	199	33	0.7004746478
14092	199	34	0.9976585102
14093	199	35	0.7765003527
14094	199	36	0.4429479041
14095	199	37	0.6135979136
14096	199	38	0.3428394254
14097	199	39	0.9801910692
14098	199	40	0.4013533806
14099	199	41	0.5631516101
14100	199	42	0.6257386245
14101	199	43	0.5478113885
14102	199	44	0.8009981825
14103	199	45	0.7607481112
14104	199	46	0.8746972191
14105	199	47	0.2148596379
14106	199	48	0.6918863440
14107	199	49	0.5704797925
14108	199	50	0.1985707511
14109	199	51	0.7224240443
14110	199	52	0.1386452904
14111	199	53	0.8865169068
14112	199	54	0.5186214652
14113	199	55	0.9726857240
14114	199	56	0.7160229287
14115	199	57	0.7432482438
14116	199	58	0.6325957840
14117	199	59	0.9060974130
14118	199	60	0.0352065358
14119	199	61	0.6145759430
14120	199	62	0.1637908383
14121	199	63	0.1688945959
14122	199	64	0.3150505912
14123	199	65	0.1614493486
14124	199	66	0.9453949486
14125	199	67	0.7579984954
14126	199	68	0.7750472622
14127	199	69	0.2882343740
14128	199	70	0.7381895646
14129	199	71	0.1764006428
14130	200	1	0.8513859846
14131	200	2	0.3639281890
14132	200	3	0.7242120313
14133	200	4	0.6523841671
14134	200	5	0.1246763002
14135	200	6	0.5989092505
14136	200	7	0.8672438054
14137	200	8	0.8165626442
14138	200	9	0.1693890435
14139	200	10	0.0658145566
14140	200	11	0.5389866885
14141	200	12	0.3080343339
14142	200	13	0.9523314633
14143	200	14	0.0576081537
14144	200	15	0.2807200579
14145	200	16	0.6683543921
14146	200	17	0.8008563980
14147	200	18	0.9133158419
14148	200	19	0.5744518056
14149	200	20	0.8360629338
14150	200	21	0.5278917849
14151	200	22	0.7382426439
14152	200	23	0.0049575297
14153	200	24	0.8429423762
14154	200	25	0.8996919929
14155	200	26	0.9503524783
14156	200	27	0.6009408715
14157	200	28	0.6747392551
14158	200	29	0.2385868528
14159	200	30	0.3391304361
14160	200	31	0.8511398984
14161	200	32	0.0899728374
14162	200	33	0.7030586251
14163	200	34	0.5753519298
14164	200	35	0.7423570044
14165	200	36	0.8277349253
14166	200	37	0.1742611807
14167	200	38	0.6096008099
14168	200	39	0.6442975700
14169	200	40	0.3436502242
14170	200	41	0.6754153664
14171	200	42	0.1832842585
14172	200	43	0.6516845580
14173	200	44	0.6277468298
14174	200	45	0.2408924126
14175	200	46	0.9324046159
14176	200	47	0.2961012223
14177	200	48	0.0417488106
14178	200	49	0.8457204578
14179	200	50	0.8705530278
14180	200	51	0.8778117443
14181	200	52	0.3736122428
14182	200	53	0.6087956717
14183	200	54	0.8827692745
14184	200	55	0.2165546194
14185	200	56	0.5084876646
14186	200	57	0.8331217528
14187	200	58	0.8174954909
14188	200	59	0.1832269202
14189	200	60	0.0717086056
14190	200	61	0.1566259274
14191	200	62	0.0343668186
14192	200	63	0.1616814430
14193	200	64	0.8596845525
14194	200	65	0.6097187484
14195	200	66	0.9040384479
14196	200	67	0.6874194783
14197	200	68	0.7839799291
14198	200	69	0.5136392578
14199	200	70	0.3317170483
14200	200	71	0.1276301532
14201	1	77	0.0259905920
14202	2	77	0.6790360013
14203	3	77	0.2096255699
14204	4	77	0.2284459560
14205	5	77	0.8708310776
14206	6	77	0.9105996544
14207	7	77	0.6980752578
14208	8	77	0.0346300341
14209	9	77	0.2382289975
14210	10	77	0.2405491144
14211	11	77	0.5311165787
14212	12	77	0.5617297652
14214	14	77	0.8606300172
14215	15	77	0.3266043445
14216	16	77	0.6430620393
14218	18	77	0.8026249715
14219	19	77	0.3639833415
14220	20	77	0.7815420168
14221	21	77	0.9607322999
14222	22	77	0.0974843595
14223	23	77	0.3410115015
14224	24	77	0.3470243683
14225	25	77	0.5440990604
14226	26	77	0.6238876150
14227	27	77	0.6093041578
14228	28	77	0.9299857174
14229	29	77	0.1857322142
14231	31	77	0.4550470563
14232	32	77	0.5321079071
14233	33	77	0.3217259044
14234	34	77	0.5104954733
14235	35	77	0.0450328951
14236	36	77	0.8787033362
14237	37	77	0.9744165747
14238	38	77	0.2523612013
14239	39	77	0.2490318035
14240	40	77	0.8067020342
14241	41	77	0.8104259208
14242	42	77	0.6590141998
14243	43	77	0.7398689965
14244	44	77	0.8979608648
14245	45	77	0.5231893133
14246	46	77	0.3223802060
14247	47	77	0.0598445576
14248	48	77	0.3062152945
14249	49	77	0.5471474626
14250	50	77	0.3391637466
14251	51	77	0.5215908058
14252	52	77	0.2209851420
14253	53	77	0.7970970418
14254	54	77	0.3902467610
14255	55	77	0.0293236932
14256	56	77	0.8135007191
14257	57	77	0.3003593661
14258	58	77	0.1808808597
14259	59	77	0.8789085810
14260	60	77	0.1130313034
14261	61	77	0.5467813872
14262	62	77	0.2944052269
14263	63	77	0.2481134867
14264	64	77	0.7710561253
14265	65	77	0.8691196373
14266	66	77	0.5607713258
14267	67	77	0.5215153873
14268	68	77	0.6112604485
14269	69	77	0.4736936930
14270	70	77	0.6161548445
14271	71	77	0.6590593500
14272	72	77	0.7059272743
14273	73	77	0.4716559582
14274	74	77	0.7623817874
14275	75	77	0.2972428549
14277	77	77	0.9141211667
14278	78	77	0.1492641593
14279	79	77	0.7352462532
14280	80	77	0.9950862219
14281	81	77	0.7561780557
14282	82	77	0.9562155295
14283	83	77	0.1069168401
14284	84	77	0.8006557317
14285	85	77	0.0084387444
14286	86	77	0.9058777446
14287	87	77	0.0243256968
14230	30	77	0.1657380822
14213	13	77	0.2068307496
14288	88	77	0.1222147474
14289	89	77	0.1640526973
14290	90	77	0.3050957768
14291	91	77	0.6603770139
14292	92	77	0.9238910247
14293	93	77	0.1313621055
14294	94	77	0.8091614083
14295	95	77	0.1313661654
14296	96	77	0.8298809341
14297	97	77	0.5971626152
14298	98	77	0.9047089618
14299	99	77	0.8180157251
14300	100	77	0.8695091089
14301	101	77	0.3871854335
14303	103	77	0.1353362960
14304	104	77	0.0082485464
14305	105	77	0.1141761339
14306	106	77	0.1062560055
14307	107	77	0.9541099390
14308	108	77	0.1803145944
14309	109	77	0.7985217394
14310	110	77	0.5217309686
14311	111	77	0.6783998339
14312	112	77	0.2629182844
14313	113	77	0.6042787232
14314	114	77	0.7616103075
14315	115	77	0.7206300757
14316	116	77	0.6573721074
14317	117	77	0.8022117622
14318	118	77	0.3019475609
14319	119	77	0.5095768177
14320	120	77	0.5079352413
14322	122	77	0.5876052743
14323	123	77	0.1766868305
14324	124	77	0.5138991175
14325	125	77	0.3984387046
14326	126	77	0.8826582860
14327	127	77	0.0586260468
14328	128	77	0.3473628562
14329	129	77	0.5686959790
14330	130	77	0.5335098142
14331	131	77	0.8069921316
14332	132	77	0.9981566537
14333	133	77	0.0671273905
14334	134	77	0.2883142636
14335	135	77	0.6617700320
14336	136	77	0.9358769584
14337	137	77	0.6016550698
14338	138	77	0.6875390482
14339	139	77	0.5739309861
14340	140	77	0.0936739962
14341	141	77	0.2522688374
14342	142	77	0.9065735264
14344	144	77	0.4180119467
14345	145	77	0.1079118960
14346	146	77	0.8368872653
14347	147	77	0.8116442052
14348	148	77	0.0881385571
14349	149	77	0.5233218584
14350	150	77	0.9376182181
14351	151	77	0.3735467389
14352	152	77	0.0208592568
14353	153	77	0.3007692891
14354	154	77	0.8212852512
14356	156	77	0.8129266373
14357	157	77	0.1116129426
14358	158	77	0.4486860914
14360	160	77	0.7929844830
14361	161	77	0.5479587214
14362	162	77	0.6632398089
14363	163	77	0.5859642255
14364	164	77	0.5489644963
14365	165	77	0.5045483594
14366	166	77	0.6519182496
14367	167	77	0.0507496895
14368	168	77	0.9424731126
14369	169	77	0.2826917020
14370	170	77	0.8451528140
14371	171	77	0.8257464033
14372	172	77	0.1855246147
14373	173	77	0.8073127432
14374	174	77	0.4836982072
14375	175	77	0.0025774976
14376	176	77	0.1832859283
14377	177	77	0.5894025389
14378	178	77	0.5585372966
14379	179	77	0.3877134785
14380	180	77	0.1431624673
14381	181	77	0.0193271572
14382	182	77	0.3711648372
14383	183	77	0.0580273914
14384	184	77	0.0248309336
14385	185	77	0.5215071896
14386	186	77	0.3303214876
14387	187	77	0.1685073486
14388	188	77	0.9867237377
14389	189	77	0.5540317465
14390	190	77	0.0357068151
14391	191	77	0.4335291868
14392	192	77	0.7131384120
14393	193	77	0.2711173049
14394	194	77	0.4754996061
14395	195	77	0.2976709637
14396	196	77	0.3036755999
14397	197	77	0.1149343311
14398	198	77	0.4482199648
14399	199	77	0.4131967480
14400	200	77	0.2211850945
14401	1	78	0.5680299288
14402	2	78	0.9955858313
14403	3	78	0.9516838736
14404	4	78	0.3877471685
14405	5	78	0.2494038453
14406	6	78	0.6672072990
14407	7	78	0.1641136066
14408	8	78	0.5559403154
14409	9	78	0.3908603189
14410	10	78	0.7850924610
14411	11	78	0.1373755548
14412	12	78	0.3037441435
14414	14	78	0.9959407468
14415	15	78	0.2794648948
14416	16	78	0.9594382646
14418	18	78	0.7835559334
14419	19	78	0.4216117884
14420	20	78	0.4558383086
14421	21	78	0.7175546145
14422	22	78	0.8734258974
14423	23	78	0.9970828624
14424	24	78	0.6602773512
14425	25	78	0.4891771581
14426	26	78	0.4697621216
14427	27	78	0.3368236860
14428	28	78	0.8052214040
14429	29	78	0.1734516945
14431	31	78	0.3198201344
14432	32	78	0.8584597929
14433	33	78	0.1451902087
14434	34	78	0.5152762611
14435	35	78	0.7149487943
14436	36	78	0.1343992754
14437	37	78	0.5665446197
14438	38	78	0.6548603817
14439	39	78	0.7273395808
14440	40	78	0.9699732995
14441	41	78	0.0657887244
14442	42	78	0.6590321451
14443	43	78	0.1343640489
14444	44	78	0.9555650770
14343	143	77	0.0537362137
14321	121	77	0.3917863051
14359	159	77	0.3518827191
14430	30	78	0.2117721444
14302	102	77	0.2801747139
14413	13	78	0.1474812103
14445	45	78	0.8137436531
14446	46	78	0.0329480813
14447	47	78	0.1089886368
14448	48	78	0.1866794648
14449	49	78	0.8426908201
14450	50	78	0.5046233001
14451	51	78	0.9815284684
14452	52	78	0.7330418581
14453	53	78	0.8092374096
14454	54	78	0.9826075165
14455	55	78	0.1513844662
14456	56	78	0.7003204842
14457	57	78	0.0777427813
14458	58	78	0.7030690138
14459	59	78	0.4002849383
14460	60	78	0.6880254509
14461	61	78	0.2244867678
14462	62	78	0.4436497911
14463	63	78	0.8975150874
14464	64	78	0.6450412099
14465	65	78	0.7198229914
14466	66	78	0.0204833115
14467	67	78	0.3167842824
14468	68	78	0.8230211559
14469	69	78	0.5866039751
14470	70	78	0.5016308889
14471	71	78	0.5422532260
14472	72	78	0.2523715839
14473	73	78	0.4882360668
14474	74	78	0.4372347823
14475	75	78	0.3981137574
14477	77	78	0.9562850880
14478	78	78	0.1428078260
14479	79	78	0.1160378280
14480	80	78	0.1972447883
14481	81	78	0.2359272499
14482	82	78	0.2077917751
14483	83	78	0.7495720387
14484	84	78	0.6162129981
14485	85	78	0.9303383547
14486	86	78	0.8761313168
14487	87	78	0.9547612879
14488	88	78	0.0066431054
14489	89	78	0.1454976949
14490	90	78	0.7216148432
14491	91	78	0.9210185565
14492	92	78	0.0443077748
14493	93	78	0.3464440594
14494	94	78	0.2952558666
14495	95	78	0.5444598384
14496	96	78	0.4861115309
14497	97	78	0.0087153543
14498	98	78	0.0260472510
14499	99	78	0.5236578924
14500	100	78	0.2241535611
14501	101	78	0.3089352810
14503	103	78	0.0555896433
14504	104	78	0.3546146495
14505	105	78	0.2504994054
14506	106	78	0.6304298929
14507	107	78	0.0471589528
14508	108	78	0.2094065820
14509	109	78	0.9576430786
14510	110	78	0.7313937028
14511	111	78	0.1297891797
14512	112	78	0.6284178340
14513	113	78	0.0097430458
14514	114	78	0.6359513815
14515	115	78	0.8329837746
14516	116	78	0.7376181910
14517	117	78	0.4240548652
14518	118	78	0.0022502644
14519	119	78	0.2607993288
14520	120	78	0.3825026812
14522	122	78	0.5094667501
14523	123	78	0.9570723747
14524	124	78	0.1931297296
14525	125	78	0.5570014410
14526	126	78	0.3100945619
14527	127	78	0.2592163764
14528	128	78	0.8630093833
14529	129	78	0.5454202042
14530	130	78	0.8949414946
14531	131	78	0.1023278360
14532	132	78	0.7866308888
14533	133	78	0.7620653516
14534	134	78	0.0378179147
14535	135	78	0.8355590703
14536	136	78	0.5373051987
14537	137	78	0.4956096373
14538	138	78	0.8438397651
14539	139	78	0.6666015352
14540	140	78	0.6880512634
14541	141	78	0.6518643988
14542	142	78	0.8985283505
14544	144	78	0.8725017372
14545	145	78	0.5465079994
14546	146	78	0.7728670397
14547	147	78	0.4482518071
14548	148	78	0.8635044362
14549	149	78	0.8337256918
14550	150	78	0.6751175834
14551	151	78	0.0647637975
14552	152	78	0.0172895466
14553	153	78	0.2461922147
14554	154	78	0.3757563679
14556	156	78	0.4125381968
14557	157	78	0.9647172277
14558	158	78	0.3288752536
14560	160	78	0.8141649609
14561	161	78	0.4988078691
14562	162	78	0.7932613336
14563	163	78	0.3757774952
14564	164	78	0.8152643963
14565	165	78	0.2984162407
14566	166	78	0.4549918191
14567	167	78	0.2910719678
14568	168	78	0.3558430034
14569	169	78	0.7539976845
14570	170	78	0.3702900841
14571	171	78	0.3299882601
14572	172	78	0.1559947601
14573	173	78	0.0697490361
14574	174	78	0.9255122743
14575	175	78	0.2495915580
14576	176	78	0.5108320526
14577	177	78	0.5534189841
14578	178	78	0.3880890481
14579	179	78	0.9943703930
14580	180	78	0.2794765200
14581	181	78	0.9282643422
14582	182	78	0.8890538544
14583	183	78	0.4769629970
14584	184	78	0.7802453431
14585	185	78	0.8830886741
14586	186	78	0.5495434309
14587	187	78	0.3549703356
14588	188	78	0.3966939358
14589	189	78	0.8914407848
14590	190	78	0.7928361364
14591	191	78	0.8284956094
14592	192	78	0.5647612682
14593	193	78	0.2358348376
14594	194	78	0.0613903736
14595	195	78	0.6482753959
14596	196	78	0.5480639926
14597	197	78	0.5911049748
14598	198	78	0.5040843337
14599	199	78	0.1884311225
14600	200	78	0.5048844585
14543	143	78	0.0069860272
14521	121	78	0.3738501280
14559	159	78	0.4623024262
14476	76	78	0.1411162368
14502	102	78	0.4260299742
14757	203	1	0.2678057792
14758	203	2	0.5484870161
14759	203	3	0.6894267167
14760	203	4	0.3581240660
14761	203	5	0.7454615035
14762	203	6	0.4069418373
14763	203	7	0.3783173217
14764	203	8	0.7795891535
14765	203	9	0.7259210491
14766	203	10	0.9853332650
14767	203	11	0.4891354110
14768	203	12	0.0733558628
14769	203	13	0.9548242817
14770	203	14	0.0690889317
14771	203	15	0.1479935349
14772	203	16	0.7995784250
14773	203	17	0.3006091889
14774	203	18	0.2075690876
14775	203	19	0.1832275797
14776	203	20	0.5710477279
14777	203	21	0.7218235750
14778	203	22	0.6462121678
14779	203	23	0.5679600894
14780	203	24	0.2780449927
14781	203	25	0.6377263614
14782	203	26	0.4773423217
14783	203	27	0.2765707521
14784	203	28	0.3859729013
14785	203	29	0.1150204211
14786	203	30	0.1011093139
14787	203	31	0.5859674898
14788	203	32	0.3450256398
14789	203	33	0.0299941050
14790	203	34	0.1993501694
14791	203	35	0.3944665568
14792	203	36	0.8602412398
14793	203	37	0.5348417966
14794	203	38	0.8537399834
14795	203	39	0.0687051136
14796	203	40	0.4982068187
14797	203	41	0.5766911496
14798	203	42	0.1598474704
14799	203	43	0.9836538139
14800	203	44	0.0493130533
14801	203	45	0.7441660509
14802	203	46	0.1177211610
14803	203	47	0.9094026426
14804	203	48	0.7615736966
14805	203	49	0.3254424899
14806	203	50	0.8255453421
14807	203	51	0.2636793570
14808	203	52	0.3378009529
14809	203	53	0.3526643886
14810	203	54	0.0971666672
14811	203	55	0.8419783810
14812	203	56	0.6556767712
14813	203	57	0.4340380576
14814	203	58	0.3637157184
14815	203	59	0.7786322782
14816	203	60	0.8513276892
14817	203	61	0.7074416483
14818	203	62	0.9635610107
14819	203	63	0.3543291208
14820	203	64	0.3077602251
14821	203	65	0.9407285325
14822	203	66	0.6614388336
14823	203	67	0.4608153312
14824	203	68	0.3730085510
14825	203	69	0.4408426705
14826	203	70	0.3527318788
14827	203	71	0.8306607000
14828	203	72	0.6932837067
14829	203	73	0.2314136470
14830	203	74	0.7030848534
14831	203	75	0.3457408921
14832	203	76	0.3612738508
14833	203	77	0.5354767507
14834	203	78	0.5109469107
14835	204	1	0.4022888453
14836	204	2	0.2678045783
14837	204	3	0.6748728225
14838	204	4	0.7037764026
14839	204	5	0.7132159092
14840	204	6	0.7061091319
14841	204	7	0.9085096022
14842	204	8	0.7823814843
14843	204	9	0.6409963988
14844	204	10	0.1664846273
14845	204	11	0.1197933630
14846	204	12	0.2096941479
14847	204	13	0.5935957120
14848	204	14	0.7883495593
14849	204	15	0.0813029161
14850	204	16	0.2783839229
14851	204	17	0.4838497826
14852	204	18	0.7878234336
14853	204	19	0.0537879168
14854	204	20	0.8711440691
14855	204	21	0.1243917705
14856	204	22	0.2524695995
14857	204	23	0.1214489043
14858	204	24	0.0985001343
14859	204	25	0.1579702116
14860	204	26	0.0628006613
14861	204	27	0.6561661510
14862	204	28	0.2351740058
14863	204	29	0.8854072659
14864	204	30	0.2605889571
14865	204	31	0.9131539212
14866	204	32	0.6873058102
14867	204	33	0.0937517128
14868	204	34	0.1224488805
14869	204	35	0.5291573406
14870	204	36	0.2896213317
14871	204	37	0.5013386370
14872	204	38	0.1502171662
14873	204	39	0.4228012311
14874	204	40	0.7143387779
14875	204	41	0.6583101090
14876	204	42	0.9543862241
14877	204	43	0.4942579429
14878	204	44	0.2394168040
14879	204	45	0.5236476389
14880	204	46	0.9125454812
14881	204	47	0.5723855482
14882	204	48	0.1142873049
14883	204	49	0.8521019620
14884	204	50	0.6860228074
14885	204	51	0.3933121045
14886	204	52	0.7066420912
14887	204	53	0.7006081804
14888	204	54	0.7399532473
14889	204	55	0.8708941717
14890	204	56	0.0217179535
14891	204	57	0.4701025054
14892	204	58	0.2457650021
14893	204	59	0.6767856981
14894	204	60	0.2595290923
14895	204	61	0.2881830516
14896	204	62	0.4573051327
14897	204	63	0.5089024001
14898	204	64	0.8918382018
14899	204	65	0.9447183124
14900	204	66	0.4945858023
14901	204	67	0.8309579324
14902	204	68	0.7303820927
14903	204	69	0.4117611680
14904	204	70	0.1964559415
14905	204	71	0.2946469860
14906	204	72	0.3816930170
14907	204	73	0.6434571214
14908	204	74	0.2975361986
14909	204	75	0.4857880570
14910	204	76	0.6181858397
14911	204	77	0.0735421110
14912	204	78	0.4600162475
14913	205	1	0.3035952051
14914	205	2	0.1103623082
14915	205	3	0.6523345667
14916	205	4	0.9099823620
14917	205	5	0.7873279487
14918	205	6	0.5895733496
14919	205	7	0.9810273220
14920	205	8	0.3733515974
14921	205	9	0.0760772732
14922	205	10	0.1143304844
14923	205	11	0.2869044874
14924	205	12	0.1301926921
14925	205	13	0.7789545876
14926	205	14	0.9350960298
14927	205	15	0.2657853868
14928	205	16	0.3638117268
14929	205	17	0.5924097963
14930	205	18	0.5004603018
14931	205	19	0.2085505886
14932	205	20	0.3615603344
14933	205	21	0.5345864153
14934	205	22	0.0561148944
14935	205	23	0.8805401809
14936	205	24	0.9727281435
14937	205	25	0.7987961565
14938	205	26	0.4300901123
14939	205	27	0.2348321222
14940	205	28	0.7670198187
14941	205	29	0.4957730205
14942	205	30	0.2352412373
14943	205	31	0.8524789330
14944	205	32	0.5497646829
14945	205	33	0.2242851778
14946	205	34	0.9259226736
14947	205	35	0.2102149584
14948	205	36	0.6130662282
14949	205	37	0.3183053696
14950	205	38	0.7704404633
14951	205	39	0.7459815940
14952	205	40	0.5637184286
14953	205	41	0.5337214051
14954	205	42	0.2381117512
14955	205	43	0.7963755725
14956	205	44	0.6090124160
14957	205	45	0.8901631477
14958	205	46	0.0797482042
14959	205	47	0.1352121630
14960	205	48	0.4423203803
14961	205	49	0.3305238519
14962	205	50	0.6489352600
14963	205	51	0.1740414939
14964	205	52	0.3458156372
14965	205	53	0.1282636322
14966	205	54	0.1535103764
14967	205	55	0.4307960765
14968	205	56	0.5979476944
14969	205	57	0.2445682035
14970	205	58	0.4084033738
14971	205	59	0.2556765188
14972	205	60	0.9286573847
14973	205	61	0.3647934132
14974	205	62	0.1380595656
14975	205	63	0.1790563259
14976	205	64	0.0012915204
14977	205	65	0.9235286424
14978	205	66	0.4795146692
14979	205	67	0.5171814052
14980	205	68	0.2100106233
14981	205	69	0.6136894434
14982	205	70	0.5034057088
14983	205	71	0.3536352251
14984	205	72	0.0215077250
14985	205	73	0.3705151453
14986	205	74	0.0911407360
14987	205	75	0.0213954807
14988	205	76	0.6384014717
14989	205	77	0.6168360989
14990	205	78	0.3852729034
14991	206	1	0.9013764977
14992	206	2	0.5043129946
14993	206	3	0.4259187034
14994	206	4	0.7533332318
14995	206	5	0.6646484174
14996	206	6	0.6889726942
14997	206	7	0.8551745120
14998	206	8	0.9204975968
14999	206	9	0.6034546696
15000	206	10	0.3815199213
15001	206	11	0.3062307489
15002	206	12	0.0403161224
15003	206	13	0.9794064455
15004	206	14	0.5775831208
15005	206	15	0.3677582998
15006	206	16	0.4268724475
15007	206	17	0.8740055472
15008	206	18	0.2345957230
15009	206	19	0.7072945045
15010	206	20	0.9726098114
15011	206	21	0.6614761226
15012	206	22	0.6805870531
15013	206	23	0.1732639276
15014	206	24	0.0842767469
15015	206	25	0.3511298151
15016	206	26	0.6317580854
15017	206	27	0.4272002676
15018	206	28	0.3590284097
15019	206	29	0.7734967399
15020	206	30	0.4736882321
15021	206	31	0.0664065696
15022	206	32	0.9175396574
15023	206	33	0.7951151358
15024	206	34	0.3075135275
15025	206	35	0.4492289974
15026	206	36	0.4407110575
15027	206	37	0.4324256691
15028	206	38	0.4748898037
15029	206	39	0.3183244794
15030	206	40	0.0849303293
15031	206	41	0.1433583947
15032	206	42	0.5095802189
15033	206	43	0.1012458499
15034	206	44	0.6884795631
15035	206	45	0.3807700615
15036	206	46	0.6469849891
15037	206	47	0.8385821667
15038	206	48	0.3886219340
15039	206	49	0.8112047289
15040	206	50	0.0409203352
15041	206	51	0.8358810023
15042	206	52	0.3458680543
15043	206	53	0.6845303934
15044	206	54	0.9473971153
15045	206	55	0.2762034065
15046	206	56	0.6081921084
15047	206	57	0.9249382251
15048	206	58	0.5765589349
15049	206	59	0.0366740874
15050	206	60	0.3558959836
15051	206	61	0.2431674508
15052	206	62	0.5147949339
15053	206	63	0.3557479263
15054	206	64	0.0945006315
15055	206	65	0.2411528223
15056	206	66	0.2467591887
15057	206	67	0.8480087349
15058	206	68	0.7333720166
15059	206	69	0.7990684128
15060	206	70	0.6577457037
15061	206	71	0.7924300051
15062	206	72	0.3705871386
15063	206	73	0.5058909755
15064	206	74	0.8573250790
15065	206	75	0.0155337271
15066	206	76	0.5117524096
15067	206	77	0.0761379690
15068	206	78	0.8110033720
15069	207	1	0.8073300208
15070	207	2	0.6112223404
15071	207	3	0.4442610906
15072	207	4	0.0208229910
15073	207	5	0.9657058138
15074	207	6	0.0798947691
15075	207	7	0.9966764582
15076	207	8	0.2776946632
15077	207	9	0.9613772995
15078	207	10	0.8005552879
15079	207	11	0.8156827587
15080	207	12	0.0690624777
15081	207	13	0.2736842071
15082	207	14	0.3361331232
15083	207	15	0.1337071891
15084	207	16	0.1776098429
15085	207	17	0.4005904690
15086	207	18	0.0383357118
15087	207	19	0.3014503878
15088	207	20	0.1745019445
15089	207	21	0.7010758906
15090	207	22	0.2006483881
15091	207	23	0.6801623321
15092	207	24	0.9040313336
15093	207	25	0.0817237336
15094	207	26	0.3202077907
15095	207	27	0.7066081697
15096	207	28	0.0437562383
15097	207	29	0.5710003590
15098	207	30	0.9063292076
15099	207	31	0.4047200818
15100	207	32	0.0032869053
15101	207	33	0.1244266595
15102	207	34	0.0592224673
15103	207	35	0.4749665751
15104	207	36	0.2621670019
15105	207	37	0.5733984300
15106	207	38	0.8174533847
15107	207	39	0.8879087720
15108	207	40	0.2855177499
15109	207	41	0.2967716314
15110	207	42	0.3054112553
15111	207	43	0.6898169169
15112	207	44	0.6315722908
15113	207	45	0.9524688124
15114	207	46	0.0803056956
15115	207	47	0.5694997863
15116	207	48	0.0927488296
15117	207	49	0.3554841119
15118	207	50	0.9456631833
15119	207	51	0.2840432979
15120	207	52	0.1631265373
15121	207	53	0.7924303616
15122	207	54	0.1203906526
15123	207	55	0.1093066707
15124	207	56	0.3225874117
15125	207	57	0.1988788226
15126	207	58	0.0807346650
15127	207	59	0.4911549520
15128	207	60	0.5702629056
15129	207	61	0.6643864244
15130	207	62	0.8708711737
15131	207	63	0.3451358288
15132	207	64	0.7737367455
15133	207	65	0.5788859178
15134	207	66	0.5653726769
15135	207	67	0.3685052818
15136	207	68	0.8511054623
15137	207	69	0.5981593274
15138	207	70	0.9418640965
15139	207	71	0.2826411875
15140	207	72	0.7901385366
15141	207	73	0.4387366708
15142	207	74	0.1541538971
15143	207	75	0.7759564600
15144	207	76	0.2765188995
15145	207	77	0.1239305287
15146	207	78	0.1152917468
15147	208	1	0.3861276363
15148	208	2	0.0060037965
15149	208	3	0.9393414944
15150	208	4	0.6957254726
15151	208	5	0.0959973759
15152	208	6	0.3277797668
15153	208	7	0.3703483444
15154	208	8	0.2739378563
15155	208	9	0.2212361248
15156	208	10	0.7823006766
15157	208	11	0.2653848767
15158	208	12	0.0165392829
15159	208	13	0.9296708900
15160	208	14	0.4064919361
15161	208	15	0.4207636035
15162	208	16	0.3728926614
15163	208	17	0.9000454930
15164	208	18	0.6049498486
15165	208	19	0.2368302644
15166	208	20	0.4071891076
15167	208	21	0.9504535980
15168	208	22	0.9953200098
15169	208	23	0.3993044401
15170	208	24	0.3736421798
15171	208	25	0.8288600360
15172	208	26	0.3679115575
15173	208	27	0.1744663300
15174	208	28	0.2996573738
15175	208	29	0.2071946063
15176	208	30	0.7165342340
15177	208	31	0.6282773323
15178	208	32	0.8364554740
15179	208	33	0.9582863467
15180	208	34	0.0986215148
15181	208	35	0.0627430661
15182	208	36	0.4259440174
15183	208	37	0.6133251041
15184	208	38	0.1509511278
15185	208	39	0.3180363080
15186	208	40	0.5438265786
15187	208	41	0.7570996413
15188	208	42	0.4827912084
15189	208	43	0.2725536821
15190	208	44	0.1187180431
15191	208	45	0.5449394957
15192	208	46	0.9161173698
15193	208	47	0.7550782712
15194	208	48	0.2264103974
15195	208	49	0.4250295853
15196	208	50	0.0932705714
15197	208	51	0.3177683551
15198	208	52	0.2642654204
15199	208	53	0.1698416739
15200	208	54	0.3203504360
15201	208	55	0.7089328524
15202	208	56	0.4775455730
15203	208	57	0.8826492051
15204	208	58	0.6450920396
15205	208	59	0.5852753897
15206	208	60	0.6006761385
15207	208	61	0.6669712843
15208	208	62	0.2664275725
15209	208	63	0.6111906110
15210	208	64	0.0198430854
15211	208	65	0.6581914654
15212	208	66	0.2062181950
15213	208	67	0.2705499949
15214	208	68	0.7329553115
15215	208	69	0.5608743958
15216	208	70	0.0098477857
15217	208	71	0.0802113533
15218	208	72	0.2029915033
15219	208	73	0.6821332620
15220	208	74	0.0603529895
15221	208	75	0.3719426388
15222	208	76	0.3203688871
15223	208	77	0.5440099865
15224	208	78	0.6763743704
15225	209	1	0.9718590820
15226	209	2	0.2139610514
15227	209	3	0.5975872683
15228	209	4	0.0548721106
15229	209	5	0.6106513788
15230	209	6	0.1745496685
15231	209	7	0.7605500754
15232	209	8	0.6257506973
15233	209	9	0.1147148013
15234	209	10	0.3071962538
15235	209	11	0.1892040240
15236	209	12	0.2498848742
15237	209	13	0.8198872648
15238	209	14	0.0702490806
15239	209	15	0.4193185173
15240	209	16	0.9034003755
15241	209	17	0.7919882178
15242	209	18	0.1638904955
15243	209	19	0.3717676086
15244	209	20	0.7724461199
15245	209	21	0.9300982303
15246	209	22	0.0332428381
15247	209	23	0.2900507063
15248	209	24	0.5274978605
15249	209	25	0.0257537122
15250	209	26	0.1677518689
15251	209	27	0.9908447050
15252	209	28	0.8164259225
15253	209	29	0.4552195483
15254	209	30	0.4108255862
15255	209	31	0.2048331694
15256	209	32	0.3313409135
15257	209	33	0.2803533261
15258	209	34	0.3416346630
15259	209	35	0.2618021163
15260	209	36	0.1388736032
15261	209	37	0.0616606992
15262	209	38	0.6115904678
15263	209	39	0.8255088628
15264	209	40	0.7964275499
15265	209	41	0.7898558166
15266	209	42	0.6942456590
15267	209	43	0.7247930477
15268	209	44	0.0686981797
15269	209	45	0.8228331184
15270	209	46	0.7875888397
15271	209	47	0.5407142124
15272	209	48	0.8309350718
15273	209	49	0.8257234756
15274	209	50	0.4153919730
15275	209	51	0.6618522482
15276	209	52	0.5817108563
15277	209	53	0.2683317034
15278	209	54	0.3093835858
15279	209	55	0.0671925669
15280	209	56	0.5993301605
15281	209	57	0.9037722866
15282	209	58	0.9919440168
15283	209	59	0.9730118381
15284	209	60	0.2371903920
15285	209	61	0.4613793733
15286	209	62	0.2692987986
15287	209	63	0.7808262059
15288	209	64	0.2574872686
15289	209	65	0.7603700481
15290	209	66	0.3042448529
15291	209	67	0.7637952924
15292	209	68	0.3307238644
15293	209	69	0.1046848958
15294	209	70	0.8793481213
15295	209	71	0.4397295170
15296	209	72	0.2919856138
15297	209	73	0.6889733720
15298	209	74	0.1081756211
15299	209	75	0.1746104394
15300	209	76	0.0447653814
15301	209	77	0.9991649203
15302	209	78	0.3746821486
15303	210	1	0.5153219867
15304	210	2	0.3840156488
15305	210	3	0.2762446751
15306	210	4	0.9460543726
15307	210	5	0.5646640230
15308	210	6	0.8570118816
15309	210	7	0.4498442676
15310	210	8	0.9660367216
15311	210	9	0.6714121325
15312	210	10	0.7494414912
15313	210	11	0.0702965286
15314	210	12	0.5072832331
15315	210	13	0.5405001764
15316	210	14	0.1373144577
15317	210	15	0.5996208419
15318	210	16	0.0336665745
15319	210	17	0.9453554615
15320	210	18	0.2466671195
15321	210	19	0.2096332277
15322	210	20	0.3805207517
15323	210	21	0.0703727336
15324	210	22	0.8026551893
15325	210	23	0.4994819912
15326	210	24	0.0625545544
15327	210	25	0.9500422016
15328	210	26	0.4040457627
15329	210	27	0.5629199763
15330	210	28	0.4614533788
15331	210	29	0.5473905104
15332	210	30	0.1003755199
15333	210	31	0.3016240413
15334	210	32	0.6780363289
15335	210	33	0.9637768372
15336	210	34	0.1692174005
15337	210	35	0.6998240272
15338	210	36	0.2932766468
15339	210	37	0.1558872312
15340	210	38	0.6974584900
15341	210	39	0.8634853700
15342	210	40	0.5848407718
15343	210	41	0.7792857363
15344	210	42	0.4776268194
15345	210	43	0.0199621581
15346	210	44	0.8482124389
15347	210	45	0.5036275819
15348	210	46	0.5562013200
15349	210	47	0.1934012468
15350	210	48	0.7479008439
15351	210	49	0.7499557962
15352	210	50	0.2465573845
15353	210	51	0.3965411062
15354	210	52	0.9610547631
15355	210	53	0.3235573477
15356	210	54	0.9561733380
15357	210	55	0.4654677889
15358	210	56	0.4378709737
15359	210	57	0.4883601042
15360	210	58	0.1911320975
15361	210	59	0.3197622430
15362	210	60	0.4899727238
15363	210	61	0.3204241389
15364	210	62	0.0279665181
15365	210	63	0.9541415728
15366	210	64	0.1487347882
15367	210	65	0.5227647235
15368	210	66	0.9858345239
15369	210	67	0.2016854839
15370	210	68	0.2818562343
15371	210	69	0.6014290910
15372	210	70	0.0623513303
15373	210	71	0.4139996767
15374	210	72	0.3460159593
15375	210	73	0.1243376949
15376	210	74	0.8551594753
15377	210	75	0.5904486562
15378	210	76	0.8295897961
15379	210	77	0.9787159832
15380	210	78	0.8206666693
15381	211	1	0.7022131213
15382	211	2	0.4107739967
15383	211	3	0.7025647653
15384	211	4	0.0218156424
15385	211	5	0.7615973301
15386	211	6	0.4800706792
15387	211	7	0.1615635833
15388	211	8	0.2656926027
15389	211	9	0.8075344134
15390	211	10	0.6203392839
15391	211	11	0.2187232261
15392	211	12	0.9819108632
15393	211	13	0.9981369018
15394	211	14	0.4082587270
15395	211	15	0.6531454549
15396	211	16	0.1119506150
15397	211	17	0.2347759639
15398	211	18	0.2145415649
15399	211	19	0.3013776875
15400	211	20	0.0240578046
15401	211	21	0.1378767976
15402	211	22	0.1310542845
15403	211	23	0.1994543307
15404	211	24	0.7813128058
15405	211	25	0.5771290551
15406	211	26	0.0645438783
15407	211	27	0.8081790571
15408	211	28	0.0471833732
15409	211	29	0.8096838061
15410	211	30	0.0721521159
15411	211	31	0.0921987047
15412	211	32	0.8432930494
15413	211	33	0.9839157144
15414	211	34	0.6874533314
15415	211	35	0.0355437235
15416	211	36	0.6392982031
15417	211	37	0.0729484223
15418	211	38	0.1112372491
15419	211	39	0.7623826032
15420	211	40	0.4392176490
15421	211	41	0.9443245246
15422	211	42	0.9664767341
15423	211	43	0.2144539581
15424	211	44	0.2427850960
15425	211	45	0.1198736534
15426	211	46	0.5591468437
15427	211	47	0.4110910858
15428	211	48	0.3087994648
15429	211	49	0.0712569002
15430	211	50	0.5055103136
15431	211	51	0.9982818872
15432	211	52	0.9521119061
15433	211	53	0.0615624559
15434	211	54	0.3321343876
15435	211	55	0.7678217433
15436	211	56	0.4425901029
15437	211	57	0.5516045359
15438	211	58	0.6041859867
15439	211	59	0.3961566030
15440	211	60	0.0146611910
15441	211	61	0.8302001591
15442	211	62	0.4907360873
15443	211	63	0.9385912835
15444	211	64	0.4184336546
15445	211	65	0.8245940545
15446	211	66	0.5312047303
15447	211	67	0.6310640524
15448	211	68	0.4539388801
15449	211	69	0.1737277479
15450	211	70	0.2154155296
15451	211	71	0.9344104474
15452	211	72	0.8344050709
15453	211	73	0.3572428682
15454	211	74	0.5572162868
15455	211	75	0.5472033442
15456	211	76	0.1723903634
15457	211	77	0.8442342841
15458	211	78	0.2267876632
15459	212	1	0.0129757976
15460	212	2	0.0337925190
15461	212	3	0.6090998129
15462	212	4	0.3830604485
15463	212	5	0.6386018221
15464	212	6	0.1619542726
15465	212	7	0.6431945780
15466	212	8	0.0570997611
15467	212	9	0.6590505850
15468	212	10	0.7040975178
15469	212	11	0.8235741623
15470	212	12	0.7732317015
15471	212	13	0.6288215778
15472	212	14	0.4997726804
15473	212	15	0.2869410024
15474	212	16	0.9829265835
15475	212	17	0.2098342811
15476	212	18	0.9690970434
15477	212	19	0.9166283789
15478	212	20	0.8327246642
15479	212	21	0.3862462479
15480	212	22	0.0758906177
15481	212	23	0.3537618123
15482	212	24	0.0282076964
15483	212	25	0.4814269722
15484	212	26	0.9114962319
15485	212	27	0.2501501825
15486	212	28	0.9675652231
15487	212	29	0.8892617617
15488	212	30	0.0512210247
15489	212	31	0.5034324445
15490	212	32	0.1696377576
15491	212	33	0.0891383576
15492	212	34	0.7461393488
15493	212	35	0.4535652240
15494	212	36	0.1713316295
15495	212	37	0.2847124446
15496	212	38	0.0541973630
15497	212	39	0.6986810034
15498	212	40	0.2595238112
15499	212	41	0.6776491841
15500	212	42	0.0449579826
15501	212	43	0.9238469947
15502	212	44	0.0720131348
15503	212	45	0.7232230044
15504	212	46	0.5770974424
15505	212	47	0.6379789756
15506	212	48	0.3968142669
15507	212	49	0.6987208669
15508	212	50	0.4008063906
15509	212	51	0.7419338718
15510	212	52	0.5766015392
15511	212	53	0.1047590024
15512	212	54	0.7184419924
15513	212	55	0.8782164221
15514	212	56	0.0820203143
15515	212	57	0.4570900803
15516	212	58	0.8700043854
15517	212	59	0.5154719540
15518	212	60	0.9167755507
15519	212	61	0.0849302397
15520	212	62	0.3697133817
15521	212	63	0.9356739095
15522	212	64	0.1368125166
15523	212	65	0.6789164996
15524	212	66	0.8851595429
15525	212	67	0.8387482883
15526	212	68	0.1265179013
15527	212	69	0.1180150401
15528	212	70	0.2582764012
15529	212	71	0.8550340565
15530	212	72	0.8647612657
15531	212	73	0.3330933241
15532	212	74	0.9132715920
15533	212	75	0.0940477422
15534	212	76	0.7822207482
15535	212	77	0.2530500372
15536	212	78	0.4581997384
15537	213	1	0.2391436141
15538	213	2	0.4016123035
15539	213	3	0.4946459705
15540	213	4	0.8058076902
15541	213	5	0.9285453993
15542	213	6	0.0747134913
15543	213	7	0.5498718556
15544	213	8	0.2320211700
15545	213	9	0.6076927391
15546	213	10	0.6675909805
15547	213	11	0.7120040093
15548	213	12	0.4269238049
15549	213	13	0.9249171278
15550	213	14	0.6395727555
15551	213	15	0.5211982476
15552	213	16	0.8595638251
15553	213	17	0.6879813566
15554	213	18	0.6647747486
15555	213	19	0.7289799008
15556	213	20	0.2038136891
15557	213	21	0.4633727037
15558	213	22	0.3658626224
15559	213	23	0.2035749104
15560	213	24	0.4554684298
15561	213	25	0.7339269001
15562	213	26	0.3316713415
15563	213	27	0.9409319311
15564	213	28	0.6755710882
15565	213	29	0.7313389663
15566	213	30	0.7961579394
15567	213	31	0.3332002338
15568	213	32	0.9887809026
15569	213	33	0.6429985822
15570	213	34	0.5743667831
15571	213	35	0.5192279459
15572	213	36	0.1405407433
15573	213	37	0.7663611635
15574	213	38	0.4826352132
15575	213	39	0.7900151562
15576	213	40	0.5815004285
15577	213	41	0.7260076884
15578	213	42	0.0733272134
15579	213	43	0.4135607196
15580	213	44	0.2671834526
15581	213	45	0.6011854058
15582	213	46	0.5087948291
15583	213	47	0.0526449787
15584	213	48	0.3924542569
15585	213	49	0.2154993257
15586	213	50	0.9272608451
15587	213	51	0.2475783700
15588	213	52	0.7547986597
15589	213	53	0.2190621823
15590	213	54	0.2022649995
15591	213	55	0.6707222017
15592	213	56	0.0229047079
15593	213	57	0.2095971833
15594	213	58	0.0945853182
15595	213	59	0.8733329708
15596	213	60	0.1596873921
15597	213	61	0.6316348718
15598	213	62	0.3708153776
15599	213	63	0.3521802004
15600	213	64	0.0896734084
15601	213	65	0.6267954021
15602	213	66	0.8866687214
15603	213	67	0.0614372851
15604	213	68	0.1232308088
15605	213	69	0.9071115218
15606	213	70	0.0659334545
15607	213	71	0.4778760087
15608	213	72	0.6237429330
15609	213	73	0.1158736908
15610	213	74	0.4942190631
15611	213	75	0.0104479052
15612	213	76	0.6031941056
15613	213	77	0.4497775938
15614	213	78	0.4174758809
15615	214	1	0.3413719305
15616	214	2	0.2342972785
15617	214	3	0.4754135707
15618	214	4	0.6792375965
15619	214	5	0.6453058056
15620	214	6	0.9257376064
15621	214	7	0.5868896097
15622	214	8	0.7150534158
15623	214	9	0.7940405507
15624	214	10	0.4548928776
15625	214	11	0.0766659939
15626	214	12	0.3398814285
15627	214	13	0.2299147241
15628	214	14	0.2152129834
15629	214	15	0.1683948221
15630	214	16	0.9489930789
15631	214	17	0.9904217890
15632	214	18	0.0021466091
15633	214	19	0.0714350861
15634	214	20	0.1987714917
15635	214	21	0.8106857460
15636	214	22	0.5765893976
15637	214	23	0.1488481136
15638	214	24	0.3338777874
15639	214	25	0.3150363135
15640	214	26	0.4900192584
15641	214	27	0.5120249608
15642	214	28	0.1485464388
15643	214	29	0.0556362472
15644	214	30	0.6589130762
15645	214	31	0.5373223047
15646	214	32	0.2637209159
15647	214	33	0.8448330249
15648	214	34	0.2647340111
15649	214	35	0.1647573345
15650	214	36	0.5011579886
15651	214	37	0.2819907527
15652	214	38	0.6582967495
15653	214	39	0.7302948657
15654	214	40	0.7797369761
15655	214	41	0.1198145616
15656	214	42	0.1885771646
15657	214	43	0.3749273350
15658	214	44	0.7079824035
15659	214	45	0.2509545884
15660	214	46	0.1761584096
15661	214	47	0.8706628921
15662	214	48	0.5886445517
15663	214	49	0.2971898337
15664	214	50	0.4890381878
15665	214	51	0.6140242424
15666	214	52	0.8706920440
15667	214	53	0.5602427482
15668	214	54	0.1670501806
15669	214	55	0.6716755695
15670	214	56	0.4267130997
15671	214	57	0.5783692984
15672	214	58	0.2188826507
15673	214	59	0.7445141163
15674	214	60	0.9683565430
15675	214	61	0.1899051042
15676	214	62	0.6851592549
15677	214	63	0.7309609823
15678	214	64	0.5982192221
15679	214	65	0.7401166705
15680	214	66	0.3790200080
15681	214	67	0.8545177014
15682	214	68	0.0534716502
15683	214	69	0.2276345404
15684	214	70	0.4623384782
15685	214	71	0.8055278669
15686	214	72	0.8432637973
15687	214	73	0.6019306797
15688	214	74	0.1924095735
15689	214	75	0.5438252642
15690	214	76	0.2646359173
15691	214	77	0.6955592011
15692	214	78	0.9137326592
15693	215	1	0.1178964702
15694	215	2	0.7534327764
15695	215	3	0.5333646938
15696	215	4	0.9061745031
15697	215	5	0.6013699726
15698	215	6	0.6721240068
15699	215	7	0.7774741589
15700	215	8	0.0006009840
15701	215	9	0.1047270139
15702	215	10	0.8338320030
15703	215	11	0.9820453175
15704	215	12	0.3980030175
15705	215	13	0.4416441841
15706	215	14	0.7238300655
15707	215	15	0.1582124088
15708	215	16	0.3142015644
15709	215	17	0.1507361375
15710	215	18	0.9981254979
15711	215	19	0.7711557282
15712	215	20	0.8032681901
15713	215	21	0.0596671140
15714	215	22	0.0423400142
15715	215	23	0.8819011321
15716	215	24	0.7106411899
15717	215	25	0.8404541626
15718	215	26	0.0275007960
15719	215	27	0.0508352356
15720	215	28	0.2705563676
15721	215	29	0.8291149866
15722	215	30	0.1323788990
15723	215	31	0.7945697600
15724	215	32	0.2450787817
15725	215	33	0.3602311210
15726	215	34	0.0723491237
15727	215	35	0.1014374901
15728	215	36	0.6709721837
15729	215	37	0.4005281724
15730	215	38	0.8229848295
15731	215	39	0.8945637127
15732	215	40	0.4432530733
15733	215	41	0.6723524595
15734	215	42	0.1502555586
15735	215	43	0.0709763282
15736	215	44	0.8249182587
15737	215	45	0.9812562737
15738	215	46	0.7817276567
15739	215	47	0.8638895666
15740	215	48	0.6987273283
15741	215	49	0.0590980504
15742	215	50	0.6662612070
15743	215	51	0.9202717907
15744	215	52	0.1262340999
15745	215	53	0.5043604723
15746	215	54	0.2842236653
15747	215	55	0.4969297307
15748	215	56	0.5221043464
15749	215	57	0.7915040479
15750	215	58	0.9124973596
15751	215	59	0.7452592393
15752	215	60	0.3330500136
15753	215	61	0.3343520513
15754	215	62	0.2458287601
15755	215	63	0.8208895593
15756	215	64	0.5393174174
15757	215	65	0.9363375565
15758	215	66	0.3199323659
15759	215	67	0.0866344760
15760	215	68	0.8036717821
15761	215	69	0.2632588860
15762	215	70	0.3424298584
15763	215	71	0.8785201256
15764	215	72	0.1033919664
15765	215	73	0.0915824090
15766	215	74	0.6401444296
15767	215	75	0.6285100079
15768	215	76	0.9351434616
15769	215	77	0.0905985053
15770	215	78	0.1682421953
15771	216	1	0.5014232083
15772	216	2	0.0981510516
15773	216	3	0.6363573352
15774	216	4	0.2958030628
15775	216	5	0.7924087213
15776	216	6	0.4942605495
15777	216	7	0.2058703308
15778	216	8	0.0054948681
15779	216	9	0.8874492454
15780	216	10	0.8310314673
15781	216	11	0.4984782078
15782	216	12	0.2999237664
15783	216	13	0.6975753912
15784	216	14	0.2658500347
15785	216	15	0.3423009670
15786	216	16	0.5347005852
15787	216	17	0.6753330769
15788	216	18	0.4184304844
15789	216	19	0.6468177300
15790	216	20	0.0380364392
15791	216	21	0.3941596489
15792	216	22	0.2164398852
15793	216	23	0.0743539634
15794	216	24	0.8921936453
15795	216	25	0.4791109030
15796	216	26	0.9131074506
15797	216	27	0.9456530071
15798	216	28	0.3095566430
15799	216	29	0.0984125901
15800	216	30	0.3376159670
15801	216	31	0.7583264771
15802	216	32	0.8106753061
15803	216	33	0.3934485209
15804	216	34	0.3987643482
15805	216	35	0.6891152499
15806	216	36	0.6814879738
15807	216	37	0.5812744549
15808	216	38	0.9440197698
15809	216	39	0.8789781948
15810	216	40	0.2035935096
15811	216	41	0.6166175943
15812	216	42	0.5498670512
15813	216	43	0.1879000818
15814	216	44	0.3542441011
15815	216	45	0.3009869045
15816	216	46	0.1894295401
15817	216	47	0.0184958923
15818	216	48	0.4047251021
15819	216	49	0.6632944098
15820	216	50	0.9680497914
15821	216	51	0.8515512384
15822	216	52	0.0878742003
15823	216	53	0.9293445509
15824	216	54	0.5172193646
15825	216	55	0.2016936960
15826	216	56	0.9227855634
15827	216	57	0.5978353352
15828	216	58	0.3584866742
15829	216	59	0.3792063761
15830	216	60	0.5026634608
15831	216	61	0.0818821142
15832	216	62	0.6586575791
15833	216	63	0.5819766710
15834	216	64	0.7758072591
15835	216	65	0.0464170396
15836	216	66	0.2233403867
15837	216	67	0.1005830967
15838	216	68	0.8226691419
15839	216	69	0.4427840386
15840	216	70	0.5388156372
15841	216	71	0.3458976300
15842	216	72	0.1147631165
15843	216	73	0.6744639768
15844	216	74	0.1106916282
15845	216	75	0.3770982998
15846	216	76	0.7745395576
15847	216	77	0.2001759512
15848	216	78	0.7035261697
15849	217	1	0.5363482304
15850	217	2	0.1580973962
15851	217	3	0.1746274892
15852	217	4	0.7582215997
15853	217	5	0.4382932925
15854	217	6	0.7143802665
15855	217	7	0.2548672594
15856	217	8	0.4302796842
15857	217	9	0.1460109998
15858	217	10	0.2361046631
15859	217	11	0.8038871087
15860	217	12	0.4831065583
15861	217	13	0.1457043379
15862	217	14	0.5340771481
15863	217	15	0.5658982085
15864	217	16	0.9888045663
15865	217	17	0.2752177918
15866	217	18	0.0638765893
15867	217	19	0.2864967731
15868	217	20	0.1325513687
15869	217	21	0.8905600958
15870	217	22	0.7419804930
15871	217	23	0.3526402732
15872	217	24	0.3492839033
15873	217	25	0.1561837368
15874	217	26	0.0771122487
15875	217	27	0.9067110849
15876	217	28	0.2112917666
15877	217	29	0.3782689268
15878	217	30	0.2601860856
15879	217	31	0.4309835788
15880	217	32	0.4416499574
15881	217	33	0.5334834571
15882	217	34	0.7950204880
15883	217	35	0.0134772362
15884	217	36	0.3051926525
15885	217	37	0.3926456169
15886	217	38	0.1552687944
15887	217	39	0.5332413668
15888	217	40	0.7136434436
15889	217	41	0.2083822542
15890	217	42	0.0174338257
15891	217	43	0.5774955316
15892	217	44	0.4411578063
15893	217	45	0.2279646217
15894	217	46	0.6235402623
15895	217	47	0.8641949262
15896	217	48	0.1262970431
15897	217	49	0.7170875422
15898	217	50	0.2224049192
15899	217	51	0.8395262182
15900	217	52	0.8463504569
15901	217	53	0.0537903325
15902	217	54	0.5701694808
15903	217	55	0.4538249858
15904	217	56	0.3994871991
15905	217	57	0.9766994605
15906	217	58	0.8000899929
15907	217	59	0.8328270781
15908	217	60	0.4174736083
15909	217	61	0.6162579219
15910	217	62	0.7052911835
15911	217	63	0.7637700936
15912	217	64	0.0065972166
15913	217	65	0.7580369712
15914	217	66	0.4303208206
15915	217	67	0.2562816058
15916	217	68	0.4827096854
15917	217	69	0.3661232478
15918	217	70	0.7294896378
15919	217	71	0.6506039209
15920	217	72	0.3864971990
15921	217	73	0.6091478316
15922	217	74	0.0212043507
15923	217	75	0.1426888379
15924	217	76	0.1571812676
15925	217	77	0.5477128627
15926	217	78	0.0434795242
15927	218	1	0.1001990580
15928	218	2	0.2661126063
15929	218	3	0.7051583423
15930	218	4	0.0070494345
15931	218	5	0.5110732576
15932	218	6	0.5724003397
15933	218	7	0.7982928585
15934	218	8	0.2419950232
15935	218	9	0.1666910476
15936	218	10	0.8833785008
15937	218	11	0.1785977954
15938	218	12	0.6650938270
15939	218	13	0.2491503620
15940	218	14	0.2642971082
15941	218	15	0.7080929024
15942	218	16	0.1179816615
15943	218	17	0.5900447650
15944	218	18	0.3497692126
15945	218	19	0.9818529630
15946	218	20	0.5388181534
15947	218	21	0.3123770045
15948	218	22	0.9725746209
15949	218	23	0.3889883555
15950	218	24	0.8515266490
15951	218	25	0.4069057490
15952	218	26	0.4867384198
15953	218	27	0.8426519348
15954	218	28	0.1985195400
15955	218	29	0.0304696423
15956	218	30	0.0664743353
15957	218	31	0.3326647598
15958	218	32	0.8029734537
15959	218	33	0.5769187264
15960	218	34	0.7242439870
15961	218	35	0.9053330184
15962	218	36	0.8207016646
15963	218	37	0.7689335276
15964	218	38	0.4315568771
15965	218	39	0.8954996241
15966	218	40	0.4286124590
15967	218	41	0.5637894984
15968	218	42	0.0874622965
15969	218	43	0.8153123067
15970	218	44	0.0720516241
15971	218	45	0.0093600455
15972	218	46	0.8348920074
15973	218	47	0.6699483974
15974	218	48	0.3622050446
15975	218	49	0.6481568007
15976	218	50	0.8473673024
15977	218	51	0.6236635310
15978	218	52	0.4241450037
15979	218	53	0.6668707549
15980	218	54	0.9502197753
15981	218	55	0.2620220310
15982	218	56	0.5791309048
15983	218	57	0.8138191733
15984	218	58	0.9236750195
15985	218	59	0.1081943696
15986	218	60	0.8318323061
15987	218	61	0.1689863075
15988	218	62	0.7989635706
15989	218	63	0.8897384424
15990	218	64	0.5642975267
15991	218	65	0.8172273201
15992	218	66	0.6515608912
15993	218	67	0.4504057191
15994	218	68	0.6496612373
15995	218	69	0.7209994111
15996	218	70	0.8572004762
15997	218	71	0.2000540871
15998	218	72	0.3632213719
15999	218	73	0.2377649933
16000	218	74	0.4660022368
16001	218	75	0.4227006620
16002	218	76	0.7763722975
16003	218	77	0.7875584827
16004	218	78	0.7292167796
16005	219	1	0.7845517080
16006	219	2	0.0244889800
16007	219	3	0.4171868136
16008	219	4	0.4799473390
16009	219	5	0.7110870248
16010	219	6	0.5023337188
16011	219	7	0.7902407632
16012	219	8	0.7441677993
16013	219	9	0.6197672982
16014	219	10	0.0458197797
16015	219	11	0.3998813570
16016	219	12	0.1554979431
16017	219	13	0.0248780585
16018	219	14	0.9929553120
16019	219	15	0.4734076864
16020	219	16	0.0380920837
16021	219	17	0.5562900298
16022	219	18	0.4668185637
16023	219	19	0.1058071717
16024	219	20	0.4913040480
16025	219	21	0.2061075354
16026	219	22	0.2302015368
16027	219	23	0.4742404778
16028	219	24	0.3240991912
16029	219	25	0.7805647758
16030	219	26	0.1183794194
16031	219	27	0.6506493683
16032	219	28	0.7382845906
16033	219	29	0.9248369892
16034	219	30	0.3503541986
16035	219	31	0.8507209330
16036	219	32	0.2775717710
16037	219	33	0.3560909955
16038	219	34	0.0386958224
16039	219	35	0.7724948633
16040	219	36	0.9176143589
16041	219	37	0.8907211773
16042	219	38	0.2074110787
16043	219	39	0.5388837275
16044	219	40	0.6300543685
16045	219	41	0.6525039150
16046	219	42	0.9233565229
16047	219	43	0.1714090558
16048	219	44	0.0594666939
16049	219	45	0.4657242689
16050	219	46	0.6583530682
16051	219	47	0.5312769821
16052	219	48	0.7217525953
16053	219	49	0.7618443909
16054	219	50	0.2786850019
16055	219	51	0.5135314498
16056	219	52	0.6869538333
16057	219	53	0.2822407954
16058	219	54	0.8456645309
16059	219	55	0.4294209470
16060	219	56	0.8309464907
16061	219	57	0.4004719108
16062	219	58	0.1520421006
16063	219	59	0.3810136476
16064	219	60	0.1192738237
16065	219	61	0.9880366940
16066	219	62	0.2307203829
16067	219	63	0.5121854864
16068	219	64	0.6680467217
16069	219	65	0.8079036357
16070	219	66	0.9043359171
16071	219	67	0.3224586825
16072	219	68	0.2151662717
16073	219	69	0.2343125807
16074	219	70	0.0353725178
16075	219	71	0.5126382940
16076	219	72	0.1654548200
16077	219	73	0.7323361720
16078	219	74	0.9550581450
16079	219	75	0.0018515957
16080	219	76	0.7959006130
16081	219	77	0.0988963632
16082	219	78	0.0705594721
16083	220	1	0.9401351194
16084	220	2	0.3376887687
16085	220	3	0.6177855995
16086	220	4	0.2032976134
16087	220	5	0.9218585798
16088	220	6	0.3291344101
16089	220	7	0.8040223654
16090	220	8	0.3789041012
16091	220	9	0.5278794961
16092	220	10	0.6533229652
16093	220	11	0.6876635032
16094	220	12	0.9059145379
16095	220	13	0.9811340183
16096	220	14	0.9254844115
16097	220	15	0.6155553508
16098	220	16	0.5271692237
16099	220	17	0.9488700524
16100	220	18	0.4921100186
16101	220	19	0.9840519973
16102	220	20	0.8769639016
16103	220	21	0.3936732410
16104	220	22	0.9931439732
16105	220	23	0.0712788742
16106	220	24	0.2258597416
16107	220	25	0.9730769186
16108	220	26	0.0298192238
16109	220	27	0.6438572828
16110	220	28	0.7994626089
16111	220	29	0.3862717201
16112	220	30	0.9004587274
16113	220	31	0.9089305907
16114	220	32	0.0686967521
16115	220	33	0.3085974111
16116	220	34	0.8166272117
16117	220	35	0.5470401133
16118	220	36	0.7696164362
16119	220	37	0.4499197277
16120	220	38	0.7311526598
16121	220	39	0.0517074788
16122	220	40	0.4113628712
16123	220	41	0.7821298448
16124	220	42	0.8606352197
16125	220	43	0.3000607904
16126	220	44	0.9572225090
16127	220	45	0.6428835528
16128	220	46	0.6556572869
16129	220	47	0.7903144104
16130	220	48	0.7400104781
16131	220	49	0.3702513175
16132	220	50	0.0541324533
16133	220	51	0.0427408637
16134	220	52	0.7771804043
16135	220	53	0.4079322388
16136	220	54	0.5643810327
16137	220	55	0.7612673333
16138	220	56	0.5089994783
16139	220	57	0.8207261053
16140	220	58	0.8932724842
16141	220	59	0.8301673989
16142	220	60	0.2358698902
16143	220	61	0.7428495096
16144	220	62	0.2735686024
16145	220	63	0.1409631801
16146	220	64	0.8842036129
16147	220	65	0.1579004443
16148	220	66	0.2312697102
16149	220	67	0.7390884973
16150	220	68	0.4508134077
16151	220	69	0.8333178885
16152	220	70	0.8786466451
16153	220	71	0.9254581748
16154	220	72	0.7284150973
16155	220	73	0.9924577067
16156	220	74	0.5454350485
16157	220	75	0.3574626661
16158	220	76	0.5147149954
16159	220	77	0.9101611605
16160	220	78	0.8646908661
16161	221	1	0.0131333130
16162	221	2	0.4184825072
16163	221	3	0.2716232752
16164	221	4	0.1649737379
16165	221	5	0.5539272886
16166	221	6	0.8916492777
16167	221	7	0.3419559291
16168	221	8	0.1014619666
16169	221	9	0.9371816672
16170	221	10	0.3896656734
16171	221	11	0.6637559113
16172	221	12	0.5636326495
16173	221	13	0.5129118836
16174	221	14	0.5268929703
16175	221	15	0.1639963595
16176	221	16	0.0931489136
16177	221	17	0.5184906398
16178	221	18	0.4157898394
16179	221	19	0.6369380121
16180	221	20	0.5013431651
16181	221	21	0.8216277291
16182	221	22	0.5679473595
16183	221	23	0.7271175352
16184	221	24	0.6072588787
16185	221	25	0.8868508052
16186	221	26	0.6866299919
16187	221	27	0.3050758852
16188	221	28	0.2869259904
16189	221	29	0.5183718819
16190	221	30	0.6831121906
16191	221	31	0.6028937921
16192	221	32	0.7221443115
16193	221	33	0.3845585887
16194	221	34	0.0054911206
16195	221	35	0.0037312973
16196	221	36	0.8937691326
16197	221	37	0.5556439655
16198	221	38	0.8006908475
16199	221	39	0.2703504599
16200	221	40	0.1147435403
16201	221	41	0.3990648625
16202	221	42	0.0928275429
16203	221	43	0.5960444107
16204	221	44	0.5847042925
16205	221	45	0.5501753697
16206	221	46	0.4284064122
16207	221	47	0.0293159368
16208	221	48	0.0314220647
16209	221	49	0.9342259023
16210	221	50	0.4258124279
16211	221	51	0.9921961409
16212	221	52	0.6492796192
16213	221	53	0.5538267893
16214	221	54	0.5702743205
16215	221	55	0.4547027835
16216	221	56	0.0593657394
16217	221	57	0.5143018928
16218	221	58	0.9721962756
16219	221	59	0.0234405386
16220	221	60	0.4115499965
16221	221	61	0.4574926022
16222	221	62	0.7544826108
16223	221	63	0.1258085463
16224	221	64	0.4958790093
16225	221	65	0.7069876093
16226	221	66	0.7724727466
16227	221	67	0.6126240408
16228	221	68	0.6870440203
16229	221	69	0.8961354300
16230	221	70	0.1616650093
16231	221	71	0.0264522782
16232	221	72	0.8548886727
16233	221	73	0.4618799287
16234	221	74	0.9273333855
16235	221	75	0.5778390210
16236	221	76	0.9738380349
16237	221	77	0.1331398826
16238	221	78	0.7932021694
16239	222	1	0.5849295243
16240	222	2	0.3046587795
16241	222	3	0.3577315229
16242	222	4	0.7976276699
16243	222	5	0.4862123634
16244	222	6	0.5495308921
16245	222	7	0.4855490386
16246	222	8	0.8607115954
16247	222	9	0.0874579802
16248	222	10	0.4253066363
16249	222	11	0.3154124218
16250	222	12	0.1938004558
16251	222	13	0.8198433745
16252	222	14	0.1012368172
16253	222	15	0.2717329923
16254	222	16	0.5333679714
16255	222	17	0.8517527688
16256	222	18	0.2745280362
16257	222	19	0.0002032054
16258	222	20	0.1512884353
16259	222	21	0.5058579034
16260	222	22	0.9305936443
16261	222	23	0.3055493988
16262	222	24	0.0477065650
16263	222	25	0.6528447742
16264	222	26	0.3446836412
16265	222	27	0.6073788322
16266	222	28	0.5398273825
16267	222	29	0.7096101813
16268	222	30	0.5330260656
16269	222	31	0.6372996117
16270	222	32	0.9344658574
16271	222	33	0.6202847747
16272	222	34	0.4155451188
16273	222	35	0.9421250846
16274	222	36	0.9156194260
16275	222	37	0.5575562222
16276	222	38	0.8445502207
16277	222	39	0.5112695491
16278	222	40	0.0516125373
16279	222	41	0.2999226763
16280	222	42	0.4485897064
16281	222	43	0.7889124117
16282	222	44	0.1069880278
16283	222	45	0.3768531917
16284	222	46	0.3994310039
16285	222	47	0.2187228435
16286	222	48	0.1389884288
16287	222	49	0.7623989392
16288	222	50	0.2007281575
16289	222	51	0.8037908364
16290	222	52	0.5465609381
16291	222	53	0.7067041335
16292	222	54	0.7555882923
16293	222	55	0.3490376681
16294	222	56	0.0865785545
16295	222	57	0.0429101314
16296	222	58	0.8480553356
16297	222	59	0.4534276314
16298	222	60	0.6097064247
16299	222	61	0.0444223747
16300	222	62	0.6970576221
16301	222	63	0.3519165382
16302	222	64	0.3652311215
16303	222	65	0.8882695306
16304	222	66	0.5878247211
16305	222	67	0.7604034802
16306	222	68	0.2206349879
16307	222	69	0.7857439760
16308	222	70	0.4218302493
16309	222	71	0.7701143511
16310	222	72	0.6522946396
16311	222	73	0.1749283444
16312	222	74	0.5922106643
16313	222	75	0.9800021954
16314	222	76	0.7957627358
16315	222	77	0.6435119612
16316	222	78	0.4392094759
16317	223	1	0.8363037123
16318	223	2	0.1668750703
16319	223	3	0.1116857381
16320	223	4	0.3252593751
16321	223	5	0.1277822775
16322	223	6	0.8522314624
16323	223	7	0.1064623454
16324	223	8	0.7399126869
16325	223	9	0.8498817085
16326	223	10	0.3032887175
16327	223	11	0.4806069058
16328	223	12	0.6857994316
16329	223	13	0.6197859262
16330	223	14	0.2119472227
16331	223	15	0.5158190936
16332	223	16	0.0219972990
16333	223	17	0.7335312638
16334	223	18	0.1654720997
16335	223	19	0.6103086535
16336	223	20	0.3941402224
16337	223	21	0.7227489063
16338	223	22	0.4424864858
16339	223	23	0.6475403819
16340	223	24	0.9914498521
16341	223	25	0.6921290053
16342	223	26	0.5518283554
16343	223	27	0.5592765451
16344	223	28	0.9452346505
16345	223	29	0.5515353623
16346	223	30	0.2362903658
16347	223	31	0.7237862386
16348	223	32	0.3786859390
16349	223	33	0.4809096617
16350	223	34	0.9377317335
16351	223	35	0.4732725556
16352	223	36	0.1205262653
16353	223	37	0.0323429628
16354	223	38	0.9959530721
16355	223	39	0.9270249735
16356	223	40	0.3222581455
16357	223	41	0.6147986810
16358	223	42	0.3939705695
16359	223	43	0.3835092315
16360	223	44	0.0750187737
16361	223	45	0.1819642035
16362	223	46	0.6379241491
16363	223	47	0.0446884067
16364	223	48	0.7226753315
16365	223	49	0.7262216860
16366	223	50	0.4329164541
16367	223	51	0.2865530990
16368	223	52	0.1956763368
16369	223	53	0.2224111872
16370	223	54	0.2070259145
16371	223	55	0.0747269537
16372	223	56	0.6052654670
16373	223	57	0.9716468386
16374	223	58	0.3156465527
16375	223	59	0.1089303138
16376	223	60	0.4652006907
16377	223	61	0.0553545220
16378	223	62	0.6570818206
16379	223	63	0.7523034096
16380	223	64	0.7699566696
16381	223	65	0.9704744806
16382	223	66	0.0530719985
16383	223	67	0.4674348246
16384	223	68	0.2778315829
16385	223	69	0.5822468576
16386	223	70	0.4244360620
16387	223	71	0.2649101887
16388	223	72	0.7347164840
16389	223	73	0.4499927223
16390	223	74	0.6895334123
16391	223	75	0.1588408850
16392	223	76	0.3667543856
16393	223	77	0.9288203953
16394	223	78	0.7109234262
16395	224	1	0.2463338856
16396	224	2	0.3794366027
16397	224	3	0.8437354014
16398	224	4	0.4188560089
16399	224	5	0.1129635126
16400	224	6	0.4590221654
16401	224	7	0.8543283585
16402	224	8	0.9524019197
16403	224	9	0.2212427937
16404	224	10	0.5418453523
16405	224	11	0.0774247208
16406	224	12	0.9753810618
16407	224	13	0.7192395116
16408	224	14	0.7964063335
16409	224	15	0.2852298295
16410	224	16	0.3665519800
16411	224	17	0.2304202533
16412	224	18	0.4297969384
16413	224	19	0.3022687554
16414	224	20	0.2282706616
16415	224	21	0.3460036738
16416	224	22	0.3177787306
16417	224	23	0.1926238800
16418	224	24	0.3756327630
16419	224	25	0.6833875177
16420	224	26	0.6113293554
16421	224	27	0.4609634003
16422	224	28	0.2099922743
16423	224	29	0.6867859271
16424	224	30	0.4947123400
16425	224	31	0.6833423970
16426	224	32	0.3331723833
16427	224	33	0.0674761435
16428	224	34	0.6286505334
16429	224	35	0.4538576331
16430	224	36	0.7574067215
16431	224	37	0.2754672707
16432	224	38	0.0015848312
16433	224	39	0.6118794504
16434	224	40	0.8159656879
16435	224	41	0.5632747246
16436	224	42	0.3368905890
16437	224	43	0.8627461320
16438	224	44	0.9806839758
16439	224	45	0.7166002470
16440	224	46	0.5115058192
16441	224	47	0.0962492438
16442	224	48	0.3474409294
16443	224	49	0.2296164607
16444	224	50	0.4032883667
16445	224	51	0.9278590309
16446	224	52	0.8481649550
16447	224	53	0.7547758769
16448	224	54	0.1141766334
16449	224	55	0.7031060979
16450	224	56	0.0162612996
16451	224	57	0.3682739630
16452	224	58	0.8018905628
16453	224	59	0.6391645897
16454	224	60	0.3859537896
16455	224	61	0.1930223629
16456	224	62	0.5078186773
16457	224	63	0.6641819491
16458	224	64	0.6208519597
16459	224	65	0.9176385245
16460	224	66	0.4564807419
16461	224	67	0.2284957936
16462	224	68	0.3639265390
16463	224	69	0.0974969266
16464	224	70	0.5599163522
16465	224	71	0.7515156678
16466	224	72	0.5343308188
16467	224	73	0.9373890941
16468	224	74	0.6385987719
16469	224	75	0.8644306146
16470	224	76	0.6964599846
16471	224	77	0.9326117643
16472	224	78	0.1669713810
16473	225	1	0.7178593221
16474	225	2	0.1786652434
16475	225	3	0.5437569699
16476	225	4	0.3365678716
16477	225	5	0.2746777066
16478	225	6	0.5102298944
16479	225	7	0.4321510393
16480	225	8	0.1794403502
16481	225	9	0.2067093214
16482	225	10	0.8714885442
16483	225	11	0.1020563775
16484	225	12	0.3042106074
16485	225	13	0.3209314374
16486	225	14	0.2588547904
16487	225	15	0.8559349531
16488	225	16	0.9846729512
16489	225	17	0.7207262067
16490	225	18	0.7272168392
16491	225	19	0.1922805549
16492	225	20	0.4051656633
16493	225	21	0.2494624152
16494	225	22	0.7066894679
16495	225	23	0.6530164686
16496	225	24	0.0738109355
16497	225	25	0.5902444286
16498	225	26	0.0194302206
16499	225	27	0.5482638030
16500	225	28	0.0326096420
16501	225	29	0.4936965678
16502	225	30	0.4707092115
16503	225	31	0.4343561427
16504	225	32	0.6007797189
16505	225	33	0.3471195317
16506	225	34	0.6529222011
16507	225	35	0.0839718480
16508	225	36	0.5947029788
16509	225	37	0.3513918913
16510	225	38	0.9314838870
16511	225	39	0.2853006118
16512	225	40	0.3875815590
16513	225	41	0.6542084875
16514	225	42	0.4754823139
16515	225	43	0.0864788037
16516	225	44	0.5019781511
16517	225	45	0.8672697882
16518	225	46	0.9483589736
16519	225	47	0.4683379359
16520	225	48	0.6600795006
16521	225	49	0.1819614216
16522	225	50	0.9347323271
16523	225	51	0.2541019324
16524	225	52	0.2802188294
16525	225	53	0.1004797365
16526	225	54	0.6137593701
16527	225	55	0.8214482474
16528	225	56	0.2739956423
16529	225	57	0.2801055703
16530	225	58	0.0660843931
16531	225	59	0.2147125460
16532	225	60	0.1893205747
16533	225	61	0.2034206626
16534	225	62	0.8780610434
16535	225	63	0.5961952566
16536	225	64	0.7571949632
16537	225	65	0.2172614852
16538	225	66	0.6850486217
16539	225	67	0.3392417199
16540	225	68	0.4571988045
16541	225	69	0.6773468921
16542	225	70	0.0238337361
16543	225	71	0.2835847009
16544	225	72	0.3346438534
16545	225	73	0.4933680759
16546	225	74	0.6089801416
16547	225	75	0.9108181058
16548	225	76	0.2688272251
16549	225	77	0.5399054474
16550	225	78	0.5666113346
16551	226	1	0.1100405488
16552	226	2	0.5590664159
16553	226	3	0.2259455523
16554	226	4	0.7136746647
16555	226	5	0.9856188834
16556	226	6	0.7739140452
16557	226	7	0.5987734362
16558	226	8	0.1081369244
16559	226	9	0.2074006461
16560	226	10	0.3812973868
16561	226	11	0.2740632383
16562	226	12	0.4042507712
16563	226	13	0.2554514856
16564	226	14	0.9687748990
16565	226	15	0.2519007889
16566	226	16	0.9515611287
16567	226	17	0.7606977752
16568	226	18	0.6014962983
16569	226	19	0.9607479194
16570	226	20	0.5014891533
16571	226	21	0.9164360310
16572	226	22	0.0953311262
16573	226	23	0.1514961516
16574	226	24	0.2861109337
16575	226	25	0.0018438620
16576	226	26	0.2877843384
16577	226	27	0.2027032944
16578	226	28	0.8428219173
16579	226	29	0.9986099133
16580	226	30	0.3977479104
16581	226	31	0.3245990022
16582	226	32	0.3039914943
16583	226	33	0.1673295741
16584	226	34	0.5147141091
16585	226	35	0.0660736056
16586	226	36	0.2647536901
16587	226	37	0.0136782307
16588	226	38	0.9748878152
16589	226	39	0.2178318267
16590	226	40	0.1134248764
16591	226	41	0.4572151153
16592	226	42	0.2498178892
16593	226	43	0.6438065684
16594	226	44	0.4563984796
16595	226	45	0.7564636551
16596	226	46	0.7038463360
16597	226	47	0.7699209082
16598	226	48	0.3443047000
16599	226	49	0.5191646935
16600	226	50	0.3097106905
16601	226	51	0.8221495272
16602	226	52	0.8979844418
16603	226	53	0.3576876428
16604	226	54	0.1172806772
16605	226	55	0.0831298012
16606	226	56	0.5307161271
16607	226	57	0.1092290326
16608	226	58	0.2393160618
16609	226	59	0.3115844026
16610	226	60	0.7501483795
16611	226	61	0.3107082547
16612	226	62	0.9646615356
16613	226	63	0.6713912574
16614	226	64	0.3091443862
16615	226	65	0.4282379790
16616	226	66	0.4556988879
16617	226	67	0.3653296551
16618	226	68	0.5363444837
16619	226	69	0.0465940084
16620	226	70	0.4185919657
16621	226	71	0.5821409178
16622	226	72	0.0295735568
16623	226	73	0.8145664046
16624	226	74	0.8180763752
16625	226	75	0.8626307087
16626	226	76	0.3364756534
16627	226	77	0.5042458828
16628	226	78	0.9557966160
16629	227	1	0.9413302565
16630	227	2	0.9788851732
16631	227	3	0.0136414809
16632	227	4	0.4836252342
16633	227	5	0.8931167852
16634	227	6	0.8573589642
16635	227	7	0.9771769969
16636	227	8	0.3025255707
16637	227	9	0.1321361766
16638	227	10	0.5888073417
16639	227	11	0.5613411930
16640	227	12	0.5762545516
16641	227	13	0.5976257943
16642	227	14	0.0425242193
16643	227	15	0.3141607952
16644	227	16	0.8153454709
16645	227	17	0.5523499314
16646	227	18	0.5817956669
16647	227	19	0.9571411519
16648	227	20	0.8205968979
16649	227	21	0.4941571557
16650	227	22	0.1965318096
16651	227	23	0.8857344009
16652	227	24	0.8863877291
16653	227	25	0.6295111931
16654	227	26	0.6711369641
16655	227	27	0.8576009056
16656	227	28	0.5787562003
16657	227	29	0.4488683032
16658	227	30	0.9984017729
16659	227	31	0.3640362994
16660	227	32	0.4396763827
16661	227	33	0.7188658219
16662	227	34	0.2147986882
16663	227	35	0.4425975083
16664	227	36	0.8204894763
16665	227	37	0.5179109759
16666	227	38	0.9993660046
16667	227	39	0.2673898037
16668	227	40	0.4870900843
16669	227	41	0.0002876785
16670	227	42	0.5111820691
16671	227	43	0.3411365550
16672	227	44	0.3372287172
16673	227	45	0.7365277696
16674	227	46	0.6757315724
16675	227	47	0.8974609328
16676	227	48	0.4651446633
16677	227	49	0.1349649057
16678	227	50	0.1887869117
16679	227	51	0.1273557182
16680	227	52	0.5479923024
16681	227	53	0.9852919955
16682	227	54	0.7238758547
16683	227	55	0.0657102268
16684	227	56	0.5277277448
16685	227	57	0.7282284711
16686	227	58	0.6564602356
16687	227	59	0.2658340141
16688	227	60	0.3425960223
16689	227	61	0.6702140235
16690	227	62	0.7429191182
16691	227	63	0.9036573111
16692	227	64	0.2763756661
16693	227	65	0.3201689647
16694	227	66	0.7659424334
16695	227	67	0.3391749576
16696	227	68	0.2582604666
16697	227	69	0.0032087658
16698	227	70	0.0806392834
16699	227	71	0.4300035808
16700	227	72	0.9081589667
16701	227	73	0.5821092219
16702	227	74	0.3217826109
16703	227	75	0.9337773511
16704	227	76	0.2193432475
16705	227	77	0.5202435637
16706	227	78	0.3717158894
16707	228	1	0.4738957450
16708	228	2	0.7080809564
16709	228	3	0.4301303188
16710	228	4	0.0021097492
16711	228	5	0.2365210439
16712	228	6	0.7465114012
16713	228	7	0.4199573127
16714	228	8	0.3691083242
16715	228	9	0.8167523020
16716	228	10	0.6154726832
16717	228	11	0.4396490138
16718	228	12	0.1365891471
16719	228	13	0.1674312915
16720	228	14	0.3434334247
16721	228	15	0.9896904828
16722	228	16	0.0179721928
16723	228	17	0.3538188503
16724	228	18	0.2236507420
16725	228	19	0.4015631700
16726	228	20	0.9890872998
16727	228	21	0.4391697550
16728	228	22	0.5793951866
16729	228	23	0.6647584802
16730	228	24	0.9980141823
16731	228	25	0.6793546643
16732	228	26	0.4690623481
16733	228	27	0.7508967024
16734	228	28	0.9860030731
16735	228	29	0.0819049071
16736	228	30	0.4612340473
16737	228	31	0.2556272911
16738	228	32	0.4912860741
16739	228	33	0.3522719623
16740	228	34	0.4167397382
16741	228	35	0.4446113414
16742	228	36	0.5208655140
16743	228	37	0.6624224619
16744	228	38	0.8015332082
16745	228	39	0.1814036718
16746	228	40	0.4840328212
16747	228	41	0.1291004962
16748	228	42	0.8578470356
16749	228	43	0.6630729824
16750	228	44	0.0397399031
16751	228	45	0.6421033181
16752	228	46	0.5985015889
16753	228	47	0.7250677966
16754	228	48	0.5820291882
16755	228	49	0.8347125020
16756	228	50	0.0455423943
16757	228	51	0.1580873684
16758	228	52	0.0764161573
16759	228	53	0.0575200568
16760	228	54	0.6590419661
16761	228	55	0.3125019027
16762	228	56	0.4564577995
16763	228	57	0.2782466877
16764	228	58	0.8991403383
16765	228	59	0.6977938505
16766	228	60	0.7014034870
16767	228	61	0.9617840010
16768	228	62	0.7565301080
16769	228	63	0.3402313443
16770	228	64	0.0037140354
16771	228	65	0.0205887941
16772	228	66	0.7479828274
16773	228	67	0.3679712881
16774	228	68	0.4463299005
16775	228	69	0.8386125541
16776	228	70	0.0129066294
16777	228	71	0.5162350638
16778	228	72	0.9994495038
16779	228	73	0.8932947662
16780	228	74	0.5492659323
16781	228	75	0.1356823792
16782	228	76	0.4738212635
16783	228	77	0.7589197875
16784	228	78	0.6269620785
16785	229	1	0.3381769901
16786	229	2	0.9253893024
16787	229	3	0.2349681288
16788	229	4	0.8707431621
16789	229	5	0.2386350482
16790	229	6	0.1016206713
16791	229	7	0.0067278327
16792	229	8	0.9499113451
16793	229	9	0.9281418468
16794	229	10	0.3691808284
16795	229	11	0.8526943220
16796	229	12	0.6988840355
16797	229	13	0.5358356096
16798	229	14	0.1726771705
16799	229	15	0.9067398669
16800	229	16	0.2908333011
16801	229	17	0.8486223796
16802	229	18	0.4471217251
16803	229	19	0.5935663268
16804	229	20	0.0158479072
16805	229	21	0.5236593587
16806	229	22	0.0932437879
16807	229	23	0.1538637535
16808	229	24	0.4163159552
16809	229	25	0.3572899208
16810	229	26	0.7946729635
16811	229	27	0.0024030882
16812	229	28	0.5189104449
16813	229	29	0.5081985026
16814	229	30	0.5091442487
16815	229	31	0.0178656601
16816	229	32	0.7039997815
16817	229	33	0.9325237712
16818	229	34	0.5653563487
16819	229	35	0.5624175006
16820	229	36	0.8859648693
16821	229	37	0.9679687745
16822	229	38	0.4759073764
16823	229	39	0.6955526155
16824	229	40	0.6501465354
16825	229	41	0.4784043348
16826	229	42	0.7618789817
16827	229	43	0.8345791608
16828	229	44	0.6803211833
16829	229	45	0.6097987777
16830	229	46	0.0657606287
16831	229	47	0.3830042997
16832	229	48	0.4116091856
16833	229	49	0.9461765259
16834	229	50	0.6775698914
16835	229	51	0.4835058621
16836	229	52	0.6272306992
16837	229	53	0.3410102781
16838	229	54	0.8049502642
16839	229	55	0.0670657793
16840	229	56	0.2479330153
16841	229	57	0.5922797572
16842	229	58	0.8727655534
16843	229	59	0.9669593272
16844	229	60	0.7076469203
16845	229	61	0.3005917139
16846	229	62	0.8863985665
16847	229	63	0.7658250826
16848	229	64	0.1281727581
16849	229	65	0.3083333569
16850	229	66	0.9654459474
16851	229	67	0.2366816426
16852	229	68	0.0766798072
16853	229	69	0.4769446054
16854	229	70	0.8714551584
16855	229	71	0.5102839655
16856	229	72	0.7561211121
16857	229	73	0.3236730182
16858	229	74	0.2270032956
16859	229	75	0.6283075549
16860	229	76	0.8115128677
16861	229	77	0.3156656323
16862	229	78	0.5088677542
16863	230	1	0.0800138446
16864	230	2	0.0901885634
16865	230	3	0.0920868018
16866	230	4	0.4749451247
16867	230	5	0.1398171549
16868	230	6	0.5547095334
16869	230	7	0.1503153498
16870	230	8	0.5847300579
16871	230	9	0.5051110026
16872	230	10	0.3324226448
16873	230	11	0.8368128549
16874	230	12	0.6455913961
16875	230	13	0.0329495049
16876	230	14	0.1758473516
16877	230	15	0.7744843826
16878	230	16	0.8301940261
16879	230	17	0.6188905894
16880	230	18	0.2674547502
16881	230	19	0.7172658953
16882	230	20	0.1744930592
16883	230	21	0.4121088918
16884	230	22	0.9827382258
16885	230	23	0.7570428043
16886	230	24	0.1552142044
16887	230	25	0.5189699394
16888	230	26	0.1937508075
16889	230	27	0.2680954867
16890	230	28	0.2208046083
16891	230	29	0.2368508878
16892	230	30	0.3128365670
16893	230	31	0.9796442494
16894	230	32	0.9990846315
16895	230	33	0.8228471091
16896	230	34	0.2247036793
16897	230	35	0.5111626880
16898	230	36	0.8271216643
16899	230	37	0.7940399172
16900	230	38	0.6204798846
16901	230	39	0.0515212233
16902	230	40	0.5453877563
16903	230	41	0.4515267560
16904	230	42	0.3814413071
16905	230	43	0.1133087012
16906	230	44	0.2926538476
16907	230	45	0.3300111310
16908	230	46	0.8246047262
16909	230	47	0.8264747061
16910	230	48	0.0645208434
16911	230	49	0.4252343996
16912	230	50	0.7549659894
16913	230	51	0.9230976411
16914	230	52	0.7142130862
16915	230	53	0.7825893847
16916	230	54	0.4368970475
16917	230	55	0.2062549085
16918	230	56	0.7617810481
16919	230	57	0.2244977721
16920	230	58	0.5804358045
16921	230	59	0.6725412615
16922	230	60	0.7635315637
16923	230	61	0.6819722363
16924	230	62	0.0953443598
16925	230	63	0.6734199648
16926	230	64	0.5590793169
16927	230	65	0.0348762477
16928	230	66	0.8024275650
16929	230	67	0.7414154374
16930	230	68	0.8941844200
16931	230	69	0.1769754237
16932	230	70	0.1686382157
16933	230	71	0.9179049640
16934	230	72	0.8993122764
16935	230	73	0.8037328427
16936	230	74	0.8845761761
16937	230	75	0.4976990599
16938	230	76	0.4017374496
16939	230	77	0.5354177433
16940	230	78	0.1421777958
16941	231	1	0.1458246150
16942	231	2	0.1717565259
16943	231	3	0.2751074176
16944	231	4	0.9070953753
16945	231	5	0.9184204663
16946	231	6	0.9821703398
16947	231	7	0.7797486596
16948	231	8	0.9907115406
16949	231	9	0.1578201141
16950	231	10	0.3258270652
16951	231	11	0.7423699820
16952	231	12	0.2055165591
16953	231	13	0.1629041001
16954	231	14	0.7730098780
16955	231	15	0.3627372610
16956	231	16	0.0009562490
16957	231	17	0.7635310439
16958	231	18	0.3509206300
16959	231	19	0.6775579713
16960	231	20	0.5110219077
16961	231	21	0.6963693639
16962	231	22	0.1198469616
16963	231	23	0.8995613207
16964	231	24	0.5467448770
16965	231	25	0.5459283472
16966	231	26	0.1709214654
16967	231	27	0.4403821010
16968	231	28	0.3225640105
16969	231	29	0.1794905637
16970	231	30	0.9902030109
16971	231	31	0.9301663929
16972	231	32	0.9928395661
16973	231	33	0.8456256130
16974	231	34	0.2928286105
16975	231	35	0.9564136743
16976	231	36	0.9139376096
16977	231	37	0.9727362265
16978	231	38	0.0546182529
16979	231	39	0.6029860296
16980	231	40	0.7849227634
16981	231	41	0.3855662570
16982	231	42	0.2043917915
16983	231	43	0.6237381442
16984	231	44	0.7112908503
16985	231	45	0.2783229868
16986	231	46	0.9978526897
16987	231	47	0.7163086009
16988	231	48	0.8396782423
16989	231	49	0.5269274597
16990	231	50	0.5486143662
16991	231	51	0.0850917247
16992	231	52	0.7787703718
16993	231	53	0.6566136454
16994	231	54	0.2680908646
16995	231	55	0.4373535529
16996	231	56	0.2475702857
16997	231	57	0.4801975686
16998	231	58	0.8784474905
16999	231	59	0.1783666274
17000	231	60	0.4967449542
17001	231	61	0.7840551856
17002	231	62	0.3403744552
17003	231	63	0.2458624399
17004	231	64	0.5576521042
17005	231	65	0.3165936327
17006	231	66	0.8360592172
17007	231	67	0.4085962696
17008	231	68	0.8240947036
17009	231	69	0.1539802090
17010	231	70	0.5108901818
17011	231	71	0.7993006004
17012	231	72	0.1549065606
17013	231	73	0.9584285162
17014	231	74	0.5249884523
17015	231	75	0.5925483576
17016	231	76	0.2189409928
17017	231	77	0.0464673808
14601	201	1	0.0000000000
14602	201	2	0.0000000000
14603	201	3	0.0000000000
14604	201	4	0.0000000000
14605	201	5	0.0000000000
14606	201	6	0.0000000000
14607	201	7	0.0000000000
14608	201	8	0.0000000000
14609	201	9	0.0000000000
14610	201	10	0.0000000000
14611	201	11	0.0000000000
14612	201	12	0.0000000000
14613	201	13	0.0000000000
14614	201	14	0.0000000000
14615	201	15	0.0000000000
14616	201	16	0.0000000000
14617	201	17	0.0000000000
14618	201	18	0.0000000000
14619	201	19	0.0000000000
14620	201	20	0.0000000000
14621	201	21	0.0000000000
14622	201	22	0.0000000000
14623	201	23	0.0000000000
14624	201	24	0.0000000000
14625	201	25	0.0000000000
14626	201	26	0.0000000000
14627	201	27	0.0000000000
14628	201	28	0.0000000000
14629	201	29	0.0000000000
14630	201	30	0.0000000000
14631	201	31	0.0000000000
14632	201	32	0.0000000000
14633	201	33	0.0000000000
14634	201	34	0.0000000000
14635	201	35	0.0000000000
14636	201	36	0.0000000000
14637	201	37	0.0000000000
14638	201	38	0.0000000000
14639	201	39	0.0000000000
14640	201	40	0.0000000000
14641	201	41	0.0000000000
14642	201	42	0.0000000000
14643	201	43	0.0000000000
14644	201	44	0.0000000000
14645	201	45	0.0000000000
14646	201	46	0.0000000000
14647	201	47	0.0000000000
14648	201	48	0.0000000000
14649	201	49	0.0000000000
14650	201	50	0.0000000000
14652	201	52	0.0000000000
14653	201	53	0.0000000000
14654	201	54	0.0000000000
14655	201	55	0.0000000000
14656	201	56	0.0000000000
14657	201	57	0.0000000000
14658	201	58	0.0000000000
14659	201	59	0.0000000000
14660	201	60	0.0000000000
14661	201	61	0.0000000000
14662	201	62	0.0000000000
14663	201	63	0.0000000000
14664	201	64	0.0000000000
14665	201	65	0.0000000000
14666	201	66	0.0000000000
14667	201	67	0.0000000000
14668	201	68	0.0000000000
14669	201	69	0.0000000000
14670	201	70	0.0000000000
14671	201	71	0.0000000000
14672	201	72	0.0000000000
14673	201	73	0.0000000000
14674	201	74	0.0000000000
14675	201	75	0.0000000000
14676	201	76	0.0000000000
14677	201	77	0.0000000000
14678	201	78	0.0000000000
14679	202	1	0.0000000000
14680	202	2	0.0000000000
14681	202	3	0.0000000000
14682	202	4	0.0000000000
14683	202	5	0.0000000000
14684	202	6	0.0000000000
14685	202	7	0.0000000000
14686	202	8	0.0000000000
14687	202	9	0.0000000000
14688	202	10	0.0000000000
14689	202	11	0.0000000000
14690	202	12	0.0000000000
14691	202	13	0.0000000000
14692	202	14	0.0000000000
14693	202	15	0.0000000000
14694	202	16	0.0000000000
14695	202	17	0.0000000000
14696	202	18	0.0000000000
14697	202	19	0.0000000000
14698	202	20	0.0000000000
14699	202	21	0.0000000000
14700	202	22	0.0000000000
14701	202	23	0.0000000000
14702	202	24	0.0000000000
14703	202	25	0.0000000000
14704	202	26	0.0000000000
14705	202	27	0.0000000000
14706	202	28	0.0000000000
14707	202	29	0.0000000000
14708	202	30	0.0000000000
14709	202	31	0.0000000000
14710	202	32	0.0000000000
14711	202	33	0.0000000000
14713	202	35	0.0000000000
14714	202	36	0.0000000000
14715	202	37	0.0000000000
14716	202	38	0.0000000000
14717	202	39	0.0000000000
14718	202	40	0.0000000000
14719	202	41	0.0000000000
14720	202	42	0.0000000000
14721	202	43	0.0000000000
14722	202	44	0.0000000000
14723	202	45	0.0000000000
14724	202	46	0.0000000000
14725	202	47	0.0000000000
14726	202	48	0.0000000000
14727	202	49	0.0000000000
14728	202	50	0.0000000000
14729	202	51	0.0000000000
14730	202	52	0.0000000000
14731	202	53	0.0000000000
14732	202	54	0.0000000000
14733	202	55	0.0000000000
14734	202	56	0.0000000000
14735	202	57	0.0000000000
14736	202	58	0.0000000000
14737	202	59	0.0000000000
14738	202	60	0.0000000000
14739	202	61	0.0000000000
14740	202	62	0.0000000000
14741	202	63	0.0000000000
14742	202	64	0.0000000000
14743	202	65	0.0000000000
14744	202	66	0.0000000000
14745	202	67	0.0000000000
14746	202	68	0.0000000000
14747	202	69	0.0000000000
14748	202	70	0.0000000000
14749	202	71	0.0000000000
14750	202	72	0.0000000000
14751	202	73	0.0000000000
14752	202	74	0.0000000000
14753	202	75	0.0000000000
14754	202	76	0.0000000000
14755	202	77	0.0000000000
14756	202	78	0.0000000000
14555	155	78	0.1022402256
10935	155	1	0.3042619010
10936	155	2	0.2479206329
10937	155	3	0.2469836832
10938	155	4	0.0995312906
10939	155	5	0.3056277500
10940	155	6	0.1429048649
10941	155	7	0.0364728607
10942	155	8	0.3051301323
10943	155	9	0.1117710076
10944	155	10	0.2493249658
10945	155	11	0.3011944655
10946	155	12	0.2165843942
10947	155	13	0.2694900304
10948	155	14	0.3833521044
10949	155	15	0.2059481351
10950	155	16	0.2108256715
10951	155	17	0.3482333529
10952	155	18	0.3412883308
10953	155	19	0.0498482657
10954	155	20	0.0149191015
10955	155	21	0.4819357153
10956	155	22	0.2406041422
10957	155	23	0.1750264769
10958	155	24	0.3605047514
10959	155	25	0.3387473964
10960	155	26	0.4747211533
10961	155	27	0.3899750994
10962	155	28	0.4615994937
10963	155	29	0.1381708447
10964	155	30	0.1587044597
10965	155	31	0.4192716724
10966	155	32	0.4424327459
10968	155	34	0.1662553558
10969	155	35	0.0419640364
10970	155	36	0.2122528425
10971	155	37	0.3091602207
10972	155	38	0.0784368974
10973	155	39	0.0173829748
10974	155	40	0.4209312282
10975	155	41	0.3277618632
10976	155	42	0.3185774405
10977	155	43	0.1375156227
10978	155	44	0.0972518935
10979	155	45	0.2019295448
10980	155	46	0.3434637578
10981	155	47	0.3080775650
14651	201	51	0.9999999988
14712	202	34	0.9999999988
10982	155	48	0.0501628977
10983	155	49	0.1847520885
10984	155	50	0.3579258309
10985	155	51	0.0650819992
10986	155	52	0.1666878038
10987	155	53	0.0985299731
10988	155	54	0.2401084763
10989	155	55	0.0271925552
10990	155	56	0.4372773695
10991	155	57	0.2148296295
10992	155	58	0.4171676548
10993	155	59	0.3988768631
10994	155	60	0.3530004742
10995	155	61	0.0758721144
10996	155	62	0.3181485357
10997	155	63	0.2954332200
10998	155	64	0.4824972069
10999	155	65	0.4844038915
11000	155	66	0.3373972567
11001	155	67	0.1947500494
11002	155	68	0.2935641122
11003	155	69	0.4158341540
11004	155	70	0.2121330244
11005	155	71	0.2144953404
14355	155	77	0.3843620311
10083	143	1	0.1830987099
10084	143	2	0.3554405340
10085	143	3	0.3223654763
10086	143	4	0.3589072610
10087	143	5	0.3342136925
10088	143	6	0.3559477921
10089	143	7	0.4580643280
10090	143	8	0.2559050895
10091	143	9	0.3265182849
10092	143	10	0.1121289784
10093	143	11	0.1447740225
10094	143	12	0.3914655333
10095	143	13	0.4656601870
10096	143	14	0.1592822355
10097	143	15	0.4710592176
10098	143	16	0.1498323474
10099	143	17	0.3897234886
10100	143	18	0.4164250754
10101	143	19	0.3324725023
10102	143	20	0.2468170410
10103	143	21	0.1603706822
10104	143	22	0.0274181292
10105	143	23	0.3236408397
10106	143	24	0.0759399361
10107	143	25	0.0497246690
10108	143	26	0.3087763426
10109	143	27	0.4329123108
10110	143	28	0.2899661432
10111	143	29	0.3113968361
10112	143	30	0.0232873641
10113	143	31	0.1124025553
10114	143	32	0.4944955460
10116	143	34	0.4347680316
10117	143	35	0.3534028072
10118	143	36	0.2129415907
10119	143	37	0.2907158237
10120	143	38	0.3114671351
10121	143	39	0.4688466802
10122	143	40	0.1172341088
10123	143	41	0.4235961135
10124	143	42	0.1136207029
10125	143	43	0.0086996421
10126	143	44	0.3892563004
10127	143	45	0.2729029383
10128	143	46	0.4797588596
10129	143	47	0.0390886478
10130	143	48	0.1626264269
10131	143	49	0.3961839350
10132	143	50	0.3715611501
10133	143	51	0.4094434679
10134	143	52	0.0565546172
10135	143	53	0.3989792792
10136	143	54	0.2330843075
10137	143	55	0.1324945535
10138	143	56	0.4487039482
10139	143	57	0.0418606501
10140	143	58	0.0654068643
10141	143	59	0.2386700916
10142	143	60	0.3532574862
10143	143	61	0.0886942284
10144	143	62	0.3510726469
10145	143	63	0.3477530324
10146	143	64	0.4674221266
10147	143	65	0.2858406785
10148	143	66	0.2011558395
10149	143	67	0.1803637173
10150	143	68	0.0765565024
10151	143	69	0.0126229746
10152	143	70	0.1492103974
10153	143	71	0.1937906111
1137	17	1	0.0554435989
1138	17	2	0.2308915593
1139	17	3	0.4648686582
1140	17	4	0.3035726219
1141	17	5	0.4904320340
1142	17	6	0.2041026452
1143	17	7	0.0992047962
1144	17	8	0.2211508416
1145	17	9	0.4782397342
1146	17	10	0.3578383781
1147	17	11	0.4751584851
1148	17	12	0.1139183315
1149	17	13	0.4363498208
1150	17	14	0.4491736510
1151	17	15	0.3067997019
1152	17	16	0.3925119413
1153	17	17	0.0854821471
1154	17	18	0.0268869677
1155	17	19	0.0237274666
1156	17	20	0.2034834312
1157	17	21	0.4134685567
1158	17	22	0.2893490326
1159	17	23	0.4555804078
1160	17	24	0.3221544980
1161	17	25	0.2313828653
1162	17	26	0.3884424751
1163	17	27	0.3184819317
1164	17	28	0.0065405262
1165	17	29	0.3919052915
1166	17	30	0.0796133215
1167	17	31	0.2554192611
1168	17	32	0.4473488906
1170	17	34	0.2202879193
1171	17	35	0.2509215125
1172	17	36	0.3009369148
1173	17	37	0.4243905647
1174	17	38	0.3501263086
1175	17	39	0.0220877566
1176	17	40	0.4026302989
1177	17	41	0.2079646867
1178	17	42	0.4972462417
1179	17	43	0.0165486306
1180	17	44	0.1443145075
1181	17	45	0.4464198926
1182	17	46	0.3233483325
1183	17	47	0.0368264490
1184	17	48	0.0319020397
1185	17	49	0.3502353002
1186	17	50	0.0605539156
1187	17	51	0.2353854708
1188	17	52	0.2637038571
1189	17	53	0.3499029482
1190	17	54	0.1909658788
1191	17	55	0.0858583551
1192	17	56	0.0812858136
1193	17	57	0.0794083539
1194	17	58	0.4043402868
1195	17	59	0.0878263398
1196	17	60	0.4713136456
1197	17	61	0.4839536082
1198	17	62	0.3432456011
1199	17	63	0.4186625362
1200	17	64	0.2944584892
1201	17	65	0.0635335204
1202	17	66	0.1695840487
1203	17	67	0.0953954039
1204	17	68	0.4879240850
1205	17	69	0.0197103573
1206	17	70	0.1174831605
1207	17	71	0.3905543841
14217	17	77	0.2257601792
14417	17	78	0.1909873388
8521	121	1	0.4108863254
8522	121	2	0.0151741081
8523	121	3	0.4749213963
8524	121	4	0.1378148741
8525	121	5	0.0066783051
8526	121	6	0.4632560136
8527	121	7	0.2718338128
8528	121	8	0.3179752608
8529	121	9	0.1392893850
8530	121	10	0.1107282865
8531	121	11	0.4381629459
8532	121	12	0.1208930081
8533	121	13	0.1732342323
8534	121	14	0.4388356747
8535	121	15	0.1240631358
8536	121	16	0.0182100269
8537	121	17	0.1742595039
8538	121	18	0.4770453517
8539	121	19	0.2434934974
8540	121	20	0.1714201323
8541	121	21	0.0544663323
8542	121	22	0.1647384374
8543	121	23	0.3220511142
8544	121	24	0.4198852128
8545	121	25	0.0056918010
8546	121	26	0.0162825177
8547	121	27	0.1427792546
8548	121	28	0.4456243397
8549	121	29	0.4568535495
8550	121	30	0.3767594751
8551	121	31	0.3441382034
8552	121	32	0.3677398751
8554	121	34	0.3190595997
8555	121	35	0.0055547492
8556	121	36	0.3986118885
8557	121	37	0.2823156135
8558	121	38	0.2773885620
8559	121	39	0.2165871493
8560	121	40	0.4216049984
8561	121	41	0.3881168484
8562	121	42	0.1547500952
8563	121	43	0.0424980065
8564	121	44	0.0613510807
8565	121	45	0.0935857699
8566	121	46	0.1665611423
8567	121	47	0.0795611078
8568	121	48	0.2678452737
8569	121	49	0.1436064940
8570	121	50	0.3230546052
8571	121	51	0.4392654060
8572	121	52	0.1980728265
8573	121	53	0.4877930426
8574	121	54	0.2613165202
8575	121	55	0.1179580393
8576	121	56	0.4934848435
8577	121	57	0.2775990379
8578	121	58	0.2607372939
8579	121	59	0.4391091834
8580	121	60	0.2344525876
8581	121	61	0.1374967690
8582	121	62	0.2832473868
8583	121	63	0.1021924627
8584	121	64	0.0294303524
8585	121	65	0.1023069865
8586	121	66	0.1077472118
8587	121	67	0.4280422409
8588	121	68	0.3846226000
8589	121	69	0.3851357738
8590	121	70	0.1446293902
8591	121	71	0.3062275986
11219	159	1	0.1236271877
11220	159	2	0.2503327907
11221	159	3	0.4554172857
11222	159	4	0.2905538555
11223	159	5	0.0276634584
11224	159	6	0.3288203317
11225	159	7	0.1680069969
11226	159	8	0.2147475591
11227	159	9	0.2483712354
11228	159	10	0.0961567962
11229	159	11	0.3545032533
11230	159	12	0.0110866274
11231	159	13	0.3642400506
11232	159	14	0.4103809288
11233	159	15	0.0807510354
11234	159	16	0.3488416837
11235	159	17	0.2776400107
11236	159	18	0.1967062443
11237	159	19	0.4530579301
11238	159	20	0.3873745292
11239	159	21	0.2240225571
11240	159	22	0.3378160075
11241	159	23	0.3448229525
11242	159	24	0.4008754457
11243	159	25	0.0124972202
11244	159	26	0.3616463396
11245	159	27	0.4343842964
11246	159	28	0.3345076356
11247	159	29	0.2262627448
11248	159	30	0.2335672146
11249	159	31	0.1621905293
11250	159	32	0.3498899325
11252	159	34	0.1176078150
11253	159	35	0.1404437882
11254	159	36	0.0115634639
11255	159	37	0.4464281469
11256	159	38	0.3084507850
11257	159	39	0.2263110229
11258	159	40	0.1947993823
11259	159	41	0.4046075815
11260	159	42	0.0808142764
11261	159	43	0.2058860096
11262	159	44	0.2688476320
11263	159	45	0.4911952052
11264	159	46	0.2866370452
11265	159	47	0.1176893157
11266	159	48	0.2688352159
11267	159	49	0.4833432895
11268	159	50	0.0707472461
11269	159	51	0.1562097450
11270	159	52	0.2073658468
11271	159	53	0.4085632535
11272	159	54	0.0010326975
11273	159	55	0.1082412924
11274	159	56	0.4210604737
11275	159	57	0.3626790371
11276	159	58	0.0426255889
11277	159	59	0.2555681095
11278	159	60	0.0889417820
11279	159	61	0.2761928034
11280	159	62	0.4177586388
11281	159	63	0.4388317145
11282	159	64	0.2600928089
11283	159	65	0.0353664537
11284	159	66	0.0792755026
11285	159	67	0.2716562727
11286	159	68	0.4817946006
11287	159	69	0.3877262878
11288	159	70	0.4979672956
11289	159	71	0.1765939831
170179	232	51	0.9749665889
170180	232	78	0.4298716597
170181	232	36	0.5306898491
170182	232	38	0.0633966052
170183	232	39	0.5424735057
170184	232	40	0.3174867616
170185	232	41	0.4898349587
170186	232	42	0.4672388947
170187	232	1	0.5691896984
170188	232	2	0.6011791504
170189	232	14	0.9318820704
170190	232	15	0.8263746407
170191	232	16	0.7156214416
170192	232	17	0.7993162004
170193	232	3	0.7499594642
170194	232	6	0.1030476270
170195	232	4	0.2729270924
170196	232	7	0.2046608254
170197	232	18	0.8096596883
170198	232	19	0.2753522145
170199	232	8	0.5545828855
170200	232	9	0.0848912545
170201	232	10	0.9731545323
170202	232	11	0.0697089816
170203	232	12	0.8388627302
170204	232	13	0.7545459834
170205	232	20	0.6250358359
170206	232	21	0.3172674943
170207	232	22	0.8043919704
170208	232	23	0.5400050064
170209	232	24	0.8506102897
170210	232	25	0.7793585593
170211	232	26	0.9698766661
170212	232	27	0.3813001388
170213	232	28	0.8427551645
170214	232	29	0.5123501718
170215	232	30	0.6987869004
170216	232	31	0.3325901236
170217	232	32	0.9795890665
170218	232	33	0.2679765988
170219	232	34	0.9337692740
170220	232	35	0.9114711368
170221	232	37	0.0943512400
170222	232	45	0.6493907161
170223	232	46	0.7107873373
170224	232	47	0.8443107042
170225	232	48	0.7524383431
170226	232	49	0.9837144297
170227	232	50	0.0489715296
170228	232	52	0.5620980314
170229	232	53	0.2590666441
170230	232	54	0.6035544151
170231	232	56	0.6469892864
170232	232	57	0.2322211768
170233	232	59	0.6732633971
170234	232	62	0.4858520166
170235	232	63	0.9867671602
170236	232	64	0.2982992330
170237	232	68	0.8031195109
170238	232	69	0.7911591306
170239	232	70	0.8383042393
170240	232	72	0.6537298006
170241	232	77	0.5705176899
170242	232	5	0.8081809054
170243	232	43	0.0350299394
170244	232	44	0.4132728544
170245	232	55	0.3205310772
170246	232	58	0.7338168398
170247	232	60	0.7458629780
170248	232	61	0.3001201437
170249	232	65	0.0017934386
170250	232	66	0.6796322525
170251	232	67	0.2115912805
170252	232	71	0.0961446785
170253	232	73	0.3290229687
170254	232	74	0.9223786178
170255	232	75	0.9404553827
170256	232	76	0.0814613118
7172	102	1	0.4781093770
7173	102	2	0.4263998673
7174	102	3	0.2908001452
7175	102	4	0.3033670192
7176	102	5	0.2653277135
7177	102	6	0.3092103838
7178	102	7	0.4497834996
7179	102	8	0.0975673611
7180	102	9	0.1545977788
7181	102	10	0.0708587151
7182	102	11	0.1235711421
7183	102	12	0.1931949382
7184	102	13	0.0084848295
7185	102	14	0.2137721214
7186	102	15	0.3127416719
7187	102	16	0.4132098225
7188	102	17	0.1438529550
7189	102	18	0.0159980376
7190	102	19	0.4997062199
7191	102	20	0.3910934250
7192	102	21	0.2782448663
7193	102	22	0.3257255797
7194	102	23	0.1037480752
7195	102	24	0.1484688847
7196	102	25	0.2019258524
7197	102	26	0.3613658694
7198	102	27	0.2777587772
7199	102	28	0.2809899331
7200	102	29	0.1487864703
7201	102	30	0.2695612128
7202	102	31	0.1125720314
7203	102	32	0.1268958475
7205	102	34	0.4033721765
7206	102	35	0.4302628667
7207	102	36	0.4612887937
7208	102	37	0.2125825605
7209	102	38	0.3800463663
7210	102	39	0.0588561548
7211	102	40	0.3671803393
7212	102	41	0.4509050814
7213	102	42	0.1824272969
7214	102	43	0.0603752774
7215	102	44	0.4593899108
7216	102	45	0.3961994185
7217	102	46	0.3731169494
7218	102	47	0.3725997336
7219	102	48	0.0400523735
7220	102	49	0.3891149869
7221	102	50	0.3723059534
7222	102	51	0.4311457984
7223	102	52	0.1673598532
7224	102	53	0.1980315333
7225	102	54	0.0348938736
7226	102	55	0.3158287381
7227	102	56	0.3999573856
7228	102	57	0.3962597430
7229	102	58	0.0935875152
7230	102	59	0.1809473187
7231	102	60	0.0450462136
7232	102	61	0.3631487279
7233	102	62	0.2935193500
7234	102	63	0.1719420611
7235	102	64	0.0591098082
7236	102	65	0.1968915267
7237	102	66	0.1022049277
7238	102	67	0.0203986019
7239	102	68	0.4094740872
7240	102	69	0.4822512940
7241	102	70	0.0792547567
7242	102	71	0.2766544265
2060	30	1	0.2010169472
2061	30	2	0.3519207291
2062	30	3	0.2371771555
2063	30	4	0.3536879616
2064	30	5	0.1012571112
2065	30	6	0.0073262928
2066	30	7	0.1992117502
2067	30	8	0.2856779811
2068	30	9	0.0123654732
2069	30	10	0.1141110161
2070	30	11	0.0773348469
2071	30	12	0.0963279896
2072	30	13	0.3508451721
2073	30	14	0.2422624773
2074	30	15	0.2750174569
2075	30	16	0.3514616378
2076	30	17	0.4347339338
2077	30	18	0.4049882712
2078	30	19	0.3107831734
2079	30	20	0.1374557142
2080	30	21	0.4514817081
2081	30	22	0.3367512839
2082	30	23	0.3031183961
2083	30	24	0.3010057539
2084	30	25	0.2960777765
2085	30	26	0.2044062063
2086	30	27	0.3272631436
2087	30	28	0.0097834447
2088	30	29	0.4877398445
2089	30	30	0.0680082147
2090	30	31	0.1456485829
2091	30	32	0.1887567917
2093	30	34	0.3828257383
2094	30	35	0.0424447533
2095	30	36	0.0211860549
2096	30	37	0.3901520311
2097	30	38	0.2416565034
2098	30	39	0.3068640360
2099	30	40	0.4025175043
2100	30	41	0.3557675195
2101	30	42	0.3841988831
2102	30	43	0.4988454941
2103	30	44	0.2066126915
2104	30	45	0.1264613604
2105	30	46	0.2738629510
2106	30	47	0.0580743293
2107	30	48	0.0611952944
2108	30	49	0.1788512222
2109	30	50	0.3688575030
2110	30	51	0.1986510086
2111	30	52	0.1303329305
2112	30	53	0.2056087868
2113	30	54	0.0017694049
2114	30	55	0.4313386844
2115	30	56	0.0016865635
2116	30	57	0.2061756111
2117	30	58	0.2586018280
2118	30	59	0.0114700082
2119	30	60	0.1939154556
2120	30	61	0.3266100427
2121	30	62	0.1571185910
2122	30	63	0.3826722473
2123	30	64	0.2465389865
2124	30	65	0.0399443293
2125	30	66	0.4251170005
2126	30	67	0.2677250414
2127	30	68	0.4300963606
2128	30	69	0.1667735041
2129	30	70	0.0745890774
2130	30	71	0.3326138649
5326	76	1	0.4367654331
5327	76	2	0.1511434492
5328	76	3	0.2671653773
5329	76	4	0.2305104705
5330	76	5	0.1560722082
5331	76	6	0.2147238243
5332	76	7	0.3304961829
5333	76	8	0.2107027667
5334	76	9	0.1883657922
5335	76	10	0.0795337118
5336	76	11	0.4931156973
5337	76	12	0.3664453384
5338	76	13	0.4968300695
5339	76	14	0.4756025614
5340	76	15	0.1875928263
5341	76	16	0.0508716030
5342	76	17	0.1111604206
5343	76	18	0.0555547513
5344	76	19	0.3362171622
5345	76	20	0.1080924506
5346	76	21	0.2288819496
5347	76	22	0.3910008613
5348	76	23	0.0077126103
5349	76	24	0.2299905764
5350	76	25	0.0985205171
5351	76	26	0.0478009554
5352	76	27	0.2566120541
5353	76	28	0.4348760057
5354	76	29	0.1143477347
5355	76	30	0.3482276383
5356	76	31	0.0489176507
5357	76	32	0.0511131678
5359	76	34	0.3160830280
5360	76	35	0.2816236385
5361	76	36	0.1554432956
5362	76	37	0.0308068523
5363	76	38	0.1121198214
5364	76	39	0.3661460625
5365	76	40	0.2191726445
5366	76	41	0.1916535334
5367	76	42	0.3592617598
5368	76	43	0.0856179828
5369	76	44	0.1884836029
5370	76	45	0.3348643214
5371	76	46	0.2732108091
5372	76	47	0.2393552058
5373	76	48	0.4460247420
5374	76	49	0.3287655607
5375	76	50	0.0755723680
5376	76	51	0.0541171925
5377	76	52	0.0576475102
5378	76	53	0.4665732293
5379	76	54	0.0618298031
5380	76	55	0.2876380866
5381	76	56	0.0650937467
5382	76	57	0.1096307584
5383	76	58	0.0442501407
5384	76	59	0.4999697523
5385	76	60	0.2239784934
5386	76	61	0.3924777792
5387	76	62	0.0488874030
5388	76	63	0.2750916612
5389	76	64	0.3918488666
5390	76	65	0.3649704310
5391	76	66	0.0567152996
5392	76	67	0.0472921625
5393	76	68	0.3957772835
5394	76	69	0.1688351212
5395	76	70	0.4134382250
5396	76	71	0.1149499279
14276	76	77	0.1399054348
853	13	1	0.3405904516
854	13	2	0.1847538357
855	13	3	0.1169162283
856	13	4	0.4271506118
857	13	5	0.1269080071
858	13	6	0.1143854591
859	13	7	0.4427677877
860	13	8	0.4582312841
861	13	9	0.4056029292
862	13	10	0.3973532270
863	13	11	0.1428584301
864	13	12	0.3656764583
865	13	13	0.3771156441
866	13	14	0.0597765420
867	13	15	0.3129027761
868	13	16	0.3113474979
869	13	17	0.0905871489
870	13	18	0.0472810103
871	13	19	0.3656256597
872	13	20	0.0276774033
873	13	21	0.1373128272
874	13	22	0.1328948899
875	13	23	0.0509151377
876	13	24	0.0672063022
877	13	25	0.3140744532
878	13	26	0.3121264358
879	13	27	0.2431120419
880	13	28	0.2140130294
881	13	29	0.2672980714
882	13	30	0.3029871562
883	13	31	0.3970429711
884	13	32	0.1078885233
886	13	34	0.0139591997
887	13	35	0.0350391350
888	13	36	0.1146489992
889	13	37	0.1283446588
890	13	38	0.4778069228
891	13	39	0.0728802833
892	13	40	0.0339475880
893	13	41	0.3751601498
894	13	42	0.2157387133
895	13	43	0.3996240462
896	13	44	0.2522757938
897	13	45	0.2755152553
898	13	46	0.2125268225
899	13	47	0.0636232919
900	13	48	0.3661024045
901	13	49	0.2598078328
902	13	50	0.4292489516
903	13	51	0.3937798077
904	13	52	0.3971206602
905	13	53	0.0621438416
906	13	54	0.4446949454
907	13	55	0.4643269624
908	13	56	0.3762182950
909	13	57	0.2568213812
910	13	58	0.2074390042
911	13	59	0.0902313243
912	13	60	0.0241194528
913	13	61	0.0104261607
914	13	62	0.4872742954
915	13	63	0.1320079761
916	13	64	0.4981671525
917	13	65	0.0012334951
918	13	66	0.1670471111
919	13	67	0.1128161517
920	13	68	0.1295781539
921	13	69	0.1448540339
922	13	70	0.1856964350
923	13	71	0.1635257418
170257	234	51	0.2165943310
170258	235	51	0.0285495394
170259	236	51	0.3330714763
170260	237	51	0.8933360763
170261	234	78	0.2348323255
170262	235	78	0.4229404968
170263	236	78	0.0716621582
170264	237	78	0.0822321312
170265	234	36	0.4450887907
170266	235	36	0.3655296797
170267	236	36	0.9765996444
170268	237	36	0.4131731330
170269	234	38	0.9178687627
170270	235	38	0.3012223355
170271	236	38	0.6527566970
170272	237	38	0.2681387207
170273	234	39	0.3763354528
170274	235	39	0.2325845384
170275	236	39	0.7943094471
170276	237	39	0.1277069445
170277	234	40	0.4563040785
170278	235	40	0.4017491089
170279	236	40	0.8290949711
170280	237	40	0.7957957657
170281	234	41	0.6399775799
170282	235	41	0.6379600978
170283	236	41	0.0572866774
170284	237	41	0.2947015972
170285	234	42	0.4479103619
170286	235	42	0.6443529078
170287	236	42	0.8316505263
170288	237	42	0.6645046929
170289	234	1	0.6729024472
170290	235	1	0.1647220026
170291	236	1	0.5578407692
170292	237	1	0.9077347731
170293	234	2	0.5876624994
170294	235	2	0.6295029279
170295	236	2	0.9899669043
170296	237	2	0.0327512901
170297	234	14	0.9950326076
170298	235	14	0.9665665491
170299	236	14	0.4459244236
170300	237	14	0.9129013708
170301	234	15	0.2677888847
170302	235	15	0.0986811207
170303	236	15	0.1810400914
170304	237	15	0.6441243379
170305	234	16	0.3312656595
170306	235	16	0.9753495385
170307	236	16	0.7718312824
170308	237	16	0.7875697380
170309	234	17	0.3770986474
170310	235	17	0.6009262535
170311	236	17	0.5833655037
170312	237	17	0.0170762273
170313	234	3	0.2388863512
170314	235	3	0.6406521811
170315	236	3	0.3117778245
170316	237	3	0.6867967132
170317	234	70	0.2850050894
170318	235	70	0.1434283508
170319	236	70	0.3513014060
170320	237	70	0.9579075365
170321	234	6	0.3081503534
170322	235	6	0.9091421752
170323	236	6	0.8656423097
170324	237	6	0.8958128528
170325	234	4	0.5386451031
170326	235	4	0.8556092144
170327	236	4	0.9285641434
170328	237	4	0.5336777112
170329	234	7	0.8221757635
170330	235	7	0.3744885670
170331	236	7	0.4465790819
170332	237	7	0.0899646482
170333	234	18	0.4731696877
170334	235	18	0.6276191734
170335	236	18	0.7340889862
170336	237	18	0.8044353472
170337	234	19	0.6029687119
170338	235	19	0.5059202686
170339	236	19	0.5920050857
170340	237	19	0.9800673593
170341	234	8	0.1068465221
170342	235	8	0.1753705894
170343	236	8	0.9971435866
170344	237	8	0.3457328733
170345	234	9	0.8160227709
170346	235	9	0.3089214112
170347	236	9	0.0325295865
170348	237	9	0.1010278603
170349	234	10	0.4523497624
170350	235	10	0.3838309925
170351	236	10	0.0589353968
170352	237	10	0.7605001158
170353	234	11	0.2929731682
170354	235	11	0.9245777070
170355	236	11	0.6563129690
170356	237	11	0.8316182713
170357	234	12	0.7801869214
170358	235	12	0.5848771124
170359	236	12	0.3652959825
170360	237	12	0.6023626849
170361	234	13	0.9593656794
170362	235	13	0.8118750644
170363	236	13	0.6923273331
170364	237	13	0.4325353671
170365	234	20	0.4394942378
170366	235	20	0.4264163198
170367	236	20	0.2369707148
170368	237	20	0.0424629496
170369	234	21	0.9323365884
170370	235	21	0.8289758004
170371	236	21	0.0225303089
170372	237	21	0.0391831109
170373	234	22	0.0043463898
170374	235	22	0.0196738956
170375	236	22	0.3849159842
170376	237	22	0.8203691607
170377	234	23	0.3285953072
170378	235	23	0.4174455712
170379	236	23	0.9213970210
170380	237	23	0.7809450696
170381	234	24	0.8012765637
170382	235	24	0.9803324183
170383	236	24	0.5414451854
170384	237	24	0.0942497319
170385	234	25	0.9049101253
170386	235	25	0.1977581545
170387	236	25	0.9258680036
170388	237	25	0.6850970467
170389	234	26	0.7826352669
170390	235	26	0.2911639861
170391	236	26	0.2874597316
170392	237	26	0.7420009463
170393	234	27	0.1030390509
170394	235	27	0.9797870647
170395	236	27	0.1745363139
170396	237	27	0.5425332887
170397	234	28	0.4062033845
170398	235	28	0.4115070286
170399	236	28	0.5849962388
170400	237	28	0.3385399734
170401	234	29	0.2404828290
170402	235	29	0.6075265477
170403	236	29	0.3777230843
170404	237	29	0.2448292188
170405	234	30	0.6272004438
170406	235	30	0.7626390685
170407	236	30	0.0651983800
170408	237	30	0.9557957510
170409	234	31	0.1800846397
170410	235	31	0.9865954011
170411	236	31	0.7367408206
170412	237	31	0.9813612038
170413	234	32	0.9669278194
170414	235	32	0.2781860060
170415	236	32	0.0756109357
170416	237	32	0.8718379447
170417	234	33	0.4759441609
170418	235	33	0.0014789393
170419	236	33	0.5569349914
170420	237	33	0.2585794278
170421	234	34	0.2926429259
170422	235	34	0.8443947230
170423	236	34	0.0005803746
170424	237	34	0.3956819768
170425	234	35	0.8241817881
170426	235	35	0.1751166885
170427	236	35	0.9382152655
170428	237	35	0.2303851726
170429	234	37	0.5866237171
170430	235	37	0.5232115043
170431	236	37	0.5689251460
170432	237	37	0.8271065461
170433	234	45	0.1307380525
170434	235	45	0.9466482303
170435	236	45	0.0719357650
170436	237	45	0.7579384963
170437	234	46	0.7092872993
170438	235	46	0.1371341450
170439	236	46	0.7137342473
170440	237	46	0.8893719390
170441	234	47	0.1237295466
170442	235	47	0.4504750678
170443	236	47	0.8707331428
170444	237	47	0.0906573660
170445	234	48	0.7286610738
170446	235	48	0.9463440790
170447	236	48	0.9624953112
170448	237	48	0.2046052348
170449	234	49	0.9478230183
170450	235	49	0.5194303025
170451	236	49	0.4631846631
170452	237	49	0.2404659442
170453	234	50	0.3638250260
170454	235	50	0.4637650377
170455	236	50	0.6361479210
170456	237	50	0.1880068141
170457	234	52	0.6388817262
170458	235	52	0.5743631870
170459	236	52	0.4183919868
170460	237	52	0.2255054433
170461	234	53	0.0975746913
170462	235	53	0.9873171332
170463	236	53	0.0526119894
170464	237	53	0.2283127438
170465	234	54	0.9339653635
170466	235	54	0.1245477544
170467	236	54	0.9862512401
170468	237	54	0.6432526628
170469	234	56	0.2616818999
170470	235	56	0.6999854874
170471	236	56	0.5326246023
170472	237	56	0.3854114464
170473	234	57	0.1504605552
170474	235	57	0.4033577451
170475	236	57	0.4760688124
170476	237	57	0.8791216295
170477	234	59	0.3497018241
170478	235	59	0.4385641236
170479	236	59	0.0837268643
170480	237	59	0.2975248429
170481	234	62	0.9579944266
170482	235	62	0.5469115274
170483	236	62	0.5379907871
170484	237	62	0.3218194526
170485	234	63	0.0106765651
170486	235	63	0.1741387085
170487	236	63	0.5098262667
170488	237	63	0.6495582913
170489	234	64	0.7485018955
170490	235	64	0.9282182534
170491	236	64	0.8750637346
170492	237	64	0.8460765867
170493	234	68	0.9155353867
170494	235	68	0.9276757240
170495	236	68	0.0743893310
170496	237	68	0.8495007507
170497	234	69	0.0522234789
170498	235	69	0.0606405712
170499	236	69	0.4927534135
170500	237	69	0.3139053788
170501	234	72	0.7606260590
170502	235	72	0.0253780158
170503	236	72	0.6993168253
170504	237	72	0.9110866142
170505	234	77	0.4287357614
170506	235	77	0.1753856377
170507	236	77	0.7902082438
170508	237	77	0.7784375856
170509	234	5	0.6139497617
170510	235	5	0.8739351085
170511	236	5	0.0759624285
170512	237	5	0.5719441883
170513	234	43	0.4208466359
170514	235	43	0.6139532160
170515	236	43	0.8937636409
170516	237	43	0.4315232015
170517	234	44	0.7880919245
170518	235	44	0.4035899076
170519	236	44	0.0810814928
170520	237	44	0.5365938200
170521	234	55	0.3318081610
170522	235	55	0.9561452279
170523	236	55	0.3826704067
170524	237	55	0.2473435481
170525	234	58	0.8838209519
170526	235	58	0.4570597378
170527	236	58	0.0968442988
170528	237	58	0.9360444308
170529	234	60	0.5177003094
170530	235	60	0.5895977123
170531	236	60	0.2499498096
170532	237	60	0.2783263684
170533	234	61	0.6149757286
170534	235	61	0.9492666349
170535	236	61	0.1894129827
170536	237	61	0.0437114900
170537	234	65	0.1246522730
170538	235	65	0.9796212269
170539	236	65	0.8221490756
170540	237	65	0.7386020347
170541	234	66	0.8535563354
170542	235	66	0.8981115045
170543	236	66	0.3105462231
170544	237	66	0.2744029714
170545	234	67	0.5120647205
170546	235	67	0.2043098640
170547	236	67	0.7059261729
170548	237	67	0.3001566450
170549	234	71	0.6078997715
170550	235	71	0.7870076662
170551	236	71	0.8367504650
170552	237	71	0.9397079325
170553	234	73	0.7431528941
170554	235	73	0.2194208717
170555	236	73	0.1870514806
170556	237	73	0.6269738460
170557	234	74	0.6764806099
170558	235	74	0.2838957794
170559	236	74	0.5630182773
170560	237	74	0.1941809193
170561	234	75	0.8734934921
170562	235	75	0.8129680869
170563	236	75	0.4725072877
170564	237	75	0.4884692207
170565	234	76	0.7622347223
170566	235	76	0.6619202704
170567	236	76	0.5321807107
170568	237	76	0.8868869953
170569	233	51	0.6415414973
170570	233	78	0.3543297863
170571	233	36	0.6254890300
170572	233	38	0.4950978328
170573	233	39	0.2524412908
170574	233	40	0.9360352531
170575	233	41	0.7695008046
170576	233	42	0.7645060113
170577	233	1	0.1403451171
170578	233	2	0.4754269775
170579	233	14	0.0646626563
170580	233	15	0.7482448886
170581	233	16	0.2624346437
170582	233	17	0.9014131213
170583	233	3	0.6879528211
170584	233	70	0.0055875378
170585	233	6	0.1208339934
170586	233	4	0.8750043022
170587	233	7	0.6325613842
170588	233	18	0.7973146033
170589	233	19	0.1589000816
170590	233	8	0.1955796615
170591	233	9	0.9914955227
170592	233	10	0.0323935738
170593	233	11	0.0085477484
170594	233	12	0.4640028104
170595	233	13	0.5208627945
170596	233	20	0.7707824707
170597	233	21	0.1259230808
170598	233	22	0.0530435052
170599	233	23	0.6576694660
170600	233	24	0.7674645786
170601	233	25	0.4073732919
170602	233	26	0.2831584960
170603	233	27	0.2625624114
170604	233	28	0.6598145827
170605	233	29	0.2191937491
170606	233	30	0.0320632160
170607	233	31	0.4243205944
170608	233	32	0.3595388662
170609	233	33	0.5074901939
170610	233	34	0.4889832507
170611	233	35	0.1077837548
170612	233	37	0.7699248376
170613	233	45	0.3903963724
170614	233	46	0.7957365764
170615	233	47	0.7755123759
170616	233	48	0.5112303658
170617	233	49	0.6707408787
170618	233	50	0.4080737601
170619	233	52	0.3085449692
170620	233	53	0.8296409603
170621	233	54	0.6036534216
170622	233	56	0.3000404919
170623	233	57	0.8620345346
170624	233	59	0.6122011701
170625	233	62	0.7640433023
170626	233	63	0.3828973291
170627	233	64	0.3829836412
170628	233	68	0.8899663831
170629	233	69	0.4359408347
170630	233	72	0.0406531072
170631	233	77	0.6574309617
170632	233	5	0.8433141266
170633	233	43	0.3238116037
170634	233	44	0.9199933736
170635	233	55	0.5031287093
170636	233	58	0.5430053528
170637	233	60	0.9520565895
170638	233	61	0.9274493037
170639	233	65	0.9025442195
170640	233	66	0.4595467835
170641	233	67	0.4164325548
170642	233	71	0.0103279743
170643	233	73	0.2294716216
170644	233	74	0.8068289272
170645	233	75	0.8060645508
170646	233	76	0.0049839974
\.


--
-- TOC entry 4268 (class 0 OID 1055894)
-- Dependencies: 255
-- Data for Name: npc_profession; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.npc_profession (id, npc, profession, business) FROM stdin;
3	25	2	\N
4	47	2	\N
5	88	2	\N
6	101	2	\N
7	102	2	\N
8	122	2	\N
9	138	2	\N
10	176	2	\N
11	179	2	\N
12	2	3	25
13	34	3	26
14	143	3	24
15	18	4	6
16	69	4	5
17	123	4	4
18	49	5	9
19	151	5	10
20	68	6	14
21	142	6	14
22	163	6	\N
23	196	6	14
24	60	7	30
25	104	7	31
26	119	7	29
27	160	7	28
28	8	8	63
29	129	8	62
30	170	8	60
31	184	8	61
32	86	9	\N
33	147	9	\N
34	54	10	51
35	153	11	4
36	172	11	5
37	188	11	6
38	57	12	27
39	66	12	27
40	115	12	27
41	148	12	27
42	197	12	27
43	63	13	67
44	81	13	66
45	171	13	65
46	1	15	19
47	6	15	19
48	10	15	19
49	14	15	19
50	17	15	19
51	19	15	19
52	24	15	19
53	31	15	19
54	42	15	19
55	48	15	19
56	52	15	19
57	58	15	19
58	67	15	19
59	73	15	19
60	99	15	19
61	100	15	19
62	133	15	19
63	139	15	19
64	140	15	19
65	155	15	19
66	164	15	19
67	174	15	19
68	177	15	19
69	187	15	19
70	191	15	19
71	39	14	51
72	69	14	51
73	104	14	51
74	112	14	51
75	123	14	51
76	134	14	51
77	190	14	51
78	197	14	51
79	75	16	21
80	94	16	22
81	120	16	23
82	85	17	\N
83	97	17	\N
84	109	17	\N
85	125	17	\N
86	165	17	\N
87	200	17	\N
88	82	18	58
89	35	19	7
90	98	19	8
91	93	21	52
92	152	21	53
93	183	21	54
94	30	25	64
95	45	25	64
96	112	25	64
97	135	25	64
98	27	23	68
99	80	23	68
100	105	23	69
101	154	23	69
102	2	26	63
103	117	26	62
104	189	26	60
105	190	26	61
106	43	27	28
107	65	27	29
108	91	27	30
109	141	27	31
110	72	28	\N
111	84	28	\N
112	96	28	\N
113	108	28	\N
114	110	28	\N
115	144	28	\N
116	9	29	57
117	16	29	1
118	74	29	\N
119	90	29	\N
120	150	29	55
121	169	29	2
122	186	29	55
123	199	29	57
124	77	30	11
125	162	30	12
126	194	30	13
127	22	31	50
128	106	31	50
129	83	32	27
130	181	32	27
131	192	32	27
132	7	33	\N
133	51	33	\N
134	62	33	\N
135	89	33	\N
136	146	33	\N
137	29	22	64
138	21	34	42
139	41	34	42
140	131	34	42
141	23	35	38
142	26	35	39
143	168	35	40
144	4	36	32
145	36	36	34
146	130	36	35
147	145	36	36
148	34	20	\N
149	40	20	\N
150	44	20	1
151	118	20	\N
152	166	20	2
153	195	20	\N
154	15	24	\N
155	132	24	\N
156	39	24	\N
157	156	24	\N
158	11	37	\N
159	53	37	\N
160	111	37	\N
161	149	37	\N
162	161	37	\N
163	185	37	\N
164	37	45	59
165	178	45	59
166	193	45	59
167	32	38	18
168	56	38	19
169	76	38	17
170	92	38	19
171	95	38	51
172	103	38	51
173	159	38	17
174	5	39	75
175	33	39	72
176	63	39	74
177	79	39	76
178	119	39	73
179	28	40	6
180	72	40	5
181	87	40	7
182	96	40	5
183	107	40	4
184	110	40	4
185	113	40	8
186	135	40	6
187	126	41	71
188	61	42	\N
189	70	42	\N
190	154	42	\N
191	3	43	\N
192	12	43	\N
193	13	43	\N
194	46	43	\N
195	55	43	\N
196	121	43	\N
197	124	43	\N
198	128	43	\N
199	157	43	\N
200	173	43	\N
201	38	44	43
202	64	44	49
203	78	44	44
204	114	44	47
205	116	44	41
206	127	44	48
207	137	44	70
208	175	44	45
209	180	44	46
210	198	44	16
211	64	46	\N
212	137	46	\N
213	158	46	\N
1	136	1	20
2	182	1	20
214	237	3	24
215	236	3	26
216	235	3	24
217	234	3	25
218	233	3	26
219	231	38	51
220	230	14	51
222	227	41	71
223	226	38	51
221	229	48	46
224	225	48	29
225	223	48	30
226	222	2	\N
227	221	33	\N
228	220	31	50
229	219	49	\N
\.


--
-- TOC entry 4262 (class 0 OID 1055875)
-- Dependencies: 249
-- Data for Name: oath; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.oath (id, name) FROM stdin;
1	Family
2	Hometown
3	Direct Superior
4	Racial Identity
5	Local Guild
6	Head of Church
7	Employer
8	Sibling
10	Direct Inferior
11	Loan Shark
12	Parent
13	Extended Family
14	Children
15	Doctor
16	Head of State
\.


--
-- TOC entry 4256 (class 0 OID 1055851)
-- Dependencies: 243
-- Data for Name: oath_nature; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.oath_nature (id, name) FROM stdin;
1	Monetary
2	Oath
3	Gratitude
4	Societal Pressure
5	Familial Pressure
6	Indenturehood
7	Fiendish Contract
8	Religious
9	Career requirement
10	Affair/Emotional Entanglement
\.


--
-- TOC entry 4276 (class 0 OID 5730034)
-- Dependencies: 263
-- Data for Name: predator_type; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.predator_type (id, name) FROM stdin;
1	Scene Queen
2	Sandman
3	Farmer
4	Osiris
5	Cleaver
6	Bagger
7	Alleycat
8	Consensualist
9	Siren
\.


--
-- TOC entry 4266 (class 0 OID 1055888)
-- Dependencies: 253
-- Data for Name: profession; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.profession (id, name) FROM stdin;
1	Advogado
2	Aposentado
3	Artista
4	Barman
5	Bibliotecário
6	Bombeiro
7	Camareira
8	Cozinheiro
9	Detetive
10	Diretor de Faculdade
11	DJ
12	Enfermeiro
13	Esteticista
14	Estudante faculdade
15	Estudante básico
16	Farmacêutico
17	Faxineiro de rua
18	Frentista
19	Funcionário de Banco
20	Piloto de Barco
21	Funcionário de Museu
22	Motorista de Ônibus
23	Funcionário de Supermercado
24	Piloto de Táxi
25	Funcionário de Rodoviária
26	Garçom
27	Gerente de Hotel
28	Guarda do Tráfico
29	Guia turístico
30	Locatário
31	Mecânico de Barco
32	Médico
33	Morador de rua
34	Operador de Máquina
35	Ourives
36	Padre
37	Policial
38	Professor
39	Prostituta
40	Segurança
41	Tatuador
43	Turista
44	Vendedor
45	Político
42	Transporte de Drogas Tráfico
46	Vendedor de Drogas Tráfico
48	Empresário
49	Criminoso
\.


--
-- TOC entry 4270 (class 0 OID 1055900)
-- Dependencies: 257
-- Data for Name: ressonance; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.ressonance (id, name) FROM stdin;
1	NONE
2	FLEETING
3	INTENSE
4	DYSCRASIA
\.


--
-- TOC entry 4244 (class 0 OID 1055815)
-- Dependencies: 231
-- Data for Name: skin_color; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.skin_color (id, color) FROM stdin;
1	Branco
2	Marrom
3	Mediterrâneo
4	Cinza
\.


--
-- TOC entry 4280 (class 0 OID 5730190)
-- Dependencies: 267
-- Data for Name: vampire; Type: TABLE DATA; Schema: public; Owner: wltzyxhf
--

COPY public.vampire (id, generation, clan, predator_type) FROM stdin;
201	4	1	1
202	5	2	1
203	8	3	2
204	8	2	1
205	8	4	3
206	9	5	4
207	9	3	5
208	9	4	6
209	9	6	6
210	9	7	7
211	9	8	8
212	9	4	3
213	10	7	7
214	11	5	4
215	11	8	1
216	11	10	7
217	11	11	7
218	11	2	7
219	11	3	7
220	11	7	5
221	11	4	7
222	11	11	3
223	11	11	9
224	11	4	2
225	12	2	6
226	12	8	1
227	12	3	8
228	13	11	9
229	13	8	2
230	13	5	9
231	13	6	1
232	12	4	6
233	12	2	3
234	12	2	6
235	12	2	9
236	12	2	5
237	12	2	3
\.


--
-- TOC entry 4309 (class 0 OID 0)
-- Dependencies: 222
-- Name: bairro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.bairro_id_seq', 6, true);


--
-- TOC entry 4310 (class 0 OID 0)
-- Dependencies: 264
-- Name: clan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.clan_id_seq', 1, false);


--
-- TOC entry 4311 (class 0 OID 0)
-- Dependencies: 224
-- Name: cliente_negocio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.cliente_negocio_id_seq', 59, true);


--
-- TOC entry 4312 (class 0 OID 0)
-- Dependencies: 226
-- Name: cor_cabelo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.cor_cabelo_id_seq', 5, true);


--
-- TOC entry 4313 (class 0 OID 0)
-- Dependencies: 228
-- Name: cor_olhos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.cor_olhos_id_seq', 6, true);


--
-- TOC entry 4314 (class 0 OID 0)
-- Dependencies: 230
-- Name: cor_pele_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.cor_pele_id_seq', 3, true);


--
-- TOC entry 4315 (class 0 OID 0)
-- Dependencies: 232
-- Name: familia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.familia_id_seq', 40, true);


--
-- TOC entry 4316 (class 0 OID 0)
-- Dependencies: 234
-- Name: humor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.humor_id_seq', 1, false);


--
-- TOC entry 4317 (class 0 OID 0)
-- Dependencies: 236
-- Name: instinto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.instinto_id_seq', 35, true);


--
-- TOC entry 4318 (class 0 OID 0)
-- Dependencies: 238
-- Name: moradia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.moradia_id_seq', 40, true);


--
-- TOC entry 4319 (class 0 OID 0)
-- Dependencies: 240
-- Name: nacionalidade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.nacionalidade_id_seq', 12, true);


--
-- TOC entry 4320 (class 0 OID 0)
-- Dependencies: 242
-- Name: natureza_obrigacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.natureza_obrigacao_id_seq', 10, true);


--
-- TOC entry 4321 (class 0 OID 0)
-- Dependencies: 244
-- Name: negocio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.negocio_id_seq', 1, true);


--
-- TOC entry 4322 (class 0 OID 0)
-- Dependencies: 246
-- Name: npc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.npc_id_seq', 1, false);


--
-- TOC entry 4323 (class 0 OID 0)
-- Dependencies: 248
-- Name: obrigacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.obrigacao_id_seq', 16, true);


--
-- TOC entry 4324 (class 0 OID 0)
-- Dependencies: 262
-- Name: predator_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.predator_type_id_seq', 1, false);


--
-- TOC entry 4325 (class 0 OID 0)
-- Dependencies: 250
-- Name: preferencias_npcs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.preferencias_npcs_id_seq', 170646, true);


--
-- TOC entry 4326 (class 0 OID 0)
-- Dependencies: 252
-- Name: profissao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.profissao_id_seq', 45, true);


--
-- TOC entry 4327 (class 0 OID 0)
-- Dependencies: 254
-- Name: profissao_npc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.profissao_npc_id_seq', 229, true);


--
-- TOC entry 4328 (class 0 OID 0)
-- Dependencies: 256
-- Name: ressonancia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.ressonancia_id_seq', 1, false);


--
-- TOC entry 4329 (class 0 OID 0)
-- Dependencies: 258
-- Name: sexo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.sexo_id_seq', 2, true);


--
-- TOC entry 4330 (class 0 OID 0)
-- Dependencies: 260
-- Name: tipo_negocio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.tipo_negocio_id_seq', 110, true);


--
-- TOC entry 4331 (class 0 OID 0)
-- Dependencies: 266
-- Name: vampiro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: wltzyxhf
--

SELECT pg_catalog.setval('public.vampiro_id_seq', 1, false);


--
-- TOC entry 4061 (class 2606 OID 1055942)
-- Name: business business_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.business
    ADD CONSTRAINT business_pkey PRIMARY KEY (id);


--
-- TOC entry 4041 (class 2606 OID 1055922)
-- Name: business_rules business_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.business_rules
    ADD CONSTRAINT business_rules_pkey PRIMARY KEY (id);


--
-- TOC entry 4077 (class 2606 OID 1055958)
-- Name: business_type business_type_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.business_type
    ADD CONSTRAINT business_type_pkey PRIMARY KEY (id);


--
-- TOC entry 4081 (class 2606 OID 5730048)
-- Name: clan clan_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.clan
    ADD CONSTRAINT clan_pkey PRIMARY KEY (id);


--
-- TOC entry 4045 (class 2606 OID 1055926)
-- Name: eye_color eye_color_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.eye_color
    ADD CONSTRAINT eye_color_pkey PRIMARY KEY (id);


--
-- TOC entry 4049 (class 2606 OID 1055930)
-- Name: family family_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.family
    ADD CONSTRAINT family_pkey PRIMARY KEY (id);


--
-- TOC entry 4075 (class 2606 OID 1055956)
-- Name: gender gender_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.gender
    ADD CONSTRAINT gender_pkey PRIMARY KEY (id);


--
-- TOC entry 4043 (class 2606 OID 1055924)
-- Name: hair_color hair_color_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.hair_color
    ADD CONSTRAINT hair_color_pkey PRIMARY KEY (id);


--
-- TOC entry 4055 (class 2606 OID 1055936)
-- Name: home home_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_pkey PRIMARY KEY (id);


--
-- TOC entry 4051 (class 2606 OID 1055932)
-- Name: humor humor_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.humor
    ADD CONSTRAINT humor_pkey PRIMARY KEY (id);


--
-- TOC entry 4053 (class 2606 OID 1055934)
-- Name: instinct instinct_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.instinct
    ADD CONSTRAINT instinct_pkey PRIMARY KEY (id);


--
-- TOC entry 4057 (class 2606 OID 1055938)
-- Name: nationality nationality_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.nationality
    ADD CONSTRAINT nationality_pkey PRIMARY KEY (id);


--
-- TOC entry 4039 (class 2606 OID 1055920)
-- Name: neighbourhood neighbourhood_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.neighbourhood
    ADD CONSTRAINT neighbourhood_pkey PRIMARY KEY (id);


--
-- TOC entry 4063 (class 2606 OID 1055944)
-- Name: npc npc_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_pkey PRIMARY KEY (id);


--
-- TOC entry 4067 (class 2606 OID 1055948)
-- Name: npc_preferences npc_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc_preferences
    ADD CONSTRAINT npc_preferences_pkey PRIMARY KEY (id);


--
-- TOC entry 4071 (class 2606 OID 1055950)
-- Name: npc_profession npc_profession_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc_profession
    ADD CONSTRAINT npc_profession_pkey PRIMARY KEY (id);


--
-- TOC entry 4059 (class 2606 OID 1055940)
-- Name: oath_nature oath_nature_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.oath_nature
    ADD CONSTRAINT oath_nature_pkey PRIMARY KEY (id);


--
-- TOC entry 4065 (class 2606 OID 1055946)
-- Name: oath oath_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.oath
    ADD CONSTRAINT oath_pkey PRIMARY KEY (id);


--
-- TOC entry 4079 (class 2606 OID 5730039)
-- Name: predator_type predator_type_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.predator_type
    ADD CONSTRAINT predator_type_pkey PRIMARY KEY (id);


--
-- TOC entry 4069 (class 2606 OID 1055952)
-- Name: profession profession_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.profession
    ADD CONSTRAINT profession_pkey PRIMARY KEY (id);


--
-- TOC entry 4073 (class 2606 OID 1055954)
-- Name: ressonance ressonance_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.ressonance
    ADD CONSTRAINT ressonance_pkey PRIMARY KEY (id);


--
-- TOC entry 4047 (class 2606 OID 1055928)
-- Name: skin_color skin_color_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.skin_color
    ADD CONSTRAINT skin_color_pkey PRIMARY KEY (id);


--
-- TOC entry 4083 (class 2606 OID 5730195)
-- Name: vampire vampire_pkey; Type: CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.vampire
    ADD CONSTRAINT vampire_pkey PRIMARY KEY (id);


--
-- TOC entry 4091 (class 2606 OID 1055999)
-- Name: business business_business_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.business
    ADD CONSTRAINT business_business_type_fkey FOREIGN KEY (business_type) REFERENCES public.business_type(id);


--
-- TOC entry 4092 (class 2606 OID 1055994)
-- Name: business business_neighbourhood_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.business
    ADD CONSTRAINT business_neighbourhood_fkey FOREIGN KEY (neighbourhood) REFERENCES public.neighbourhood(id);


--
-- TOC entry 4085 (class 2606 OID 1055969)
-- Name: business_rules business_rules_location_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.business_rules
    ADD CONSTRAINT business_rules_location_fkey FOREIGN KEY (business) REFERENCES public.business(id);


--
-- TOC entry 4088 (class 2606 OID 1055964)
-- Name: business_rules business_rules_withgender_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.business_rules
    ADD CONSTRAINT business_rules_withgender_fkey FOREIGN KEY (withgender) REFERENCES public.gender(id);


--
-- TOC entry 4087 (class 2606 OID 1055979)
-- Name: business_rules business_rules_without_gender_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.business_rules
    ADD CONSTRAINT business_rules_without_gender_fkey FOREIGN KEY (withoutgender) REFERENCES public.gender(id);


--
-- TOC entry 4086 (class 2606 OID 1055974)
-- Name: business_rules business_rules_without_profession_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.business_rules
    ADD CONSTRAINT business_rules_without_profession_fkey FOREIGN KEY (withoutprofession) REFERENCES public.profession(id);


--
-- TOC entry 4084 (class 2606 OID 1055959)
-- Name: business_rules business_rules_withprofession_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.business_rules
    ADD CONSTRAINT business_rules_withprofession_fkey FOREIGN KEY (withprofession) REFERENCES public.profession(id);


--
-- TOC entry 4090 (class 2606 OID 1055989)
-- Name: home home_neighbourhood_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_neighbourhood_fkey FOREIGN KEY (neighbourhood) REFERENCES public.neighbourhood(id);


--
-- TOC entry 4089 (class 2606 OID 1055984)
-- Name: instinct instinct_humor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.instinct
    ADD CONSTRAINT instinct_humor_fkey FOREIGN KEY (humor) REFERENCES public.humor(id);


--
-- TOC entry 4100 (class 2606 OID 1056044)
-- Name: npc npc_eyes_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_eyes_fkey FOREIGN KEY (eyes) REFERENCES public.eye_color(id);


--
-- TOC entry 4095 (class 2606 OID 1056014)
-- Name: npc npc_family_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_family_fkey FOREIGN KEY (family) REFERENCES public.family(id);


--
-- TOC entry 4103 (class 2606 OID 1056059)
-- Name: npc npc_gender_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_gender_fkey FOREIGN KEY (gender) REFERENCES public.gender(id);


--
-- TOC entry 4094 (class 2606 OID 1056009)
-- Name: npc npc_hair_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_hair_fkey FOREIGN KEY (hair) REFERENCES public.hair_color(id);


--
-- TOC entry 4097 (class 2606 OID 1056024)
-- Name: npc npc_home_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_home_fkey FOREIGN KEY (home) REFERENCES public.home(id);


--
-- TOC entry 4096 (class 2606 OID 1056019)
-- Name: npc npc_instinct_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_instinct_fkey FOREIGN KEY (instinct) REFERENCES public.instinct(id);


--
-- TOC entry 4104 (class 2606 OID 1056029)
-- Name: npc npc_nationality_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_nationality_fkey FOREIGN KEY (nationality) REFERENCES public.nationality(id);


--
-- TOC entry 4093 (class 2606 OID 1056004)
-- Name: npc npc_neighbourhood_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_neighbourhood_fkey FOREIGN KEY (neighbourhood) REFERENCES public.neighbourhood(id);


--
-- TOC entry 4099 (class 2606 OID 1056039)
-- Name: npc npc_oath_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_oath_fkey FOREIGN KEY (oath) REFERENCES public.oath(id);


--
-- TOC entry 4098 (class 2606 OID 1056034)
-- Name: npc npc_oath_nature_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_oath_nature_fkey FOREIGN KEY (oath_nature) REFERENCES public.oath_nature(id);


--
-- TOC entry 4105 (class 2606 OID 1056064)
-- Name: npc_preferences npc_preferences_business_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc_preferences
    ADD CONSTRAINT npc_preferences_business_fkey FOREIGN KEY (business) REFERENCES public.business(id);


--
-- TOC entry 4106 (class 2606 OID 1056069)
-- Name: npc_preferences npc_preferences_npc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc_preferences
    ADD CONSTRAINT npc_preferences_npc_fkey FOREIGN KEY (npc) REFERENCES public.npc(id);


--
-- TOC entry 4107 (class 2606 OID 1056074)
-- Name: npc_profession npc_profession_business_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc_profession
    ADD CONSTRAINT npc_profession_business_fkey FOREIGN KEY (business) REFERENCES public.business(id);


--
-- TOC entry 4108 (class 2606 OID 1056079)
-- Name: npc_profession npc_profession_npc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc_profession
    ADD CONSTRAINT npc_profession_npc_fkey FOREIGN KEY (npc) REFERENCES public.npc(id);


--
-- TOC entry 4109 (class 2606 OID 1056084)
-- Name: npc_profession npc_profession_profession_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc_profession
    ADD CONSTRAINT npc_profession_profession_fkey FOREIGN KEY (profession) REFERENCES public.profession(id);


--
-- TOC entry 4102 (class 2606 OID 1056054)
-- Name: npc npc_ressonance_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_ressonance_fkey FOREIGN KEY (ressonance) REFERENCES public.ressonance(id);


--
-- TOC entry 4101 (class 2606 OID 1056049)
-- Name: npc npc_skin_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.npc
    ADD CONSTRAINT npc_skin_fkey FOREIGN KEY (skin) REFERENCES public.skin_color(id);


--
-- TOC entry 4110 (class 2606 OID 5730201)
-- Name: vampire vampire_clan_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.vampire
    ADD CONSTRAINT vampire_clan_fkey FOREIGN KEY (clan) REFERENCES public.clan(id);


--
-- TOC entry 4111 (class 2606 OID 5730196)
-- Name: vampire vampire_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.vampire
    ADD CONSTRAINT vampire_id_fkey FOREIGN KEY (id) REFERENCES public.npc(id);


--
-- TOC entry 4112 (class 2606 OID 5730206)
-- Name: vampire vampire_predator_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wltzyxhf
--

ALTER TABLE ONLY public.vampire
    ADD CONSTRAINT vampire_predator_type_fkey FOREIGN KEY (predator_type) REFERENCES public.predator_type(id);


--
-- TOC entry 4287 (class 0 OID 0)
-- Dependencies: 4286
-- Name: DATABASE wltzyxhf; Type: ACL; Schema: -; Owner: wltzyxhf
--

REVOKE CONNECT,TEMPORARY ON DATABASE wltzyxhf FROM PUBLIC;


-- Completed on 2020-08-23 15:26:29 UTC

--
-- PostgreSQL database dump complete
--

