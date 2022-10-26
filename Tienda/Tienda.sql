CREATE DATABASE Tienda;

use Tienda;
create table comprador (
id_comprador int primary key identity (1,1),
nombre_comprador varchar (40),
apellido_comprador varchar (40),
direccion_comprador varchar (40),
tel_comprador int)

use Tienda;
create table envio (
id_envio int primary key identity (1,1),
tipo_envio varchar (20))

use Tienda;
create table vendedor (
id_vendedor int primary key identity (1,1),
nombre_vendedor varchar (40),
apellido_vendedor varchar (40),
direccion_vendedor varchar (40))

use Tienda;
create table articulo (
id_articulo int primary key identity (1,1),
nombre_articulo varchar (40),
precio_articulo int,
vendedor_id int,
constraint vendedor_id foreign key (vendedor_id) references vendedor(id_vendedor))

use Tienda;
create table factura (
id_pago int primary key identity (1,1),
direccion_envio varchar (40),
fecha date,
hora time,
cantidad int,
bruto money,
iva float,
neto money,
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
insert into comprador(nombre_comprador,apellido_comprador,direccion_comprador,tel_comprador) values 
('Jorge','Martínez','Calle 66 # 9',5049461), ('Tatiana','Montoya','Calle 4 # 44',5040010), ('Camila','Palacio','Calle 44 # 4',5041111),
('Sara','Fernandez','Calle 13 # 1',5041133), ('Paola','Echeverri','Calle 51 # 4',5047890), ('Daniel','Bedoya','Calle 11 # 11',5044050),
('Andres','Martínez','Calle 54 # 14',5048795), ('Fernando','Montoya','Calle 36 # 40',5041346), ('Reinaldo','Palacio','Calle 27 # 20',5046456),
('Sofia','Fernandez','Calle 21 # 90',5043918), ('Estefani','Echeverri','Calle 11 # 6',5048271), ('Manuela','Bedoya','Calle 19 # 8',5049898),
('Sergio','Martínez','Calle 4 # 74',5040502), ('Luis','Montoya','Calle 30 # 1',5043080), ('Rene','Palacio','Calle 81 # 28',5046907),
('Laura','Fernandez','Calle 22 # 9',5043060), ('Simón','Echeverri','Calle 69 # 7',5043014), ('Raul','Bedoya','Calle 16 # 7',5040287),
('Luis','Florez','Calle 11 # 7',5216500), ('Riguberto','Herrera','Calle 2 # 91',5047142);

use Tienda;
insert into vendedor(nombre_vendedor,apellido_vendedor,direccion_vendedor,salario) values 
('Jorge','Moreno','Calle 26 # 26',1000000), ('Tatiana','Torres','Calle 04 # 81',1200000), ('Camila','Medina','Calle 25 # 54',1200000),
('Hugo','Muñoz','Calle 97 # 11',1400000), ('Mateo','Ortega','Calle 07 # 71',1400000), ('María','Gallego','Calle 45 # 45',1600000),
('Andres','Moreno','Calle 34 # 43',1600000), ('Fernando','Torres','Calle 21 # 03',1800000), ('Reinaldo','Medina','Calle 36 # 63',1800000),
('Martín','Muñoz','Calle 09 # 01',1000000), ('Pablo','Ortega','Calle 66 # 06',1000000), ('Isabel','Gallego','Calle 33 # 03',1000000),
('Sergio','Moreno','Calle 85 # 36',2000000), ('Luis','Torres','Calle 07 # 02',2000000), ('Rene','Medina','Calle 10 # 04',2200000),
('Lucas','Muñoz','Calle 12 # 21',2200000), ('Paula','Ortega','Calle 41 # 14',2400000), ('Carmen','Gallego','Calle 10 # 05',2400000),
('Maria','Palacio','Calle 01 # 02',3000000), ('Andrea','Rodríguez','Calle 97 # 79',1000000);

use Tienda;
insert into envio(tipo_envio) values ('Envíos urgentes'), ('Envíos estándar'), ('Envíos contra reembolso'), 
('Envíos frágiles'), ('Envíos internacionales'), ('Envío a un punto de entrega'), ('Envíos pesados');

use Tienda;
insert into articulo(nombre_articulo,precio_articulo,vendedor_id) values 
('Lentejas',30000,1), ('Papel',45000,2), ('Carne',520000,3), ('Leche',660000,4),
('Vino',280000,5), ('Gomitas',1250000,6), ('Jabon de manos',1450000,7), ('Jabon de baño',760000,8), 
('Shampoo',830000,9), ('Frijoles',1000000,10), ('Azúcar',330000,11), ('Desodorante',510000,12), 
('Talco',990000,13), ('Jugo',222000,14), ('Gaseosa',100000,15), ('Atún',440000,16), 
('Spaguetti',155000,17), ('Panela',210000,18), ('Salchichas',1050000,19),('Arroz',15000,20);

use Tienda;
insert into factura(direccion_envio,fecha,hora,cantidad,bruto,iva,neto,comprador_id,envio_id,num_vendedor,articulo_id) values 
('Calle 26 # 26','2017/02/22','18:10',2,30000,5700,35700,1,1,20,13), ('Calle 12 # 21','2018/09/18','14:00',1,280000,53200,333200,6,6,15,3),
('Calle 66 # 06','2021/03/10','12:20',6,6000000,1140000,7140000,11,4,10,16), ('Calle 45 # 45','2022/11/14','14:22',4,400000,76000,476000,16,2,5,6),
('Calle 97 # 11','2018/01/01','15:50',4,120000,22800,142800,2,2,19,15), ('Calle 01 # 02','2019/08/15','11:10',1,1250000,237500,1487500,7,7,14,5),
('Calle 07 # 02','2020/03/21','10:10',9,2970000,564300,3534300,12,5,9,19), ('Calle 36 # 63','2021/12/04','10:30',4,1760000,334400,2094400,17,3,4,9),
('Calle 34 # 43','2019/01/11','12:05',3,135000,25650,160650,3,3,18,12), ('Calle 41 # 14','2022/07/12','12:25',1,510000,96900,606900,13,6,8,17),
('Calle 33 # 03','2020/01/19','11:20',2,310000,58900,368900,18,4,3,7), ('Calle 09 # 01','2018/08/03','13:35',1,520000,98800,618800,4,4,17,14),
('Calle 07 # 71','2019/08/16','16:45',4,3040000,577600,3617600,9,2,12,4), ('Calle 97 # 79','2020/07/18','09:55',2,1980000,376200,2356200,14,7,7,20),
('Calle 10 # 04','2021/04/27','07:55',3,630000,119700,749700,19,5,2,10), ('Calle 85 # 36','2017/06/29','08:15',1,660000,125400,785400,5,5,16,11),
('Calle 21 # 03','2018/01/02','18:40',7,5810000,1103900,6913900,10,3,11,1), ('Calle 25 # 54','2021/12/11','08:10',5,1110000,210900,1320900,15,1,6,18),
('Calle 10 # 05','2022/03/26','11:55',6,6300000,1197000,7497000,20,6,1,8), ('Calle 04 # 81','2017/04/23','09:45',5,7250000,1377500,8627500,8,1,13,2);


use Tienda;
select sum(precio_articulo) 'SUMA PRECIOS ARTÍCULOS' from articulo;

use Tienda;
select count(envio_id) 'ENVÍOS URGENTES' from factura where envio_id=1;

use Tienda;
select sum(neto) 'ENVÍOS PESADOS' from factura where envio_id=7;

use Tienda;
select max(precio_articulo) 'MAYOR PRECIO' from articulo;

use Tienda;
select min(precio_articulo) 'MENOR PRECIO' from articulo;

use Tienda;
select avg(neto) 'PROMEDIO DEL VALOR NETO' from factura;

use Tienda;
select avg(bruto) 'PROMEDIO DEL VALOR BRUTO' from factura;

use Tienda;
select count(nombre_comprador) 'CANTIDAD DE FERNANDOS' from comprador where nombre_comprador='Fernando';

use Tienda;
select count(nombre_vendedor) 'CANTIDAD DE ANDREAS' from vendedor where nombre_vendedor='Andrea';

use Tienda
select salario from vendedor where salario between '1000000' and '1400000';
