CREATE DATABASE EpicMerch;

USE EpicMerch;

-- TABLAS

-- Tabla Login
CREATE TABLE login_del_cliente
(cliente_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre CHAR(50)NOT NULL,
apellido CHAR (50) NOT NULL,
correo_electronico VARCHAR (50) NOT NULL,
contrasena VARCHAR (50) NOT NULL);

-- tabla Direccion

CREATE TABLE direccion 
(direccion_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cliente_id INT NOT NULL, 
nombre CHAR (50) NOT NULL,
apellido VARCHAR (50) NOT NULL,
calle_numero VARCHAR (100) NOT NULL,
colonia VARCHAR (50) NOT NULL,
localidad VARCHAR (50) NOT NULL,
estado VARCHAR (50) NOT NULL,
pais VARCHAR (50) NOT NULL,
cp VARCHAR (6) NOT NULL,
telefono VARCHAR (13) NOT NULL,
referencias VARCHAR (500) NOT NULL);

-- tabla metodo

CREATE TABLE metodo_de_pago
(metodo_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cliente_id INT NOT NULL,
forma_de_pago VARCHAR(50) NOT NULL,
entidad_financiera VARCHAR(50) NOT NULL,
nombre_titular VARCHAR(50) NOT NULL,
numero_de_tarjeta VARCHAR(16) NOT NULL,
mes_tarjeta VARCHAR(4)  NOT NULL,
anio_tarjeta VARCHAR(4) NOT NULL,
cvv VARCHAR(3) NOT NULL);


-- tabla compras
CREATE TABLE compras
(orden_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
cliente_id INT NOT NULL,
cantidad_productos INT NOT NULL,
monto_total DECIMAL (10,2) NOT NULL,
estatus_envio VARCHAR(50) NOT NULL);

-- tabla adquisicion

CREATE TABLE adquisicion 
(adquisicion_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
orden_id INT NOT NULL ,
producto_id INT NOT NULL,
metodo_id INT NOT NULL);


-- tabla productos

CREATE TABLE productos
(producto_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nombre_producto VARCHAR(50) NOT NULL,
categoria_producto VARCHAR(50) NOT NULL,
talla_c INT NOT NULL,
talla_m INT NOT NULL,
talla_g INT NOT NULL,
talla_xg INT NOT NULL,
color VARCHAR(50) NOT NULL,
precio DECIMAL(5,2) NOT NULL,
descripcion VARCHAR(500) NOT NULL);


-- LLAVES FORANEAS


ALTER TABLE direccion
ADD CONSTRAINT fk_cliente_id_direccion
FOREIGN KEY (cliente_id) 
REFERENCES login_del_cliente(cliente_id);

ALTER TABLE metodo_de_pago
ADD CONSTRAINT fk_cliente_id_pago
FOREIGN KEY (cliente_id) 
REFERENCES login_del_cliente(cliente_id);

 

ALTER TABLE compras
ADD CONSTRAINT fk_cliente_id_compras
FOREIGN KEY (cliente_id) 
REFERENCES login_del_cliente(cliente_id);

ALTER TABLE adquisicion
ADD CONSTRAINT fk_compras_adquisicion
FOREIGN KEY (orden_id) 
REFERENCES compras(orden_id);

ALTER TABLE adquisicion
ADD CONSTRAINT fk_adquisicion_productos
FOREIGN KEY (producto_id) 
REFERENCES productos(producto_id);

ALTER TABLE adquisicion
ADD CONSTRAINT fk_adquisicion_metodo
FOREIGN KEY (metodo_id) 
REFERENCES metodo_de_pago(metodo_id);



-- INSER DATOS

-- tabla login
INSERT INTO login_del_cliente(nombre, apellido,correo_electronico,contrasena)
VALUES ('Carlos','Camilo','carlosrosario.camilo@gmail.com','Cami366$'),
('Pepe','Perez','pepe.perez@gmail.com','3173Elie!'),
('Daniel','Rosas','dany.rosas@gmail.com','C0ntr4señ4'),
('Faby','Gomez','faby.gomez@gmail.com','Fgm.1234'),
('Brenda','Flores','brenda.flores@gmail.com','Avellana07'),
('Thady','Diaz','thady.diaz@gmail.com','thady1234'),
('Andres','Bautista','andres.bautista@gmail.com','batista123.');


