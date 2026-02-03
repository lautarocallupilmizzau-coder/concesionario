CREATE TABLE detalle_venta(
id_detalle INT PRIMARY KEY AUTO_INCREMENT,
id_venta INT,
id_vehiculo INT,
cantidad INT NOT NULL,
precio_unitario DECIMAL(10,2),
FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
FOREIGN KEY (id_vehiculo) REFERENCES vehiculos(id_vehiculo)
);
CREATE TABLE mantenimientos(
id_mantenimiento INT PRIMARY KEY AUTO_INCREMENT,
id_vehiculo INT,
fecha DATE NOT NULL,
descripcion VARCHAR(50),
costo DECIMAL(10,2),
FOREIGN KEY (id_vehiculo) REFERENCES vehiculos(id_vehiculo)
);

INSERT INTO proveedores (nombre, telefono, email, direccion) VALUES
('AutoMall Importaciones', '971123456', 'contacto@automall.com', 'Calle Aragón 120, Palma'),
('MotorWorld Proveedores', '971654321', 'ventas@motorworld.com', 'Avenida Portugal 45, Palma'),
('Premium Cars Supply', '971987654', 'info@premiumcars.com', 'Calle Manacor 88, Palma'),
('Balearic Auto Parts', '971445566', 'info@balearicparts.com', 'Calle Industria 22, Palma'),
('Mallorca Motor Group', '971778899', 'contacto@mmgroup.com', 'Avenida Gabriel Alomar 10, Palma'),
('EuroCar Distribuciones', '971332211', 'ventas@eurocar.com', 'Calle Aragón 200, Palma'),
('IslaMotor Import', '971556677', 'info@islamotor.com', 'Calle Manacor 150, Palma'),
('TopDrive Suppliers', '971889900', 'contacto@topdrive.com', 'Avenida Joan Miró 55, Palma');

INSERT INTO vehiculos (marca, modelo, anio, precio, color, tipo, stock, id_proveedor) VALUES

('Ferrari', '488 GTB', 2023, 280000.00, 'Rojo', 'Deportivo', 1, 5),
('Ferrari', 'Roma', 2022, 220000.00, 'Negro', 'Coupé', 1, 5),


('Mercedes-Benz', 'C63 AMG', 2021, 95000.00, 'Blanco', 'Sedán', 2, 6),
('Mercedes-Benz', 'GLE 450', 2023, 110000.00, 'Gris', 'SUV', 1, 6),


('Ford', 'Mustang GT', 2022, 55000.00, 'Azul', 'Deportivo', 3, 2),
('Ford', 'Mustang Shelby GT500', 2023, 95000.00, 'Negro', 'Deportivo', 1, 2),


('Lamborghini', 'Huracán EVO', 2023, 300000.00, 'Amarillo', 'Superdeportivo', 1, 8),
('Lamborghini', 'Aventador SVJ', 2021, 450000.00, 'Naranja', 'Superdeportivo', 1, 8);
INSERT INTO clientes (nombre, apellido, dni, telefono, email, direccion) VALUES
-- Clientes solicitados
('Lautaro', 'Callupil', '45879632A', '600111222', 'lautaro.callupil@mail.com', 'Avenida Arquitecto Gaspar Bennassar 24, Palma'),
('Octavio', 'Callupil', '45879633B', '600333444', 'octavio.callupil@mail.com', 'Calle Aragón 150, Palma'),
('Ivana', 'Westdorp', '78965412C', '600555666', 'ivana.westdorp@mail.com', 'Avenida Argentina 20, Palma'),

-- Clientes adicionales
('Sofía', 'Martínez', '45811223D', '600777888', 'sofia.martinez@mail.com', 'Calle Blanquerna 18, Palma'),
('Lucas', 'Fernández', '78922114E', '600999111', 'lucas.fernandez@mail.com', 'Avenida Joan Miró 40, Palma'),
('Valentina', 'Suárez', '12345678F', '600222333', 'valentina.suarez@mail.com', 'Calle Manacor 210, Palma'),
('Matías', 'Roldán', '98765432G', '600444555', 'matias.roldan@mail.com', 'Calle Aragón 80, Palma'),
('Camila', 'Herrera', '74125896H', '600666777', 'camila.herrera@mail.com', 'Calle Sindicat 12, Palma'),
('Bruno', 'Navarro', '36985214I', '600888999', 'bruno.navarro@mail.com', 'Avenida Alexandre Rosselló 5, Palma'),
('Elena', 'Vega', '15975348J', '600111333', 'elena.vega@mail.com', 'Calle Olmos 30, Palma');
INSERT INTO empleados (nombre, apellido, puesto, salario) VALUES
('Lucía', 'Fernández', 'Vendedora', 1800.00),
('Pedro', 'Ramírez', 'Vendedor', 1750.00),
('Ana', 'Santos', 'Administrativa', 1600.00),
('Jorge', 'Mendoza', 'Gerente de Ventas', 2500.00),
('Carolina', 'Vidal', 'Asesora Comercial', 1900.00);
INSERT INTO ventas (fecha, id_cliente, id_empleado, total) VALUES
('2024-01-15', 1, 1, 21000.00),   -- Lautaro compra un vehículo económico
('2024-02-10', 3, 2, 48000.00),   -- Ivana compra un BMW X3
('2024-03-05', 5, 1, 17000.00),   -- Sofía compra un VW Golf
('2024-03-20', 7, 4, 55000.00),   -- Valentina compra un Mustang GT
('2024-04-02', 10, 5, 300000.00); -- Elena compra un Lamborghini Huracán
INSERT INTO detalle_venta (id_venta, id_vehiculo, cantidad, precio_unitario) VALUES
(1, 1, 1, 21000.00),   -- Lautaro compra un Toyota Corolla
(2, 3, 1, 48000.00),   -- Ivana compra un BMW X3
(3, 4, 1, 17000.00),   -- Sofía compra un Volkswagen Golf
(4, 6, 1, 55000.00),   -- Valentina compra un Mustang GT
(5, 8, 1, 300000.00);  -- Elena compra un Lamborghini Huracán EVO
INSERT INTO mantenimientos (id_vehiculo, fecha, descripcion, costo) VALUES
(1, '2024-02-01', 'Cambio de aceite y filtro', 120.00),          -- Toyota Corolla
(3, '2024-03-12', 'Revisión general y alineación', 250.00),       -- BMW X3
(4, '2024-04-05', 'Sustitución de pastillas de freno', 180.00),   -- Volkswagen Golf
(6, '2024-05-10', 'Servicio completo del motor', 450.00),         -- Mustang GT
(8, '2024-06-20', 'Diagnóstico electrónico y ajuste', 600.00);    -- Lamborghini Huracán EVO