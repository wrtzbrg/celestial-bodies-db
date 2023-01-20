--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_table_access_method = heap;

--
-- Name: astroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astroids (
    astroids_id integer NOT NULL,
    name character varying(30) NOT NULL,
    hit_earth boolean NOT NULL
);


ALTER TABLE public.astroids OWNER TO freecodecamp;

--
-- Name: astorids_astroids_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astorids_astroids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astorids_astroids_id_seq OWNER TO freecodecamp;

--
-- Name: astorids_astroids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astorids_astroids_id_seq OWNED BY public.astroids.astroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    describe text,
    nnn integer NOT NULL,
    nn integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    life_chance numeric(3,1),
    looks_good boolean,
    nn integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer,
    age integer NOT NULL,
    life_chance numeric(3,1)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer,
    age integer NOT NULL,
    is_bright boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: astroids astroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroids ALTER COLUMN astroids_id SET DEFAULT nextval('public.astorids_astroids_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astroids VALUES (1, 'Astroid-23374', false);
INSERT INTO public.astroids VALUES (2, 'Astroid-8313', false);
INSERT INTO public.astroids VALUES (3, 'Astroid-159', false);
INSERT INTO public.astroids VALUES (4, 'Astroid-20272', false);
INSERT INTO public.astroids VALUES (5, 'Astroid-31925', false);
INSERT INTO public.astroids VALUES (6, 'Astroid-2917', false);
INSERT INTO public.astroids VALUES (7, 'Astroid-20420', false);
INSERT INTO public.astroids VALUES (8, 'Astroid-29569', false);
INSERT INTO public.astroids VALUES (9, 'Astroid-13482', false);
INSERT INTO public.astroids VALUES (10, 'Astroid-1967', false);
INSERT INTO public.astroids VALUES (11, 'Astroid-5899', false);
INSERT INTO public.astroids VALUES (12, 'Astroid-4077', false);
INSERT INTO public.astroids VALUES (13, 'Astroid-12165', false);
INSERT INTO public.astroids VALUES (14, 'Astroid-29867', false);
INSERT INTO public.astroids VALUES (15, 'Astroid-1749', false);
INSERT INTO public.astroids VALUES (16, 'Astroid-11856', false);
INSERT INTO public.astroids VALUES (17, 'Astroid-11119', false);
INSERT INTO public.astroids VALUES (18, 'Astroid-2303', false);
INSERT INTO public.astroids VALUES (19, 'Astroid-22722', false);
INSERT INTO public.astroids VALUES (20, 'Astroid-15536', false);
INSERT INTO public.astroids VALUES (21, 'Astroid-29156', false);
INSERT INTO public.astroids VALUES (22, 'Astroid-19498', false);
INSERT INTO public.astroids VALUES (23, 'Astroid-1251', false);
INSERT INTO public.astroids VALUES (24, 'Astroid-31528', false);
INSERT INTO public.astroids VALUES (25, 'Astroid-3370', false);
INSERT INTO public.astroids VALUES (26, 'Astroid-19002', false);
INSERT INTO public.astroids VALUES (27, 'Astroid-24316', false);
INSERT INTO public.astroids VALUES (28, 'Astroid-11240', false);
INSERT INTO public.astroids VALUES (29, 'Astroid-16270', false);
INSERT INTO public.astroids VALUES (30, 'Astroid-1608', false);
INSERT INTO public.astroids VALUES (31, 'Astroid-32377', false);
INSERT INTO public.astroids VALUES (32, 'Astroid-16672', false);
INSERT INTO public.astroids VALUES (33, 'Astroid-17160', false);
INSERT INTO public.astroids VALUES (34, 'Astroid-32677', false);
INSERT INTO public.astroids VALUES (35, 'Astroid-13228', false);
INSERT INTO public.astroids VALUES (36, 'Astroid-7738', false);
INSERT INTO public.astroids VALUES (37, 'Astroid-1145', false);
INSERT INTO public.astroids VALUES (38, 'Astroid-15853', false);
INSERT INTO public.astroids VALUES (39, 'Astroid-12989', false);
INSERT INTO public.astroids VALUES (40, 'Astroid-21286', false);
INSERT INTO public.astroids VALUES (41, 'Astroid-28868', false);
INSERT INTO public.astroids VALUES (42, 'Astroid-26136', false);
INSERT INTO public.astroids VALUES (43, 'Astroid-20554', false);
INSERT INTO public.astroids VALUES (44, 'Astroid-16296', false);
INSERT INTO public.astroids VALUES (45, 'Astroid-19288', false);
INSERT INTO public.astroids VALUES (46, 'Astroid-5823', false);
INSERT INTO public.astroids VALUES (47, 'Astroid-30007', false);
INSERT INTO public.astroids VALUES (48, 'Astroid-4066', false);
INSERT INTO public.astroids VALUES (49, 'Astroid-17139', false);
INSERT INTO public.astroids VALUES (50, 'Astroid-27047', false);
INSERT INTO public.astroids VALUES (51, 'Astroid-32728', false);
INSERT INTO public.astroids VALUES (52, 'Astroid-29011', false);
INSERT INTO public.astroids VALUES (53, 'Astroid-4988', false);
INSERT INTO public.astroids VALUES (54, 'Astroid-22746', false);
INSERT INTO public.astroids VALUES (55, 'Astroid-25956', false);
INSERT INTO public.astroids VALUES (56, 'Astroid-17364', false);
INSERT INTO public.astroids VALUES (57, 'Astroid-12049', false);
INSERT INTO public.astroids VALUES (58, 'Astroid-2206', false);
INSERT INTO public.astroids VALUES (59, 'Astroid-21128', false);
INSERT INTO public.astroids VALUES (60, 'Astroid-5105', false);
INSERT INTO public.astroids VALUES (61, 'Astroid-18737', false);
INSERT INTO public.astroids VALUES (62, 'Astroid-23220', false);
INSERT INTO public.astroids VALUES (63, 'Astroid-24548', false);
INSERT INTO public.astroids VALUES (64, 'Astroid-32518', false);
INSERT INTO public.astroids VALUES (65, 'Astroid-26341', false);
INSERT INTO public.astroids VALUES (66, 'Astroid-19996', false);
INSERT INTO public.astroids VALUES (67, 'Astroid-5790', false);
INSERT INTO public.astroids VALUES (68, 'Astroid-29956', false);
INSERT INTO public.astroids VALUES (69, 'Astroid-26189', false);
INSERT INTO public.astroids VALUES (70, 'Astroid-27361', false);
INSERT INTO public.astroids VALUES (71, 'Astroid-31563', false);
INSERT INTO public.astroids VALUES (72, 'Astroid-9411', false);
INSERT INTO public.astroids VALUES (73, 'Astroid-6903', false);
INSERT INTO public.astroids VALUES (74, 'Astroid-2047', false);
INSERT INTO public.astroids VALUES (75, 'Astroid-32756', false);
INSERT INTO public.astroids VALUES (76, 'Astroid-10508', false);
INSERT INTO public.astroids VALUES (77, 'Astroid-838', false);
INSERT INTO public.astroids VALUES (78, 'Astroid-30496', false);
INSERT INTO public.astroids VALUES (79, 'Astroid-916', false);
INSERT INTO public.astroids VALUES (80, 'Astroid-1997', false);
INSERT INTO public.astroids VALUES (81, 'Astroid-20936', false);
INSERT INTO public.astroids VALUES (82, 'Astroid-16702', false);
INSERT INTO public.astroids VALUES (83, 'Astroid-22014', false);
INSERT INTO public.astroids VALUES (84, 'Astroid-13485', false);
INSERT INTO public.astroids VALUES (85, 'Astroid-28958', false);
INSERT INTO public.astroids VALUES (86, 'Astroid-3782', false);
INSERT INTO public.astroids VALUES (87, 'Astroid-9064', false);
INSERT INTO public.astroids VALUES (88, 'Astroid-819', false);
INSERT INTO public.astroids VALUES (89, 'Astroid-10916', false);
INSERT INTO public.astroids VALUES (90, 'Astroid-30244', false);
INSERT INTO public.astroids VALUES (91, 'Astroid-22882', false);
INSERT INTO public.astroids VALUES (92, 'Astroid-12964', false);
INSERT INTO public.astroids VALUES (93, 'Astroid-23553', false);
INSERT INTO public.astroids VALUES (94, 'Astroid-27264', false);
INSERT INTO public.astroids VALUES (95, 'Astroid-4202', false);
INSERT INTO public.astroids VALUES (96, 'Astroid-9594', false);
INSERT INTO public.astroids VALUES (97, 'Astroid-4587', false);
INSERT INTO public.astroids VALUES (98, 'Astroid-1028', false);
INSERT INTO public.astroids VALUES (99, 'Astroid-19410', false);
INSERT INTO public.astroids VALUES (100, 'Astroid-27587', false);
INSERT INTO public.astroids VALUES (101, 'Astroid-26522', false);
INSERT INTO public.astroids VALUES (102, 'Astroid-18790', false);
INSERT INTO public.astroids VALUES (103, 'Astroid-28114', false);
INSERT INTO public.astroids VALUES (104, 'Astroid-2448', false);
INSERT INTO public.astroids VALUES (105, 'Astroid-20671', false);
INSERT INTO public.astroids VALUES (106, 'Astroid-25084', false);
INSERT INTO public.astroids VALUES (107, 'Astroid-27725', false);
INSERT INTO public.astroids VALUES (108, 'Astroid-27384', false);
INSERT INTO public.astroids VALUES (109, 'Astroid-26412', false);
INSERT INTO public.astroids VALUES (110, 'Astroid-11385', false);
INSERT INTO public.astroids VALUES (111, 'Astroid-29327', false);
INSERT INTO public.astroids VALUES (112, 'Astroid-7587', false);
INSERT INTO public.astroids VALUES (113, 'Astroid-21428', false);
INSERT INTO public.astroids VALUES (114, 'Astroid-27156', false);
INSERT INTO public.astroids VALUES (115, 'Astroid-19972', false);
INSERT INTO public.astroids VALUES (116, 'Astroid-8788', false);
INSERT INTO public.astroids VALUES (117, 'Astroid-19470', false);
INSERT INTO public.astroids VALUES (118, 'Astroid-26484', false);
INSERT INTO public.astroids VALUES (119, 'Astroid-9767', false);
INSERT INTO public.astroids VALUES (120, 'Astroid-23855', false);
INSERT INTO public.astroids VALUES (121, 'Astroid-20211', false);
INSERT INTO public.astroids VALUES (122, 'Astroid-22517', false);
INSERT INTO public.astroids VALUES (123, 'Astroid-21484', false);
INSERT INTO public.astroids VALUES (124, 'Astroid-24251', false);
INSERT INTO public.astroids VALUES (125, 'Astroid-27084', false);
INSERT INTO public.astroids VALUES (126, 'Astroid-28393', false);
INSERT INTO public.astroids VALUES (127, 'Astroid-6944', false);
INSERT INTO public.astroids VALUES (128, 'Astroid-4224', false);
INSERT INTO public.astroids VALUES (129, 'Astroid-18102', false);
INSERT INTO public.astroids VALUES (130, 'Astroid-1854', false);
INSERT INTO public.astroids VALUES (131, 'Astroid-1701', false);
INSERT INTO public.astroids VALUES (132, 'Astroid-26961', false);
INSERT INTO public.astroids VALUES (133, 'Astroid-30926', false);
INSERT INTO public.astroids VALUES (134, 'Astroid-7554', false);
INSERT INTO public.astroids VALUES (135, 'Astroid-25196', false);
INSERT INTO public.astroids VALUES (136, 'Astroid-20568', false);
INSERT INTO public.astroids VALUES (137, 'Astroid-29725', false);
INSERT INTO public.astroids VALUES (138, 'Astroid-17730', false);
INSERT INTO public.astroids VALUES (139, 'Astroid-30076', false);
INSERT INTO public.astroids VALUES (140, 'Astroid-10214', false);
INSERT INTO public.astroids VALUES (141, 'Astroid-29190', false);
INSERT INTO public.astroids VALUES (142, 'Astroid-1461', false);
INSERT INTO public.astroids VALUES (143, 'Astroid-19203', false);
INSERT INTO public.astroids VALUES (144, 'Astroid-16346', false);
INSERT INTO public.astroids VALUES (145, 'Astroid-3230', false);
INSERT INTO public.astroids VALUES (146, 'Astroid-29103', false);
INSERT INTO public.astroids VALUES (147, 'Astroid-20990', false);
INSERT INTO public.astroids VALUES (148, 'Astroid-8737', false);
INSERT INTO public.astroids VALUES (149, 'Astroid-13350', false);
INSERT INTO public.astroids VALUES (150, 'Astroid-14640', false);
INSERT INTO public.astroids VALUES (151, 'Astroid-10281', false);
INSERT INTO public.astroids VALUES (152, 'Astroid-19816', false);
INSERT INTO public.astroids VALUES (153, 'Astroid-31333', false);
INSERT INTO public.astroids VALUES (154, 'Astroid-1227', false);
INSERT INTO public.astroids VALUES (155, 'Astroid-27138', false);
INSERT INTO public.astroids VALUES (156, 'Astroid-14492', false);
INSERT INTO public.astroids VALUES (157, 'Astroid-3631', false);
INSERT INTO public.astroids VALUES (158, 'Astroid-13505', false);
INSERT INTO public.astroids VALUES (159, 'Astroid-4889', false);
INSERT INTO public.astroids VALUES (160, 'Astroid-1634', false);
INSERT INTO public.astroids VALUES (161, 'Astroid-8660', false);
INSERT INTO public.astroids VALUES (162, 'Astroid-27738', false);
INSERT INTO public.astroids VALUES (163, 'Astroid-2568', false);
INSERT INTO public.astroids VALUES (164, 'Astroid-12996', false);
INSERT INTO public.astroids VALUES (165, 'Astroid-29828', false);
INSERT INTO public.astroids VALUES (166, 'Astroid-11079', false);
INSERT INTO public.astroids VALUES (167, 'Astroid-29078', false);
INSERT INTO public.astroids VALUES (168, 'Astroid-18778', false);
INSERT INTO public.astroids VALUES (169, 'Astroid-25515', false);
INSERT INTO public.astroids VALUES (170, 'Astroid-10992', false);
INSERT INTO public.astroids VALUES (171, 'Astroid-10784', false);
INSERT INTO public.astroids VALUES (172, 'Astroid-21098', false);
INSERT INTO public.astroids VALUES (173, 'Astroid-23145', false);
INSERT INTO public.astroids VALUES (174, 'Astroid-22596', false);
INSERT INTO public.astroids VALUES (175, 'Astroid-29899', false);
INSERT INTO public.astroids VALUES (176, 'Astroid-30227', false);
INSERT INTO public.astroids VALUES (177, 'Astroid-4801', false);
INSERT INTO public.astroids VALUES (178, 'Astroid-29362', false);
INSERT INTO public.astroids VALUES (179, 'Astroid-11852', false);
INSERT INTO public.astroids VALUES (180, 'Astroid-8322', false);
INSERT INTO public.astroids VALUES (181, 'Astroid-27087', false);
INSERT INTO public.astroids VALUES (182, 'Astroid-21473', false);
INSERT INTO public.astroids VALUES (183, 'Astroid-4800', false);
INSERT INTO public.astroids VALUES (184, 'Astroid-1945', false);
INSERT INTO public.astroids VALUES (185, 'Astroid-30141', false);
INSERT INTO public.astroids VALUES (186, 'Astroid-6', false);
INSERT INTO public.astroids VALUES (187, 'Astroid-15019', false);
INSERT INTO public.astroids VALUES (188, 'Astroid-18858', false);
INSERT INTO public.astroids VALUES (189, 'Astroid-21554', false);
INSERT INTO public.astroids VALUES (190, 'Astroid-20104', false);
INSERT INTO public.astroids VALUES (191, 'Astroid-27875', false);
INSERT INTO public.astroids VALUES (192, 'Astroid-25560', false);
INSERT INTO public.astroids VALUES (193, 'Astroid-10165', false);
INSERT INTO public.astroids VALUES (194, 'Astroid-4437', false);
INSERT INTO public.astroids VALUES (195, 'Astroid-29238', false);
INSERT INTO public.astroids VALUES (196, 'Astroid-25241', false);
INSERT INTO public.astroids VALUES (197, 'Astroid-26722', false);
INSERT INTO public.astroids VALUES (198, 'Astroid-9947', false);
INSERT INTO public.astroids VALUES (199, 'Astroid-3996', false);
INSERT INTO public.astroids VALUES (200, 'Astroid-29394', false);
INSERT INTO public.astroids VALUES (201, 'Astroid-29314', false);
INSERT INTO public.astroids VALUES (202, 'Astroid-18675', false);
INSERT INTO public.astroids VALUES (203, 'Astroid-27708', false);
INSERT INTO public.astroids VALUES (204, 'Astroid-23364', false);
INSERT INTO public.astroids VALUES (205, 'Astroid-20474', false);
INSERT INTO public.astroids VALUES (206, 'Astroid-19075', false);
INSERT INTO public.astroids VALUES (207, 'Astroid-25880', false);
INSERT INTO public.astroids VALUES (208, 'Astroid-18350', false);
INSERT INTO public.astroids VALUES (209, 'Astroid-30927', false);
INSERT INTO public.astroids VALUES (210, 'Astroid-30489', false);
INSERT INTO public.astroids VALUES (211, 'Astroid-14955', false);
INSERT INTO public.astroids VALUES (212, 'Astroid-30241', false);
INSERT INTO public.astroids VALUES (213, 'Astroid-29679', false);
INSERT INTO public.astroids VALUES (214, 'Astroid-32134', false);
INSERT INTO public.astroids VALUES (215, 'Astroid-28698', false);
INSERT INTO public.astroids VALUES (216, 'Astroid-19851', false);
INSERT INTO public.astroids VALUES (217, 'Astroid-3938', false);
INSERT INTO public.astroids VALUES (218, 'Astroid-28860', false);
INSERT INTO public.astroids VALUES (219, 'Astroid-1346', false);
INSERT INTO public.astroids VALUES (220, 'Astroid-28070', false);
INSERT INTO public.astroids VALUES (221, 'Astroid-17811', false);
INSERT INTO public.astroids VALUES (222, 'Astroid-25592', false);
INSERT INTO public.astroids VALUES (223, 'Astroid-16173', false);
INSERT INTO public.astroids VALUES (224, 'Astroid-14666', false);
INSERT INTO public.astroids VALUES (225, 'Astroid-18189', false);
INSERT INTO public.astroids VALUES (226, 'Astroid-22233', false);
INSERT INTO public.astroids VALUES (227, 'Astroid-25492', false);
INSERT INTO public.astroids VALUES (228, 'Astroid-7642', false);
INSERT INTO public.astroids VALUES (229, 'Astroid-25925', false);
INSERT INTO public.astroids VALUES (230, 'Astroid-21074', false);
INSERT INTO public.astroids VALUES (231, 'Astroid-9352', false);
INSERT INTO public.astroids VALUES (232, 'Astroid-26259', false);
INSERT INTO public.astroids VALUES (233, 'Astroid-29733', false);
INSERT INTO public.astroids VALUES (234, 'Astroid-26526', false);
INSERT INTO public.astroids VALUES (235, 'Astroid-14537', false);
INSERT INTO public.astroids VALUES (236, 'Astroid-21429', false);
INSERT INTO public.astroids VALUES (237, 'Astroid-17855', false);
INSERT INTO public.astroids VALUES (238, 'Astroid-16416', false);
INSERT INTO public.astroids VALUES (239, 'Astroid-31313', false);
INSERT INTO public.astroids VALUES (240, 'Astroid-6852', false);
INSERT INTO public.astroids VALUES (241, 'Astroid-26390', false);
INSERT INTO public.astroids VALUES (242, 'Astroid-1122', false);
INSERT INTO public.astroids VALUES (243, 'Astroid-24044', false);
INSERT INTO public.astroids VALUES (244, 'Astroid-27793', false);
INSERT INTO public.astroids VALUES (245, 'Astroid-13827', false);
INSERT INTO public.astroids VALUES (246, 'Astroid-15331', false);
INSERT INTO public.astroids VALUES (247, 'Astroid-20699', false);
INSERT INTO public.astroids VALUES (248, 'Astroid-3255', false);
INSERT INTO public.astroids VALUES (249, 'Astroid-22097', false);
INSERT INTO public.astroids VALUES (250, 'Astroid-28547', false);
INSERT INTO public.astroids VALUES (251, 'Astroid-11457', false);
INSERT INTO public.astroids VALUES (252, 'Astroid-29079', false);
INSERT INTO public.astroids VALUES (253, 'Astroid-8702', false);
INSERT INTO public.astroids VALUES (254, 'Astroid-16556', false);
INSERT INTO public.astroids VALUES (255, 'Astroid-26397', false);
INSERT INTO public.astroids VALUES (256, 'Astroid-19991', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (4, 'andromeda', 'great gal- one of the closest ones to earth. probably it will be first gal we land on...', 0, 0);
INSERT INTO public.galaxy VALUES (5, 'ZZ432-89B', 'humanity doesnt yet know that its existance depends on this giant astro-cloud...', 0, 0);
INSERT INTO public.galaxy VALUES (6, 'AX043-12', 'never heard of it, probably an insignificant one. for now... ', 0, 0);
INSERT INTO public.galaxy VALUES (7, 'GLX12288', 'describe', 24440, 29092);
INSERT INTO public.galaxy VALUES (8, 'GLX-20638', 'describe', 11452, 16011);
INSERT INTO public.galaxy VALUES (9, 'GLX-19035', 'describe', 25507, 27109);
INSERT INTO public.galaxy VALUES (10, 'GLX-12404', 'describe', 12355, 2016);
INSERT INTO public.galaxy VALUES (11, 'GLX-18402', 'describe', 16843, 4881);
INSERT INTO public.galaxy VALUES (12, 'GLX-31191', 'describe', 4888, 29775);
INSERT INTO public.galaxy VALUES (13, 'GLX-11182', 'describe', 21236, 28017);
INSERT INTO public.galaxy VALUES (14, 'GLX-20997', 'describe', 11712, 13855);
INSERT INTO public.galaxy VALUES (15, 'GLX-31338', 'describe', 21460, 7242);
INSERT INTO public.galaxy VALUES (16, 'GLX-955', 'describe', 19442, 12059);
INSERT INTO public.galaxy VALUES (17, 'GLX-10864', 'describe', 29584, 32522);
INSERT INTO public.galaxy VALUES (18, 'GLX-12357', 'describe', 1847, 30451);
INSERT INTO public.galaxy VALUES (19, 'GLX-8244', 'describe', 13433, 19117);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon227', 3, 97.0, false, 0);
INSERT INTO public.moon VALUES (2, 'Moon31718', 12, 87.3, false, 0);
INSERT INTO public.moon VALUES (3, 'Moon5883', 6, 86.6, false, 0);
INSERT INTO public.moon VALUES (4, 'Moon28825', 11, 48.8, false, 0);
INSERT INTO public.moon VALUES (5, 'Moon23554', 4, 10.1, false, 0);
INSERT INTO public.moon VALUES (6, 'Moon15584', 8, 65.0, false, 0);
INSERT INTO public.moon VALUES (7, 'Moon9588', 3, 55.6, false, 0);
INSERT INTO public.moon VALUES (9, 'Moon17465', 5, 65.2, false, 0);
INSERT INTO public.moon VALUES (10, 'Moon11566', 2, 49.8, false, 0);
INSERT INTO public.moon VALUES (12, 'Moon17233', 4, 84.2, false, 0);
INSERT INTO public.moon VALUES (13, 'Moon10133', 3, 43.3, false, 0);
INSERT INTO public.moon VALUES (14, 'Moon23424', 10, 13.8, false, 0);
INSERT INTO public.moon VALUES (15, 'Moon8459', 12, 28.0, false, 0);
INSERT INTO public.moon VALUES (16, 'Moon11678', 9, 65.5, false, 0);
INSERT INTO public.moon VALUES (17, 'Moon26001', 10, 35.8, false, 0);
INSERT INTO public.moon VALUES (18, 'Moon4517', 9, 90.3, false, 0);
INSERT INTO public.moon VALUES (19, 'Moon22543', 11, 68.2, false, 0);
INSERT INTO public.moon VALUES (20, 'Moon24712', 4, 71.2, false, 0);
INSERT INTO public.moon VALUES (21, 'Moon28096', 1, 74.2, false, 0);
INSERT INTO public.moon VALUES (22, 'Moon15147', 3, 53.0, false, 0);
INSERT INTO public.moon VALUES (23, 'Moon15184', 6, 86.7, false, 0);
INSERT INTO public.moon VALUES (24, 'Moon22025', 3, 3.7, false, 0);
INSERT INTO public.moon VALUES (25, 'Moon25167', 10, 36.6, false, 0);
INSERT INTO public.moon VALUES (26, 'Moon29188', 1, 5.3, false, 0);
INSERT INTO public.moon VALUES (27, 'Moon18700', 5, 11.2, false, 0);
INSERT INTO public.moon VALUES (28, 'Moon11372', 2, 9.4, false, 0);
INSERT INTO public.moon VALUES (29, 'Moon30577', 2, 99.3, false, 0);
INSERT INTO public.moon VALUES (30, 'Moon24011', 11, 7.2, false, 0);
INSERT INTO public.moon VALUES (31, 'Moon9928', 11, 12.2, false, 0);
INSERT INTO public.moon VALUES (33, 'Moon31964', 2, 39.2, false, 0);
INSERT INTO public.moon VALUES (34, 'Moon-14128', 3, 70.6, false, 0);
INSERT INTO public.moon VALUES (35, 'Moon-27895', 8, 65.0, false, 0);
INSERT INTO public.moon VALUES (36, 'Moon-21230', 2, 88.1, false, 0);
INSERT INTO public.moon VALUES (38, 'Moon-9564', 10, 72.1, false, 0);
INSERT INTO public.moon VALUES (40, 'Moon-30039', 1, 29.8, false, 0);
INSERT INTO public.moon VALUES (41, 'Moon-20206', 12, 59.9, false, 0);
INSERT INTO public.moon VALUES (42, 'Moon-5277', 1, 92.9, false, 0);
INSERT INTO public.moon VALUES (44, 'Moon-21631', 3, 70.9, false, 0);
INSERT INTO public.moon VALUES (45, 'Moon-3021', 4, 71.0, false, 0);
INSERT INTO public.moon VALUES (46, 'Moon-10638', 4, 22.3, false, 0);
INSERT INTO public.moon VALUES (47, 'Moon-2610', 11, 64.3, false, 0);
INSERT INTO public.moon VALUES (48, 'Moon-28673', 9, 5.8, false, 0);
INSERT INTO public.moon VALUES (49, 'Moon-27885', 8, 17.8, false, 0);
INSERT INTO public.moon VALUES (50, 'Moon-14414', 3, 68.7, false, 0);
INSERT INTO public.moon VALUES (51, 'Moon-21954', 12, 29.6, false, 0);
INSERT INTO public.moon VALUES (52, 'Moon-16386', 5, 44.6, false, 0);
INSERT INTO public.moon VALUES (53, 'Moon-8114', 3, 8.8, false, 0);
INSERT INTO public.moon VALUES (54, 'Moon-31460', 5, 96.0, false, 0);
INSERT INTO public.moon VALUES (55, 'Moon-28998', 8, 20.7, false, 0);
INSERT INTO public.moon VALUES (56, 'Moon-3113', 5, 36.9, false, 0);
INSERT INTO public.moon VALUES (57, 'Moon-14788', 10, 85.0, false, 0);
INSERT INTO public.moon VALUES (58, 'Moon-10356', 5, 79.3, false, 0);
INSERT INTO public.moon VALUES (59, 'Moon-17484', 12, 9.0, false, 0);
INSERT INTO public.moon VALUES (61, 'Moon-6861', 2, 40.4, false, 0);
INSERT INTO public.moon VALUES (62, 'Moon-10804', 4, 5.6, false, 0);
INSERT INTO public.moon VALUES (63, 'Moon-4335', 6, 29.7, false, 0);
INSERT INTO public.moon VALUES (64, 'Moon-2838', 2, 54.8, false, 0);
INSERT INTO public.moon VALUES (65, 'Moon-19376', 12, 15.7, false, 0);
INSERT INTO public.moon VALUES (66, 'Moon-11880', 10, 79.4, false, 0);
INSERT INTO public.moon VALUES (67, 'Moon-16133', 10, 11.1, false, 0);
INSERT INTO public.moon VALUES (68, 'Moon-27584', 1, 6.4, false, 0);
INSERT INTO public.moon VALUES (69, 'Moon-29612', 11, 52.1, false, 0);
INSERT INTO public.moon VALUES (71, 'Moon-30685', 3, 16.3, false, 0);
INSERT INTO public.moon VALUES (72, 'Moon-32419', 3, 44.8, false, 0);
INSERT INTO public.moon VALUES (73, 'Moon-9997', 8, 19.8, false, 0);
INSERT INTO public.moon VALUES (74, 'Moon-13227', 6, 7.5, false, 0);
INSERT INTO public.moon VALUES (75, 'Moon-22980', 12, 64.1, false, 0);
INSERT INTO public.moon VALUES (76, 'Moon-12429', 8, 65.7, false, 0);
INSERT INTO public.moon VALUES (77, 'Moon-28222', 5, 46.3, false, 0);
INSERT INTO public.moon VALUES (79, 'Moon-24259', 3, 3.2, false, 0);
INSERT INTO public.moon VALUES (80, 'Moon-18374', 8, 10.6, false, 0);
INSERT INTO public.moon VALUES (81, 'Moon-26588', 3, 47.3, false, 0);
INSERT INTO public.moon VALUES (82, 'Moon-11342', 8, 33.2, false, 0);
INSERT INTO public.moon VALUES (83, 'Moon-17145', 5, 35.0, false, 0);
INSERT INTO public.moon VALUES (84, 'Moon-13103', 11, 51.5, false, 0);
INSERT INTO public.moon VALUES (85, 'Moon-28604', 6, 5.4, false, 0);
INSERT INTO public.moon VALUES (87, 'Moon-8484', 1, 99.5, false, 0);
INSERT INTO public.moon VALUES (88, 'Moon-19630', 6, 34.7, false, 0);
INSERT INTO public.moon VALUES (89, 'Moon-25631', 9, 37.7, false, 0);
INSERT INTO public.moon VALUES (90, 'Moon-24548', 10, 26.2, false, 0);
INSERT INTO public.moon VALUES (91, 'Moon-23687', 5, 60.3, false, 0);
INSERT INTO public.moon VALUES (93, 'Moon-31503', 6, 1.5, false, 0);
INSERT INTO public.moon VALUES (94, 'Moon-3387', 10, 54.4, false, 0);
INSERT INTO public.moon VALUES (96, 'Moon-29056', 10, 57.6, false, 0);
INSERT INTO public.moon VALUES (97, 'Moon-18281', 11, 39.4, false, 0);
INSERT INTO public.moon VALUES (98, 'Moon-12901', 9, 33.4, false, 0);
INSERT INTO public.moon VALUES (99, 'Moon-4470', 3, 28.6, false, 0);
INSERT INTO public.moon VALUES (100, 'Moon-14424', 8, 17.8, false, 0);
INSERT INTO public.moon VALUES (101, 'Moon-18229', 8, 7.5, false, 0);
INSERT INTO public.moon VALUES (102, 'Moon-29023', 9, 53.3, false, 0);
INSERT INTO public.moon VALUES (103, 'Moon-7816', 10, 99.9, false, 0);
INSERT INTO public.moon VALUES (104, 'Moon-25720', 12, 15.4, false, 0);
INSERT INTO public.moon VALUES (105, 'Moon-31256', 5, 28.5, false, 0);
INSERT INTO public.moon VALUES (106, 'Moon-17983', 1, 11.1, false, 0);
INSERT INTO public.moon VALUES (107, 'Moon-1914', 2, 73.3, false, 0);
INSERT INTO public.moon VALUES (108, 'Moon-902', 1, 33.9, false, 0);
INSERT INTO public.moon VALUES (109, 'Moon-13925', 8, 39.5, false, 0);
INSERT INTO public.moon VALUES (110, 'Moon-6515', 3, 85.5, false, 0);
INSERT INTO public.moon VALUES (111, 'Moon-15838', 8, 33.5, false, 0);
INSERT INTO public.moon VALUES (112, 'Moon-18753', 9, 9.2, false, 0);
INSERT INTO public.moon VALUES (113, 'Moon-22394', 2, 77.4, false, 0);
INSERT INTO public.moon VALUES (114, 'Moon-7115', 4, 1.5, false, 0);
INSERT INTO public.moon VALUES (116, 'Moon-5239', 4, 37.9, false, 0);
INSERT INTO public.moon VALUES (117, 'Moon-4453', 9, 6.1, false, 0);
INSERT INTO public.moon VALUES (118, 'Moon-27256', 8, 0.7, false, 0);
INSERT INTO public.moon VALUES (119, 'Moon-6041', 1, 58.0, false, 0);
INSERT INTO public.moon VALUES (120, 'Moon-1399', 5, 6.5, false, 0);
INSERT INTO public.moon VALUES (121, 'Moon-19266', 3, 44.7, false, 0);
INSERT INTO public.moon VALUES (122, 'Moon-30223', 11, 92.0, false, 0);
INSERT INTO public.moon VALUES (123, 'Moon-3181', 9, 14.3, false, 0);
INSERT INTO public.moon VALUES (124, 'Moon-31815', 4, 12.8, false, 0);
INSERT INTO public.moon VALUES (125, 'Moon-22876', 9, 5.5, false, 0);
INSERT INTO public.moon VALUES (126, 'Moon-13915', 3, 16.4, false, 0);
INSERT INTO public.moon VALUES (127, 'Moon-11177', 5, 54.0, false, 0);
INSERT INTO public.moon VALUES (128, 'Moon-20470', 1, 6.8, false, 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth-126-b', 4, 12333212, NULL);
INSERT INTO public.planet VALUES (2, 'venus-tachmahal', 2, 45645554, NULL);
INSERT INTO public.planet VALUES (3, 'valhalla', 1, 12210000, NULL);
INSERT INTO public.planet VALUES (4, 'diyarbekir', 3, 6700000, NULL);
INSERT INTO public.planet VALUES (5, 'Olymphos-xpc9', 3, 700000, NULL);
INSERT INTO public.planet VALUES (6, 'Zagreus-xbm3', 5, 640000, NULL);
INSERT INTO public.planet VALUES (8, 'DoomsDay-xbp8', 2, 12740000, NULL);
INSERT INTO public.planet VALUES (9, 'Cyclops-ows02', 5, 640000, NULL);
INSERT INTO public.planet VALUES (10, 'Saggarious-xem6', 3, 350000, NULL);
INSERT INTO public.planet VALUES (11, 'Oly-xsd3', 4, 776000, NULL);
INSERT INTO public.planet VALUES (12, 'Olymphos-c9', 3, 700000, NULL);
INSERT INTO public.planet VALUES (13, 'KKKSJJ', 1, 3560000, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, 4, 100000, true);
INSERT INTO public.star VALUES (2, NULL, 5, 120000, true);
INSERT INTO public.star VALUES (3, NULL, 6, 890000, true);
INSERT INTO public.star VALUES (4, 'Sun', 5, 655000, false);
INSERT INTO public.star VALUES (5, 'Zenti', 4, 512000, false);
INSERT INTO public.star VALUES (6, 'IchBin', 4, 256000, false);
INSERT INTO public.star VALUES (7, 'STAR-2346', 13, 105270000, true);
INSERT INTO public.star VALUES (8, 'STAR-15146', 14, 318280000, true);
INSERT INTO public.star VALUES (9, 'STAR-15640', 8, 302730000, true);
INSERT INTO public.star VALUES (10, 'STAR-27170', 4, 296180000, true);
INSERT INTO public.star VALUES (11, 'STAR-12380', 14, 269190000, true);
INSERT INTO public.star VALUES (12, 'STAR-16605', 5, 76710000, true);
INSERT INTO public.star VALUES (13, 'STAR-27866', 4, 26980000, true);
INSERT INTO public.star VALUES (14, 'STAR-11548', 13, 64140000, true);
INSERT INTO public.star VALUES (15, 'STAR-31865', 16, 95080000, true);
INSERT INTO public.star VALUES (16, 'STAR-22993', 4, 250810000, true);
INSERT INTO public.star VALUES (17, 'STAR-28895', 15, 296420000, true);
INSERT INTO public.star VALUES (18, 'STAR-26993', 6, 24730000, true);
INSERT INTO public.star VALUES (19, 'STAR-6299', 10, 296110000, true);
INSERT INTO public.star VALUES (20, 'STAR-18319', 9, 45760000, true);
INSERT INTO public.star VALUES (21, 'STAR-19812', 7, 77860000, true);
INSERT INTO public.star VALUES (22, 'STAR-31676', 15, 123560000, true);
INSERT INTO public.star VALUES (23, 'STAR-19737', 6, 234630000, true);
INSERT INTO public.star VALUES (24, 'STAR-30314', 13, 164770000, true);
INSERT INTO public.star VALUES (25, 'STAR-26027', 17, 292240000, true);
INSERT INTO public.star VALUES (26, 'STAR-11596', 9, 251330000, true);
INSERT INTO public.star VALUES (27, 'STAR-29693', 5, 279570000, true);
INSERT INTO public.star VALUES (28, 'STAR-26089', 12, 210770000, true);
INSERT INTO public.star VALUES (29, 'STAR-7650', 10, 16830000, true);
INSERT INTO public.star VALUES (30, 'STAR-31957', 17, 162820000, true);
INSERT INTO public.star VALUES (31, 'STAR-20154', 8, 201830000, true);
INSERT INTO public.star VALUES (32, 'STAR-18620', 13, 156900000, true);
INSERT INTO public.star VALUES (33, 'STAR-10947', 4, 16750000, true);
INSERT INTO public.star VALUES (34, 'STAR-606', 11, 101230000, true);
INSERT INTO public.star VALUES (35, 'STAR-17032', 13, 35810000, true);
INSERT INTO public.star VALUES (36, 'STAR-21802', 5, 163880000, true);
INSERT INTO public.star VALUES (37, 'STAR-30893', 14, 249920000, true);
INSERT INTO public.star VALUES (38, 'STAR-23312', 6, 21840000, true);
INSERT INTO public.star VALUES (39, 'STAR-26927', 15, 187000000, true);
INSERT INTO public.star VALUES (40, 'STAR-7518', 17, 87750000, true);
INSERT INTO public.star VALUES (41, 'STAR-7109', 10, 156960000, true);
INSERT INTO public.star VALUES (42, 'STAR-5934', 6, 283250000, true);
INSERT INTO public.star VALUES (43, 'STAR-6751', 11, 31740000, true);
INSERT INTO public.star VALUES (44, 'STAR-19472', 5, 253150000, true);
INSERT INTO public.star VALUES (45, 'STAR-28907', 16, 240570000, true);
INSERT INTO public.star VALUES (46, 'STAR-16149', 16, 96800000, true);
INSERT INTO public.star VALUES (47, 'STAR-22735', 11, 151520000, true);
INSERT INTO public.star VALUES (48, 'STAR-30189', 12, 203400000, true);
INSERT INTO public.star VALUES (49, 'STAR-1465', 6, 138740000, true);
INSERT INTO public.star VALUES (50, 'STAR-9609', 5, 263350000, true);
INSERT INTO public.star VALUES (51, 'STAR-21559', 16, 305010000, true);
INSERT INTO public.star VALUES (52, 'STAR-22710', 17, 213590000, true);
INSERT INTO public.star VALUES (53, 'STAR-28209', 7, 22800000, true);
INSERT INTO public.star VALUES (54, 'STAR-4537', 11, 176110000, true);
INSERT INTO public.star VALUES (55, 'STAR-10812', 16, 198690000, true);
INSERT INTO public.star VALUES (56, 'STAR-267', 12, 316530000, true);
INSERT INTO public.star VALUES (57, 'STAR-4020', 7, 311220000, true);
INSERT INTO public.star VALUES (58, 'STAR-3283', 14, 304240000, true);
INSERT INTO public.star VALUES (59, 'STAR-1840', 10, 326620000, true);
INSERT INTO public.star VALUES (60, 'STAR-7026', 9, 7850000, true);
INSERT INTO public.star VALUES (61, 'STAR-15094', 6, 6670000, true);
INSERT INTO public.star VALUES (62, 'STAR-22955', 13, 39000000, true);
INSERT INTO public.star VALUES (63, 'STAR-14497', 15, 240570000, true);
INSERT INTO public.star VALUES (64, 'STAR-17026', 11, 269410000, true);
INSERT INTO public.star VALUES (65, 'STAR-21364', 7, 49630000, true);
INSERT INTO public.star VALUES (66, 'STAR-32432', 11, 258430000, true);
INSERT INTO public.star VALUES (67, 'STAR-27017', 17, 123500000, true);
INSERT INTO public.star VALUES (68, 'STAR-11417', 6, 318000000, true);
INSERT INTO public.star VALUES (69, 'STAR-2471', 11, 176320000, true);
INSERT INTO public.star VALUES (70, 'STAR-30810', 8, 323950000, true);
INSERT INTO public.star VALUES (71, 'STAR-32256', 4, 292070000, true);
INSERT INTO public.star VALUES (72, 'STAR-7408', 15, 252970000, true);
INSERT INTO public.star VALUES (73, 'STAR-28846', 12, 176550000, true);
INSERT INTO public.star VALUES (74, 'STAR-10700', 16, 142130000, true);
INSERT INTO public.star VALUES (75, 'STAR-30252', 14, 315340000, true);
INSERT INTO public.star VALUES (76, 'STAR-22206', 5, 33000000, true);
INSERT INTO public.star VALUES (77, 'STAR-8657', 17, 180990000, true);
INSERT INTO public.star VALUES (78, 'STAR-384', 14, 144760000, true);
INSERT INTO public.star VALUES (79, 'STAR-7676', 5, 121050000, true);
INSERT INTO public.star VALUES (80, 'STAR-7877', 9, 124920000, true);
INSERT INTO public.star VALUES (81, 'STAR-1766', 10, 302080000, true);
INSERT INTO public.star VALUES (82, 'STAR-20100', 12, 321770000, true);
INSERT INTO public.star VALUES (83, 'STAR-13272', 16, 133950000, true);
INSERT INTO public.star VALUES (84, 'STAR-313', 16, 257000000, true);
INSERT INTO public.star VALUES (85, 'STAR-26278', 13, 175480000, true);
INSERT INTO public.star VALUES (86, 'STAR-14585', 5, 303440000, true);
INSERT INTO public.star VALUES (87, 'STAR-12333', 10, 310690000, true);
INSERT INTO public.star VALUES (88, 'STAR-14197', 14, 83630000, true);
INSERT INTO public.star VALUES (89, 'STAR-21638', 15, 149180000, true);
INSERT INTO public.star VALUES (90, 'STAR-30705', 16, 72970000, true);
INSERT INTO public.star VALUES (91, 'STAR-9678', 16, 11290000, true);
INSERT INTO public.star VALUES (92, 'STAR-25350', 5, 195810000, true);
INSERT INTO public.star VALUES (93, 'STAR-17775', 5, 51040000, true);
INSERT INTO public.star VALUES (94, 'STAR-28816', 16, 44740000, true);
INSERT INTO public.star VALUES (95, 'STAR-27213', 11, 87610000, true);
INSERT INTO public.star VALUES (96, 'STAR-11119', 6, 128730000, true);
INSERT INTO public.star VALUES (97, 'STAR-24493', 13, 50780000, true);
INSERT INTO public.star VALUES (98, 'STAR-14452', 14, 296880000, true);
INSERT INTO public.star VALUES (99, 'STAR-25601', 14, 35970000, true);
INSERT INTO public.star VALUES (100, 'STAR-7939', 6, 93650000, true);
INSERT INTO public.star VALUES (101, 'STAR-30477', 5, 38390000, true);
INSERT INTO public.star VALUES (102, 'STAR-22428', 16, 233370000, true);
INSERT INTO public.star VALUES (103, 'STAR-5513', 16, 240430000, true);
INSERT INTO public.star VALUES (104, 'STAR-26906', 11, 185470000, true);
INSERT INTO public.star VALUES (105, 'STAR-27207', 6, 281360000, true);
INSERT INTO public.star VALUES (106, 'STAR-15928', 14, 326730000, true);
INSERT INTO public.star VALUES (107, 'STAR-27052', 17, 81500000, true);
INSERT INTO public.star VALUES (108, 'STAR-10678', 15, 292530000, true);
INSERT INTO public.star VALUES (109, 'STAR-4448', 16, 262470000, true);
INSERT INTO public.star VALUES (110, 'STAR-14904', 17, 197990000, true);
INSERT INTO public.star VALUES (111, 'STAR-1529', 7, 163120000, true);
INSERT INTO public.star VALUES (113, 'STAR-32652', 15, 168400000, true);
INSERT INTO public.star VALUES (114, 'STAR-8148', 15, 128880000, true);
INSERT INTO public.star VALUES (115, 'STAR-28718', 4, 296060000, true);
INSERT INTO public.star VALUES (116, 'STAR-6040', 10, 68120000, true);
INSERT INTO public.star VALUES (117, 'STAR-1122', 17, 190570000, true);
INSERT INTO public.star VALUES (118, 'STAR-30176', 5, 182650000, true);
INSERT INTO public.star VALUES (119, 'STAR-7176', 16, 276800000, true);
INSERT INTO public.star VALUES (120, 'STAR-24633', 8, 278320000, true);
INSERT INTO public.star VALUES (121, 'STAR-30621', 9, 279660000, true);
INSERT INTO public.star VALUES (122, 'STAR-11128', 17, 33790000, true);
INSERT INTO public.star VALUES (123, 'STAR-17085', 15, 172460000, true);
INSERT INTO public.star VALUES (124, 'STAR-16208', 15, 124180000, true);
INSERT INTO public.star VALUES (125, 'STAR-18614', 14, 159370000, true);
INSERT INTO public.star VALUES (126, 'STAR-11465', 13, 315430000, true);
INSERT INTO public.star VALUES (127, 'STAR-14447', 13, 154210000, true);
INSERT INTO public.star VALUES (128, 'STAR-25688', 14, 241720000, true);
INSERT INTO public.star VALUES (129, 'STAR-5884', 8, 27290000, true);
INSERT INTO public.star VALUES (130, 'STAR-16790', 15, 60910000, true);
INSERT INTO public.star VALUES (131, 'STAR-8390', 5, 133920000, true);
INSERT INTO public.star VALUES (132, 'STAR-4490', 5, 71000000, true);
INSERT INTO public.star VALUES (133, 'STAR-10571', 17, 142230000, true);
INSERT INTO public.star VALUES (134, 'STAR-26123', 5, 323200000, true);
INSERT INTO public.star VALUES (135, 'STAR-1605', 9, 105710000, true);
INSERT INTO public.star VALUES (136, 'STAR-15294', 17, 231930000, true);
INSERT INTO public.star VALUES (138, 'STAR-26232', 12, 306720000, true);
INSERT INTO public.star VALUES (139, 'STAR-16812', 10, 10670000, true);
INSERT INTO public.star VALUES (140, 'STAR-201', 9, 165890000, true);
INSERT INTO public.star VALUES (141, 'STAR-31383', 15, 18340000, true);
INSERT INTO public.star VALUES (142, 'STAR-13137', 11, 111060000, true);
INSERT INTO public.star VALUES (143, 'STAR-24199', 10, 106170000, true);
INSERT INTO public.star VALUES (144, 'STAR-10843', 14, 251020000, true);
INSERT INTO public.star VALUES (145, 'STAR-16334', 14, 68620000, true);
INSERT INTO public.star VALUES (146, 'STAR-476', 16, 193760000, true);
INSERT INTO public.star VALUES (147, 'STAR-22778', 4, 105540000, true);
INSERT INTO public.star VALUES (148, 'STAR-1134', 6, 42990000, true);
INSERT INTO public.star VALUES (149, 'STAR-18640', 5, 262160000, true);
INSERT INTO public.star VALUES (150, 'STAR-16333', 13, 274430000, true);
INSERT INTO public.star VALUES (151, 'STAR-4536', 6, 203070000, true);
INSERT INTO public.star VALUES (152, 'STAR-10377', 13, 218840000, true);
INSERT INTO public.star VALUES (153, 'STAR-16739', 17, 214760000, true);
INSERT INTO public.star VALUES (154, 'STAR-28312', 12, 217870000, true);
INSERT INTO public.star VALUES (155, 'STAR-29315', 16, 139230000, true);
INSERT INTO public.star VALUES (156, 'STAR-10001', 6, 308410000, true);
INSERT INTO public.star VALUES (157, 'STAR-17963', 7, 280160000, true);
INSERT INTO public.star VALUES (158, 'STAR-10083', 9, 36840000, true);
INSERT INTO public.star VALUES (159, 'STAR-16662', 16, 41930000, true);
INSERT INTO public.star VALUES (160, 'STAR-29990', 13, 51900000, true);
INSERT INTO public.star VALUES (161, 'STAR-460', 4, 108970000, true);
INSERT INTO public.star VALUES (162, 'STAR-6596', 7, 198240000, true);
INSERT INTO public.star VALUES (163, 'STAR-7507', 15, 159950000, true);
INSERT INTO public.star VALUES (164, 'STAR-24700', 14, 281930000, true);
INSERT INTO public.star VALUES (165, 'STAR-14729', 15, 321080000, true);
INSERT INTO public.star VALUES (166, 'STAR-31519', 15, 199730000, true);
INSERT INTO public.star VALUES (167, 'STAR-27410', 17, 273950000, true);
INSERT INTO public.star VALUES (168, 'STAR-3481', 5, 163110000, true);
INSERT INTO public.star VALUES (169, 'STAR-15555', 14, 143630000, true);
INSERT INTO public.star VALUES (170, 'STAR-10208', 5, 18220000, true);
INSERT INTO public.star VALUES (171, 'STAR-24091', 7, 172390000, true);
INSERT INTO public.star VALUES (172, 'STAR-2505', 14, 38260000, true);
INSERT INTO public.star VALUES (173, 'STAR-14861', 4, 260250000, true);
INSERT INTO public.star VALUES (174, 'STAR-8898', 17, 313600000, true);
INSERT INTO public.star VALUES (175, 'STAR-21492', 9, 216630000, true);
INSERT INTO public.star VALUES (176, 'STAR-21106', 12, 277000000, true);
INSERT INTO public.star VALUES (177, 'STAR-17783', 10, 164950000, true);
INSERT INTO public.star VALUES (178, 'STAR-22306', 6, 312610000, true);
INSERT INTO public.star VALUES (179, 'STAR-13440', 5, 304100000, true);
INSERT INTO public.star VALUES (180, 'STAR-30381', 17, 253660000, true);
INSERT INTO public.star VALUES (181, 'STAR-22856', 12, 17180000, true);
INSERT INTO public.star VALUES (182, 'STAR-26444', 7, 196940000, true);
INSERT INTO public.star VALUES (183, 'STAR-6072', 10, 187140000, true);
INSERT INTO public.star VALUES (184, 'STAR-1343', 17, 7110000, true);
INSERT INTO public.star VALUES (185, 'STAR-27735', 4, 194700000, true);
INSERT INTO public.star VALUES (186, 'STAR-30048', 7, 303790000, true);
INSERT INTO public.star VALUES (187, 'STAR-5013', 9, 77870000, true);
INSERT INTO public.star VALUES (188, 'STAR-18308', 14, 158300000, true);
INSERT INTO public.star VALUES (189, 'STAR-18638', 12, 211100000, true);
INSERT INTO public.star VALUES (190, 'STAR-22350', 6, 180680000, true);
INSERT INTO public.star VALUES (191, 'STAR-12122', 15, 289220000, true);
INSERT INTO public.star VALUES (192, 'STAR-3483', 17, 158000000, true);
INSERT INTO public.star VALUES (193, 'STAR-764', 6, 120990000, true);
INSERT INTO public.star VALUES (194, 'STAR-14284', 10, 138120000, true);
INSERT INTO public.star VALUES (195, 'STAR-32627', 16, 22260000, true);
INSERT INTO public.star VALUES (196, 'STAR-10045', 11, 196580000, true);
INSERT INTO public.star VALUES (197, 'STAR-31618', 17, 178240000, true);
INSERT INTO public.star VALUES (198, 'STAR-18507', 9, 243930000, true);
INSERT INTO public.star VALUES (199, 'STAR-28728', 16, 100410000, true);
INSERT INTO public.star VALUES (200, 'STAR-26453', 17, 134070000, true);
INSERT INTO public.star VALUES (201, 'STAR-2313', 9, 241930000, true);
INSERT INTO public.star VALUES (202, 'STAR-27396', 4, 304320000, true);
INSERT INTO public.star VALUES (203, 'STAR-8933', 11, 35880000, true);
INSERT INTO public.star VALUES (204, 'STAR-28986', 12, 104350000, true);
INSERT INTO public.star VALUES (205, 'STAR-11859', 4, 26580000, true);
INSERT INTO public.star VALUES (206, 'STAR-31035', 15, 88980000, true);
INSERT INTO public.star VALUES (207, 'STAR-16209', 8, 48110000, true);
INSERT INTO public.star VALUES (208, 'STAR-8947', 8, 8760000, true);
INSERT INTO public.star VALUES (209, 'STAR-3032', 5, 213330000, true);
INSERT INTO public.star VALUES (210, 'STAR-8165', 12, 325950000, true);
INSERT INTO public.star VALUES (211, 'STAR-9255', 11, 78870000, true);
INSERT INTO public.star VALUES (212, 'STAR-15105', 7, 182960000, true);
INSERT INTO public.star VALUES (213, 'STAR-26363', 12, 80490000, true);
INSERT INTO public.star VALUES (214, 'STAR-1882', 11, 242420000, true);
INSERT INTO public.star VALUES (215, 'STAR-1731', 12, 61870000, true);
INSERT INTO public.star VALUES (216, 'STAR-8977', 4, 126220000, true);
INSERT INTO public.star VALUES (217, 'STAR-23265', 5, 96330000, true);
INSERT INTO public.star VALUES (218, 'STAR-3262', 17, 68300000, true);
INSERT INTO public.star VALUES (219, 'STAR-16756', 12, 254150000, true);
INSERT INTO public.star VALUES (220, 'STAR-19374', 5, 150950000, true);
INSERT INTO public.star VALUES (221, 'STAR-24798', 13, 103520000, true);
INSERT INTO public.star VALUES (222, 'STAR-31293', 16, 151580000, true);
INSERT INTO public.star VALUES (223, 'STAR-9065', 11, 294660000, true);
INSERT INTO public.star VALUES (224, 'STAR-1962', 4, 246620000, true);
INSERT INTO public.star VALUES (225, 'STAR-11001', 16, 296170000, true);
INSERT INTO public.star VALUES (226, 'STAR-13714', 7, 24650000, true);
INSERT INTO public.star VALUES (227, 'STAR-15688', 10, 326010000, true);
INSERT INTO public.star VALUES (228, 'STAR-14808', 4, 160030000, true);
INSERT INTO public.star VALUES (229, 'STAR-17991', 11, 271100000, true);
INSERT INTO public.star VALUES (230, 'STAR-22577', 6, 21330000, true);
INSERT INTO public.star VALUES (231, 'STAR-12229', 5, 150040000, true);
INSERT INTO public.star VALUES (232, 'STAR-22114', 13, 318920000, true);
INSERT INTO public.star VALUES (233, 'STAR-12726', 7, 93810000, true);
INSERT INTO public.star VALUES (234, 'STAR-25467', 9, 194260000, true);
INSERT INTO public.star VALUES (235, 'STAR-23975', 6, 327240000, true);
INSERT INTO public.star VALUES (236, 'STAR-23154', 13, 920000, true);
INSERT INTO public.star VALUES (237, 'STAR-11456', 17, 37350000, true);
INSERT INTO public.star VALUES (238, 'STAR-1759', 16, 81150000, true);
INSERT INTO public.star VALUES (239, 'STAR-3081', 5, 138220000, true);
INSERT INTO public.star VALUES (240, 'STAR-2416', 9, 153000000, true);
INSERT INTO public.star VALUES (241, 'STAR-2769', 7, 124460000, true);
INSERT INTO public.star VALUES (242, 'STAR-14306', 16, 293730000, true);
INSERT INTO public.star VALUES (243, 'STAR-30088', 14, 208290000, true);
INSERT INTO public.star VALUES (244, 'STAR-10626', 7, 186590000, true);
INSERT INTO public.star VALUES (245, 'STAR-4188', 8, 145320000, true);
INSERT INTO public.star VALUES (246, 'STAR-16385', 16, 58160000, true);
INSERT INTO public.star VALUES (247, 'STAR-11918', 8, 63990000, true);
INSERT INTO public.star VALUES (248, 'STAR-24555', 8, 175240000, true);
INSERT INTO public.star VALUES (249, 'STAR-16109', 9, 172770000, true);
INSERT INTO public.star VALUES (250, 'STAR-2516', 5, 194180000, true);
INSERT INTO public.star VALUES (251, 'STAR-17697', 4, 105340000, true);
INSERT INTO public.star VALUES (252, 'STAR-29908', 4, 109550000, true);
INSERT INTO public.star VALUES (253, 'STAR-7113', 7, 228310000, true);
INSERT INTO public.star VALUES (254, 'STAR-2007', 11, 180970000, true);
INSERT INTO public.star VALUES (255, 'STAR-21976', 11, 42520000, true);
INSERT INTO public.star VALUES (256, 'STAR-26764', 17, 228880000, true);


--
-- Name: astorids_astroids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astorids_astroids_id_seq', 256, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 19, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 128, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 256, true);


--
-- Name: astroids astorids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroids
    ADD CONSTRAINT astorids_pkey PRIMARY KEY (astroids_id);


--
-- Name: astroids astroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroids
    ADD CONSTRAINT astroids_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