-- tabla direccion
INSERT INTO direccion (cliente_id,nombre,apellido,calle_numero,colonia,localidad,estado,pais,cp,telefono,referencias)
 VALUES (1,'Carlos','Camilo','La torre MZ 4 LT 10','Santa Clara','Ecatepec','Mexico','Mexico','55300','5548850360','Esq. Hay una tienda'),
(2,'Pepe','Perez','Ometicutli mz 26 Lt 12','La pastora','Cuautepec','CDMX','Mexico','07290','5617068191','Hay una papelería y un punto de estupefacientes en la esquina' ),
(3,'Daniel', 'Rosas', 'Fernando 32', 'Alamos', 'Benito Juarez', 'CDMX', 'México', '03400','5512890395','Entre aragon y 5 de febrero'),
(4,'Faby', 'Gómez', 'Av. Cuitláhuac 328 Edif. 110B Depto. 301', 'Unidad Cuitláhuac', 'Azcapotzalco', 'CDMX', 'México', '02500','5538826735','Detrás del Soriana'),
(5,'Brenda','Flores', 'Doctor Barragan no 2','Doctores','Cuauhtemoc','Mexico','Mexico','09720','5540850993','A lado de una Escuela Primaria'),
(6,'Thady', 'Díaz', 'Avenida Victoria Oriente 3116 int 7', 'Tres Estrellas', 'Gustavo A. Madero', 'CDMX', 'México', '07820', '5516013187', 'Edificio verde en la esquina de Victoria y Pedernal'),
(7,'Andrés', 'Bautista', 'Arabella MZ 89 LT 2','Agrícola Metropolitana', 'Tláhuac', 'CDMX','México','13200','5586890706','dos pinos en la entrada');


-- tabla pagos
INSERT INTO metodo_de_pago (cliente_id,forma_de_pago,entidad_financiera,nombre_titular,numero_de_tarjeta,mes_tarjeta,anio_tarjeta,cvv)
VALUES (1,'débito','visa','Carlos Cesar Rosario Camilo','4915667496807605','01','2023','693'), 
(2,'crédito','mastercard','Pepe Perez Montiel','8076054879642357','03','2025','893'),
(3,'crédito','Visa','Daniel Rosas Garcia','7964235712348975','06','2027','883'),
(4, 'débito', 'mastercard', 'Fabiola Gómez Montiel', '3569745896154250', '08', '2025','689'),
(5, 'crédito', 'mastercard', 'Brenda Flores Avellaneda', '1975864903562457', '12', '2023','337'),
(6, 'crédito','amex','Ana Thady Díaz de Luis','4152901212345678','08','2028','456'),
(7, 'crédito','visa','José Andrés Bautista López','4152567812349012','09','2030','123');
 
--  tabla de productos
INSERT INTO productos (nombre_producto,categoria_producto,talla_c,talla_m,talla_g,talla_xg,color,precio,descripcion)
VALUES 
-- jersey
('G2','Jersey',20,20,20,20,'Negro',550.00,'Jersey cuello redondo, manga corta 100% poliéster'),
('G2 Worlds','Jersey',20,20,20,20,'Negro',550.00,'Jersey cuello redondo, manga corta 100% poliéster'),
('G2 2020','Jersey',20,20,20,20,'Negro',550.00,'Jersey cuello redondo, manga corta 100% poliéster'),
('Skt T1 2020','Jersey',20,20,20,20,'Negro',550.00,'Jersey cuello redondo, manga corta 100% poliéster'),
('Optic Gaming 2019','Jersey',20,20,20,20,'Negro', 550.00,'Jersey cuello redondo, manga corta 100% poliéster'),
('Fnatic 2022','Jersey',20,20,20,20,'Negro', 550.00,'Jersey cuello redondo, manga corta 100% poliéster'),
('Cloud9 2021','Jersey',20,20,20,20,'Negro',550.00,'Jersey cuello redondo, manga corta 100% poliéster'),
('Fnatic 2020','Jersey',20,20,20,20,'Negro',550.00,'Jersey cuello redondo, manga corta 100% poliéster'),
('Faze Clan','Jersey',20,20,20,20,'Negro',550.00,'Jersey cuello redondo, manga corta 100% poliéster'),
('G2 2019','Jersey',20,20,20,20,'Negro',550.00,'Jersey cuello redondo, manga corta 100% poliéster'),
('G2 2022 Mid-Season Invitational','Jersey',20,20,20,20,'Negro',550.00,'Jersey cuello redondo, manga corta 100% poliéster'),
('Team Queso 2021','Jersey',20,20,20,20,'Azul',550.00,'Jersey cuello redondo, manga corta 100% poliéster'),
('Jersey T1 2022','Jersey',20,20,20,20,'Negro',550.00,'Jersey cuello redondo, manga corta 100% poliéster'),

