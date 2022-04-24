 
use Dealer2
go;

--Creacion de tabla
create table Cliente
(	
id int primary key identity,
Nombre nvarchar(30),
Cedula nvarchar(11),
Correo nvarchar(30),
Direccion nvarchar(100)	
)

create table Proveedor
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
id_proveedor int FOREIGN KEY REFERENCES Proveedor(id),
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
id_proveedor int FOREIGN KEY REFERENCES Proveedor(id),
Descripcion nvarchar (30),
Cant int,
carro nvarchar (30)
)

Create table Venta
(
id int identity primary key,
id_cliente int FOREIGN KEY REFERENCES Cliente(id),
id_autoMovil int FOREIGN KEY REFERENCES Automovil(id), 
Precio numeric,
Tip_pago nvarchar(3)
)
