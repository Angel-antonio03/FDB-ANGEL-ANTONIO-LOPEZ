CREATE DATABASE autolavado;
create table if not exists autolavado.cliente(
	id_cliente INT NOT NULL AUTO_INCREMENT,
	nombre varchar (30) not null,
    correo varchar (30),
    telefono varchar(10)  not null,
    direccion varchar (50),
    primary key(id_cliente)
);

CREATE TABLE if not exists autolavado.vehiculo (
    id_vehiculo INT NOT NULL AUTO_INCREMENT,
    marca VARCHAR(30) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    color VARCHAR(30) NOT NULL,
    placa VARCHAR(30) NOT NULL,
    PRIMARY KEY(id_vehiculo)
);

CREATE TABLE if not exists autolavado.empleado (
    id_empleado INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    telefono varchar (12),
    correo_electronico VARCHAR(40) NOT NULL,
    PRIMARY KEY(id_empleado)
);

CREATE TABLE autolavado.servicio (
    id_servicio INT NOT NULL AUTO_INCREMENT,
    id_empleado int not null,
    id_cliente INT not null,
    id_vehiculo INT not null,
    fecha DATE NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id_servicio)
);

ALTER TABLE autolavado.servicio 
    ADD FOREIGN KEY (id_cliente) 
    REFERENCES autolavado.cliente(id_cliente) 
    ON UPDATE CASCADE 
    ON DELETE CASCADE;

ALTER TABLE autolavado.servicio 
    ADD FOREIGN KEY (id_vehiculo) 
    REFERENCES autolavado.vehiculo(id_vehiculo) 
    ON UPDATE CASCADE 
    ON DELETE CASCADE;

ALTER TABLE autolavado.servicio 
    ADD FOREIGN KEY (id_empleado) 
    REFERENCES autolavado.empleado(id_empleado) 
    ON UPDATE CASCADE 
    ON DELETE CASCADE;
INSERT INTO autolavado.cliente (nombre, correo, telefono, direccion) VALUES
    ('Juan Perez', 'juan@example.com', '5551234567', 'Calle 123, Ciudad'),
    ('María García', 'maria@example.com', '5559876543', 'Avenida 456, Pueblo'),
    ('Pedro Martínez', 'pedro@example.com', '5555678901', 'Carrera 789, Villa'),
    ('Laura Rodríguez', 'laura@example.com', '5552345678', 'Callejón 012, Poblado'),
    ('Alejandro López', 'alejandro@example.com', '5558765432', 'Boulevard 321, Aldea'),
    ('Sofía Díaz', 'sofia@example.com', '5553456789', 'Avenida 654, Municipio'),
    ('Carlos Hernández', 'carlos@example.com', '5556789012', 'Calle 210, Comarca'),
    ('Ana Sánchez', 'ana@example.com', '5554321098', 'Avenida 987, Región'),
    ('David Torres', 'david@example.com', '5558901234', 'Calle 543, Distrito'),
    ('Elena Gómez', 'elena@example.com', '5552109876', 'Calle 876, Provincia');

-- Insertar registros en la tabla vehiculo
INSERT INTO autolavado.vehiculo (marca, modelo, color, placa) VALUES
    ('Toyota', 'Corolla', 'Azul', 'ABC123'),
    ('Ford', 'Focus', 'Rojo', 'DEF456'),
    ('Chevrolet', 'Cruze', 'Blanco', 'GHI789'),
    ('Honda', 'Civic', 'Negro', 'JKL012'),
    ('Volkswagen', 'Jetta', 'Gris', 'MNO345'),
    ('Nissan', 'Sentra', 'Plateado', 'PQR678'),
    ('Hyundai', 'Elantra', 'Verde', 'STU901'),
    ('BMW', 'Serie 3', 'Dorado', 'VWX234'),
    ('Mercedes-Benz', 'Clase C', 'Plata', 'YZA567'),
    ('Audi', 'A4', 'Azul Oscuro', 'BCD890');

