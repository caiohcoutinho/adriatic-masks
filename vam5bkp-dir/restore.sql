--
-- NOTE:
--
-- File paths need to be edited. Search for /home/caio/vam5bkp-dir and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Debian 11.5-1.pgdg90+1)
-- Dumped by pg_dump version 11.3

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

DROP DATABASE vam5;
--
-- Name: vam5; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE vam5 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE vam5 OWNER TO postgres;

\connect vam5

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
-- Data for Name: bairro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bairro (id, nome) FROM stdin;
\.
COPY public.bairro (id, nome) FROM '/home/caio/vam5bkp-dir/3072.dat';

--
-- Data for Name: cliente_negocio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente_negocio (id, negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) FROM stdin;
\.
COPY public.cliente_negocio (id, negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) FROM '/home/caio/vam5bkp-dir/3094.dat';

--
-- Data for Name: cor_cabelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cor_cabelo (id, cor) FROM stdin;
\.
COPY public.cor_cabelo (id, cor) FROM '/home/caio/vam5bkp-dir/3070.dat';

--
-- Data for Name: cor_olhos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cor_olhos (id, cor) FROM stdin;--
-- NOTE:
--
-- File paths need to be edited. Search for /home/caio/vam5bkp-dir and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Debian 11.5-1.pgdg90+1)
-- Dumped by pg_dump version 11.3

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

DROP DATABASE vam5;
--
-- Name: vam5; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE vam5 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE vam5 OWNER TO postgres;

\connect vam5

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
-- Data for Name: bairro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bairro (id, nome) FROM stdin;
\.
COPY public.bairro (id, nome) FROM '/home/caio/vam5bkp-dir/3072.dat';

--
-- Data for Name: cliente_negocio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente_negocio (id, negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) FROM stdin;
\.
COPY public.cliente_negocio (id, negocio, comprofissao, semprofissao, idademaior, idademenor, riquezamaior, riquezamenor, comsexo, semsexo, mesmobairro, modificador) FROM '/home/caio/vam5bkp-dir/3094.dat';

--
-- Data for Name: cor_cabelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cor_cabelo (id, cor) FROM stdin;
\.
COPY public.cor_cabelo (id, cor) FROM '/home/caio/vam5bkp-dir/3070.dat';

--
-- Data for Name: cor_olhos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cor_olhos (id, cor) FROM stdin;
\.
COPY public.cor_olhos (id, cor) FROM '/home/caio/vam5bkp-dir/3068.dat';

--
-- Data for Name: cor_pele; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cor_pele (id, cor) FROM stdin;
\.
COPY public.cor_pele (id, cor) FROM '/home/caio/vam5bkp-dir/3076.dat';

--
-- Data for Name: familia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.familia (id, nome) FROM stdin;
\.
COPY public.familia (id, nome) FROM '/home/caio/vam5bkp-dir/3088.dat';

--
-- Data for Name: humor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.humor (id, nome) FROM stdin;
\.
COPY public.humor (id, nome) FROM '/home/caio/vam5bkp-dir/3100.dat';

--
-- Data for Name: instinto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instinto (id, nome, humor) FROM stdin;
\.
COPY public.instinto (id, nome, humor) FROM '/home/caio/vam5bkp-dir/3080.dat';

--
-- Data for Name: moradia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.moradia (id, nome, bairro) FROM stdin;
\.
COPY public.moradia (id, nome, bairro) FROM '/home/caio/vam5bkp-dir/3078.dat';

--
-- Data for Name: nacionalidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nacionalidade (id, nome) FROM stdin;
\.
COPY public.nacionalidade (id, nome) FROM '/home/caio/vam5bkp-dir/3066.dat';

--
-- Data for Name: natureza_obrigacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.natureza_obrigacao (id, nome) FROM stdin;
\.
COPY public.natureza_obrigacao (id, nome) FROM '/home/caio/vam5bkp-dir/3084.dat';

--
-- Data for Name: negocio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.negocio (id, nome, tipo_negocio, bairro, n1, n2, n3) FROM stdin;
\.
COPY public.negocio (id, nome, tipo_negocio, bairro, n1, n2, n3) FROM '/home/caio/vam5bkp-dir/3096.dat';

--
-- Data for Name: npc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.npc (id, nome, sexo, nacionalidade, idade, apelido, pele, olhos, cabelo, bairro, fisico, social, mental, familia, moradia, instinto, obrigacao, natureza_obrigacao, seed_apelido, seed_idade, seed_olhos, seed_cabelo, seed_bairro, seed_fisico, seed_social, seed_mental, seed_instinto, seed_obrigacao, seed_natureza_obrigacao, notas, recursos, saude, saude_max, ressonancia, descricao) FROM stdin;
\.
COPY public.npc (id, nome, sexo, nacionalidade, idade, apelido, pele, olhos, cabelo, bairro, fisico, social, mental, familia, moradia, instinto, obrigacao, natureza_obrigacao, seed_apelido, seed_idade, seed_olhos, seed_cabelo, seed_bairro, seed_fisico, seed_social, seed_mental, seed_instinto, seed_obrigacao, seed_natureza_obrigacao, notas, recursos, saude, saude_max, ressonancia, descricao) FROM '/home/caio/vam5bkp-dir/3090.dat';

