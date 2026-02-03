-- -------------------------------------------------------------------------------------------
-- 04. FUNCTIONS
-- -------------------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE menu_concesionaria (IN opcion INT)
BEGIN
    CASE opcion

        WHEN 1 THEN
            SELECT id_vehiculo, marca, modelo, stock
            FROM vehiculos
            WHERE stock = 0;

        WHEN 2 THEN
            SELECT v.id_venta, c.nombre AS cliente, v.total, v.fecha
            FROM ventas v
            JOIN clientes c ON v.id_cliente = c.id_cliente;

        WHEN 3 THEN
            SELECT m.id_mantenimiento, v.marca, v.modelo, m.fecha, m.descripcion, m.costo
            FROM mantenimientos m
            JOIN vehiculos v ON m.id_vehiculo = v.id_vehiculo;

        WHEN 4 THEN
            SELECT c.nombre, SUM(v.total) AS total_gastado
            FROM ventas v
            JOIN clientes c ON v.id_cliente = c.id_cliente
            GROUP BY c.id_cliente
            ORDER BY total_gastado DESC
            LIMIT 5;

        WHEN 5 THEN
            SELECT id_vehiculo, marca, modelo, precio_unitario, stock
            FROM vehiculos
            WHERE stock > 0;

        ELSE
            SELECT 'Opción no válida. Ingrese un número entre 1 y 5.' AS mensaje;

    END CASE;
END $$

DELIMITER ;

CALL menu_concesionaria(4);