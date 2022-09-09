USE sakila;
SELECT * FROM sakila.address;

-- SUM (), AVG (), COUNT ()


SELECT * FROM sakila.payment;


SELECT customer_id, amount FROM payment;

-- COUNT() CUENTA LAS FILAS DE UNA TABLA
SELECT COUNT(*) AS 'Cantidad de filas' FROM payment;

-- cantidad de clientes disitintos

SELECT COUNT(DISTINCT customer_id) FROM payment;


-- cantidad de ventas que tuvo el trabajador 2
SELECT COUNT(*) FROM payment WHERE staff_id =1;


/* SUM()*/
SELECT SUM(amount)AS 'TOTAL DE RENTAS'FROM payment; 

SELECT SUM(amount)AS 'TOTAL DE RENTAS'FROM payment WHERE staff_id=2;

-- ¿cual cliente realizo mas rentas? ID 148 -46 RENTAS

SELECT customer_id, count(*) FROM payment  GROUP BY customer_id ORDER BY COUNT(*) DESC;

 -- GROUP BY AGRUPA SOLO SI SE USA CON SUM, AVG Y COUNT PERO OMITE LOS VALORES 
 -- ORDER BY -ORDENA SEGUN LA COLUMNA O FUNCION Q INDIQUEMOS ASC/desc
 

 
 SELECT * FROM payment ORDER BY staff_id;
 
 SELECT * FROM payment GROUP BY staff_id;
 
SELECT customer_id, count(*) FROM payment  GROUP BY customer_id ORDER BY COUNT(*) DESC;

-- ¿CUAL CLIENTE GASTO MAS?
SELECT customer_id, SUM(amount) AS total FROM payment GROUP BY customer_id ORDER BY total DESC;

-- avg() -regresa el promedio

SELECT AVG(amount) AS Promedio FROM payment;
-- ¿CUAL CLIENTE GASTO MAS EN PROMEDIO? 187
SELECT customer_id, AVG(amount) FROM payment GROUP BY customer_id ORDER BY AVG(amount) DESC;