--
-- Data for Name: obrigacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.obrigacao (id, nome) FROM stdin;
\.
COPY public.obrigacao (id, nome) FROM '/home/caio/vam5bkp-dir/3082.dat';

--
-- Data for Name: preferencias_npcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.preferencias_npcs (id, npc, negocio, seed) FROM stdin;
\.
COPY public.preferencias_npcs (id, npc, negocio, seed) FROM '/home/caio/vam5bkp-dir/3092.dat';

--
-- Data for Name: profissao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profissao (id, nome) FROM stdin;
\.
COPY public.profissao (id, nome) FROM '/home/caio/vam5bkp-dir/3074.dat';

--
-- Data for Name: profissao_npc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profissao_npc (id, npc, profissao, negocio) FROM stdin;
\.
COPY public.profissao_npc (id, npc, profissao, negocio) FROM '/home/caio/vam5bkp-dir/3098.dat';

--
-- Data for Name: ressonancia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ressonancia (id, nome) FROM stdin;
\.
COPY public.ressonancia (id, nome) FROM '/home/caio/vam5bkp-dir/3102.dat';

--
-- Data for Name: sexo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sexo (id, sexo, sigla) FROM stdin;
\.
COPY public.sexo (id, sexo, sigla) FROM '/home/caio/vam5bkp-dir/3064.dat';

--
-- Data for Name: tipo_negocio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_negocio (id, nome) FROM stdin;
\.
COPY public.tipo_negocio (id, nome) FROM '/home/caio/vam5bkp-dir/3086.dat';

--
-- Name: bairro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bairro_id_seq', 6, true);


--
-- Name: cliente_negocio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_negocio_id_seq', 59, true);


--
-- Name: cor_cabelo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cor_cabelo_id_seq', 5, true);


--
-- Name: cor_olhos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cor_olhos_id_seq', 6, true);


--
-- Name: cor_pele_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cor_pele_id_seq', 3, true);


--
-- Name: familia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.familia_id_seq', 40, true);


--
-- Name: humor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.humor_id_seq', 1, false);


--
-- Name: instinto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instinto_id_seq', 35, true);


--
-- Name: moradia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moradia_id_seq', 40, true);


--
-- Name: nacionalidade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nacionalidade_id_seq', 12, true);


--
-- Name: natureza_obrigacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.natureza_obrigacao_id_seq', 10, true);


--
-- Name: negocio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.negocio_id_seq', 1, false);


--
-- Name: npc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.npc_id_seq', 1, false);


--
-- Name: obrigacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.obrigacao_id_seq', 16, true);


--
-- Name: preferencias_npcs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.preferencias_npcs_id_seq', 14200, true);


--
-- Name: profissao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profissao_id_seq', 44, true);


--
-- Name: profissao_npc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profissao_npc_id_seq', 213, true);


--
-- Name: ressonancia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ressonancia_id_seq', 1, false);


--
-- Name: sexo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sexo_id_seq', 2, true);


--
-- Name: tipo_negocio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_negocio_id_seq', 110, true);


--
-- PostgreSQL database dump complete
--


\.
COPY public.cor_olhos (id, cor) FROM '/home/caio/vam5bkp-dir/3068.dat';

--
-- Data for Name: cor_pele; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cor_pele (id, cor) FROM stdin;
\.
COPY public.cor_pele (id, cor) FROM '/home/caio/vam5bkp-dir/3076.dat';

--
-- Data for Name: familia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.familia (id, nome) FROM stdin;
\.
COPY public.familia (id, nome) FROM '/home/caio/vam5bkp-dir/3088.dat';

--
-- Data for Name: humor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.humor (id, nome) FROM stdin;
\.
COPY public.humor (id, nome) FROM '/home/caio/vam5bkp-dir/3100.dat';

--
-- Data for Name: instinto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instinto (id, nome, humor) FROM stdin;
\.
COPY public.instinto (id, nome, humor) FROM '/home/caio/vam5bkp-dir/3080.dat';

--
-- Data for Name: moradia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.moradia (id, nome, bairro) FROM stdin;
\.
COPY public.moradia (id, nome, bairro) FROM '/home/caio/vam5bkp-dir/3078.dat';

