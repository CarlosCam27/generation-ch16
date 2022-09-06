CREATE DATABASE ejercicio_relaciones;
USE ejercicio_relaciones;
-- CREAR TABLAS
CREATE TABLE cohorte(
cohorte12_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
alumnos_id INT NOT NULL,
instructor_id INT NOT NULL,
numero_alumnos INT NOT NULL,
horario VARCHAR(255) NOT NULL,
tipo_sesiones VARCHAR(255) NOT NULL,
ciudad VARCHAR(255) NOT NULL
);


CREATE TABLE equipo(
equipo_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
alumno_id INT NOT NULL,
nombre VARCHAR(255) NOT NULL,
cantidad_integrantes INT NOT NULL,
logo VARCHAR(255) NOT NULL);



CREATE TABLE alumno(
alumno_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(255) NOT NULL,
edad INT NOT NULL,
CURP VARCHAR(255) NOT NULL,
RFC VARCHAR(255),
nivel_ingles VARCHAR(255) NOT NULL,
amonestaciones INT NOT NULL
);

CREATE TABLE instructor(
nombre VARCHAR(255) NOT NULL PRIMARY KEY,
edad INT NOT NULL,
cumpleanios DATE NOT NULL,
RFC VARCHAR(255) NOT NULL,
supervisor VARCHAR(255) NOT NULL,
sesiones VARCHAR(255) NOT NULL
);

CREATE TABLE direccion(
direccion_id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
alumno_id INT NOT NULL,
calle VARCHAR(255) NOT NULL,
pais VARCHAR(255) NOT NULL,
cp INT NOT NULL
);



-- AGREGAR LLAVES FORANEAS
-- Agregar llava foranea

ALTER TABLE cohorte
ADD CONSTRAINT fk_alumno_cohorte
FOREIGN KEY (alumno_id)
REFERENCES cohorte (alumnos_id);

ALTER TABLE instructor
ADD CONSTRAINT fk_instructor_cohorte
FOREIGN KEY (instructor_id)
REFERENCES cohorte (intructor_id);

ALTER TABLE alumno
ADD CONSTRAINT fk_alumno_cohorte
FOREIGN KEY (alumno_id)
REFERENCES cohorte (alumnos_id);


ALTER TABLE equipo
ADD CONSTRAINT fk_alumno_equipo
FOREIGN KEY (alumno_id)
REFERENCES alumno (alumno_id);

ALTER TABLE direccion
ADD CONSTRAINT fk_alumno_direccion
FOREIGN KEY (alumno_id)
REFERENCES alumno (alumno_id);









-- AGREGAR VALORES
INSERT INTO cohorte(alumnos_id, instructor_id)
VALUES ("Cohorte 16","Raul");

INSERT INTO equipo(equipo_id, alumno_id)
VALUES ("equipo rocket no 7","10");

INSERT INTO direccion (direccion_id, alumno_id)
VALUES ("Magnolias","10");
INSERT INTO alumno(direccion_id, alumno_id)
VALUES ("Magnolias","10");







