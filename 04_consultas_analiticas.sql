-- ----------------------------------------------------------------------------------
-- 05. CONSULTAS
-- ----------------------------------------------------------------------------------
-- Ventas y rendimiento comercial.  
SELECT SUM(v.total) AS total_ventas, c.nombre, c.apellido AS cliente
FROM ventas v 
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.id_cliente;
-- Subconsultas para el cálculo del promedio de ventas
-- Está consulta solo muestra los clientes que compraron el vehículo BMW.
SELECT c.nombre, c.apellido, COUNT(v.id_vehiculo) AS cantidad_sumatoria
FROM clientes c
JOIN ventas ve ON c.id_cliente = ve.id_cliente
JOIN detalle_venta dv ON ve.id_venta = dv.id_venta
JOIN vehiculos v ON dv.id_vehiculo = v.id_vehiculo
GROUP BY c.id_cliente
HAVING COUNT(v.id_vehiculo) > (
SELECT COUNT(*)
FROM vehiculos
WHERE marca = 'BMW'
);
-- Cliente que más pago
SELECT nombre, apellido
FROM clientes 
WHERE id_cliente = (
SELECT id_cliente
FROM ventas
GROUP BY id_cliente
ORDER BY SUM(total) DESC
LIMIT 1
);
-- Venta más alta del sistema
SELECT id_venta, total, (SELECT AVG(total) FROM ventas) AS promedio_ventas
FROM ventas
ORDER BY total DESC
LIMIT 1;
-- Ventas por encima del promedio
SELECT *
FROM ventas
WHERE total > (SELECT AVG(total) FROM ventas);
-- Consultas sobre mantenimiento ¿Que vehículos tiene mayor costo de mantenimiento?
SELECT modelo, marca
FROM vehiculos
WHERE id_vehiculo = (
SELECT id_vehiculo
FROM mantenimientos
GROUP BY id_vehiculo
ORDER BY SUM(costo) DESC
LIMIT 1
); 