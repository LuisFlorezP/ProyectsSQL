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


	select * from comprador;

	select * from envio;

	select * from vendedor;

	select * from articulo;

	select * from factura;


alter table vendedor add salario money;

alter table envio alter column tipo_envio varchar (40);

alter table comprador drop column tel_comprador;

exec sp_rename 'facturacion' , 'factura';

EXEC sp_rename 'dbo.articulo', 'id_articulo', 'articulo';

delete from comprador where id_comprador=6;


insert into comprador(nombre_comprador,apellido_comprador,direccion_comprador,tel_comprador) values 
('Jorge','Martínez','Calle 66 # 9',5049461), ('Tatiana','Montoya','Calle 4 # 44',5040010), ('Camila','Palacio','Calle 44 # 4',5041111),
('Sara','Fernandez','Calle 13 # 1',5041133), ('Paola','Echeverri','Calle 51 # 4',5047890), ('Daniel','Bedoya','Calle 11 # 11',5044050),
('Andres','Martínez','Calle 54 # 14',5048795), ('Fernando','Montoya','Calle 36 # 40',5041346), ('Reinaldo','Palacio','Calle 27 # 20',5046456),
('Sofia','Fernandez','Calle 21 # 90',5043918), ('Estefani','Echeverri','Calle 11 # 6',5048271), ('Manuela','Bedoya','Calle 19 # 8',5049898),
('Sergio','Martínez','Calle 4 # 74',5040502), ('Luis','Montoya','Calle 30 # 1',5043080), ('Rene','Palacio','Calle 81 # 28',5046907),
('Laura','Fernandez','Calle 22 # 9',5043060), ('Simón','Echeverri','Calle 69 # 7',5043014), ('Raul','Bedoya','Calle 16 # 7',5040287),
('Luis','Florez','Calle 11 # 7',5216500), ('Riguberto','Herrera','Calle 2 # 91',5047142);

insert into comprador(nombre_comprador,apellido_comprador) values 
('Andres','Martínez'), ('Jorge','Martínez'), ('Sofia','Martínez'), ('Tatiana','Martínez'), ('Pedro','Martínez'), 
('Jorge','Martínez'), ('Jorge','Martínez'), ('Jorge','Martínez'), ('Rene','Martínez'), ('Camila','Martínez'),
('Pedro','Martínez'), ('Andres','Martínez'), ('Tatiana','Martínez'), ('Jorge','Martínez'), ('Jorge','Martínez'),
('Pedro','Martínez'), ('Sofia','Martínez'), ('Jorge','Martínez'), ('Rene','Martínez'), ('Rene','Martínez');

insert into vendedor(nombre_vendedor,apellido_vendedor,direccion_vendedor,salario) values 
('Jorge','Moreno','Calle 26 # 26',1000000), ('Tatiana','Torres','Calle 04 # 81',1200000), ('Camila','Medina','Calle 25 # 54',1200000),
('Hugo','Muñoz','Calle 97 # 11',1400000), ('Mateo','Ortega','Calle 07 # 71',1400000), ('María','Gallego','Calle 45 # 45',1600000),
('Andres','Moreno','Calle 34 # 43',1600000), ('Fernando','Torres','Calle 21 # 03',1800000), ('Reinaldo','Medina','Calle 36 # 63',1800000),
('Martín','Muñoz','Calle 09 # 01',1000000), ('Pablo','Ortega','Calle 66 # 06',1000000), ('Isabel','Gallego','Calle 33 # 03',1000000),
('Sergio','Moreno','Calle 85 # 36',2000000), ('Luis','Torres','Calle 07 # 02',2000000), ('Rene','Medina','Calle 10 # 04',2200000),
('Lucas','Muñoz','Calle 12 # 21',2200000), ('Paula','Ortega','Calle 41 # 14',2400000), ('Carmen','Gallego','Calle 10 # 05',2400000),
('Maria','Palacio','Calle 01 # 02',3000000), ('Andrea','Rodríguez','Calle 97 # 79',1000000);

