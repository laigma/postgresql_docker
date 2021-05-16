-- Table: public.zpp_necesidades_actual

-- DROP TABLE public.zpp_necesidades_actual;

CREATE TABLE public.proveedores
(
    id bigserial primary key not null,
    proveedor character varying(500) COLLATE pg_catalog."default",
    email_proveedor character varying(500) COLLATE pg_catalog."default",
    supply character varying(500) COLLATE pg_catalog."default",
    email_supply character varying(500) COLLATE pg_catalog."default",
    direccion character varying(500) COLLATE pg_catalog."default",
    id_sap bigint,
    idioma character varying COLLATE pg_catalog."default"
);

CREATE TABLE public.nosap
(
    id bigserial primary key not null,
    proveedor character varying(200) COLLATE pg_catalog."default",
    fecha date,
    pedido character varying(200) COLLATE pg_catalog."default",
    pospedido character varying(200) COLLATE pg_catalog."default",
    albaran character varying(200) COLLATE pg_catalog."default",
    pn character varying(200) COLLATE pg_catalog."default",
    lote character varying(200) COLLATE pg_catalog."default",
    cantidad integer,
    motivo character varying(200) COLLATE pg_catalog."default",
    observacionesnosap character varying(200) COLLATE pg_catalog."default",
    ubicacionbaldanosap character varying(200) COLLATE pg_catalog."default",
    centro character varying(200) COLLATE pg_catalog."default",
    supply character varying(200) COLLATE pg_catalog."default",
    status character varying(50) COLLATE pg_catalog."default",
    comentario text COLLATE pg_catalog."default",
    ncontrex character varying(200) COLLATE pg_catalog."default"
);




