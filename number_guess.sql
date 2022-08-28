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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    attempts integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 585, 9);
INSERT INTO public.games VALUES (2, 473, 9);
INSERT INTO public.games VALUES (3, 932, 10);
INSERT INTO public.games VALUES (4, 800, 10);
INSERT INTO public.games VALUES (5, 712, 9);
INSERT INTO public.games VALUES (6, 956, 9);
INSERT INTO public.games VALUES (7, 938, 9);
INSERT INTO public.games VALUES (8, 425, 11);
INSERT INTO public.games VALUES (9, 958, 11);
INSERT INTO public.games VALUES (10, 921, 12);
INSERT INTO public.games VALUES (11, 86, 12);
INSERT INTO public.games VALUES (12, 355, 11);
INSERT INTO public.games VALUES (13, 559, 11);
INSERT INTO public.games VALUES (14, 220, 11);
INSERT INTO public.games VALUES (15, 9, 13);
INSERT INTO public.games VALUES (16, 9, 13);
INSERT INTO public.games VALUES (17, 15, 13);
INSERT INTO public.games VALUES (18, 13, 13);
INSERT INTO public.games VALUES (19, 415, 14);
INSERT INTO public.games VALUES (20, 107, 14);
INSERT INTO public.games VALUES (21, 142, 15);
INSERT INTO public.games VALUES (22, 510, 15);
INSERT INTO public.games VALUES (23, 452, 14);
INSERT INTO public.games VALUES (24, 723, 14);
INSERT INTO public.games VALUES (25, 123, 14);
INSERT INTO public.games VALUES (26, 665, 16);
INSERT INTO public.games VALUES (27, 984, 16);
INSERT INTO public.games VALUES (28, 977, 17);
INSERT INTO public.games VALUES (29, 94, 17);
INSERT INTO public.games VALUES (30, 564, 16);
INSERT INTO public.games VALUES (31, 408, 16);
INSERT INTO public.games VALUES (32, 386, 16);
INSERT INTO public.games VALUES (33, 291, 18);
INSERT INTO public.games VALUES (34, 897, 18);
INSERT INTO public.games VALUES (35, 675, 19);
INSERT INTO public.games VALUES (36, 535, 19);
INSERT INTO public.games VALUES (37, 172, 18);
INSERT INTO public.games VALUES (38, 298, 18);
INSERT INTO public.games VALUES (39, 602, 18);
INSERT INTO public.games VALUES (40, 512, 20);
INSERT INTO public.games VALUES (41, 576, 20);
INSERT INTO public.games VALUES (42, 38, 21);
INSERT INTO public.games VALUES (43, 925, 21);
INSERT INTO public.games VALUES (44, 704, 20);
INSERT INTO public.games VALUES (45, 570, 20);
INSERT INTO public.games VALUES (46, 435, 20);
INSERT INTO public.games VALUES (47, 584, 22);
INSERT INTO public.games VALUES (48, 516, 22);
INSERT INTO public.games VALUES (49, 733, 23);
INSERT INTO public.games VALUES (50, 843, 23);
INSERT INTO public.games VALUES (51, 218, 22);
INSERT INTO public.games VALUES (52, 610, 22);
INSERT INTO public.games VALUES (53, 995, 22);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1661673193015');
INSERT INTO public.users VALUES (2, 'user_1661673193014');
INSERT INTO public.users VALUES (3, 'Bob');
INSERT INTO public.users VALUES (4, 'user_1661673433018');
INSERT INTO public.users VALUES (5, 'user_1661673433017');
INSERT INTO public.users VALUES (6, 'user_1661673481674');
INSERT INTO public.users VALUES (7, 'user_1661673481673');
INSERT INTO public.users VALUES (8, 'Bobby');
INSERT INTO public.users VALUES (9, 'user_1661673573049');
INSERT INTO public.users VALUES (10, 'user_1661673573048');
INSERT INTO public.users VALUES (11, 'user_1661673630705');
INSERT INTO public.users VALUES (12, 'user_1661673630704');
INSERT INTO public.users VALUES (13, 'John');
INSERT INTO public.users VALUES (14, 'user_1661673915851');
INSERT INTO public.users VALUES (15, 'user_1661673915850');
INSERT INTO public.users VALUES (16, 'user_1661674519757');
INSERT INTO public.users VALUES (17, 'user_1661674519756');
INSERT INTO public.users VALUES (18, 'user_1661675160884');
INSERT INTO public.users VALUES (19, 'user_1661675160883');
INSERT INTO public.users VALUES (20, 'user_1661675192358');
INSERT INTO public.users VALUES (21, 'user_1661675192357');
INSERT INTO public.users VALUES (22, 'user_1661675536309');
INSERT INTO public.users VALUES (23, 'user_1661675536308');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 53, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 23, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

