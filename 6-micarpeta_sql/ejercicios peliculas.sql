USE sakila;
-- la pelicula que genero más dinero?

SELECT * FROM sakila.film;
SELECT * FROM sakila.film_category;
SELECT * FROM sakila.payment;
SELECT * FROM sakila.rental;
SELECT * FROM sakila.language;

-- cuantas peliculas estan hechas en un mismo idioma? 1000 peliculas
SELECT SUM(language_id) AS 'FILM MISMO IDIOMA' FROM film;
 
 -- el titulo de las peliculas con las idomas que tienen
 SELECT title, name FROM film, language; 

-- el monto toal que apgo un cliente por rentas de peliculas el dia 2005-06-15
SELECT customer_id, SUM(amount) AS total_dia FROM payment WHERE payment_date BETWEEN '2005-06-15 00:00:00' AND '2005-06-15 23:59:59' GROUP BY customer_id ORDER BY total_dia DESC;


