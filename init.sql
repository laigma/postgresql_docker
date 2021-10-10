CREATE TABLE usuarios
(
    usuario varchar(20) PRIMARY KEY NOT NULL,
    nombre text NOT NULL,
    apellidos text NOT NULL,
    email text NOT NULL,
    pwd varchar(6) NOT NULL,
    peso_objetivo real NOT NULL
);

CREATE TABLE pesajes
(
    id bigserial PRIMARY KEY NOT NULL,
    fecha_hora varchar(19) NOT NULL,
    usuario varchar(20) NOT NULL,
    FOREIGN KEY (usuario) REFERENCES usuarios (usuario)
);

CREATE TABLE medidas
(
    id bigserial PRIMARY KEY NOT NULL,
    medicion varchar(20) NOT NULL,
    tipo_medida varchar(20) NOT NULL,
    unidad_medida varchar(20) NOT NULL,
    usuario varchar(20) NOT NULL,
    FOREIGN KEY (usuario) REFERENCES usuarios (usuario)
);