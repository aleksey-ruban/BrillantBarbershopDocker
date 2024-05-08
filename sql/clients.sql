-- SEQUENCE: public.client_id_seq

-- DROP SEQUENCE IF EXISTS public.client_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.client_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
    -- OWNED BY client.id;

ALTER SEQUENCE public.client_id_seq
    OWNER TO postgres;

-- Table: public.client

-- DROP TABLE IF EXISTS public.client;

CREATE TABLE IF NOT EXISTS public.client
(
    id bigint NOT NULL DEFAULT nextval('client_id_seq'::regclass),
    email character varying(255) COLLATE pg_catalog."default",
    is_confirmed boolean,
    name character varying(255) COLLATE pg_catalog."default",
    password character varying(255) COLLATE pg_catalog."default",
    roles character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT client_pkey PRIMARY KEY (id),
    CONSTRAINT uk_bfgjs3fem0hmjhvih80158x29 UNIQUE (email)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.client
    OWNER to postgres;



INSERT INTO public.client (email, password, name, is_confirmed, roles)
VALUES 
    ('alekseyruban555@gmail.com', '$2a$10$xRr1XoCQuFhsRIeObiqSWeroaSbPFaN1KjJvKHza3XJSTITUqrAxm', 'Алексей Рубан', true, 'CLIENT, ADMIN');