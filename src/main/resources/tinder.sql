--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-01-10 15:35:25

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

--
-- TOC entry 7 (class 2615 OID 16426)
-- Name: schema_name; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schema_name;


ALTER SCHEMA schema_name OWNER TO postgres;

--
-- TOC entry 2 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 3343 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16450)
-- Name: likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.likes (
    id_liker text NOT NULL,
    id_liked text NOT NULL
);


ALTER TABLE public.likes OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16477)
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messages (
    id_from text,
    id_to text,
    text text,
    send_time timestamp without time zone DEFAULT now()
);


ALTER TABLE public.messages OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16440)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id text NOT NULL,
    login text,
    password text,
    name text,
    img_url text
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 3344 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE users; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.users IS 'all tinder users';


--
-- TOC entry 216 (class 1259 OID 16439)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 216
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3183 (class 2604 OID 16550)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3336 (class 0 OID 16450)
-- Dependencies: 218
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.likes (id_liker, id_liked) VALUES ('b198f7f8-e724-4db7-9d35-1f178b0c366c', '033e0144-3b51-4f52-8a2e-b2a744cb191b');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('8fa21663-bfbf-473f-9bde-e6d66d166034', '033e0144-3b51-4f52-8a2e-b2a744cb191b');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('8fa21663-bfbf-473f-9bde-e6d66d166034', 'b198f7f8-e724-4db7-9d35-1f178b0c366c');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('033e0144-3b51-4f52-8a2e-b2a744cb191b', 'b198f7f8-e724-4db7-9d35-1f178b0c366c');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('033e0144-3b51-4f52-8a2e-b2a744cb191b', '8fa21663-bfbf-473f-9bde-e6d66d166034');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('b198f7f8-e724-4db7-9d35-1f178b0c366c', '8fa21663-bfbf-473f-9bde-e6d66d166034');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('eb3f1cbf-88b1-443a-ad9c-c7723d440162', '033e0144-3b51-4f52-8a2e-b2a744cb191b');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('eb3f1cbf-88b1-443a-ad9c-c7723d440162', 'b198f7f8-e724-4db7-9d35-1f178b0c366c');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('eb3f1cbf-88b1-443a-ad9c-c7723d440162', '8fa21663-bfbf-473f-9bde-e6d66d166034');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('033e0144-3b51-4f52-8a2e-b2a744cb191b', 'eb3f1cbf-88b1-443a-ad9c-c7723d440162');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('277682a3-a142-4d37-be20-f0ffce764588', '033e0144-3b51-4f52-8a2e-b2a744cb191b');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('277682a3-a142-4d37-be20-f0ffce764588', 'b198f7f8-e724-4db7-9d35-1f178b0c366c');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('277682a3-a142-4d37-be20-f0ffce764588', '8fa21663-bfbf-473f-9bde-e6d66d166034');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('277682a3-a142-4d37-be20-f0ffce764588', 'eb3f1cbf-88b1-443a-ad9c-c7723d440162');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('033e0144-3b51-4f52-8a2e-b2a744cb191b', '277682a3-a142-4d37-be20-f0ffce764588');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5', '033e0144-3b51-4f52-8a2e-b2a744cb191b');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5', '8fa21663-bfbf-473f-9bde-e6d66d166034');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('8fa21663-bfbf-473f-9bde-e6d66d166034', '19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('bca39586-466e-4f4c-b762-7fc11182d463', 'b198f7f8-e724-4db7-9d35-1f178b0c366c');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('bca39586-466e-4f4c-b762-7fc11182d463', '8fa21663-bfbf-473f-9bde-e6d66d166034');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('bca39586-466e-4f4c-b762-7fc11182d463', 'eb3f1cbf-88b1-443a-ad9c-c7723d440162');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('bca39586-466e-4f4c-b762-7fc11182d463', '277682a3-a142-4d37-be20-f0ffce764588');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('bca39586-466e-4f4c-b762-7fc11182d463', '19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('bca39586-466e-4f4c-b762-7fc11182d463', '033e0144-3b51-4f52-8a2e-b2a744cb191b');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5', 'b198f7f8-e724-4db7-9d35-1f178b0c366c');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5', 'eb3f1cbf-88b1-443a-ad9c-c7723d440162');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5', '277682a3-a142-4d37-be20-f0ffce764588');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5', 'bca39586-466e-4f4c-b762-7fc11182d463');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('277682a3-a142-4d37-be20-f0ffce764588', '19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('277682a3-a142-4d37-be20-f0ffce764588', 'bca39586-466e-4f4c-b762-7fc11182d463');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('033e0144-3b51-4f52-8a2e-b2a744cb191b', '19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5');
INSERT INTO public.likes (id_liker, id_liked) VALUES ('033e0144-3b51-4f52-8a2e-b2a744cb191b', 'bca39586-466e-4f4c-b762-7fc11182d463');


--
-- TOC entry 3337 (class 0 OID 16477)
-- Dependencies: 219
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('b198f7f8-e724-4db7-9d35-1f178b0c366c', '033e0144-3b51-4f52-8a2e-b2a744cb191b', 'Hi Kate', '2023-01-08 13:44:18.731154');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('8fa21663-bfbf-473f-9bde-e6d66d166034', 'b198f7f8-e724-4db7-9d35-1f178b0c366c', 'Hi Jhon', '2023-01-08 13:44:43.821964');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('033e0144-3b51-4f52-8a2e-b2a744cb191b', 'b198f7f8-e724-4db7-9d35-1f178b0c366c', 'Hi Jhon', '2023-01-08 13:45:18.442446');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('eb3f1cbf-88b1-443a-ad9c-c7723d440162', 'b198f7f8-e724-4db7-9d35-1f178b0c366c', 'Hi', '2023-01-08 13:46:09.474551');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('eb3f1cbf-88b1-443a-ad9c-c7723d440162', '8fa21663-bfbf-473f-9bde-e6d66d166034', 'Hi', '2023-01-08 13:46:15.344344');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('eb3f1cbf-88b1-443a-ad9c-c7723d440162', '033e0144-3b51-4f52-8a2e-b2a744cb191b', 'Hi bro', '2023-01-08 13:46:23.781143');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('277682a3-a142-4d37-be20-f0ffce764588', '033e0144-3b51-4f52-8a2e-b2a744cb191b', 'Hi Kate', '2023-01-08 13:48:13.89822');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('277682a3-a142-4d37-be20-f0ffce764588', '8fa21663-bfbf-473f-9bde-e6d66d166034', 'Hi Kate', '2023-01-08 13:48:20.032453');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('033e0144-3b51-4f52-8a2e-b2a744cb191b', 'eb3f1cbf-88b1-443a-ad9c-c7723d440162', 'Hi Bob', '2023-01-08 13:48:57.615139');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5', '033e0144-3b51-4f52-8a2e-b2a744cb191b', 'Hi Kate', '2023-01-08 13:50:14.347205');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5', '033e0144-3b51-4f52-8a2e-b2a744cb191b', 'Miss u so much', '2023-01-08 13:50:20.299214');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5', '8fa21663-bfbf-473f-9bde-e6d66d166034', 'hi mary', '2023-01-08 15:58:00.014902');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5', '033e0144-3b51-4f52-8a2e-b2a744cb191b', 'qwerty', '2023-01-08 17:00:50.843234');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('bca39586-466e-4f4c-b762-7fc11182d463', 'b198f7f8-e724-4db7-9d35-1f178b0c366c', 'йцуйцу', '2023-01-08 17:07:17.838311');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('bca39586-466e-4f4c-b762-7fc11182d463', 'b198f7f8-e724-4db7-9d35-1f178b0c366c', 'some text', '2023-01-08 17:07:27.354422');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('277682a3-a142-4d37-be20-f0ffce764588', 'b198f7f8-e724-4db7-9d35-1f178b0c366c', 'hi', '2023-01-08 17:19:29.342815');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('277682a3-a142-4d37-be20-f0ffce764588', 'bca39586-466e-4f4c-b762-7fc11182d463', 'Hi Kate', '2023-01-08 17:19:56.883696');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('277682a3-a142-4d37-be20-f0ffce764588', '19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5', 'hi', '2023-01-08 17:20:11.46408');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('277682a3-a142-4d37-be20-f0ffce764588', 'eb3f1cbf-88b1-443a-ad9c-c7723d440162', 'hi', '2023-01-08 17:20:23.112239');
INSERT INTO public.messages (id_from, id_to, text, send_time) VALUES ('033e0144-3b51-4f52-8a2e-b2a744cb191b', '19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5', 'Hi Jhon', '2023-01-08 17:21:12.960468');