insert into envio(tipo_envio) values ('Envíos urgentes'), ('Envíos estándar'), ('Envíos contra reembolso'), 
('Envíos frágiles'), ('Envíos internacionales'), ('Envío a un punto de entrega'), ('Envíos pesados');

insert into articulo(nombre_articulo,precio_articulo,vendedor_id) values 
('Lentejas',30000,1), ('Papel',45000,2), ('Carne',520000,3), ('Leche',660000,4),
('Vino',280000,5), ('Gomitas',1250000,6), ('Jabon de manos',1450000,7), ('Jabon de baño',760000,8), 
('Shampoo',830000,9), ('Frijoles',1000000,10), ('Azúcar',330000,11), ('Desodorante',510000,12), 
('Talco',990000,13), ('Jugo',222000,14), ('Gaseosa',100000,15), ('Atún',440000,16), 
('Spaguetti',155000,17), ('Panela',210000,18), ('Salchichas',1050000,19),('Arroz',15000,20);

insert into articulo(nombre_articulo,precio_articulo,vendedor_id) values 
('Galletas',45500,4), ('Peras',15100,2), ('Quipitos',20200,16), ('Quesito',66000,20),
('Aceite',321000,11), ('Bananos',15200,6), ('Takis',20400,3), ('Chocolate',444000,8), 
('Arina',566200,4), ('Coca-cola',15300,4), ('Acondicionador',55500,11), ('Panelada',110600,12), 
('Pollo',1111000,12), ('Maggi',15400,12), ('Peinilla',760000,15), ('Frutiño',250000,16), 
('Manzana',985300,12), ('Aguacate',15500,18), ('Pan',70000,19),('Salsa roja',450000,19);

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

insert into factura(cantidad,bruto,comprador_id,num_vendedor) values 
(1,45000,12,4), (4,2640000,13,3), (4,2640000,15,4), (2,440000,12,5), (3,90000,2,4),
(4,2640000,15,3), (1,45000,9,8), (2,440000,15,3), (1,45000,13,4), (3,90000,9,11);


select sum(precio_articulo) 'SUMA PRECIOS ARTÍCULOS' from articulo;
select count(envio_id) 'ENVÍOS URGENTES' from factura where envio_id=1;
select sum(neto) 'ENVÍOS PESADOS' from factura where envio_id=7;
select max(precio_articulo) 'MAYOR PRECIO' from articulo;
select min(precio_articulo) 'MENOR PRECIO' from articulo;
select avg(neto) 'PROMEDIO DEL VALOR NETO' from factura;
select avg(bruto) 'PROMEDIO DEL VALOR BRUTO' from factura;
select count(nombre_comprador) 'CANTIDAD DE FERNANDOS' from comprador where nombre_comprador='Fernando';
select count(nombre_vendedor) 'CANTIDAD DE ANDREAS' from vendedor where nombre_vendedor='Andrea';

select salario from vendedor where salario between '1000000' and '1400000';


-- Ordenar de forma ascendente los apellidos, mostrando solamente aquellos registros que el nombre comience con la letra "L" de la tabla comprador
select * from comprador where nombre_comprador like 'L%' order by apellido_comprador ASC;

-- Ordenar de forma descendente los apellidos, mostrando solamente aquellos registros que el nombre comience con la letra "M" de la tabla vendedor
select * from vendedor where nombre_vendedor like 'M%' order by apellido_vendedor DESC;

/* Ordenar de forma ascendente el precio de los artículos, mostrando solamente aquellos registros que el nombre del artículo contenga la letra "i" y que el precio esté entre un millón y
un millón trescientos de la tabla artículo */
select * from articulo where nombre_articulo like '%i%' and precio_articulo between '1000000' and '1300000' order by precio_articulo;

-- Ordenar de forma descendente el valor neto, mostrando solamente aquellos registros que el número de vendedor sea 1 o 3 o 5 de la tabla factura
select * from factura where num_vendedor=1 or num_vendedor=3 or num_vendedor=5 order by neto DESC;

