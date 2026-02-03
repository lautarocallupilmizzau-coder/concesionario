 -- -----------------------------------------------------------------------------------------
-- 03. TRIGGERS
-- ------------------------------------------------------------------------------------------
DELIMITER $$ 
CREATE TRIGGER reducir_stock
AFTER INSERT ON detalle_venta
FOR EACH ROW
BEGIN
UPDATE vehiculos
SET stock = stock - NEW.cantidad
WHERE id_vehiculo = NEW.id_vehiculo;
END $$
DELIMITER ;

DELIMITER $$ 
CREATE TRIGGER evitar_ventas_sin_stock
BEFORE INSERT ON detalle_venta
FOR EACH ROW
BEGIN
DECLARE stock_actual INT;
SELECT stock INTO stock_actual
FROM vehiculos
WHERE id_vehiculo = NEW.id_vehiculo;
IF stock_actual < NEW.cantidad THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'No hay stock suficiente para realizar la venta';
END IF;
END $$
DELIMITER ;