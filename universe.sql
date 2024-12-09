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
    name character varying(40) NOT NULL,
    distance_from_earth numeric,
    description text,
    diameter_in_km integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_from_earth numeric,
    is_spherical boolean,
    description text,
    has_life boolean,
    diameter_in_km integer,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_from_earth numeric,
    has_life boolean,
    description text,
    is_spherical boolean,
    diameter_in_km integer,
    star_id integer NOT NULL
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
    distance_from_earth numeric,
    description text,
    diameter_in_km integer,
    galaxy_id integer NOT NULL
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 'Our home galaxy', 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, 'Nearest spiral galaxy', 220000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000000, 'A member of the Local Group', 60000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 29000000, 'A bright galaxy with a large bulge', 50000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 23000000, 'Famous for its spiral arms', 60000);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 21000000, 'A face-on spiral galaxy', 170000);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 'A galaxy with a flat, rotating disk containing stars, gas, and dust, and a central concentration of stars known as the bulge. Examples include the Milky Way and Andromeda.');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', 'A galaxy with an ellipsoidal shape and a smooth, nearly featureless brightness profile. These galaxies are typically older and contain less interstellar material.');
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', 'A galaxy that does not have a distinct regular shape, unlike a spiral or elliptical galaxy. These galaxies often appear chaotic and lack a central bulge or disk.');
INSERT INTO public.galaxy_types VALUES (4, 'Lenticular', 'A galaxy that has a central bulge and a disk but lacks the spiral arms of a spiral galaxy. Lenticular galaxies are considered a transitional type between spiral and elliptical galaxies.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (41, 'Moon', 0, true, 'Earth’s only natural satellite', false, 3474, 1);
INSERT INTO public.moon VALUES (42, 'Phobos', 0.0002, true, 'One of Mars’ small moons', false, 22, 2);
INSERT INTO public.moon VALUES (43, 'Deimos', 0.0002, true, 'The smaller moon of Mars', false, 12, 2);
INSERT INTO public.moon VALUES (44, 'Titan', 0.0008, true, 'Saturn’s largest moon', false, 5150, 5);
INSERT INTO public.moon VALUES (45, 'Ganymede', 0.0007, true, 'Jupiter’s largest moon', false, 5262, 4);
INSERT INTO public.moon VALUES (46, 'Callisto', 0.0009, true, 'Heavily cratered moon of Jupiter', false, 4820, 4);
INSERT INTO public.moon VALUES (47, 'Io', 0.0005, true, 'A volcanic moon of Jupiter', false, 3642, 4);
INSERT INTO public.moon VALUES (48, 'Europa', 0.0006, true, 'Jupiter’s moon with icy surface', false, 3121, 4);
INSERT INTO public.moon VALUES (49, 'Enceladus', 0.001, true, 'Saturn’s icy moon with geysers', false, 500, 5);
INSERT INTO public.moon VALUES (50, 'Triton', 0.0015, true, 'Neptune’s largest moon', false, 2707, 6);
INSERT INTO public.moon VALUES (51, 'Rhea', 0.0012, true, 'Second-largest moon of Saturn', false, 1528, 5);
INSERT INTO public.moon VALUES (52, 'Mimas', 0.001, true, 'Small moon of Saturn', false, 396, 5);
INSERT INTO public.moon VALUES (53, 'Himalia', 0.0006, true, 'A small moon of Jupiter, part of the Himalia group.', false, 170, 4);
INSERT INTO public.moon VALUES (54, 'Thebe', 0.0007, true, 'An inner moon of Jupiter, located just outside the orbit of Amalthea.', false, 100, 4);
INSERT INTO public.moon VALUES (55, 'Iapetus', 0.0014, true, 'Saturn’s moon with one side much darker than the other.', false, 1469, 5);
INSERT INTO public.moon VALUES (56, 'Tethys', 0.0013, true, 'A moon of Saturn, notable for its bright surface and large impact crater.', false, 1060, 5);
INSERT INTO public.moon VALUES (57, 'Nereid', 0.0016, true, 'A moon of Neptune with a highly eccentric orbit.', false, 340, 6);
INSERT INTO public.moon VALUES (58, 'Proteus', 0.0017, true, 'Neptune’s second-largest moon, with an irregular shape.', false, 418, 6);
INSERT INTO public.moon VALUES (59, 'Oberon', 0.0020, true, 'One of Uranus’s largest moons, with a heavily cratered surface.', false, 1523, 7);
INSERT INTO public.moon VALUES (60, 'Titania', 0.0022, true, 'Uranus’s largest moon, known for its fault canyons and ice-covered surface.', false, 1578, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, true, 'Home to humans', true, 12742, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 0.00015, false, 'Known as the red planet', true, 6792, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 0.0002, false, 'Second planet from the Sun', true, 12104, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 0.0005, false, 'Largest planet in the solar system', true, 139820, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 0.0008, false, 'Famous for its rings', true, 116460, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', 0.0015, false, 'Blue and farthest from the Sun', true, 49244, 1);
INSERT INTO public.planet VALUES (7, 'Proxima b', 4.24, true, 'Closest exoplanet to Earth', true, 12742, 5);
INSERT INTO public.planet VALUES (8, 'Kepler-22b', 600, true, 'Exoplanet in the habitable zone', true, 24300, 2);
INSERT INTO public.planet VALUES (9, 'TRAPPIST-1e', 39, true, 'Earth-sized exoplanet', true, 12742, 2);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', 20, true, 'Potentially habitable exoplanet', true, 14000, 3);
INSERT INTO public.planet VALUES (11, 'HD 209458b', 150, false, 'Hot Jupiter-type exoplanet', true, 140000, 4);
INSERT INTO public.planet VALUES (12, 'Kepler-452b', 1400, true, 'Super-Earth exoplanet', true, 20000, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 'Closest star to Earth', 1392000, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 8.6, 'Brightest star in the night sky', 2400000, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 642.5, 'A red supergiant star', 1180000000, 1);
INSERT INTO public.star VALUES (4, 'Rigel', 860, 'A blue supergiant star', 1160000000, 2);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 4.37, 'Closest stellar system to the Sun', 1730000, 1);
INSERT INTO public.star VALUES (6, 'Vega', 25, 'A bright star in the Lyra constellation', 2200000, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 60, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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

