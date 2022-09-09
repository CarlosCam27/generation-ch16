USE world1;
SELECT * FROM country;
SELECT Name,Population FROM country ORDER BY Population DESC;

SELECT Name, Population FROM country WHERE Name= 'Mexico';

SELECT * FROM country WHERE Name= 'Mexico';

-- Alias

SELECT Name AS Nombre_de_pais, Population AS ' Poblacion del pais' FROM country ORDER BY Nombre_de_pais DESC;
SELECT DISTINCT Continent FROM country; -- basicamnete DISTINCT filtra los datos repetidos

-- WHERE cláusula, 
-- < > <= >= != =

SELECT * FROM country WHERE LifeExpectancy < 50 ORDER BY  LifeExpectancy DESC;
SELECT * FROM country WHERE Continent != 'North America'ORDER BY Continent ASC;

-- BETWEEN

-- se utiliza junto con WHERE 
SELECT * FROM country WHERE Population BETWEEN 5000000 AND 7000000 ORDER BY Population DESC;
SELECT * FROM country WHERE Population NOT BETWEEN 5000000 AND 7000000 ORDER BY Population DESC;

-- OR /AND /!=logicos 
SELECT * FROM country WHERE Continent = 'Asia' OR Continent= 'Europe' OR Continent='North America';
SELECT * FROM country WHERE Continent != 'Asia' AND Continent != 'Europe' AND Continent !='North America';

-- operador in
SELECT * FROM country WHERE Continent IN ('Asia','Europe','North America') ORDER BY Continent; 
SELECT * FROM country WHERE Continent NOT IN ('Asia','Europe','North America') ORDER BY Continent; 

-- LIKE Sirve para biscar un patron en especifico
-- '%' buscar cualquier cantidad de caracteres 
-- '_' especificamos un caracterer

SELECT * FROM country WHERE Name LIKE '%and%'; 
SELECT * FROM country WHERE Name LIKE '%e__a'; 
















