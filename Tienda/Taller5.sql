-- Guardar procedimiento: Ventas de artículo
alter procedure SP_venArt AS print 'Ventas de artículo'
select COUNT(id_articulo) 'Cantidad de ventas del artículo',articulo_id,nombre_articulo from articulo inner join factura on articulo.id_articulo=factura.articulo_id group by articulo_id,nombre_articulo having nombre_articulo='Leche';

-- Alterar procedimiento: Ventas de artículo
alter procedure SP_venArt AS print 'Ventas de artículo'
select COUNT(id_articulo) 'Cantidad de ventas del artículo',articulo_id,nombre_articulo from articulo inner join factura on articulo.id_articulo=factura.articulo_id group by articulo_id,nombre_articulo having nombre_articulo='Leche' or nombre_articulo='Arroz' or nombre_articulo='Panela';

-- Mostrar: Ventas de artículo
execute SP_venArt;