-- Insertar registros en la tabla empleado
INSERT INTO autolavado.empleado (nombre, telefono, correo_electronico) VALUES
    ('José López', '5551234567', 'jose@example.com'),
    ('María Rodríguez', '5559876543', 'maria@example.com'),
    ('Carlos Martínez',' 5555678901', 'carlos@example.com'),
    ('Laura Gómez', '5552345678', 'laura@example.com'),
    ('Juan Hernández',' 5558765432', 'juan@example.com'),
    ('Ana Díaz', '5553456789', 'ana@example.com'),
    ('David Torres', '5556789012', 'david@example.com'),
    ('Sofía García', '5554321098', 'sofia@example.com'),
    ('Javier Pérez', '5558901234', 'javier@example.com'),
    ('Elena Ramírez', '5552109876', 'elena@example.com');

-- Insertar registros en la tabla servicio
INSERT INTO autolavado.servicio (id_empleado, id_cliente, id_vehiculo, fecha, nombre, precio) VALUES
    (1, 1, 1, '2024-05-10', 'Lavado Exterior', 50.00),
    (2, 2, 2, '2024-05-11', 'Lavado Interior', 60.00),
    (3, 3, 3, '2024-05-12', 'Encerado', 80.00),
    (4, 4, 4, '2024-05-13', 'Aspirado', 40.00),
    (5, 5, 5, '2024-05-14', 'Lavado Completo', 100.00),
    (6, 6, 6, '2024-05-15', 'Pulido de Faros', 30.00),
    (7, 7, 7, '2024-05-16', 'Limpieza de Tapicería', 70.00),
    (8, 8, 8, '2024-05-17', 'Lavado de Motor', 75.00),
    (9, 9, 9, '2024-05-18', 'Desinfección Interior', 55.00),
    (10, 10, 10, '2024-05-19', 'Tratamiento de Cera', 120.00);



SELECT * FROM autolavado.cliente;
SELECT * FROM autolavado.vehiculo;
SELECT * FROM autolavado.empleado;
SELECT * FROM autolavado.servicio;
SELECT nombre, telefono FROM autolavado.cliente;
SELECT * FROM autolavado.servicio WHERE precio>=100 ;
SELECT * FROM autolavado.servicio ORDER BY precio ASC;
SELECT * FROM autolavado.servicio ORDER BY precio DESC;
SELECT COUNT(*) FROM autolavado.vehiculo;
SELECT SUM(precio) FROM autolavado.servicio;
SELECT MAX(precio), MIN(precio) FROM autolavado.servicio;
SELECT autolavado.cliente.nombre, autolavado.servicio.nombre FROM autolavado.cliente INNER JOIN autolavado.servicio ON autolavado.cliente.nombre = autolavado.servicio.nombre;

SELECT e.nombre AS empleado, s.nombre AS servicio FROM empleado e JOIN servicio s ON e.id_empleado = s.id_empleado WHERE s.precio > 50.00;
SELECT e.nombre AS empleado, s.precio AS salario FROM empleado e JOIN servicio s ON e.id_empleado = s.id_empleado WHERE s.precio > (SELECT AVG(s1.precio) FROM servicio s1 WHERE s1.id_empleado = e.id_empleado);
SELECT id_empleado, AVG(precio) AS salario_promedio FROM servicio GROUP BY id_empleado;
SELECT nombre, fecha FROM servicio WHERE YEAR(fecha) = 2024;
SELECT nombre, 'Empleado' AS tipo FROM empleado UNION SELECT nombre, 'Cliente' AS tipo FROM cliente;
SELECT nombre, direccion FROM cliente WHERE direccion LIKE '%Calle%';
SELECT v.marca AS nombre FROM vehiculo v WHERE EXISTS (SELECT 1 FROM servicio s WHERE s.id_vehiculo = v.id_vehiculo);
SELECT nombre, precio FROM servicio ORDER BY precio DESC LIMIT 10 OFFSET 10;