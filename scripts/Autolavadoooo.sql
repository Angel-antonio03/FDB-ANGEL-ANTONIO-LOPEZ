create database autolavadoooo; 
create table VENTA(
id_venta   INT NOT NULL auto_increment,
fecha DATETIME ,
id_cliente INT,
PRIMARY KEY (id_venta)
);
create table CLIENTE(
id_cliente   INT NOT NULL auto_increment,
nombre VARCHAR (30) NOT NULL,
apellido VARCHAR (20) NOT NULL,
telefono   INT not null,
correo_electronico VARCHAR (40) NOT NULL,
PRIMARY KEY (id_cliente)
);
create table VEHICULO(
id_vehiculo int not null auto_increment,
marca VARCHAR (30) NOT NULL,
modelo VARCHAR (30) NOT NULL,
color VARCHAR (30) NOT NULL,
placa VARCHAR (30) NOT NULL,
PRIMARY KEY(id_vehiculo)
);
create table EMPLEADO(
id_empleado int not null auto_increment,
nombre VARCHAR (30) NOT NULL,
telefono  INT,
correo_electronico VARCHAR (40) NOT NULL,
PRIMARY KEY(id_empleado)
);
create table SERVICIO(
id_servicio int not null auto_increment,
nombre VARCHAR (30) NOT NULL,
precio  INT not null,
PRIMARY KEY (id_servicio)
);
create table FACTURA(
id_factura   int not null auto_increment,
venta_id   INT  NOT NULL,
fecha DATETIME (10) ,
total DECIMAL (10) ,
METODO_DE_PAGO VARCHAR (40) NOT NULL,
PRIMARY KEY(id_factura)
);

INSERT INTO CLIENTE (
id_cliente,
nombre,
apellido,
telefono,
correo_electronico
)
VALUES
("1234","Ange lopez","9531753907","angelantoniolopezperez864@gmail.com"),
("5678", "Maria Garcia", "9876543210", "mariagarcia@example.com"),
("9012", "Juan Martinez", "8765432109", "juanmartinez@example.com"),
("3456", "Ana Rodriguez", "7654321098", "anarodriguez@example.com"),
("7890", "Carlos Sanchez", "6543210987", "carlossanchez@example.com"),
("2345", "Laura Hernandez", "5432109876", "laurahernandez@example.com"),
("6789", "Pedro Gomez", "4321098765", "pedrogomez@example.com"),
("8901", "Sofia Perez", "3210987654", "sofiaperez@example.com"),
("4567", "Luisa Torres", "2109876543", "luisatorres@example.com"),
("0123", "Javier Diaz", "1098765432", "javierdiaz@example.com");



INSERT INTO VENTA (
id_venta,
fecha,
id_cliente
)
VALUES
("100","10/05/2024","1234"),
("012", "11/05/2024", "5678"),
("150", "12/05/2024", "2468"),
("180", "13/05/2024", "1357"),
("90", "14/05/2024", "9876"),
("220", "15/05/2024", "5432"),
("130", "16/05/2024", "8765"),
("170", "17/05/2024", "4321"),
("110", "18/05/2024", "6789"),
("240", "19/05/2024", "9012");


INSERT INTO VEHICULO (


id_vehiculo,
marca,
modelo, 
color, 
placa 
)
VALUES
("101", "Toyota", "Corolla", "Azul", "ABC123"),
("102", "Ford", "Focus", "Rojo", "DEF456"),
("103", "Chevrolet", "Cruze", "Blanco", "GHI789"),
("104", "Honda", "Civic", "Negro", "JKL012"),
("105", "Volkswagen", "Jetta", "Gris", "MNO345"),
("106", "Nissan", "Sentra", "Plateado", "PQR678"),
("107", "Hyundai", "Elantra", "Verde", "STU901"),
("108", "BMW", "Serie 3", "Dorado", "VWX234"),
("109", "Mercedes-Benz", "Clase C", "Plata", "YZA567"),
("110", "Audi", "A4", "Azul Oscuro", "BCD890");

INSERT INTO EMPLEADO(
id_empleado,
nombre,
telefono,
correo_electronico
)
VALUES
("87", "Juan Pérez", "555-1234", "juan@example.com"),
("152", "María García", "555-5678", "maria@example.com"),
("104", "Carlos López", "555-9012", "carlos@example.com"),
("189", "Ana Martínez", "555-3456", "ana@example.com"),
("37", "Pedro Sánchez", "555-7890", "pedro@example.com"),
("198", "Diego González", "555-6789", "diego@example.com"),
("61", "Sofía Díaz", "555-0123", "sofia@example.com"),
("173", "Alejandro Ramírez", "555-4567", "alejandro@example.com"),
("95", "Marta Vázquez", "555-8901", "marta@example.com");


INSERT INTO SERVICIO (
id_servicio,
nombre ,
precio
)
VALUES
("301", "Lavado Exterior", "50.00 MXN"),
("302", "Lavado Interior", "60.00 MXN"),
("303", "Encerado", "80.00 MXN"),
("304" "Aspirado", "40.00 MXN"),
("305", "Lavado Completo", "100.00 MXN"),
("306", "Pulido de Faros", "30.00 MXN"),
("307", "Limpieza de Tapicería", "70.00 MXN"),
("308", "Lavado de Motor", "75.00 MXN"),
("309", "Desinfección Interior"," 55.00 MXN"),
("310", "Tratamiento de Cera", "120.00 MXN");


INSERT INTO FACTURA(
id_factura,
venta_id,
fecha,
total,
METODO_DE_PAGO
)
VALUES
("FAC001", "VENTA001", "10/05/2024", "500.00", "Efectivo"),
("FAC002", "VENTA002", "11/05/2024", "720.50", "Transferencia bancaria"),
("FAC003", "VENTA003", "12/05/2024", "350.00", "Efectivo"),
("FAC004", "VENTA004", "13/05/2024", "430.25", "Transferencia bancaria"),
("FAC005", "VENTA005", "14/05/2024", "800.00", "Efectivo"),
("FAC006", "VENTA006", "15/05/2024", "275.80", "Transferencia bancaria"),
("FAC007", "VENTA007", "16/05/2024", "600.00", "Efectivo"),
("FAC008", "VENTA008", "17/05/2024", "920.45", "Transferencia bancaria"),
("FAC009", "VENTA009", "18/05/2024", "400.00", "Efectivo"),
("FAC010", "VENTA010", "19/05/2024", "550.20", "Transferencia bancaria");
SELECT * FROM autolavadoooo.CLIENTE;