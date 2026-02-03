-- ----------------------------------------------------------------------------------------
-- 06. VIEWVS (ANALITICAS)
-- ----------------------------------------------------------------------------------------
CREATE VIEW vista_ventas_por_cliente AS
SELECT c.nombre, c.apellido, SUM(v.total) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente; 