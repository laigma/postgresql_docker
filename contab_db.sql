-- Table: public.zpp_necesidades_actual

-- DROP TABLE public.zpp_necesidades_actual;

CREATE tipo_pago
(
    id_tp bigserial PRIMARY KEY NOT NULL,
    tipo_pago varchar(20) UNIQUE NOT NULL
);

CREATE TABLE categorias_gasto
(
   	id_categoria bigserial PRIMARY KEY NOT NULL,
	categoria varchar(50) UNIQUE NOT NULL,
    descripcion text
);

CREATE TABLE public.gastos
(
    id_gasto bigserial PRIMARY KEY NOT NULL,
    importe real NOT NULL,
    fecha text NOT NULL,
    categoria varchar(50) NOT NULL,
    tipo_pago varchar(20) NOT NULL,
    detalle text,
    observaciones text,
    verificado boolean NOT NULL
);