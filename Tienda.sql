CREATE DATABASE Tienda;

use Tienda;
create table comprador (
id_comprador int primary key identity (1,1),
nombre_comprador varchar (20),
apellido_comprador varchar (20),
direccion_comprador varchar (20))

use Tienda;
create table envio (
id_envio int primary key identity (1,1),
tipo_envio varchar (20))

use Tienda;
create table vendedor (
id_vendedor int primary key identity (1,1),
nombre_vendedor varchar (20),
apellido_vendedor varchar (20),
direccion_vendedor varchar (20))

use Tienda;
create table articulo (
id_articulo int primary key identity (1,1),
nombre_articulo varchar (20),
precio_articulo int,
vendedor_id int,
constraint vendedor_id foreign key (vendedor_id) references vendedor(id_vendedor))

use Tienda;
create table factura (
id_pago int primary key identity (1,1),
envio_tipo varchar (20),
direccion_envio varchar (20),
fecha date,
hora time,
cantidad int,
bruto int,
iva int,
neto int,
comprador_id int,
envio_id int,
num_vendedor int,
articulo_id int,
constraint comprador_id foreign key (comprador_id) references comprador(id_comprador),
constraint envio_id foreign key (envio_id) references envio(id_envio),
constraint num_vendedor foreign key (num_vendedor) references vendedor(id_vendedor),
constraint articulo_id foreign key (articulo_id) references articulo(id_articulo))


		use Tienda;
		select * from comprador;

		use Tienda;
		select * from envio;

		use Tienda;
		select * from vendedor;

		use Tienda;
		select * from articulo;

		use Tienda;
		select * from factura;


use Tienda;
alter table vendedor
add salario money;

use Tienda;
alter table envio
alter column tipo_envio varchar (40);

use Tienda;
alter table comprador
drop column tel_comprador;

use Tienda;
exec sp_rename 'facturacion' , 'factura';

use Tienda;​​
EXEC sp_rename 'dbo.articulo', 'id_articulo', 'articulo';


use Tienda;
delete from comprador where id_comprador=6;


use Tienda;
insert into comprador(nombre_comprador,apellido_comprador,direccion_comprador,tel_comprador) values ('Riguberto','Herrera','Calle 2 # 91',5047142),
('Jorge','Martínez','Calle 66 # 9',5049461), ('Tatiana','Montoya','Calle 4 # 44',5040010), ('Camila','Palacio','Calle 44 # 4',5041111),
('Sara','Fernandez','Calle 13 # 1',5041133), ('Paola','Echeverri','Calle 51 # 4',5047890), ('Daniel','Bedoya','Calle 11 # 11',5044050),
('Andres','Martínez','Calle 54 # 14',5048795), ('Fernando','Montoya','Calle 36 # 40',5041346), ('Reinaldo','Palacio','Calle 27 # 20',5046456),
('Sofia','Fernandez','Calle 21 # 90',5043918), ('Estefani','Echeverri','Calle 11 # 6',5048271), ('Manuela','Bedoya','Calle 19 # 8',5049898),
('Sergio','Martínez','Calle 4 # 74',5040502), ('Luis','Montoya','Calle 30 # 1',5043080), ('Rene','Palacio','Calle 81 # 28',5046907),
('Laura','Fernandez','Calle 22 # 9',5043060), ('Simón','Echeverri','Calle 69 # 7',5043014), ('Raul','Bedoya','Calle 16 # 7',5040287),
('Luis','Florez','Calle 11 # 7',5216500);

use Tienda;
insert into vendedor(nombre_vendedor,apellido_vendedor,direccion_vendedor,salario) values ('Andrea','Rodríguez','Calle 97 # 79',1000000),
('Jorge','Moreno','Calle 26 # 26',1000000), ('Tatiana','Torres','Calle 4 # 81',1200000), ('Camila','Medina','Calle 25 # 54',1200000),
('Hugo','Muñoz','Calle 97 # 11',1400000), ('Mateo','Ortega','Calle 7 # 71',1400000), ('María','Gallego','Calle 45 # 45',1600000),
('Andres','Moreno','Calle 34 # 43',1600000), ('Fernando','Torres','Calle 21 # 3',1800000), ('Reinaldo','Medina','Calle 36 # 63',1800000),
('Martín','Muñoz','Calle 9 # 01',1000000), ('Pablo','Ortega','Calle 66 # 6',1000000), ('Isabel','Gallego','Calle 33 # 3',1000000),
('Sergio','Moreno','Calle 85 # 36',2000000), ('Luis','Torres','Calle 7 # 2',2000000), ('Rene','Medina','Calle 10 # 4',2200000),
('Lucas','Muñoz','Calle 12 # 21',2200000), ('Paula','Ortega','Calle 41 # 14',2400000), ('Carmen','Gallego','Calle 10 # 5',2400000),
('Maria','Palacio','Calle 1 # 2',3000000);

use Tienda;
insert into envio(tipo_envio) values ('Envíos urgentes'), ('Envíos estándar'), ('Envíos contra reembolso'), ('Envíos pesados'),
('Envíos frágiles'), ('Envíos internacionales'), ('Envío a un punto de entrega');