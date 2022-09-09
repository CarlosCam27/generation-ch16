CREATE DATABASE EpiMerch;
USE EpiMerch;
-- TABLAS
CREATE TABLE Adquisicion 
(orden_id INT NOT NULL ,
producto_id INT NOT NULL,
monto_total INT NOT NULL);

CREATE TABLE Compras
(orden_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cliente_id INT NOT NULL,
cantidad_productos INT NOT NULL,
monto_total DECIMAL (5,0) NOT NULL,
estatus_envio VARCHAR(50) NOT NULL);

CREATE TABLE Productos
(producto_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_producto VARCHAR(50) NOT NULL,
categoria_producto VARCHAR(50) NOT NULL,
talla VARCHAR(50) NOT NULL,
color VARCHAR(50) NOT NULL,
precio DECIMAL(5,0) NOT NULL,
existencia INT NOT NULL,
descripcion VARCHAR(500) NOT NULL);

CREATE TABLE Direccion 
(direccion_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cliente_id  CHAR(50) NOT NULL, 
nombre  char (50) NOT NULL,
apellido VARCHAR (50) NOT NULL,
calle VARCHAR (50) NOT NULL,
estado VARCHAR (50) NOT NULL,
pais VARCHAR (50) NOT NULL,
cp VARCHAR (50) NOT NULL,
referencias VARCHAR (500) NOT NULL);


CREATE TABLE login_del_cliente
(cliente_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre  CHAR(50)NOT NULL,
apellido  CHAR (50) NOT NULL,
correo_electronico VARCHAR (50) NOT NULL,
contraseña VARCHAR (50) NOT NULL);

CREATE TABLE transaccion
(orden_id INT NOT NULL ,
metodo_id INT NOT NULL);

CREATE TABLE metodo_de_pago
(metodo_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
tipo_de_pago VARCHAR(50) NOT NULL,
forma_de_pago VARCHAR(50) NOT NULL,
entidad_financiera VARCHAR(50) NOT NULL,
nombre_titular VARCHAR(50) NOT NULL,
numero_de_tarjeta INT NOT NULL,
mes_tarjeta INT NOT NULL,
anio_tarjeta INT NOT NULL,
cvv INT NOT NULL);

-- LLAVES FORANEAS






-- INSER DATOS
