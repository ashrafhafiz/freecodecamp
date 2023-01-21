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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    galaxy_type character varying(40) NOT NULL,
    distance_from_earth numeric(9,2)
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
    name character varying(40) NOT NULL,
    description text,
    moon_type character varying(20) NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(9,2),
    planet_id integer
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(40) NOT NULL,
    availability boolean
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    planet_type character varying(20) NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(9,2),
    star_id integer
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
    name character varying(40) NOT NULL,
    description text,
    star_type character varying(20) NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(9,2),
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'NGC 2525', NULL, 'spiral barred', 0.00);
INSERT INTO public.galaxy VALUES (2, 'NGC 4038', NULL, 'interacting', 65.00);
INSERT INTO public.galaxy VALUES (3, 'NGC 1275', NULL, 'seyfert', 250.00);
INSERT INTO public.galaxy VALUES (4, 'NGC 1792', NULL, 'spiral starbrust', 0.00);
INSERT INTO public.galaxy VALUES (5, 'M 104', NULL, 'spiral', 30.00);
INSERT INTO public.galaxy VALUES (6, 'NGC 1015', NULL, 'spiral barred', 120.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 'moon', false, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, 'moon', false, 1877, NULL, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, 'moon', false, 1877, NULL, 1);
INSERT INTO public.moon VALUES (4, 'Io', NULL, 'moon', false, 1610, NULL, 1);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, 'moon', false, 1610, NULL, 1);
INSERT INTO public.moon VALUES (6, 'Ganymede', NULL, 'moon', false, 1610, NULL, 1);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, 'moon', false, 1610, NULL, 1);
INSERT INTO public.moon VALUES (8, 'Amalthea', NULL, 'moon', false, 1892, NULL, 1);
INSERT INTO public.moon VALUES (9, 'Himalia', NULL, 'moon', false, 1904, NULL, 1);
INSERT INTO public.moon VALUES (10, 'Elara', NULL, 'moon', false, 1905, NULL, 1);
INSERT INTO public.moon VALUES (11, 'Pasiphae', NULL, 'moon', false, 1908, NULL, 1);
INSERT INTO public.moon VALUES (12, 'Sinope', NULL, 'moon', false, 1914, NULL, 1);
INSERT INTO public.moon VALUES (13, 'Lysithea', NULL, 'moon', false, 1938, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Carme', NULL, 'moon', false, 1938, NULL, 1);
INSERT INTO public.moon VALUES (15, 'Ananke', NULL, 'moon', false, 1951, NULL, 1);
INSERT INTO public.moon VALUES (16, 'Leda', NULL, 'moon', false, 1974, NULL, 1);
INSERT INTO public.moon VALUES (17, 'Thebe', NULL, 'moon', false, 1979, NULL, 1);
INSERT INTO public.moon VALUES (18, 'Adrastea', NULL, 'moon', false, 1979, NULL, 1);
INSERT INTO public.moon VALUES (19, 'Metis', NULL, 'moon', false, 1979, NULL, 1);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', NULL, 'moon', false, 2000, NULL, 1);
INSERT INTO public.moon VALUES (21, 'Themisto', NULL, 'moon', false, 2000, NULL, 1);
INSERT INTO public.moon VALUES (22, 'Megaclite', NULL, 'moon', false, 2000, NULL, 1);
INSERT INTO public.moon VALUES (23, 'Taygete', NULL, 'moon', false, 2000, NULL, 1);
INSERT INTO public.moon VALUES (24, 'Chaldene', NULL, 'moon', false, 2000, NULL, 1);
INSERT INTO public.moon VALUES (25, 'Harpalyke', NULL, 'moon', false, 2000, NULL, 1);
INSERT INTO public.moon VALUES (26, 'Kalyke', NULL, 'moon', false, 2000, NULL, 1);
INSERT INTO public.moon VALUES (27, 'Iocaste', NULL, 'moon', false, 2000, NULL, 1);
INSERT INTO public.moon VALUES (28, 'Erinome', NULL, 'moon', false, 2000, NULL, 1);
INSERT INTO public.moon VALUES (29, 'Isonoe', NULL, 'moon', false, 2000, NULL, 1);
INSERT INTO public.moon VALUES (30, 'Praxidike', NULL, 'moon', false, 2000, NULL, 1);
INSERT INTO public.moon VALUES (31, 'Autonoe', NULL, 'moon', false, 2001, NULL, 1);
INSERT INTO public.moon VALUES (32, 'Thyone', NULL, 'moon', false, 2001, NULL, 1);
INSERT INTO public.moon VALUES (33, 'Hermippe', NULL, 'moon', false, 2001, NULL, 1);
INSERT INTO public.moon VALUES (34, 'Aitne', NULL, 'moon', false, 2001, NULL, 1);
INSERT INTO public.moon VALUES (35, 'Eurydome', NULL, 'moon', false, 2001, NULL, 1);
INSERT INTO public.moon VALUES (36, 'Euanthe', NULL, 'moon', false, 2001, NULL, 1);
INSERT INTO public.moon VALUES (37, 'Euporie', NULL, 'moon', false, 2001, NULL, 1);
INSERT INTO public.moon VALUES (38, 'Orthosie', NULL, 'moon', false, 2001, NULL, 1);
INSERT INTO public.moon VALUES (39, 'Sponde', NULL, 'moon', false, 2001, NULL, 1);
INSERT INTO public.moon VALUES (40, 'Kale', NULL, 'moon', false, 2001, NULL, 1);
INSERT INTO public.moon VALUES (41, 'Pasithee', NULL, 'moon', false, 2001, NULL, 1);
INSERT INTO public.moon VALUES (42, 'Hegemone', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (43, 'Mneme', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (44, 'Aoede', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (45, 'Thelxinoe', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (46, 'Arche', NULL, 'moon', false, 2002, NULL, 1);
INSERT INTO public.moon VALUES (47, 'Kallichore', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (48, 'Helike', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (49, 'Carpo', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (50, 'Eukelade', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (51, 'Cyllene', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (52, 'Kore', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (53, 'Herse', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (54, 'S/2010 J 1', NULL, 'moon', false, 2010, NULL, 1);
INSERT INTO public.moon VALUES (55, 'S/2010 J 2', NULL, 'moon', false, 2010, NULL, 1);
INSERT INTO public.moon VALUES (56, 'Dia', NULL, 'moon', false, 2000, NULL, 1);
INSERT INTO public.moon VALUES (57, 'S/2016 J 1', NULL, 'moon', false, 2016, NULL, 1);
INSERT INTO public.moon VALUES (58, 'S/2003 J 18', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (59, 'S/2011 J 2', NULL, 'moon', false, 2011, NULL, 1);
INSERT INTO public.moon VALUES (60, 'Eirene', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (61, 'Philophrosyne', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (62, 'S/2017 J 1', NULL, 'moon', false, 2017, NULL, 1);
INSERT INTO public.moon VALUES (63, 'Eupheme', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (64, 'S/2003 J 19', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (65, 'Valetudo', NULL, 'moon', false, 2016, NULL, 1);
INSERT INTO public.moon VALUES (66, 'S/2017 J 2', NULL, 'moon', false, 2017, NULL, 1);
INSERT INTO public.moon VALUES (67, 'S/2017 J 3', NULL, 'moon', false, 2017, NULL, 1);
INSERT INTO public.moon VALUES (68, 'Pandia', NULL, 'moon', false, 2017, NULL, 1);
INSERT INTO public.moon VALUES (69, 'S/2017 J 5', NULL, 'moon', false, 2017, NULL, 1);
INSERT INTO public.moon VALUES (70, 'S/2017 J 6', NULL, 'moon', false, 2017, NULL, 1);
INSERT INTO public.moon VALUES (71, 'S/2017 J 7', NULL, 'moon', false, 2017, NULL, 1);
INSERT INTO public.moon VALUES (72, 'S/2017 J 8', NULL, 'moon', false, 2017, NULL, 1);
INSERT INTO public.moon VALUES (73, 'S/2017 J 9', NULL, 'moon', false, 2017, NULL, 1);
INSERT INTO public.moon VALUES (74, 'Ersa', NULL, 'moon', false, 2018, NULL, 1);
INSERT INTO public.moon VALUES (75, 'S/2011 J 1', NULL, 'moon', false, 2011, NULL, 1);
INSERT INTO public.moon VALUES (76, 'S/2003 J 2', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (77, 'S/2003 J 4', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (78, 'S/2003 J 9', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (79, 'S/2003 J 10', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (80, 'S/2003 J 12', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (81, 'S/2003 J 16', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (82, 'S/2003 J 23', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (83, 'S/2003 J 24', NULL, 'moon', false, 2003, NULL, 1);
INSERT INTO public.moon VALUES (84, 'S/2011 J 3', NULL, 'moon', false, 2011, NULL, 1);
INSERT INTO public.moon VALUES (85, 'S/2016 J 3', NULL, 'moon', false, 2016, NULL, 1);
INSERT INTO public.moon VALUES (86, 'S/2018 J 2', NULL, 'moon', false, 2018, NULL, 1);
INSERT INTO public.moon VALUES (87, 'S/2018 J 3', NULL, 'moon', false, 2018, NULL, 1);
INSERT INTO public.moon VALUES (88, 'S/2018 J 4', NULL, 'moon', false, 2018, NULL, 1);
INSERT INTO public.moon VALUES (89, 'S/2021 J 1', NULL, 'moon', false, 2021, NULL, 1);
INSERT INTO public.moon VALUES (90, 'S/2021 J 2', NULL, 'moon', false, 2021, NULL, 1);
INSERT INTO public.moon VALUES (91, 'S/2021 J 3', NULL, 'moon', false, 2021, NULL, 1);
INSERT INTO public.moon VALUES (92, 'S/2021 J 4', NULL, 'moon', false, 2021, NULL, 1);
INSERT INTO public.moon VALUES (93, 'S/2021 J 5', NULL, 'moon', false, 2021, NULL, 1);
INSERT INTO public.moon VALUES (94, 'S/2021 J 6', NULL, 'moon', false, 2021, NULL, 1);
INSERT INTO public.moon VALUES (95, 'Mimas', NULL, 'moon', false, 1789, NULL, 2);
INSERT INTO public.moon VALUES (96, 'Enceladus', NULL, 'moon', false, 1789, NULL, 2);
INSERT INTO public.moon VALUES (97, 'Tethys', NULL, 'moon', false, 1684, NULL, 2);
INSERT INTO public.moon VALUES (98, 'Dione', NULL, 'moon', false, 1684, NULL, 2);
INSERT INTO public.moon VALUES (99, 'Rhea', NULL, 'moon', false, 1672, NULL, 2);
INSERT INTO public.moon VALUES (100, 'Titan', NULL, 'moon', false, 1655, NULL, 2);
INSERT INTO public.moon VALUES (101, 'Hyperion', NULL, 'moon', false, 1848, NULL, 2);
INSERT INTO public.moon VALUES (102, 'Iapetus', NULL, 'moon', false, 1671, NULL, 2);
INSERT INTO public.moon VALUES (103, 'Phoebe', NULL, 'moon', false, 1899, NULL, 2);
INSERT INTO public.moon VALUES (104, 'Janus', NULL, 'moon', false, 1966, NULL, 2);
INSERT INTO public.moon VALUES (105, 'Epimetheus', NULL, 'moon', false, 1966, NULL, 2);
INSERT INTO public.moon VALUES (106, 'Helene', NULL, 'moon', false, 1980, NULL, 2);
INSERT INTO public.moon VALUES (107, 'Telesto', NULL, 'moon', false, 1980, NULL, 2);
INSERT INTO public.moon VALUES (108, 'Calypso', NULL, 'moon', false, 1980, NULL, 2);
INSERT INTO public.moon VALUES (109, 'Atlas', NULL, 'moon', false, 1980, NULL, 2);
INSERT INTO public.moon VALUES (110, 'Prometheus', NULL, 'moon', false, 1980, NULL, 2);
INSERT INTO public.moon VALUES (111, 'Pandora', NULL, 'moon', false, 1980, NULL, 2);
INSERT INTO public.moon VALUES (112, 'Pan', NULL, 'moon', false, 1990, NULL, 2);
INSERT INTO public.moon VALUES (113, 'Ymir', NULL, 'moon', false, 2000, NULL, 2);
INSERT INTO public.moon VALUES (114, 'Paaliaq', NULL, 'moon', false, 2000, NULL, 2);
INSERT INTO public.moon VALUES (115, 'Tarvos', NULL, 'moon', false, 2000, NULL, 2);
INSERT INTO public.moon VALUES (116, 'Ijiraq', NULL, 'moon', false, 2000, NULL, 2);
INSERT INTO public.moon VALUES (117, 'Suttungr', NULL, 'moon', false, 2000, NULL, 2);
INSERT INTO public.moon VALUES (118, 'Kiviuq', NULL, 'moon', false, 2000, NULL, 2);
INSERT INTO public.moon VALUES (119, 'Mundilfari', NULL, 'moon', false, 2000, NULL, 2);
INSERT INTO public.moon VALUES (120, 'Albiorix', NULL, 'moon', false, 2000, NULL, 2);
INSERT INTO public.moon VALUES (121, 'Skathi', NULL, 'moon', false, 2000, NULL, 2);
INSERT INTO public.moon VALUES (122, 'Erriapus', NULL, 'moon', false, 2000, NULL, 2);
INSERT INTO public.moon VALUES (123, 'Siarnaq', NULL, 'moon', false, 2000, NULL, 2);
INSERT INTO public.moon VALUES (124, 'Thrymr', NULL, 'moon', false, 2000, NULL, 2);
INSERT INTO public.moon VALUES (125, 'Narvi', NULL, 'moon', false, 2003, NULL, 2);
INSERT INTO public.moon VALUES (126, 'Methone', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (127, 'Pallene', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (128, 'Polydeuces', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (129, 'Daphnis', NULL, 'moon', false, 2005, NULL, 2);
INSERT INTO public.moon VALUES (130, 'Aegir', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (131, 'Bebhionn', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (132, 'Bergelmir', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (133, 'Bestla', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (134, 'Farbauti', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (135, 'Fenrir', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (136, 'Fornjot', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (137, 'Hati', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (138, 'Hyrrokkin', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (139, 'Kari', NULL, 'moon', false, 2006, NULL, 2);
INSERT INTO public.moon VALUES (140, 'Loge', NULL, 'moon', false, 2006, NULL, 2);
INSERT INTO public.moon VALUES (141, 'Skoll', NULL, 'moon', false, 2006, NULL, 2);
INSERT INTO public.moon VALUES (142, 'Surtur', NULL, 'moon', false, 2006, NULL, 2);
INSERT INTO public.moon VALUES (143, 'Anthe', NULL, 'moon', false, 2007, NULL, 2);
INSERT INTO public.moon VALUES (144, 'Jarnsaxa', NULL, 'moon', false, 2006, NULL, 2);
INSERT INTO public.moon VALUES (145, 'Greip', NULL, 'moon', false, 2006, NULL, 2);
INSERT INTO public.moon VALUES (146, 'Tarqeq', NULL, 'moon', false, 2007, NULL, 2);
INSERT INTO public.moon VALUES (147, 'Aegaeon', NULL, 'moon', false, 2008, NULL, 2);
INSERT INTO public.moon VALUES (148, 'Gridr', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (149, 'Angrboda', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (150, 'Skrymir', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (151, 'Gerd', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (152, 'S/2004 S 26', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (153, 'Eggther', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (154, 'S/2004 S 29', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (155, 'Beli', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (156, 'Gunnlod', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (157, 'Thiazzi', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (158, 'S/2004 S 34', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (159, 'Alvaldi', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (160, 'Geirrod', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (161, 'S/2004 S 7', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (162, 'S/2004 S 12', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (163, 'S/2004 S 13', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (164, 'S/2004 S 17', NULL, 'moon', false, 2004, NULL, 2);
INSERT INTO public.moon VALUES (165, 'S/2004 S 21', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (166, 'S/2004 S 24', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (167, 'S/2004 S 28', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (168, 'S/2004 S 31', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (169, 'S/2004 S 36', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (170, 'S/2004 S 37', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (171, 'S/2004 S 39', NULL, 'moon', false, 2019, NULL, 2);
INSERT INTO public.moon VALUES (172, 'S/2006 S 1', NULL, 'moon', false, 2006, NULL, 2);
INSERT INTO public.moon VALUES (173, 'S/2006 S 3', NULL, 'moon', false, 2006, NULL, 2);
INSERT INTO public.moon VALUES (174, 'S/2007 S 2', NULL, 'moon', false, 2007, NULL, 2);
INSERT INTO public.moon VALUES (175, 'S/2007 S 3', NULL, 'moon', false, 2007, NULL, 2);
INSERT INTO public.moon VALUES (176, 'S/2009 S 1', NULL, 'moon', false, 2009, NULL, 2);
INSERT INTO public.moon VALUES (177, 'S/2019 S 1', NULL, 'moon', false, 2021, NULL, 2);
INSERT INTO public.moon VALUES (178, 'Ariel', NULL, 'moon', false, 1851, NULL, 7);
INSERT INTO public.moon VALUES (179, 'Umbriel', NULL, 'moon', false, 1851, NULL, 7);
INSERT INTO public.moon VALUES (180, 'Titania', NULL, 'moon', false, 1787, NULL, 7);
INSERT INTO public.moon VALUES (181, 'Oberon', NULL, 'moon', false, 1787, NULL, 7);
INSERT INTO public.moon VALUES (182, 'Miranda', NULL, 'moon', false, 1948, NULL, 7);
INSERT INTO public.moon VALUES (183, 'Cordelia', NULL, 'moon', false, 1986, NULL, 7);
INSERT INTO public.moon VALUES (184, 'Ophelia', NULL, 'moon', false, 1986, NULL, 7);
INSERT INTO public.moon VALUES (185, 'Bianca', NULL, 'moon', false, 1986, NULL, 7);
INSERT INTO public.moon VALUES (186, 'Cressida', NULL, 'moon', false, 1986, NULL, 7);
INSERT INTO public.moon VALUES (187, 'Desdemona', NULL, 'moon', false, 1986, NULL, 7);
INSERT INTO public.moon VALUES (188, 'Juliet', NULL, 'moon', false, 1986, NULL, 7);
INSERT INTO public.moon VALUES (189, 'Portia', NULL, 'moon', false, 1986, NULL, 7);
INSERT INTO public.moon VALUES (190, 'Rosalind', NULL, 'moon', false, 1986, NULL, 7);
INSERT INTO public.moon VALUES (191, 'Belinda', NULL, 'moon', false, 1986, NULL, 7);
INSERT INTO public.moon VALUES (192, 'Puck', NULL, 'moon', false, 1985, NULL, 7);
INSERT INTO public.moon VALUES (193, 'Caliban', NULL, 'moon', false, 1997, NULL, 7);
INSERT INTO public.moon VALUES (194, 'Sycorax', NULL, 'moon', false, 1997, NULL, 7);
INSERT INTO public.moon VALUES (195, 'Prospero', NULL, 'moon', false, 1999, NULL, 7);
INSERT INTO public.moon VALUES (196, 'Setebos', NULL, 'moon', false, 1999, NULL, 7);
INSERT INTO public.moon VALUES (197, 'Stephano', NULL, 'moon', false, 1999, NULL, 7);
INSERT INTO public.moon VALUES (198, 'Trinculo', NULL, 'moon', false, 2001, NULL, 7);
INSERT INTO public.moon VALUES (199, 'Francisco', NULL, 'moon', false, 2001, NULL, 7);
INSERT INTO public.moon VALUES (200, 'Margaret', NULL, 'moon', false, 2003, NULL, 7);
INSERT INTO public.moon VALUES (201, 'Ferdinand', NULL, 'moon', false, 2001, NULL, 7);
INSERT INTO public.moon VALUES (202, 'Perdita', NULL, 'moon', false, 1999, NULL, 7);
INSERT INTO public.moon VALUES (203, 'Mab', NULL, 'moon', false, 2003, NULL, 7);
INSERT INTO public.moon VALUES (204, 'Cupid', NULL, 'moon', false, 2003, NULL, 7);
INSERT INTO public.moon VALUES (205, 'Triton', NULL, 'moon', false, 1846, NULL, 8);
INSERT INTO public.moon VALUES (206, 'Nereid', NULL, 'moon', false, 1949, NULL, 8);
INSERT INTO public.moon VALUES (207, 'Naiad', NULL, 'moon', false, 1989, NULL, 8);
INSERT INTO public.moon VALUES (208, 'Thalassa', NULL, 'moon', false, 1989, NULL, 8);
INSERT INTO public.moon VALUES (209, 'Despina', NULL, 'moon', false, 1989, NULL, 8);
INSERT INTO public.moon VALUES (210, 'Galatea', NULL, 'moon', false, 1989, NULL, 8);
INSERT INTO public.moon VALUES (211, 'Larissa', NULL, 'moon', false, 1981, NULL, 8);
INSERT INTO public.moon VALUES (212, 'Proteus', NULL, 'moon', false, 1989, NULL, 8);
INSERT INTO public.moon VALUES (213, 'Halimede', NULL, 'moon', false, 2002, NULL, 8);
INSERT INTO public.moon VALUES (214, 'Psamathe', NULL, 'moon', false, 2003, NULL, 8);
INSERT INTO public.moon VALUES (215, 'Sao', NULL, 'moon', false, 2002, NULL, 8);
INSERT INTO public.moon VALUES (216, 'Laomedeia', NULL, 'moon', false, 2002, NULL, 8);
INSERT INTO public.moon VALUES (217, 'Neso', NULL, 'moon', false, 2002, NULL, 8);
INSERT INTO public.moon VALUES (218, 'Hippocamp', NULL, 'moon', false, 2013, NULL, 8);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'AAA', false);
INSERT INTO public.more_info VALUES (2, 'BBB', false);
INSERT INTO public.more_info VALUES (3, 'CCC', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jupiter', NULL, 'gas giant', true, 0, 0.00, 5);
INSERT INTO public.planet VALUES (2, 'Saturn', NULL, 'gas giant', true, 0, 0.00, 5);
INSERT INTO public.planet VALUES (3, 'Kelt-9b', NULL, 'gas giant', true, 0, 0.00, 4);
INSERT INTO public.planet VALUES (4, 'Kepler-7b', NULL, 'gas giant', true, 0, 0.00, 4);
INSERT INTO public.planet VALUES (5, 'GJ 15 A b', NULL, 'Super Earth', true, 0, 0.00, 3);
INSERT INTO public.planet VALUES (6, '55 Cancri e', NULL, 'Super Earth', true, 0, 0.00, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, 'Neptune-like', true, 0, 0.00, 5);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, 'Neptune-like', true, 0, 0.00, 5);
INSERT INTO public.planet VALUES (9, 'HAT-P-26P', NULL, 'Neptune-like', true, 0, 0.00, 4);
INSERT INTO public.planet VALUES (10, 'GJ 436 b', NULL, 'Neptune-like', true, 0, 0.00, 4);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1 e', NULL, 'Terrestrial', true, 0, 0.00, 3);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1 d', NULL, 'Terrestrial', true, 0, 0.00, 3);
INSERT INTO public.planet VALUES (13, 'Mercury', NULL, 'Terrestrial', true, 0, 0.00, 5);
INSERT INTO public.planet VALUES (14, 'Venus', NULL, 'Terrestrial', true, 0, 0.00, 5);
INSERT INTO public.planet VALUES (15, 'Earth', NULL, 'Terrestrial', true, 0, 0.00, 5);
INSERT INTO public.planet VALUES (16, 'Mars', NULL, 'Terrestrial', true, 0, 0.00, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Vega', NULL, 'blue', true, 0, 0.00, 1);
INSERT INTO public.star VALUES (2, 'Meissa', NULL, 'blue', true, 0, 0.00, 2);
INSERT INTO public.star VALUES (3, 'Rigel', NULL, 'blue', true, 0, 0.00, 3);
INSERT INTO public.star VALUES (4, 'Procyon', NULL, 'blue white', true, 0, 0.00, 4);
INSERT INTO public.star VALUES (5, 'Sun', NULL, 'white yellow', true, 0, 0.00, 5);
INSERT INTO public.star VALUES (6, 'Pollux', NULL, 'orange', true, 0, 0.00, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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