--
-- TOC entry 3335 (class 0 OID 16440)
-- Dependencies: 217
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, login, password, name, img_url) VALUES ('b198f7f8-e724-4db7-9d35-1f178b0c366c', 'user@2.com', '123', 'John', 'http://surl.li/eidpx');
INSERT INTO public.users (id, login, password, name, img_url) VALUES ('8fa21663-bfbf-473f-9bde-e6d66d166034', 'user@3.com', '123', 'Kate', 'http://surl.li/eidpx');
INSERT INTO public.users (id, login, password, name, img_url) VALUES ('eb3f1cbf-88b1-443a-ad9c-c7723d440162', 'user@4.com', '123', 'Bob', 'http://surl.li/eidpp');
INSERT INTO public.users (id, login, password, name, img_url) VALUES ('277682a3-a142-4d37-be20-f0ffce764588', 'user@5.com', '123', 'Mark', 'http://surl.li/eidps');
INSERT INTO public.users (id, login, password, name, img_url) VALUES ('19d520d9-0eb0-48c5-b3bf-58ce47e6e6f5', 'qwe@rty.com1', '123', 'Sasha', 'http://surl.li/eidpx');
INSERT INTO public.users (id, login, password, name, img_url) VALUES ('033e0144-3b51-4f52-8a2e-b2a744cb191b', 'user@1.com', '123', 'NotKate', 'http://surl.li/eidps');
INSERT INTO public.users (id, login, password, name, img_url) VALUES ('bca39586-466e-4f4c-b762-7fc11182d463', 'user@6.com', '123', 'John', 'http://surl.li/eidpx');


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 216
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 16, true);


--
-- TOC entry 3186 (class 2606 OID 16552)
-- Name: users id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- TOC entry 3190 (class 2606 OID 16571)
-- Name: likes likes_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pk PRIMARY KEY (id_liked, id_liker);


--
-- TOC entry 3188 (class 2606 OID 16449)
-- Name: users login; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT login UNIQUE (login);


--
-- TOC entry 3191 (class 1259 OID 16494)
-- Name: messages__index_send_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX messages__index_send_time ON public.messages USING btree (send_time DESC);


-- Completed on 2023-01-10 15:35:26

--
-- PostgreSQL database dump complete
--

