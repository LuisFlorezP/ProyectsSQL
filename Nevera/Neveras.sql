CREATE DATABASE TiendaNev;

use TiendaNev;
create table cliente (
id_cliente int primary key identity (1,1),
nombre_cliente varchar (40),
apellido_cliente varchar (40),
direccion_cliente varchar (40),
fecha_registro date)

use TiendaNev;
create table tipo_servicio (
id_tipo int primary key identity (1,1),
nombre_tipo varchar (40))

use TiendaNev;
create table servicio (
id_servicio int primary key identity (1,1),
nombre_servicio varchar (80),
valor_servicio money,
tipo_id int,
cliente_id int,
fecha_servicio date,
constraint tipo_id foreign key (tipo_id) references tipo_servicio(id_tipo),
constraint cliente_id foreign key (cliente_id) references cliente(id_cliente))

use TiendaNev;
insert into cliente (nombre_cliente,apellido_cliente,direccion_cliente,fecha_registro) values 
('Luis','Florez','CR 65 # 13','2022/08/12'), ('Rogelia','Pelaez','CR 30 # 09','2022/05/14'), ('Raul','Gonsález','CR 41 # 70','2022/01/1'), 
('Pedro','Arbelaez','CR 11 # 12','2022/08/12'), ('Luisa','Castro','CR 34 # 06','2022/09/30'), ('Alberto','Posada','CR 10 # 01','2022/7/14'), 
('Danna','Martínez','CR 40 # 44','2022/04/13');

use TiendaNev;
insert into tipo_servicio (nombre_tipo) values 
('Mantenimiento neveras'), ('Reparación neveras'), ('Venta neveras'), ('Mantenimiento nevecones'), ('Reparación nevecones'), ('Venta nevecones'), ('Venta accesorios');

use TiendaNev;
insert into servicio (nombre_servicio,valor_servicio,tipo_id,cliente_id,fecha_servicio) values 
('Venta nevera  marca Haceb',2099900,3,1,'2022/10/10'), ('Venta nevera marca Challenger',1599900,3,4,'2022/10/10'), ('Venta nevera marca Mabe',1490337,3,7,'2022/05/1'), 
('Mantenimiento nevera marca Samsubg',55000,1,5,'2022/10/4'), ('Reparación nevera marca Whirlpool',100000,2,2,'2022/05/16'), ('Mantenimiento nevecon marca Mabe',44000,4,6,'2022/10/30'), 
('Venta nevecon marca LG',14999900,6,2,'2022/06/1'), ('Mantenimiento nevecon marca LG',80000,4,2,'2023/02/11'), ('Reparación nevecon marca Electrolux',71000,5,3,'2022/05/16'), 
('Venta accesorio entrepaño para nevera marca Challenger',49900,7,4,'2023/01/1');


    use TiendaNev;
    select * from cliente;

    use TiendaNev;
    select * from tipo_servicio;

    use TiendaNev;
    select * from servicio;


-- PUNTO 3)
use TiendaNev;
select cliente_id,COUNT(id_servicio) 'SERVICIOS POR CLIENTES' from servicio group by cliente_id order by cliente_id ASC;

-- PUNTO 4)
use TiendaNev;
select valor_servicio,cliente_id from servicio order by valor_servicio DESC; 

-- PUNTO 5)
use TiendaNev;
select * from tipo_servicio;

-- PUNTO 6)
use TiendaNev;
select fecha_servicio,COUNT(cliente_id) 'FECHA DE REGISTRO DE MISMOS CLIENTES' from servicio group by fecha_servicio having count(fecha_servicio)>1 order by fecha_servicio;