--
-- Data for Name: nacionalidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nacionalidade (id, nome) FROM stdin;
\.
COPY public.nacionalidade (id, nome) FROM '/home/caio/vam5bkp-dir/3066.dat';

--
-- Data for Name: natureza_obrigacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.natureza_obrigacao (id, nome) FROM stdin;
\.
COPY public.natureza_obrigacao (id, nome) FROM '/home/caio/vam5bkp-dir/3084.dat';

--
-- Data for Name: negocio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.negocio (id, nome, tipo_negocio, bairro, n1, n2, n3) FROM stdin;
\.
COPY public.negocio (id, nome, tipo_negocio, bairro, n1, n2, n3) FROM '/home/caio/vam5bkp-dir/3096.dat';

--
-- Data for Name: npc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.npc (id, nome, sexo, nacionalidade, idade, apelido, pele, olhos, cabelo, bairro, fisico, social, mental, familia, moradia, instinto, obrigacao, natureza_obrigacao, seed_apelido, seed_idade, seed_olhos, seed_cabelo, seed_bairro, seed_fisico, seed_social, seed_mental, seed_instinto, seed_obrigacao, seed_natureza_obrigacao, notas, recursos, saude, saude_max, ressonancia, descricao) FROM stdin;
\.
COPY public.npc (id, nome, sexo, nacionalidade, idade, apelido, pele, olhos, cabelo, bairro, fisico, social, mental, familia, moradia, instinto, obrigacao, natureza_obrigacao, seed_apelido, seed_idade, seed_olhos, seed_cabelo, seed_bairro, seed_fisico, seed_social, seed_mental, seed_instinto, seed_obrigacao, seed_natureza_obrigacao, notas, recursos, saude, saude_max, ressonancia, descricao) FROM '/home/caio/vam5bkp-dir/3090.dat';

--
-- Data for Name: obrigacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.obrigacao (id, nome) FROM stdin;
\.
COPY public.obrigacao (id, nome) FROM '/home/caio/vam5bkp-dir/3082.dat';

--
-- Data for Name: preferencias_npcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.preferencias_npcs (id, npc, negocio, seed) FROM stdin;
\.
COPY public.preferencias_npcs (id, npc, negocio, seed) FROM '/home/caio/vam5bkp-dir/3092.dat';

--
-- Data for Name: profissao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profissao (id, nome) FROM stdin;
\.
COPY public.profissao (id, nome) FROM '/home/caio/vam5bkp-dir/3074.dat';

--
-- Data for Name: profissao_npc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profissao_npc (id, npc, profissao, negocio) FROM stdin;
\.
COPY public.profissao_npc (id, npc, profissao, negocio) FROM '/home/caio/vam5bkp-dir/3098.dat';

--
-- Data for Name: ressonancia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ressonancia (id, nome) FROM stdin;
\.
COPY public.ressonancia (id, nome) FROM '/home/caio/vam5bkp-dir/3102.dat';

--
-- Data for Name: sexo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sexo (id, sexo, sigla) FROM stdin;
\.
COPY public.sexo (id, sexo, sigla) FROM '/home/caio/vam5bkp-dir/3064.dat';

--
-- Data for Name: tipo_negocio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_negocio (id, nome) FROM stdin;
\.
COPY public.tipo_negocio (id, nome) FROM '/home/caio/vam5bkp-dir/3086.dat';

--
-- Name: bairro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bairro_id_seq', 6, true);


--
-- Name: cliente_negocio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_negocio_id_seq', 59, true);


--
-- Name: cor_cabelo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cor_cabelo_id_seq', 5, true);


--
-- Name: cor_olhos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cor_olhos_id_seq', 6, true);


--
-- Name: cor_pele_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cor_pele_id_seq', 3, true);


--
-- Name: familia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.familia_id_seq', 40, true);


--
-- Name: humor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.humor_id_seq', 1, false);


--
-- Name: instinto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instinto_id_seq', 35, true);


--
-- Name: moradia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moradia_id_seq', 40, true);


--
-- Name: nacionalidade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nacionalidade_id_seq', 12, true);


--
-- Name: natureza_obrigacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.natureza_obrigacao_id_seq', 10, true);


--
-- Name: negocio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.negocio_id_seq', 1, false);


--
-- Name: npc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.npc_id_seq', 1, false);


--
-- Name: obrigacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.obrigacao_id_seq', 16, true);


--
-- Name: preferencias_npcs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.preferencias_npcs_id_seq', 14200, true);


--
-- Name: profissao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profissao_id_seq', 44, true);


--
-- Name: profissao_npc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profissao_npc_id_seq', 213, true);


--
-- Name: ressonancia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ressonancia_id_seq', 1, false);


--
-- Name: sexo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sexo_id_seq', 2, true);


--
-- Name: tipo_negocio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_negocio_id_seq', 110, true);


--
-- PostgreSQL database dump complete
--

