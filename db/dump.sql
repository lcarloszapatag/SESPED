--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: acadmics_prof; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE acadmics_prof (
    id_acadmics integer NOT NULL,
    pre_acadmics character varying(50),
    post_acadmics character varying(50),
    prom_acadmics date,
    univ_acadmics_pre character varying(100),
    id_prof integer,
    pre_acadmics_tit character varying NOT NULL,
    post_acadmics_tit character varying,
    univ_acadmics_post character varying(100),
    pre_acadmics_valor integer NOT NULL,
    post_acadmics_valor integer
);


ALTER TABLE public.acadmics_prof OWNER TO postgres;

--
-- Name: TABLE acadmics_prof; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE acadmics_prof IS 'datos academicos del profesional';


--
-- Name: COLUMN acadmics_prof.pre_acadmics; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN acadmics_prof.pre_acadmics IS 'estudios de pregrado';


--
-- Name: COLUMN acadmics_prof.post_acadmics; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN acadmics_prof.post_acadmics IS 'estudios de postgrado';


--
-- Name: COLUMN acadmics_prof.prom_acadmics; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN acadmics_prof.prom_acadmics IS 'anio de promocion del profesional';


--
-- Name: COLUMN acadmics_prof.univ_acadmics_pre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN acadmics_prof.univ_acadmics_pre IS 'universidad donde estudio';


--
-- Name: acadmics_prof_id_acadmics_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE acadmics_prof_id_acadmics_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acadmics_prof_id_acadmics_seq OWNER TO postgres;

--
-- Name: acadmics_prof_id_acadmics_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE acadmics_prof_id_acadmics_seq OWNED BY acadmics_prof.id_acadmics;


--
-- Name: actuacion_prof; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE actuacion_prof (
    id_act integer NOT NULL,
    curs_act character varying,
    tall_act character varying,
    rec_act character varying,
    form_act character varying,
    even_act character varying,
    tri_act character varying,
    proy_sc_act character varying,
    id_prof integer
);


ALTER TABLE public.actuacion_prof OWNER TO postgres;

--
-- Name: TABLE actuacion_prof; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE actuacion_prof IS 'relacionado al area de conocimiento';


--
-- Name: COLUMN actuacion_prof.curs_act; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN actuacion_prof.curs_act IS 'cursos recibidos';


--
-- Name: COLUMN actuacion_prof.tall_act; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN actuacion_prof.tall_act IS 'talleres recibidos';


--
-- Name: COLUMN actuacion_prof.rec_act; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN actuacion_prof.rec_act IS 'reconocimientos obtenidos';


--
-- Name: COLUMN actuacion_prof.form_act; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN actuacion_prof.form_act IS 'formacion de talentos';


--
-- Name: COLUMN actuacion_prof.even_act; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN actuacion_prof.even_act IS 'evento asistidos o participados';


--
-- Name: COLUMN actuacion_prof.tri_act; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN actuacion_prof.tri_act IS 'trabajo de investigacion realizado';


--
-- Name: COLUMN actuacion_prof.proy_sc_act; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN actuacion_prof.proy_sc_act IS 'proyectos socio comunitarios';


--
-- Name: actuacion_prof_id_act_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE actuacion_prof_id_act_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actuacion_prof_id_act_seq OWNER TO postgres;

--
-- Name: actuacion_prof_id_act_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE actuacion_prof_id_act_seq OWNED BY actuacion_prof.id_act;


--
-- Name: dp_prof; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE dp_prof (
    id_prof integer NOT NULL,
    nom_prof character varying(50),
    apel_prof character varying(50),
    ci_prof integer NOT NULL,
    email_prof character varying(30),
    fn_prof date,
    ecivil_prof character varying(10),
    grpf_prof character varying(100),
    dir_prof character varying(500),
    tlf_prof numeric,
    tlf2_prof integer
);


ALTER TABLE public.dp_prof OWNER TO postgres;

--
-- Name: TABLE dp_prof; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE dp_prof IS 'datos personales del profesional';


--
-- Name: dp_prof_id_prof_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE dp_prof_id_prof_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dp_prof_id_prof_seq OWNER TO postgres;

--
-- Name: dp_prof_id_prof_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dp_prof_id_prof_seq OWNED BY dp_prof.id_prof;


--
-- Name: exp_laboral_prof; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE exp_laboral_prof (
    id_exp integer NOT NULL,
    inst_exp character varying(50),
    anios_servc_exp integer,
    cargo_exp character varying(50),
    des_cargo_exp character varying(500),
    id_prof integer
);


ALTER TABLE public.exp_laboral_prof OWNER TO postgres;

--
-- Name: COLUMN exp_laboral_prof.inst_exp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN exp_laboral_prof.inst_exp IS 'instituto u organizacion';


