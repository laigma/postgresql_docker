-- Table: public.zpp_necesidades_actual

-- DROP TABLE public.zpp_necesidades_actual;

CREATE TABLE public.materiales
(
   	id bigserial PRIMARY KEY NOT NULL,
	id_sap text COLLATE pg_catalog."default" UNIQUE,
	nombre text COLLATE pg_catalog."default",
    fabricante text COLLATE pg_catalog."default",
    familia_producto text COLLATE pg_catalog."default",
    descripcion text COLLATE pg_catalog."default",
    ubicacion text COLLATE pg_catalog."default",
    designacion text COLLATE pg_catalog."default",
    formato text COLLATE pg_catalog."default",
    pack_unidad text COLLATE pg_catalog."default",
    qty_pack real,
    um_sap text COLLATE pg_catalog."default",
    consigna boolean
);

CREATE TABLE public.pedidos
(
    id bigserial PRIMARY KEY NOT NULL,
    id_material text COLLATE pg_catalog."default" NOT NULL,
    fecha_peticion text COLLATE pg_catalog."default" NOT NULL,
    codigo_coste text COLLATE pg_catalog."default" NOT NULL,
    qty bigint NOT NULL,
    FOREIGN KEY (id_material) REFERENCES materiales(id_sap) ,
    UNIQUE (id_material, fecha_peticion, codigo_coste)
);

CREATE TABLE public.consumos
(
	id bigserial PRIMARY KEY NOT NULL,
	id_pedido bigint,
	lote text COLLATE pg_catalog."default",
	taken_qty bigint,
	FOREIGN KEY (id_pedido) REFERENCES pedidos(id) 	
);