-- Ordenar de forma ascendente el valor neto, mostrando solamente aquellos registros que el valor bruto que sea mayor igual a cien mil y menor a quinientos mil de la tabla factura
select * from factura where bruto>=100000 and bruto<520000 order by neto ASC;

/* Ordenar de forma descendente el nombre de artículo, mostrando solamente aquellos registros que el nombre termine con la letra "o" y que el precio sea mayor o igual a
quinientos mil de la tabla artículo */
select * from articulo where nombre_articulo like '%o' and precio_articulo>=500000 order by nombre_articulo DESC;

-- Agrupar los tipos de envío para saber cuantos valores bruto tienen el tipo de envío correspondiente de la tabla factura
select envio_id,count(bruto) 'TIPOS DE ENVÍOS POR VALOR BRUTO' from factura group by envio_id order by envio_id ASC;

-- Agrupar los salarios repetidos para saber cuantos nombres tienen el salario correspondiente de la tabla vendedor
select salario,count(nombre_vendedor) 'CANTIDAD DE SALARIOS REPETIDOS' from vendedor group by salario order by salario DESC;

-- Agrupar los vendedores para sumar el precio de artículos que le corresponde a cada vendedor de la tabla artículo
select vendedor_id,sum(precio_articulo) 'SUMATORIA DEL PRECIO DEL ARTÍCULO PARA CADA VENDEDOR' from articulo group by vendedor_id order by vendedor_id;

-- Agrupar los nombres de compradores para contar la cantidad de apellidos que le corresponde a cada comprador de la tabla comprador
select nombre_comprador,count(apellido_comprador) 'CANTIDAD DE APELLIDOS DE COMPRADORES PARA CADA NOMBRE' from comprador group by nombre_comprador order by nombre_comprador;

-- Agrupar los compradores para saber el máximo valor bruto que le corresponde a cada comprador de la tabla factura
select comprador_id,max(bruto) 'MÁXIMO VALOR BRUTO DE CADA COMPRADOR' from factura group by comprador_id order by comprador_id;

-- Agrupar los vendedores para saber el mínimo valor bruto que le corresponde a cada vendedor de la tabla factura 
select num_vendedor,min(bruto) 'MÍNIMO VALOR BRUTO DE CADA VENDEDOR' from factura group by num_vendedor order by num_vendedor;

-- Agrupar los vendedores para sumar el valor bruto que le corresponde a cada vendedor si dicha sumatoria es mayor a trescientos mil de la tabla factura
select num_vendedor,sum(bruto) 'SUMATORIA DEL VALOR BRUTO POR CADA VENDEDOR' from factura group by num_vendedor having sum(bruto)>3000000 order by num_vendedor;

-- Agrupar los compradores para sumar el valor bruto que le corresponde a cada comprador si dicha sumatoria es menor a quinientos mil de la tabla factura
select comprador_id,sum(bruto) 'SUMATORIA DEL VALOR BRUTO POR CADA COMPRADOR' from factura group by comprador_id having sum(bruto)<5000000 order by comprador_id;

/* Agrupar los vendedores para contar la cantidad de artículos que le corresponde a cada vendedor si el promedio del precio del artículo es mayor o igual a 220000 de la 
tabla artículo */
select vendedor_id,count(nombre_articulo) 'CANTIDAD DE ARTÍCULOS PARA CADA VENDEDOR' from articulo group by vendedor_id having avg(precio_articulo)>=220000 order by vendedor_id;

/* Agrupar los vendedores para hacer el promedio del precio de los artículos que le corresponde a cada vendedor si el promedio del precio del artículo es mayor a 500000 de la 
tabla artículo */
select vendedor_id,avg(precio_articulo) 'PROMEDIO DEL PRECIO DE ARTÍCULOS POR VENDEDOR' from articulo group by vendedor_id having avg(precio_articulo)>500000 order by vendedor_id;