--
-- Name: COLUMN exp_laboral_prof.anios_servc_exp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN exp_laboral_prof.anios_servc_exp IS 'anios de servicio';


--
-- Name: COLUMN exp_laboral_prof.cargo_exp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN exp_laboral_prof.cargo_exp IS 'cargo dentro de la institucion';


--
-- Name: COLUMN exp_laboral_prof.des_cargo_exp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN exp_laboral_prof.des_cargo_exp IS 'descripcion del cargo';


--
-- Name: exp_laboral_prof_id_exp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE exp_laboral_prof_id_exp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exp_laboral_prof_id_exp_seq OWNER TO postgres;

--
-- Name: exp_laboral_prof_id_exp_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE exp_laboral_prof_id_exp_seq OWNED BY exp_laboral_prof.id_exp;


--
-- Name: pre_acadmics; Type: TABLE; Schema: public; Owner: gnuxdar; Tablespace: 
--

CREATE TABLE pre_acadmics (
    id_pre_acadmics integer NOT NULL,
    nom_pre_acadmics character varying,
    id_pre_acadmics_tit integer NOT NULL
);


ALTER TABLE public.pre_acadmics OWNER TO gnuxdar;

--
-- Name: TABLE pre_acadmics; Type: COMMENT; Schema: public; Owner: gnuxdar
--

COMMENT ON TABLE pre_acadmics IS 'la carrera del pre academico';


--
-- Name: pre_acadmics_id_pre_acadmics_seq; Type: SEQUENCE; Schema: public; Owner: gnuxdar
--

CREATE SEQUENCE pre_acadmics_id_pre_acadmics_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pre_acadmics_id_pre_acadmics_seq OWNER TO gnuxdar;

--
-- Name: pre_acadmics_id_pre_acadmics_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gnuxdar
--

ALTER SEQUENCE pre_acadmics_id_pre_acadmics_seq OWNED BY pre_acadmics.id_pre_acadmics;


--
-- Name: titulo_pre; Type: TABLE; Schema: public; Owner: gnuxdar; Tablespace: 
--

CREATE TABLE titulo_pre (
    id_pre_acadmics_tit integer NOT NULL,
    pre_acadmics_tit character varying
);


ALTER TABLE public.titulo_pre OWNER TO gnuxdar;

--
-- Name: TABLE titulo_pre; Type: COMMENT; Schema: public; Owner: gnuxdar
--

COMMENT ON TABLE titulo_pre IS 'TSU, ING, LIC, etc';


--
-- Name: titulo_pre_id_titu_pre_seq; Type: SEQUENCE; Schema: public; Owner: gnuxdar
--

CREATE SEQUENCE titulo_pre_id_titu_pre_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.titulo_pre_id_titu_pre_seq OWNER TO gnuxdar;

--
-- Name: titulo_pre_id_titu_pre_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gnuxdar
--

ALTER SEQUENCE titulo_pre_id_titu_pre_seq OWNED BY titulo_pre.id_pre_acadmics_tit;


--
-- Name: user_system; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_system (
    id_user integer NOT NULL,
    ci_usr integer NOT NULL,
    login_usr character varying NOT NULL,
    pass_usr character varying NOT NULL,
    status_usr integer NOT NULL,
    id_prof integer
);


ALTER TABLE public.user_system OWNER TO postgres;

--
-- Name: user_system_id_user_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_system_id_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_system_id_user_seq OWNER TO postgres;

--
-- Name: user_system_id_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_system_id_user_seq OWNED BY user_system.id_user;


--
-- Name: id_acadmics; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acadmics_prof ALTER COLUMN id_acadmics SET DEFAULT nextval('acadmics_prof_id_acadmics_seq'::regclass);


--
-- Name: id_act; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actuacion_prof ALTER COLUMN id_act SET DEFAULT nextval('actuacion_prof_id_act_seq'::regclass);


--
-- Name: id_prof; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dp_prof ALTER COLUMN id_prof SET DEFAULT nextval('dp_prof_id_prof_seq'::regclass);


--
-- Name: id_exp; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exp_laboral_prof ALTER COLUMN id_exp SET DEFAULT nextval('exp_laboral_prof_id_exp_seq'::regclass);


--
-- Name: id_pre_acadmics; Type: DEFAULT; Schema: public; Owner: gnuxdar
--

ALTER TABLE ONLY pre_acadmics ALTER COLUMN id_pre_acadmics SET DEFAULT nextval('pre_acadmics_id_pre_acadmics_seq'::regclass);


--
-- Name: id_pre_acadmics_tit; Type: DEFAULT; Schema: public; Owner: gnuxdar
--

