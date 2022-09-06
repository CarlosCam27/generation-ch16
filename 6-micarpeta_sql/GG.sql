CREATE DATABASE generation;
USE generation;
CREATE TABLE cohorte_16(
alumno_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre CHAR(50) NOT NULL,
apellido CHAR(50) NOT NULL,
companieros INT  NOT NULL,
direccion VARCHAR (150) NOT NULL,
proyecto VARCHAR (150) NOT NULL

);

SELECT *FROM cohorte_16;
INSERT INTO cohorte_16 (nombre,apellido,companieros,direccion,proyecto)
VALUES ("Victor","Fernandez",7,"Tulancingo Hidalgo","Java"),
("Jona","Vandez",8,"Pachuca","Script"),
("Raul","Sanchez",9,"Guadalajara","SQL"),
("Jose","Rojas",10,"Edo Mexico","Java"),
("Pepe","Grillo",11,"CDMX","JavaScript");

UPDATE tienda.cohorte_16
SET nombre = REPLACE (nombre,"Victor","Ale");

SELECT *FROM cohorte_16;

SELECT nombre, apellido FROM cohorte_16 WHERE nombre="Victor";
SELECT *FROM cohorte_16;
SELECT nombre, apellido FROM cohorte_16 ORDER BY apellido DESC;





