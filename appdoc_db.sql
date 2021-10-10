* Modelo de datos para bbdd appdoc_db */

CREATE TABLE apps
(
    id bigserial PRIMARY KEY NOT NULL,
    nombre varchar(50) NOT NULL,
    num_version varchar(10) NOT NULL,
    descripcion text NOT NULL,
    emails_soporte text NOT NULL,
    UNIQUE (nombre, num_version)
);

CREATE TABLE imagenes_carrusel
(
   	id bigserial PRIMARY KEY NOT NULL,
    imagen text NOT NULL
);

CREATE TABLE guias_usuario
(
    id bigserial PRIMARY KEY NOT NULL,
    nombre varchar(50) NOT NULL,
    doc_pdf text NOT NULL,
    notas text,
    id_app bigint NOT NULL,
    FOREIGN KEY (id_app) REFERENCES apps(id)
);

/* Ingestar datos */

INSERT INTO apps (id, nombre, num_version, descripcion, emails_soporte)
VALUES (1, 'desp_aux', 'v1.0.0', 'Primera version en produccion', 'lalejandro.iglesias@alestis.aero; fernando.moreno@alestis.aero');
INSERT INTO apps (id, nombre, num_version, descripcion, emails_soporte)
VALUES (2, 'cons_bobina', 'v1.1.0', '', 'lalejandro.iglesias@alestis.aero; manuel.podadera@alestis.aero; fernando.moreno@alestis.aero');
INSERT INTO apps (id, nombre, num_version, descripcion, emails_soporte)
VALUES (3, 'digital-picking', 'v1.3.0', '', 'lalejandro.iglesias@alestis.aero; antonio.nieto@alestis.aero; fernando.moreno@alestis.aero');
INSERT INTO apps (id, nombre, num_version, descripcion, emails_soporte)
VALUES (4, 'nosap', 'v1.0.0', '', 'lalejandro.iglesias@alestis.aero; antonio.nieto@alestis.aero; fernando.moreno@alestis.aero');
INSERT INTO apps (id, nombre, num_version, descripcion, emails_soporte)
VALUES (5, 'pht_log', 'v1.1.3', '', 'lalejandro.iglesias@alestis.aero; alfonso.diaz@alestis.aero; fernando.moreno@alestis.aero');

INSERT INTO imagenes_carrusel (imagen)
VALUES ('img/img01.jpg');
INSERT INTO imagenes_carrusel (imagen)
VALUES ('img/img02.jpg');
INSERT INTO imagenes_carrusel (imagen)
VALUES ('img/img03.jpg');
INSERT INTO imagenes_carrusel (imagen)
VALUES ('img/img04.jpg');
INSERT INTO imagenes_carrusel (imagen)
VALUES ('img/img05.jpg');
INSERT INTO imagenes_carrusel (imagen)
VALUES ('img/img06.jpg');
INSERT INTO imagenes_carrusel (imagen)
VALUES ('img/img07.jpg');
INSERT INTO imagenes_carrusel (imagen)
VALUES ('img/img08.jpg');
INSERT INTO imagenes_carrusel (imagen)
VALUES ('img/img09.jpg');
INSERT INTO imagenes_carrusel (imagen)
VALUES ('img/img10.jpg');

INSERT INTO guias_usuario (nombre, doc_pdf, notas, id_app)
VALUES ('desp_aux.user_guide.v1.0.0', 'desp_aux/desp_aux-v1.0.0/desp_aux.user_guide.v1.0.0.pdf', '', 1);
INSERT INTO guias_usuario (nombre, doc_pdf, notas, id_app)
VALUES ('cons_bobina.user_guide.v1.1.0', 'cons_bobina/cons_bobina-v1.0.0/cons_bobina.user_guide.v1.1.0.pdf', '', 2);
INSERT INTO guias_usuario (nombre, doc_pdf, notas, id_app)
VALUES ('digital-picking.user_guide.v1.3.0', 'digital-picking/digital-picking-v1.3.0/digital-picking.user_guide.v1.3.0.pdf', '', 3);
INSERT INTO guias_usuario (nombre, doc_pdf, notas, id_app)
VALUES ('nosap.user_guide.v1.0.0', 'nosap/nosap-v1.0.0/nosap.user_guide.v1.0.0.pdf', '', 4);
INSERT INTO guias_usuario (nombre, doc_pdf, notas, id_app)
VALUES ('pht_log.user_guide.v1.1.3', 'pht_log/pht_log-v1.1.3/pht_log.user_guide.v1.1.3.pdf', '', 5);
