CREATE TABLE coches
(
    matricula varchar(7) PRIMARY KEY NOT NULL,
    nombre varchar(40) NOT NULL,   
    fecha_matriculacion varchar(20),
);

CREATE TABLE respostaje
(
    id bigserial PRIMARY KEY NOT NULL,
    lugar varchar(20) NOT NULL,
    importe real NOT NULL,
    precio_litro real NOT NULL,
    km_totales bigint NOT NULL,
    matricula varchar(7) UNIQUE NOT NULL,
    FOREIGN KEY (matricula) REFERENCES coches (matricula)
);

CREATE TABLE mantenimiento
(
    id bigserial PRIMARY KEY NOT NULL,
    taller text NOT NULL,
    fecha varchar(20) NOT NULL,    
    periodica boolean NOT NULL,
    detalle text,
    matricula varchar(7) UNIQUE NOT NULL,
    FOREIGN KEY (matricula) REFERENCES coches (matricula)
);