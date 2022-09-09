SELECT * FROM sakila.address;

-- mostrar las direcciones de cada pais
USE sakila;

/*
address -city_id /address
city - city_id/city/country_id
country -country_id/ country

*/

SELECT
address.address,
city.city,
city.country_id
FROM address
INNER JOIN city
ON  address.city_id = city.city_id;
-- union triple
SELECT 
country.country AS Pais,
city.city AS Ciudad,
address.address AS Direccion
FROM country 
INNER JOIN city ON country.country_id = city.country_id
INNER JOIN address ON address.city_id = city.city_id






