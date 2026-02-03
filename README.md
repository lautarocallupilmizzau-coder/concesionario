[README.md](https://github.com/user-attachments/files/25052402/README.md)
📘 Concesionario de Vehículos — Proyecto SQL Completo
Este proyecto implementa una base de datos relacional para la gestión integral de un concesionario de vehículos, incluyendo clientes, ventas, vehículos, proveedores, empleados y mantenimientos.
El objetivo es demostrar dominio en modelado de datos, SQL avanzado, procedimientos almacenados, triggers, vistas analíticas y consultas de negocio.

🧱 Tecnologías utilizadas
MySQL 8.x

MySQL Workbench

Modelo relacional (DER)

SQL avanzado (DDL, DML, DQL)
🗂️ Estructura del repositorio
/concesionario-sql
│
├── sql/
│   ├── 01_tablas_e_inserciones.sql
│   ├── 02_triggers.sql
│   ├── 03_procedimientos.sql
│   ├── 04_vistas.sql
│   ├── 05_consultas_analiticas.sql
│
├── diagramas/
│   └── diagrama_ER.png
│
└── README.md
🧩 Descripción del modelo de datos
El sistema está compuesto por las siguientes entidades principales:

clientes

vehiculos

ventas

detalle_venta

mantenimientos

empleados

proveedores

El modelo incluye relaciones 1:N y N:M resueltas mediante tablas intermedias, claves foráneas y restricciones de integridad.
🛠️ Contenido del proyecto
✔️ 1. Creación de tablas + inserciones
Archivo: 01_tablas_e_inserciones.sql

Incluye:

Definición completa del esquema

Claves primarias y foráneas

Índices

Inserciones de datos simulados para pruebas

Relaciones entre entidades
✔️ 2. Triggers
Archivo: 02_triggers.sql

Incluye disparadores para:

Validación de datos

Auditoría

Actualización automática de campos

Lógica de negocio interna

Los triggers permiten automatizar procesos y garantizar integridad.
✔️ 3. Procedimientos almacenados
Archivo: 03_procedimientos.sql

Incluye un menú interactivo que permite ejecutar operaciones dentro del sistema mediante un procedimiento almacenado.
Demuestra dominio de:

--> Variables

--> Control de flujo

--> Condicionales

--> Llamadas internas
✔️ 4. Vistas analíticas
Archivo: 04_vistas.sql

Ejemplo destacado:

vista_ventas_por_cliente
CREATE VIEW vista_ventas_por_cliente AS
SELECT c.nombre, c.apellido, SUM(v.total) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente;
Esta vista resume el rendimiento comercial por cliente, facilitando análisis y reportes.
✔️ 5. Consultas analíticas avanzadas
Archivo: 05_consultas_analiticas.sql

Incluye consultas de negocio como:

Cliente que más gastó

Ventas por encima del promedio

Vehículo con mayor costo de mantenimiento

Comparaciones con subconsultas

Ranking de ventas

Análisis de rendimiento

Estas consultas demuestran dominio de:

GROUP BY

HAVING

Subconsultas

Agregaciones

Comparaciones estadísticas
📊 Diagrama ER
El repositorio incluye un diagrama ER exportado desde MySQL Workbench, mostrando:

Entidades

Relaciones

Cardinalidades

Claves primarias y foráneas

Archivo: diagramas/diagrama_ER.png
🚀 Cómo ejecutar el proyecto
Crear una base de datos vacía en MySQL.

Ejecutar en orden los archivos del directorio /sql/:

01_tablas_e_inserciones.sql

02_triggers.sql

03_funciones.sql

04_consultas_análiticas.sql

05_vistas.sql

Verificar las vistas y procedimientos desde MySQL Workbench.

Ejecutar las consultas para análisis.
🎯 Objetivo del proyecto
Este proyecto fue desarrollado con fines educativos y de portfolio, demostrando:

Diseño de bases de datos

SQL avanzado

Automatización mediante triggers

Procedimientos almacenados

Análisis de datos

Buenas prácticas de documentación
🧑‍💻 Autor
Lautaro Callupil  
Proyecto personal orientado a portfolio profesional.