ALTER TABLE ONLY titulo_pre ALTER COLUMN id_pre_acadmics_tit SET DEFAULT nextval('titulo_pre_id_titu_pre_seq'::regclass);


--
-- Name: id_user; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_system ALTER COLUMN id_user SET DEFAULT nextval('user_system_id_user_seq'::regclass);


--
-- Data for Name: acadmics_prof; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO acadmics_prof VALUES (25, 'INFORMATICA', '', '2015-08-27', 'UPTP', 33, 'INGENIERO', '', '', 10, 0);
INSERT INTO acadmics_prof VALUES (26, 'INFORMATICA', '', '2012-07-10', 'UPTP', 34, 'TSU', '', '', 5, 0);
INSERT INTO acadmics_prof VALUES (27, 'INFORMATICA', 'REDES', '2011-09-20', 'UPTP', 35, 'INGENIERO', 'ESPECIALISTA', 'UCV', 10, 15);
INSERT INTO acadmics_prof VALUES (28, 'INFORMATICA', 'INFORMATICA', '2016-04-07', 'UCV', 36, 'LICENCIADO', 'DOCTOR', 'UCV', 10, 25);
INSERT INTO acadmics_prof VALUES (29, 'INFOR', 'REDES', '2016-04-08', 'UCV', 37, 'INGENIERO', 'ESPECIALISTA', 'UCV', 10, 15);


--
-- Name: acadmics_prof_id_acadmics_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('acadmics_prof_id_acadmics_seq', 29, true);


--
-- Data for Name: actuacion_prof; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO actuacion_prof VALUES (10, 'CISCO', 'GNU', 'GERENGLOB', '', 'OVI', '', 'SISGEPRO', 33);
INSERT INTO actuacion_prof VALUES (11, 'CISCO', 'GNU', 'GERENGLOB', '', 'OVI', '', 'SAPCI', 34);
INSERT INTO actuacion_prof VALUES (12, 'CISCO', 'GNU', 'GERENGLOB', '', 'OVI', '', 'SISCAL', 35);
INSERT INTO actuacion_prof VALUES (13, 'HTML5', 'CSS3', 'FIREFOX', 'PROGRAMING', 'CNSL', 'CNSL', 'cnsl canaima', 36);
INSERT INTO actuacion_prof VALUES (14, 'HTML5', 'CSS3', 'FIREFOX', 'CNSL', 'CNSL', 'CCS', 'CANAIMA EVAMGELIZACION', 37);


--
-- Name: actuacion_prof_id_act_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('actuacion_prof_id_act_seq', 14, true);


--
-- Data for Name: dp_prof; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO dp_prof VALUES (33, 'LUIS', 'GONZALEZ', 21381078, 'luisg595@gmail.com', '1993-02-10', 'SOLTERO', '0', 'CARACAS', 4122077750, NULL);
INSERT INTO dp_prof VALUES (34, 'PEDRO', 'PEREZ', 20373424, 'lncsd@skn.com', '1991-03-06', 'SOLTERO', '1', 'CARUPANO', 4167829087, NULL);
INSERT INTO dp_prof VALUES (35, 'CARLOS', 'ROSARIO', 19331727, 'kojcsd@nsdkn.com', '1988-01-23', 'SOLTERO', '1', 'CARUPANO', 4147618692, NULL);
INSERT INTO dp_prof VALUES (36, 'JOSE', 'LONGART', 55555, 'JOSEGAGUILERA@TECA.COM', '2016-04-06', 'HJGBV', '3', 'TUNAPUY', 4146754321, NULL);
INSERT INTO dp_prof VALUES (37, 'LUIS', 'SANCHEZ', 234567, 'LUIS@GMAIL.COM', '2016-04-14', 'SANCHEZ', '2 ESPOSAS', 'CARUPANO', 21234567, NULL);
INSERT INTO dp_prof VALUES (38, 'ALEIDYS', 'ARRAYS', 222222, 'aleidy@gmail.com', '2016-04-08', 'ARRAYS', '2 HERMANO', 'CARUPANO', 412656565, NULL);


--
-- Name: dp_prof_id_prof_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('dp_prof_id_prof_seq', 38, true);


--
-- Data for Name: exp_laboral_prof; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO exp_laboral_prof VALUES (8, 'MICORP', 1, 'PROGRAMADOR', 'PROGRAMAR', 33);
INSERT INTO exp_laboral_prof VALUES (9, 'METAMAX', 1, 'PROGRAMADOR', 'PROGRAMAR', 34);
INSERT INTO exp_laboral_prof VALUES (10, 'DYNAMIC', 1, 'PROGRAMADOR', 'PROGRAMAR', 35);
INSERT INTO exp_laboral_prof VALUES (11, 'UCV', 2, 'DIRECTOR', 'verificar y getsionar la inst', 36);
INSERT INTO exp_laboral_prof VALUES (12, 'UCV', 2, 'JEFE', 'VER', 37);


