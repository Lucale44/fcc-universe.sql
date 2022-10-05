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
    name character varying(30) NOT NULL,
    distance_in_ly integer,
    diameter_in_ly integer,
    discovered text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    planet_id integer NOT NULL,
    radius_greater_than_moon boolean,
    discovery_year integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(30),
    distance_in_kly numeric(4,1),
    constellation text NOT NULL
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    orbital_period_in_days numeric(6,1),
    mass_greater_than_earth boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    distance_in_ly integer,
    temp_in_kelvin integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 100000, 'Galilei');
INSERT INTO public.galaxy VALUES (2, 'LMC', 158000, 14000, 'Vespucci');
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 2500000, 200000, 'Sufi');
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 11500000, 37000, 'Bode');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 20870000, 170000, 'Mechain');
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 29350000, 50000, 'Mechain');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, false, 1877);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, false, 1877);
INSERT INTO public.moon VALUES (4, 'Io', 5, true, 1610);
INSERT INTO public.moon VALUES (5, 'Europa', 5, true, 1610);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, true, 1610);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, true, 1610);
INSERT INTO public.moon VALUES (8, 'Mimas', 6, false, 1789);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, false, 1789);
INSERT INTO public.moon VALUES (10, 'Tethys', 6, false, 1684);
INSERT INTO public.moon VALUES (11, 'Dione', 6, false, 1684);
INSERT INTO public.moon VALUES (12, 'Rhea', 6, false, 1672);
INSERT INTO public.moon VALUES (13, 'Titan', 6, true, 1655);
INSERT INTO public.moon VALUES (14, 'Lapetus', 6, false, 1671);
INSERT INTO public.moon VALUES (15, 'Ariel', 7, false, 1851);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, false, 1851);
INSERT INTO public.moon VALUES (17, 'Tritania', 7, false, 1787);
INSERT INTO public.moon VALUES (18, 'Oberon', 7, false, 1787);
INSERT INTO public.moon VALUES (19, 'Miranda', 7, false, 1948);
INSERT INTO public.moon VALUES (20, 'Triton', 8, false, 1846);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'Glowing Eye', 6.5, 'Aquila');
INSERT INTO public.nebula VALUES (2, 'Bowtie Nebula', 4.7, 'Hercules');
INSERT INTO public.nebula VALUES (3, 'Ghost of Jupiter', 3.5, 'Cepheus');
INSERT INTO public.nebula VALUES (4, 'Blinking Planetary', 1.4, 'Hydra');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 87.9, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 224.7, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 365.3, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 686.9, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 4332.6, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 10759.2, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 30688.5, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 60182.1, true);
INSERT INTO public.planet VALUES (9, 'Proxima b', 2, 11.1, true);
INSERT INTO public.planet VALUES (10, 'Proxima c', 2, 1928.3, true);
INSERT INTO public.planet VALUES (11, 'Tau Ceti e', 3, 163.2, true);
INSERT INTO public.planet VALUES (12, 'Tau Ceti f', 3, 640.8, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, 0, 5772);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 4, 3042);
INSERT INTO public.star VALUES (3, 'Tau Ceti', 1, 12, 5344);
INSERT INTO public.star VALUES (4, 'Alpha Doradus', 2, 169, 11588);
INSERT INTO public.star VALUES (5, 'R Doradus', 2, 178, 2710);
INSERT INTO public.star VALUES (6, 'Alpharatz', 3, 97, 8500);


--
-- Name: galaxy galaxy_diameter_in_ly_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_diameter_in_ly_key UNIQUE (diameter_in_ly);


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
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


--
-- Name: planet planet_orbital_period_in_days_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_orbital_period_in_days_key UNIQUE (orbital_period_in_days);


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
-- Name: star star_temp_in_kelvin_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_temp_in_kelvin_key UNIQUE (temp_in_kelvin);


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