-- Hoodies
('Apex Legends','Hoodie',20,20,20,20,'Negro',550.00,'Hoodie con capucha y cangurera 50% algodón 50% poliéster 100% cool'),
('No Way Home Spiderman','Hoodie',20,20,20,20,'Azul',550.00,'Hoodie con capucha y cangurera 50% algodón 50% poliéster 100% cool'),
('Faze Clan','Hoodie',20,20,20,20,'Azul',550.00,'Hoodie con capucha y cangurera 50% algodón 50% poliéster 100% cool'),
('No Way Home Spiderman','Hoodie',20,20,20,20,'Rojo',550.00,'Hoodie con capucha y cangurera 50% algodón 50% poliéster 100% cool'),
('G2 2021','Hoodie',20,20,20,20,'Negro',550.00,'Hoodie con capucha y cangurera 50% algodón 50% poliéster 100% cool'),
('No Way Home Spiderman','Hoodie',20,20,20,20,'Negro',550.00,'Hoodie con capucha y cangurera 50% algodón 50% poliéster 100% cool'),
('Fnatic 2021','Hoodie',20,20,20,20,'Negro',550.00,'Hoodie con capucha y cangurera 50% algodón 50% poliéster 100% cool'),
('SKT F1 2021','Hoodie',20,20,20,20,'Negro',550.00,'Hoodie con capucha y cangurera 50% algodón 50% poliéster 100% cool'),
('Anti-Otaku Club El Rubius','Hoodie',20,20,20,20,'Negro',550.00,'Hoodie con capucha y cangurera 50% algodón 50% poliéster 100% cool'),
('No Way Home Spiderman','Hoodie',20,20,20,20,'Blanco',550.00,'Hoodie con capucha y cangurera 50% algodón 50% poliéster 100% cool'),
('Mad Kat El Rubius', 'Hoodie',20,20,20,20, 'Negro',550.00, 'Hoodie con capucha y cangurera 50% algodón 50% poliéster 100% cool'),
('Mad Kat Primer Aniversario El Rubius', 'Hoodie',20,20,20,20, 'Blanco',550.00, 'Hoodie con capucha y cangurera 50% algodón 50% poliéster 100% cool'),

-- playeras
('Mad Kat El Rubius','Playera',20,20,20,20,'Blanco',320.00,'Playera cuello redondo, manga corta 50% algodon 50% poliéster 100% cool'),
('Mad Kat Reflectiva El Rubius','Playera',20,20,20,20,'Negro', 320.00,'Playera cuello redondo, manga larga 50% algodon 50% poliéster 100% cool'),
('Mad Kat El Rubius', 'Playera',20,10,20,20,'Negro',320.00,'Playera cuello redondo, manga larga 100% poliéster');
-- tabla compras
INSERT INTO compras (cliente_id,cantidad_productos,monto_total,estatus_envio)
VALUES 
(1,2,1100.00,'Enviado'),
(2,6,1920.00,'Enviado'),
(3,2,870.00,'En tránsito'),
(4,3,1300.00,'Recibido'),
(5,5,2750.00,'Cancelado'),
(6,4,2200.00,'Cancelado'),
(7,2,870.00,'Pedido generado');