--
-- Name: exp_laboral_prof_id_exp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('exp_laboral_prof_id_exp_seq', 12, true);


--
-- Data for Name: pre_acadmics; Type: TABLE DATA; Schema: public; Owner: gnuxdar
--

INSERT INTO pre_acadmics VALUES (1, 'INFORMATICA', 1);
INSERT INTO pre_acadmics VALUES (2, 'INFORMATICA', 2);
INSERT INTO pre_acadmics VALUES (3, 'INFORMATICA', 3);
INSERT INTO pre_acadmics VALUES (4, 'MECANICA NAVAL', 1);
INSERT INTO pre_acadmics VALUES (6, 'MECANICA NAVAL', 3);
INSERT INTO pre_acadmics VALUES (7, 'TURISMO', 1);
INSERT INTO pre_acadmics VALUES (8, 'TURISMO', 2);
INSERT INTO pre_acadmics VALUES (9, 'ADMINISTRACION', 1);
INSERT INTO pre_acadmics VALUES (10, 'ADMINISTRACION', 2);
INSERT INTO pre_acadmics VALUES (11, 'AGROPECUARIA', 1);


--
-- Name: pre_acadmics_id_pre_acadmics_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuxdar
--

SELECT pg_catalog.setval('pre_acadmics_id_pre_acadmics_seq', 11, true);


--
-- Data for Name: titulo_pre; Type: TABLE DATA; Schema: public; Owner: gnuxdar
--

INSERT INTO titulo_pre VALUES (1, 'TSU');
INSERT INTO titulo_pre VALUES (2, 'LICENCIADO');
INSERT INTO titulo_pre VALUES (3, 'INGENIERO');
INSERT INTO titulo_pre VALUES (4, 'GEEK');


--
-- Name: titulo_pre_id_titu_pre_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuxdar
--

SELECT pg_catalog.setval('titulo_pre_id_titu_pre_seq', 4, true);


--
-- Data for Name: user_system; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO user_system VALUES (9, 19330646, 'gnuxdar', '123', 1, 33);


--
-- Name: user_system_id_user_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_system_id_user_seq', 9, true);


--
-- Name: acadmics_prof_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY acadmics_prof
    ADD CONSTRAINT acadmics_prof_pkey PRIMARY KEY (id_acadmics);


--
-- Name: actuacion_prof_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY actuacion_prof
    ADD CONSTRAINT actuacion_prof_pkey PRIMARY KEY (id_act);


--
-- Name: dp_prof_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dp_prof
    ADD CONSTRAINT dp_prof_pkey PRIMARY KEY (id_prof);


--
-- Name: exp_laboral_prof_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY exp_laboral_prof
    ADD CONSTRAINT exp_laboral_prof_pkey PRIMARY KEY (id_exp);


--
-- Name: pre_acadmics_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuxdar; Tablespace: 
--

ALTER TABLE ONLY pre_acadmics
    ADD CONSTRAINT pre_acadmics_pkey PRIMARY KEY (id_pre_acadmics);


--
-- Name: titulo_pre_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuxdar; Tablespace: 
--

ALTER TABLE ONLY titulo_pre
    ADD CONSTRAINT titulo_pre_pkey PRIMARY KEY (id_pre_acadmics_tit);


--
-- Name: user_system_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_system
    ADD CONSTRAINT user_system_pkey PRIMARY KEY (id_user);


--
-- Name: acadmics_prof_id_prof_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acadmics_prof
    ADD CONSTRAINT acadmics_prof_id_prof_fkey FOREIGN KEY (id_prof) REFERENCES dp_prof(id_prof) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: actuacion_prof_id_prof_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actuacion_prof
    ADD CONSTRAINT actuacion_prof_id_prof_fkey FOREIGN KEY (id_prof) REFERENCES dp_prof(id_prof) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: exp_laboral_prof_id_prof_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exp_laboral_prof
    ADD CONSTRAINT exp_laboral_prof_id_prof_fkey FOREIGN KEY (id_prof) REFERENCES dp_prof(id_prof) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: pre_acadmics_id_pre_acadmics_tit_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuxdar
--

ALTER TABLE ONLY pre_acadmics
    ADD CONSTRAINT pre_acadmics_id_pre_acadmics_tit_fkey FOREIGN KEY (id_pre_acadmics_tit) REFERENCES titulo_pre(id_pre_acadmics_tit) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_system_id_prof_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_system
    ADD CONSTRAINT user_system_id_prof_fkey FOREIGN KEY (id_prof) REFERENCES dp_prof(id_prof) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

