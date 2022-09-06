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
