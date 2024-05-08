-- SEQUENCE: public.master_id_seq

-- DROP SEQUENCE IF EXISTS public.master_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.master_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.master_id_seq
    OWNER TO postgres;

-- Table: public.master

-- DROP TABLE IF EXISTS public.master;

CREATE TABLE IF NOT EXISTS public.master
(
    id bigint NOT NULL DEFAULT nextval('master_id_seq'::regclass),
    name character varying(255) COLLATE pg_catalog."default",
    qualification character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT master_pkey PRIMARY KEY (id),
    CONSTRAINT uk_t39okdl4wskr05hh69403mnpw UNIQUE (name),
    CONSTRAINT master_qualification_check CHECK (qualification::text = ANY (ARRAY['BARBER'::character varying, 'TOPBARBER'::character varying, 'BRENDBARBER'::character varying]::text[]))
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.master
    OWNER to postgres;

INSERT INTO public.master (name, qualification)
VALUES 
    ('Влад', 'BARBER'),
    ('Владимир', 'BARBER'),
    ('Роман', 'BARBER'),
	('Тима', 'TOPBARBER'),
	('Ник', 'BRENDBARBER'),
	('Дима', 'BRENDBARBER'),
	('Сергей', 'TOPBARBER');