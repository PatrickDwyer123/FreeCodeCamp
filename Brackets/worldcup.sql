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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(25) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    game_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(25) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (4, 2, 2018, 'Final', 237, 238, 221);
INSERT INTO public.games VALUES (2, 0, 2018, 'Third Place', 239, 240, 222);
INSERT INTO public.games VALUES (2, 1, 2018, 'Semi-Final', 238, 240, 223);
INSERT INTO public.games VALUES (1, 0, 2018, 'Semi-Final', 237, 239, 224);
INSERT INTO public.games VALUES (3, 2, 2018, 'Quarter-Final', 238, 241, 225);
INSERT INTO public.games VALUES (2, 0, 2018, 'Quarter-Final', 240, 242, 226);
INSERT INTO public.games VALUES (2, 1, 2018, 'Quarter-Final', 239, 243, 227);
INSERT INTO public.games VALUES (2, 0, 2018, 'Quarter-Final', 237, 244, 228);
INSERT INTO public.games VALUES (2, 1, 2018, 'Eighth-Final', 240, 245, 229);
INSERT INTO public.games VALUES (1, 0, 2018, 'Eighth-Final', 242, 246, 230);
INSERT INTO public.games VALUES (3, 2, 2018, 'Eighth-Final', 239, 247, 231);
INSERT INTO public.games VALUES (2, 0, 2018, 'Eighth-Final', 243, 248, 232);
INSERT INTO public.games VALUES (2, 1, 2018, 'Eighth-Final', 238, 249, 233);
INSERT INTO public.games VALUES (2, 1, 2018, 'Eighth-Final', 241, 250, 234);
INSERT INTO public.games VALUES (2, 1, 2018, 'Eighth-Final', 244, 251, 235);
INSERT INTO public.games VALUES (4, 3, 2018, 'Eighth-Final', 237, 252, 236);
INSERT INTO public.games VALUES (1, 0, 2014, 'Final', 253, 252, 237);
INSERT INTO public.games VALUES (3, 0, 2014, 'Third Place', 254, 243, 238);
INSERT INTO public.games VALUES (1, 0, 2014, 'Semi-Final', 252, 254, 239);
INSERT INTO public.games VALUES (7, 1, 2014, 'Semi-Final', 253, 243, 240);
INSERT INTO public.games VALUES (1, 0, 2014, 'Quarter-Final', 254, 255, 241);
INSERT INTO public.games VALUES (1, 0, 2014, 'Quarter-Final', 252, 239, 242);
INSERT INTO public.games VALUES (2, 1, 2014, 'Quarter-Final', 243, 245, 243);
INSERT INTO public.games VALUES (1, 0, 2014, 'Quarter-Final', 253, 237, 244);
INSERT INTO public.games VALUES (2, 1, 2014, 'Eighth-Final', 243, 256, 245);
INSERT INTO public.games VALUES (2, 0, 2014, 'Eighth-Final', 245, 244, 246);
INSERT INTO public.games VALUES (2, 0, 2014, 'Eighth-Final', 237, 257, 247);
INSERT INTO public.games VALUES (2, 1, 2014, 'Eighth-Final', 253, 258, 248);
INSERT INTO public.games VALUES (2, 1, 2014, 'Eighth-Final', 254, 248, 249);
INSERT INTO public.games VALUES (2, 1, 2014, 'Eighth-Final', 255, 259, 250);
INSERT INTO public.games VALUES (1, 0, 2014, 'Eighth-Final', 252, 246, 251);
INSERT INTO public.games VALUES (2, 1, 2014, 'Eighth-Final', 239, 260, 252);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 237);
INSERT INTO public.teams VALUES ('Croatia', 238);
INSERT INTO public.teams VALUES ('Belgium', 239);
INSERT INTO public.teams VALUES ('England', 240);
INSERT INTO public.teams VALUES ('Russia', 241);
INSERT INTO public.teams VALUES ('Sweden', 242);
INSERT INTO public.teams VALUES ('Brazil', 243);
INSERT INTO public.teams VALUES ('Uruguay', 244);
INSERT INTO public.teams VALUES ('Colombia', 245);
INSERT INTO public.teams VALUES ('Switzerland', 246);
INSERT INTO public.teams VALUES ('Japan', 247);
INSERT INTO public.teams VALUES ('Mexico', 248);
INSERT INTO public.teams VALUES ('Denmark', 249);
INSERT INTO public.teams VALUES ('Spain', 250);
INSERT INTO public.teams VALUES ('Portugal', 251);
INSERT INTO public.teams VALUES ('Argentina', 252);
INSERT INTO public.teams VALUES ('Germany', 253);
INSERT INTO public.teams VALUES ('Netherlands', 254);
INSERT INTO public.teams VALUES ('Costa Rica', 255);
INSERT INTO public.teams VALUES ('Chile', 256);
INSERT INTO public.teams VALUES ('Nigeria', 257);
INSERT INTO public.teams VALUES ('Algeria', 258);
INSERT INTO public.teams VALUES ('Greece', 259);
INSERT INTO public.teams VALUES ('United States', 260);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 252, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 260, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

