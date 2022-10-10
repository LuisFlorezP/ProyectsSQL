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