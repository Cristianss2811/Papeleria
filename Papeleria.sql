-- 1. Crear una Base de Datos
create database Papeleria;

-- 2. Eliminar la base de datos
drop database Papeleria;

-- 3. Usar la base de datos
use Papeleria;

-- 4. Crear tablas
create table Colores(
	idColores int auto_increment,
    MarcaColores varchar(50),
    DescripcionColores varchar(300),
    CantidadColores int(0),
    FormaColores varchar(50),
    banderaDescuento boolean default(false),
    descuentoCategoria int default(0),
    imagenColores varchar(50) default('imagencolores.jpg'),
    activo boolean default(true),
    primary key(idColores)
);

-- 5. Insertar datos
insert into Colores(MarcaColores, DescripcionColores, CantidadColores, FormaColores, banderadescuento,descuentoCategoria, imagenColores,activo)
values('PrismaColor','Colores de alta calidad',24,'Redondo',false,0,'prismacolor24.jpg',true);

-- 6. Consultar datos
SELECT *FROM Colores; 

SELECT MarcaColores, CantidadColores, DescripcionColores FROM Colores WHERE MarcaColores='PrismaColor';

UPDATE Colores set FormaColores='Redonda' WHERE idColores =1;

DELETE FROM Colores WHERE FormaColores = 'Redonda';

create table Vendedores (
idVendedor int auto_increment,
NombreVendedor varchar(70),
SexoVendedor varchar(15),
DomicilioVendedor varchar(50),
CorreoVendedor varchar(50),
ContrasenaVendedor varchar(50),
ImagenVendedor varchar(50) default('imagenvendedor.jpg'),
activo boolean default(true),
primary key (idVendedor)
);

INSERT INTO Vendedores(NombreVendedor,SexoVendedor, DomicilioVendedor, CorreoVendedor, ContrasenaVendedor,ImagenVendedor, activo)
VALUES ('Carlos Martínez','Hombre','Pedro Moreno #33','carlosm@gmail.com','carlos1234','imagenvendedor.jpg', true);

SELECT *FROM Vendedores;