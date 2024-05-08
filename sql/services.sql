-- SEQUENCE: public.treatment_service_id_seq

-- DROP SEQUENCE IF EXISTS public.treatment_service_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.treatment_service_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.treatment_service_id_seq
    OWNER TO postgres;

-- Table: public.treatment_service

-- DROP TABLE IF EXISTS public.treatment_service;

CREATE TABLE IF NOT EXISTS public.treatment_service
(
    id bigint NOT NULL DEFAULT nextval('treatment_service_id_seq'::regclass),
    coast integer,
    duration integer,
    name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT treatment_service_pkey PRIMARY KEY (id),
    CONSTRAINT uk_q9g04vvh8jey6bvdy9kjsxen9 UNIQUE (name)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.treatment_service
    OWNER to postgres;

INSERT INTO public.treatment_service (name, coast, duration)
VALUES 
    ('Стрижка Happy Hours', 990, 60),
	('Стрижка для студентов', 990, 60),
	('Стрижка ножницами', 1690, 60),
	('Мужская стрижка', 1290, 60),
	('Стрижка машинкой', 690, 30),
	('Окантовка головы', 400, 15),
	('Бритьё головы', 1290, 55),
	('Бритьё опасной бритвой', 1290, 60),
	('Моделирование бороды', 1090, 60),
	('Стрижка бороды и усов', 690, 30),
	('VOLCANO Уход за лицом', 1200, 30),
	('Детокс кожи головы', 250, 5),
	('Тонирование головы', 1400, 30),
	('Тонирование бороды', 1000, 30),
	('Воск', 500, 5),
	('Укладка без стрижки', 400, 15);