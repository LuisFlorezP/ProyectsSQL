use Taller1;
select sum(precio_articulo) from articulo;

use Taller1;
select count(envio_id) from factura where tipo_envio='Envíos urgentes';

use Taller1;
select sum(neto) from factura where tipo_envio='Envíos pesados';

use Taller1;
select max(precio_articulo) from articulo;

use Taller1;
select min(precio_articulo) from articulo;

use Taller1;
select avg(neto) from factura;

use Taller1;
select avg(bruto) from factura;

use Taller1;
select count(nombre_comprador) from comprador where nombre_comprador='Fernando';

use Taller1;
select count(nombre_vendedor) from vendedor where nombre_vendedor='Andrea';

use Taller1
select salario from vendedor where salario between '1000000' and '1400000';
