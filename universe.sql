--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    galaxy_types integer,
    age_in_millions_of_years integer
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
    name character varying(30) NOT NULL,
    distance_from_earth numeric NOT NULL,
    planet_id integer,
    age_in_millions_of_years integer
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
    name character varying(30) NOT NULL,
    is_spherical boolean,
    star_id integer,
    has_life boolean NOT NULL
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
-- Name: space_lunc; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_lunc (
    space_lunc_id integer NOT NULL,
    name character varying NOT NULL,
    is_launch boolean
);


ALTER TABLE public.space_lunc OWNER TO freecodecamp;

--
-- Name: space_lunc_space_lunc_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_lunc_space_lunc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_lunc_space_lunc_id_seq OWNER TO freecodecamp;

--
-- Name: space_lunc_space_lunc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_lunc_space_lunc_id_seq OWNED BY public.space_lunc.space_lunc_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    galaxy_id integer,
    age_in_millions_of_years integer NOT NULL
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space_lunc space_lunc_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_lunc ALTER COLUMN space_lunc_id SET DEFAULT nextval('public.space_lunc_space_lunc_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'ha nine planets and and other bodies', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Alcyoneus', 'A low-exitation, Fanaroff and Riley Class II radio galaxy, one of the largest discovered', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andremeda Galaxy', 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now. The two will eventually merge into a single new galaxy called', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cigar galaxy', 'Also known as Messier 82 or M82', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Comet Galaxy', 'The comet effect is caused by tidal stripping by its galaxy cluster', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sculptor Dwarf galaxy', 'Also known as Sculptor Dwarf Elliptical Galaxy, Sculptor Dwarf Spheroidal Galaxy', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lunar', 65000000, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 65000000, 2, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 65000000, 2, NULL);
INSERT INTO public.moon VALUES (4, 'lo', 87500000, 5, NULL);
INSERT INTO public.moon VALUES (5, 'callisto', 87500000, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', 87500000, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Ganymede', 87500000, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Pandora', 90500000, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Janus', 70500000, 6, NULL);
INSERT INTO public.moon VALUES (10, 'Mimas', 70500000, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Phoebe', 70500000, 6, NULL);
INSERT INTO public.moon VALUES (12, 'telesto', 80500000, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Miranda', 16500000, 7, NULL);
INSERT INTO public.moon VALUES (14, 'Ariel', 30800000, 7, NULL);
INSERT INTO public.moon VALUES (15, 'Umbriel', 30800000, 7, NULL);
INSERT INTO public.moon VALUES (16, 'Titania', 40000000, 7, NULL);
INSERT INTO public.moon VALUES (17, 'Oberon', 40000000, 7, NULL);
INSERT INTO public.moon VALUES (18, 'Despina', 60000000, 8, NULL);
INSERT INTO public.moon VALUES (19, 'Triton', 80000000, 8, NULL);
INSERT INTO public.moon VALUES (20, 'Larissa', 90000000, 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', true, 1, true);
INSERT INTO public.planet VALUES (2, 'Mars', true, 1, false);
INSERT INTO public.planet VALUES (3, 'Mecury', true, 1, false);
INSERT INTO public.planet VALUES (4, 'Vernus', true, 1, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, 1, false);
INSERT INTO public.planet VALUES (6, 'Saturn', true, 1, false);
INSERT INTO public.planet VALUES (7, 'Uranus', true, 1, false);
INSERT INTO public.planet VALUES (8, 'Neptune', true, 1, false);
INSERT INTO public.planet VALUES (9, 'Pluto', true, 1, false);
INSERT INTO public.planet VALUES (10, 'Ceres', true, 1, false);
INSERT INTO public.planet VALUES (11, 'Haumea', true, 1, false);
INSERT INTO public.planet VALUES (12, 'Makemake', true, 1, false);


--
-- Data for Name: space_lunc; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_lunc VALUES (1, 'Apollo', true);
INSERT INTO public.space_lunc VALUES (2, 'Apollo 12', true);
INSERT INTO public.space_lunc VALUES (3, 'Space X', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUN', NULL, 1, 5000000);
INSERT INTO public.star VALUES (2, 'Lynx', NULL, 2, 6000000);
INSERT INTO public.star VALUES (3, 'Adromeda', NULL, 3, 3000000);
INSERT INTO public.star VALUES (4, 'Ursa major', NULL, 4, 7000000);
INSERT INTO public.star VALUES (5, 'Scupltor', NULL, 5, 1000000);
INSERT INTO public.star VALUES (6, 'Orion', NULL, 6, 8000000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_lunc_space_lunc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_lunc_space_lunc_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: space_lunc space_lunc_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_lunc
    ADD CONSTRAINT space_lunc_name_key UNIQUE (name);


--
-- Name: space_lunc space_lunc_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_lunc
    ADD CONSTRAINT space_lunc_pkey PRIMARY KEY (space_lunc_id);


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

