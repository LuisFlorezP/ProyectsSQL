-- Ordenar de forma ascendente los apellidos, mostrando solamente aquellos registros que el nombre comience con la letra "L" de la tabla comprador
use Tienda;
select * from comprador where nombre_comprador like 'L%' order by apellido_comprador ASC;

-- Ordenar de forma descendente los apellidos, mostrando solamente aquellos registros que el nombre comience con la letra "M" de la tabla vendedor
use Tienda;
select * from vendedor where nombre_vendedor like 'M%' order by apellido_vendedor DESC;

/* Ordenar de forma ascendente el precio de los artículos, mostrando solamente aquellos registros que el nombre del artículo contenga la letra "i" y que el precio esté entre un millón y
un millón trescientos de la tabla artículo */
use Tienda;
select * from articulo where nombre_articulo like '%i%' and precio_articulo between '1000000' and '1300000' order by precio_articulo;

-- Ordenar de forma descendente el valor neto, mostrando solamente aquellos registros que el número de vendedor sea 1 o 3 o 5 de la tabla factura
use Tienda;
select * from factura where num_vendedor=1 or num_vendedor=3 or num_vendedor=5 order by neto DESC;

-- Ordenar de forma ascendente el valor neto, mostrando solamente aquellos registros que el valor bruto que sea mayor igual a cien mil y menor a quinientos mil de la tabla factura
use Tienda;
select * from factura where bruto>=100000 and bruto<520000 order by neto ASC;

/* Ordenar de forma descendente el nombre de artículo, mostrando solamente aquellos registros que el nombre termine con la letra "o" y que el precio sea mayor o igual a
quinientos mil de la tabla artículo */
use Tienda;
select * from articulo where nombre_articulo like '%o' and precio_articulo>=500000 order by nombre_articulo DESC;

-- Agrupar los tipos de envío para saber cuantos valores bruto tienen el tipo de envío correspondiente de la tabla factura
use Tienda;
select envio_id,count(bruto) 'TIPOS DE ENVÍOS POR VALOR BRUTO' from factura group by envio_id order by envio_id ASC;

-- Agrupar los salarios repetidos para saber cuantos nombres tienen el salario correspondiente de la tabla vendedor
use Tienda;
select salario,count(nombre_vendedor) 'CANTIDAD DE SALARIOS REPETIDOS' from vendedor group by salario order by salario DESC;

-- Agrupar los vendedores para sumar el precio de artículos que le corresponde a cada vendedor de la tabla artículo
use Tienda;
select vendedor_id,sum(precio_articulo) 'SUMATORIA DEL PRECIO DEL ARTÍCULO PARA CADA VENDEDOR' from articulo group by vendedor_id order by vendedor_id;

-- Agrupar 
use Tienda;
select

-- Agrupar 
use Tienda;
select

-- Agrupar 
use Tienda;
select

/* 
*/
use Tienda;
select

/* 
*/
use Tienda;
select

/* 
*/
use Tienda;
select

/* 
*/
use Tienda;
select

/* 
*/
use Tienda;
select

/* 
*/
use Tienda;
select

/* 
*/
use Tienda;
select

/* 
*/
use Tienda;
select
