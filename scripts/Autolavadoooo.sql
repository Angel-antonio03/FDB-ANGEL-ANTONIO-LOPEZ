create database autolavado; 
create table VENTA(
id_venta   INT NOT NULL auto_increment,
fecha DATETIME ,
id_cliente INT,
PRIMARY KEY (id_venta)
);
create table CLIENTE(
id_cliente   INT NOT NULL auto_increment,
NOMBRE VARCHAR (30) NOT NULL,
APELLIDO VARCHAR (20) NOT NULL,
TELEFONO   INT,
CORREO_ELECTRONICO VARCHAR (40) NOT NULL,
PRIMARY KEY (id_cliente)
);
create table VEHICULO(
id_vehiculo int not null auto_increment
MARCA VARCHAR (30) NOT NULL,
MODELO VARCHAR (30) NOT NULL,
COLOR VARCHAR (30) NOT NULL,
PLACA VARCHAR (30) NOT NULL,
PRIMARY KEY(ID_VEHICULO)
);
create table EMPLEADO(
id_empleado int not null auto_increment,
NOMBRE VARCHAR (30) NOT NULL,
TELEFONO VARCHAR (30) INT,
CORREO ELECTRONICO VARCHAR (40) NOT NULL,
PRIMARY KEY(id_empleado)
);
create table SERVICIO(
id_servicio int not null auto_increment,
NOMBRE VARCHAR (30) NOT NULL,
PRECIO DECIMAL (20) INT,
PRIMARY KEY (id_servicio)
);
create table FACTURA(
ID_FACTURA   INT NOT NULL,
VENTA_ID   INT  NOT NULL,
FECHA DATETIME (10) ,
TOTAL DECIMAL (10) ,
METODO_DE_PAGO VARCHAR (40) NOT NULL,
PRIMARY KEY(FACTURA_ID)
):
PREPARE