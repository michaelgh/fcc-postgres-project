--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    galaxy_id bigint NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    age_in_years integer,
    diameter_km numeric,
    is_habitted boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: habited; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.habited (
    is_habitable boolean DEFAULT true,
    population numeric(15,2),
    technology_level numeric(5,2),
    habited_id bigint NOT NULL,
    name character varying(30),
    galaxy text NOT NULL,
    planet text NOT NULL,
    moon text
);


ALTER TABLE public.habited OWNER TO freecodecamp;

--
-- Name: habited_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.habited ALTER COLUMN habited_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.habited_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id bigint NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    age_in_years integer,
    diameter_km numeric,
    is_habitted boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id bigint NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    age_in_years integer,
    diameter_km numeric,
    is_habitted boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id bigint NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    age_in_years integer,
    diameter_km numeric,
    is_habitted boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (1, 'Mikly Way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (2, 'Andromeda', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (3, 'Triangulum', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (4, 'Whirlpool', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (5, 'Sombrero', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (6, 'Messier 81', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (7, 'Milky Way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (8, 'Andromeda', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (9, 'Triangulum', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (10, 'Whirlpool', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (11, 'Sombrero', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (12, 'Messier 81', NULL, NULL, NULL, NULL);


--
-- Data for Name: habited; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.habited OVERRIDING SYSTEM VALUE VALUES (true, NULL, NULL, 1, NULL, 'Milky Way', 'Earth', 'Luna');
INSERT INTO public.habited OVERRIDING SYSTEM VALUE VALUES (true, NULL, NULL, 2, NULL, 'Milky Way', 'Earth', 'Luna');
INSERT INTO public.habited OVERRIDING SYSTEM VALUE VALUES (true, NULL, NULL, 3, NULL, 'Milky Way', 'Earth', 'Luna');
INSERT INTO public.habited OVERRIDING SYSTEM VALUE VALUES (true, NULL, NULL, 4, NULL, 'Andromeda', 'Proxima b', 'None');
INSERT INTO public.habited OVERRIDING SYSTEM VALUE VALUES (true, NULL, NULL, 5, NULL, 'Milky Way', 'Mars', 'Phobos');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (81, 'Moon', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (82, 'Phobos', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (83, 'Deimos', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (84, 'Europa', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (85, 'Ganymede', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (86, 'Callisto', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (87, 'Titan', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (88, 'Rhea', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (89, 'Iapetus', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (90, 'Dione', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (91, 'MoonX1', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (92, 'MoonX2', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (93, 'MoonX3', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (94, 'MoonX4', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (95, 'MoonY1', NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (96, 'MoonY2', NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (97, 'MoonZ1', NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (98, 'MoonZ2', NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (99, 'MoonZ3', NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (100, 'MoonZ4', NULL, NULL, NULL, NULL, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (1, 'Mercury', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (2, 'Venus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (3, 'Earth', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (4, 'Mars', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (7, 'PlanetX1', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (8, 'PlanetX2', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (9, 'PlanetY1', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (10, 'PlanetY2', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (11, 'PlanetZ1', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (12, 'PlanetZ2', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (13, 'Mercury', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (14, 'Venus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (15, 'Earth', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (16, 'Mars', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (17, 'Jupiter', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (18, 'Saturn', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (19, 'PlanetX1', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (20, 'PlanetX2', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (21, 'PlanetY1', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (22, 'PlanetY2', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (23, 'PlanetZ1', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (24, 'PlanetZ2', NULL, NULL, NULL, NULL, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (1, 'Sun', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (2, 'Proxima Centuri', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (3, 'Rigel', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (4, 'Sirius', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (5, 'Betelgeuse', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (6, 'Alpha Centuauri', NULL, NULL, NULL, NULL, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 12, true);


--
-- Name: habited_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.habited_id_seq', 5, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 100, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 24, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: habited habited_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habited
    ADD CONSTRAINT habited_pkey PRIMARY KEY (habited_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: habited unique_habited_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habited
    ADD CONSTRAINT unique_habited_id UNIQUE (habited_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


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

