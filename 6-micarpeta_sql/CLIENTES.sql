SHOW DATABASES;

CREATE DATABASE tienda;
USE tienda;

DROP DATABASE tienda;

CREATE TABLE clientes(
cliente_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre CHAR(50) NOT NULL,
apellido CHAR(50) NOT NULL,
telefono CHAR(50) NOT NULL,
direccion VARCHAR(150) NOT NULL
);
INSERT INTO clientes (nombre,apellido,telefono,direccion)
VALUES ("Pedro","Paramo","555555534","Comala"),
("Carlos","Camilo","555555534","Comala");

SELECT * FROM clientes; 

DROP TABLE clientes;
DROP TABLES compra;
CREATE TABLE compra (
orden_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cliente_id INT NOT NULL,
fecha_compra DATE NOT NULL,
total DECIMAL(5,2) NOT NULL,
cantidad_productos INT NOT NULL
);



SELECT * FROM compra;

-- Agregar llava foranea
ALTER TABLE compra
ADD CONSTRAINT fk_clientes_compra
FOREIGN KEY (cliente_id)
REFERENCES clientes (cliente_id);


-- borrar llave foranea
ALTER TABLE compra
DROP FOREIGN KEY fk_clientes_compra;

INSERT INTO compra(cliente_id, fecha_compra, total, cantidad_productos)
VALUES (2, '2022-09-06', 500.50, 2);

INSERT INTO compra(cliente_id, fecha_compra, total, cantidad_productos)
VALUES (2, '2022-09-06', 500.50, 6);

SELECT * FROM compra;

DROP TABLE compra;





