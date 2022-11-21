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
