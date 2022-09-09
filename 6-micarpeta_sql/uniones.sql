USE tienda;

-- INNER JOIN
-- EXPLICITA
--
SELECT *
FROM clientes -- primera tabla
INNER JOIN compra -- segunda tabla
ON clientes.nombre = compra.cliente_id;  -- especificamos de la tabla y la columna

SELECT 
clientes.cliente_id AS 'Numero de Cliente',
clientes.nombre AS Nombre,
compra.*
FROM clientes
INNER JOIN compra
ON clientes.cliente_id = compra.cliente_id;


-- union implicita
SELECT *
FROM clientes,compra
WHERE clientes.cliente_id = compra.cliente_id;

-- LEFT JOIN
SELECT *
FROM clientes
LEFT JOIN compra
ON clientes.cliente_id = compra.cliente_id;

-- right join
SELECT *
FROM clientes
RIGHT JOIN compra
ON clientes.cliente_id = compra.cliente_id;




