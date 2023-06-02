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
    number_games integer NOT NULL,
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 661, 4);
INSERT INTO public.games VALUES (2, 134, 4);
INSERT INTO public.games VALUES (3, 187, 5);
INSERT INTO public.games VALUES (4, 500, 5);
INSERT INTO public.games VALUES (5, 679, 4);
INSERT INTO public.games VALUES (6, 845, 4);
INSERT INTO public.games VALUES (7, 609, 4);
INSERT INTO public.games VALUES (8, 12, 6);
INSERT INTO public.games VALUES (9, 1, 7);
INSERT INTO public.games VALUES (10, 428, 7);
INSERT INTO public.games VALUES (11, 1, 8);
INSERT INTO public.games VALUES (12, 198, 8);
INSERT INTO public.games VALUES (13, 211, 7);
INSERT INTO public.games VALUES (14, 702, 7);
INSERT INTO public.games VALUES (15, 871, 7);
INSERT INTO public.games VALUES (16, 12, 6);
INSERT INTO public.games VALUES (17, 1, 9);
INSERT INTO public.games VALUES (18, 1, 9);
INSERT INTO public.games VALUES (19, 855, 11);
INSERT INTO public.games VALUES (20, 430, 11);
INSERT INTO public.games VALUES (21, 14, 9);
INSERT INTO public.games VALUES (22, 380, 9);
INSERT INTO public.games VALUES (23, 124, 9);
INSERT INTO public.games VALUES (24, 1, 12);
INSERT INTO public.games VALUES (25, 78, 12);
INSERT INTO public.games VALUES (26, 829, 13);
INSERT INTO public.games VALUES (27, 626, 13);
INSERT INTO public.games VALUES (28, 126, 12);
INSERT INTO public.games VALUES (29, 105, 12);
INSERT INTO public.games VALUES (30, 190, 12);
INSERT INTO public.games VALUES (31, 303, 14);
INSERT INTO public.games VALUES (32, 889, 14);
INSERT INTO public.games VALUES (33, 180, 15);
INSERT INTO public.games VALUES (34, 486, 15);
INSERT INTO public.games VALUES (35, 761, 14);
INSERT INTO public.games VALUES (36, 503, 14);
INSERT INTO public.games VALUES (37, 250, 14);
INSERT INTO public.games VALUES (38, 1, 17);
INSERT INTO public.games VALUES (39, 350, 17);
INSERT INTO public.games VALUES (40, 60, 18);
INSERT INTO public.games VALUES (41, 299, 18);
INSERT INTO public.games VALUES (42, 931, 17);
INSERT INTO public.games VALUES (43, 845, 17);
INSERT INTO public.games VALUES (44, 846, 17);
INSERT INTO public.games VALUES (45, 14, 16);
INSERT INTO public.games VALUES (46, 844, 19);
INSERT INTO public.games VALUES (47, 875, 19);
INSERT INTO public.games VALUES (48, 312, 20);
INSERT INTO public.games VALUES (49, 442, 20);
INSERT INTO public.games VALUES (50, 624, 19);
INSERT INTO public.games VALUES (51, 768, 19);
INSERT INTO public.games VALUES (52, 336, 19);
INSERT INTO public.games VALUES (53, 10, 16);
INSERT INTO public.games VALUES (54, 823, 21);
INSERT INTO public.games VALUES (55, 278, 21);
INSERT INTO public.games VALUES (56, 1, 22);
INSERT INTO public.games VALUES (57, 45, 22);
INSERT INTO public.games VALUES (58, 835, 21);
INSERT INTO public.games VALUES (59, 321, 21);
INSERT INTO public.games VALUES (60, 110, 21);
INSERT INTO public.games VALUES (61, 9, 16);
INSERT INTO public.games VALUES (62, 774, 23);
INSERT INTO public.games VALUES (63, 252, 23);
INSERT INTO public.games VALUES (64, 381, 24);
INSERT INTO public.games VALUES (65, 644, 24);
INSERT INTO public.games VALUES (66, 950, 23);
INSERT INTO public.games VALUES (67, 185, 23);
INSERT INTO public.games VALUES (68, 700, 23);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1685720834785');
INSERT INTO public.users VALUES (2, 'user_1685720834784');
INSERT INTO public.users VALUES (3, 'Da');
INSERT INTO public.users VALUES (4, 'user_1685736225754');
INSERT INTO public.users VALUES (5, 'user_1685736225753');
INSERT INTO public.users VALUES (6, 'Dai');
INSERT INTO public.users VALUES (7, 'user_1685736408859');
INSERT INTO public.users VALUES (8, 'user_1685736408858');
INSERT INTO public.users VALUES (9, 'user_1685736756091');
INSERT INTO public.users VALUES (11, 'user_1685736756090');
INSERT INTO public.users VALUES (12, 'user_1685736814495');
INSERT INTO public.users VALUES (13, 'user_1685736814494');
INSERT INTO public.users VALUES (14, 'user_1685736922249');
INSERT INTO public.users VALUES (15, 'user_1685736922248');
INSERT INTO public.users VALUES (16, 'Dairon');
INSERT INTO public.users VALUES (17, 'user_1685736958104');
INSERT INTO public.users VALUES (18, 'user_1685736958103');
INSERT INTO public.users VALUES (19, 'user_1685737070065');
INSERT INTO public.users VALUES (20, 'user_1685737070064');
INSERT INTO public.users VALUES (21, 'user_1685737186832');
INSERT INTO public.users VALUES (22, 'user_1685737186831');
INSERT INTO public.users VALUES (23, 'user_1685737260606');
INSERT INTO public.users VALUES (24, 'user_1685737260605');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 68, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 24, true);


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

