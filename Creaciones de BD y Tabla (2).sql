create database Dealer
 
 use Dealer

--Creacion de tabla
create table Cliente
(	
id int primary key identity,
Nombre nvarchar(30),
Cedula nvarchar(11),
Correo nvarchar(30),
Direccion nvarchar(100)	
)
create table proveedor
(	
id int primary key identity,
Nombre nvarchar(30),
Cedula nvarchar(11),
Correo nvarchar(30),
Direccion nvarchar(100)	
)
create table Automovil
(	
id int primary key identity,
id_proveedor int,
Marca nvarchar(30),
Modelo nvarchar(11),
ano int,
CC nvarchar(30),
Puerta nvarchar(30),
Tipo nvarchar(10),
Chasis nvarchar(50)	
)
Create table Inventario
(
id int identity primary key,
id_proveedor int,
Descripcion nvarchar (30),
Cant int,
carro nvarchar (30)
)
Create table Venta
(
id int identity primary key,
id_cliente int,
id_AutoMovil int, 
Precio numeric,
Tip_pago nvarchar(3)
)
--//Alteraciones de las tablas 

ALTER TABLE Venta
ADD FOREIGN KEY (id_cliente) REFERENCES Cliente(id);
ALTER TABLE Venta
ADD FOREIGN KEY (id_AutoMovil) REFERENCES AutoMovil(id);

ALTER TABLE AutoMovil
ADD FOREIGN KEY (id_proveedor) REFERENCES proveedor(id);
ALTER TABLE inventario
ADD FOREIGN KEY (id_proveedor) REFERENCES inventario(id);

ALTER TABLE Venta
ADD FOREIGN KEY (id_cliente) REFERENCES Cliente(id);
ALTER TABLE Venta
ADD FOREIGN KEY (id_AutoMovil) REFERENCES AutoMovil(id);



