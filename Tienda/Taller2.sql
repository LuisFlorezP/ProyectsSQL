use Taller1;
select sum(precio_articulo) 'SUMA PRECIOS ARTÍCULOS' from articulo;

use Taller1;
select count(envio_id) 'ENVÍOS URGENTES' from factura where envio_id=1;

use Taller1;
select sum(neto) 'ENVÍOS PESADOS' from factura where envio_id=7;

use Taller1;
select max(precio_articulo) 'MAYOR PRECIO' from articulo;

use Taller1;
select min(precio_articulo) 'MENOR PRECIO' from articulo;

use Taller1;
select avg(neto) 'PROMEDIO DEL VALOR NETO' from factura;

use Taller1;
select avg(bruto) 'PROMEDIO DEL VALOR BRUTO' from factura;

use Taller1;
select count(nombre_comprador) 'CANTIDAD DE FERNANDOS' from comprador where nombre_comprador='Fernando';

use Taller1;
select count(nombre_vendedor) 'CANTIDAD DE ANDREAS' from vendedor where nombre_vendedor='Andrea';

use Taller1
select salario from vendedor where salario between '1000000' and '1400000';