/* Agrupar los tipos de envíos para saber el máximo de la cantidad de los artículos que le corresponde a cada tipo de envío si el máximo de la cantidad de los artículos 
es mayor a 4 de la tabla factura */
select envio_id,max(cantidad) 'MÁXIMO DE CANTIDAD DE CADA TIPO DE ENVÍO' from factura group by envio_id having max(cantidad)>4 order by envio_id;

-- Agrupar los tipos de envíos para saber el mínimo del iva que le corresponde a cada tipo de envío si el mínimo del iva es menor o igual a 50000 de la tabla factura 
select envio_id,min(iva) 'MÍNIMO DE IVA DE CADA TIPO DE ENVÍO' from factura group by envio_id having min(iva)<=50000 order by envio_id;

-- Ordenar de forma ascendente los nombres de artículos, mostrando solamente aquellos nombres que empiecen con la letra "A" de la tabla artículo
select * from articulo where nombre_articulo like 'A%' order by nombre_articulo;

-- Ordenar de forma descendente los apellidos de los compradores, mostrando solamente aquellos aepllidos que terminen con la letra "i" de la tabla comprador
select * from comprador where apellido_comprador like '%i' order by apellido_comprador DESC;


-- Relación de las tablas vendedor y artículo para ver todo pero de vendedor 20
select * from vendedor inner join articulo on vendedor.id_vendedor=articulo.vendedor_id where articulo.vendedor_id=20

-- Relación de las tablas vendedor y artículo para ver el agrupamiento de los artículos
select COUNT(articulo.vendedor_id) 'Contador de artículos',id_articulo from vendedor inner join articulo on vendedor.id_vendedor=articulo.vendedor_id group by id_articulo 

-- Relación de las tablas vendedor y artículo para ver el agrupamiento de los artículos junto al nombre del vendedor
select COUNT(articulo.vendedor_id) 'Contador de artículos',id_articulo,nombre_vendedor from vendedor inner join articulo on vendedor.id_vendedor=articulo.vendedor_id group by id_articulo,nombre_vendedor 

-- Relación de las tablas vendedor y artículo para ver el agrupamiento de los artículos junto al nombre del vendedor de forma descendente
select COUNT(articulo.vendedor_id) 'Contador de artículos',id_articulo,nombre_vendedor from vendedor inner join articulo on vendedor.id_vendedor=articulo.vendedor_id group by id_articulo,nombre_vendedor order by id_articulo DESC

-- Relación de las tablas vendedor y artículo para ver el agrupamiento de los vendedores junto a los artículos y vendedores pero de vendedor 20
select id_articulo 'Num Artículo',id_vendedor 'Num vendedor', COUNT(articulo.vendedor_id) 'Contador de artículos' from vendedor inner join articulo on vendedor.id_vendedor=articulo.vendedor_id group by id_articulo,id_vendedor having id_vendedor=20

-- Relación de las tablas vendedor y factura para ver el agrupamiento de las facturas junto a los vendedores y su dirección pero de vendedor 3
select COUNT(id_pago) 'Cantidad de facturas',id_vendedor,direccion_vendedor from vendedor inner join factura on vendedor.id_vendedor=factura.num_vendedor group by id_vendedor,direccion_vendedor having id_vendedor=3


-- Guardar procedimiento: Ventas de artículo
alter procedure SP_venArt AS print 'Ventas de artículo'
select COUNT(id_articulo) 'Cantidad de ventas del artículo',articulo_id,nombre_articulo from articulo inner join factura on articulo.id_articulo=factura.articulo_id group by articulo_id,nombre_articulo having nombre_articulo='Leche';

-- Alterar procedimiento: Ventas de artículo
alter procedure SP_venArt AS print 'Ventas de artículo'
select COUNT(id_articulo) 'Cantidad de ventas del artículo',articulo_id,nombre_articulo from articulo inner join factura on articulo.id_articulo=factura.articulo_id group by articulo_id,nombre_articulo having nombre_articulo='Leche' or nombre_articulo='Arroz' or nombre_articulo='Panela';

-- Mostrar: Ventas de artículo
execute SP_venArt;
