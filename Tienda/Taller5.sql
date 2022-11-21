-- Guardar procedimiento: Ventas de artículo
alter procedure SP_venArt AS print 'Ventas de artículo'
select COUNT(id_articulo) 'Cantidad de ventas del artículo',articulo_id,nombre_articulo from articulo inner join factura on articulo.id_articulo=factura.articulo_id group by articulo_id,nombre_articulo having nombre_articulo='Leche';

-- Alterar procedimiento: Ventas de artículo
alter procedure SP_venArt AS print 'Ventas de artículo'
select COUNT(id_articulo) 'Cantidad de ventas del artículo',articulo_id,nombre_articulo from articulo inner join factura on articulo.id_articulo=factura.articulo_id group by articulo_id,nombre_articulo having nombre_articulo='Leche' or nombre_articulo='Arroz' or nombre_articulo='Panela';

-- Mostrar: Ventas de artículo
execute SP_venArt;

-- Guardar procedimiento: Sumar valor al salario
create procedure SP_maxSal 
@id_vendedor as int, @suma as int 
AS print 'Agregar valor al salario' update vendedor set salario=salario+@suma where id_vendedor=@id_vendedor

-- Guardar procedimiento: Restar valor al salario
create procedure SP_minSal 
@id_vendedor as int, @resta as int 
AS print 'Agregar valor al salario' update vendedor set salario=salario-@resta where id_vendedor=@id_vendedor

-- Guardar procedimiento: Cambiar nombre
create procedure SP_camNOm
@id_vendedor as int, @nuevo as varchar(60)
AS print 'Cambiar nombre' update vendedor set nombre_vendedor=@nuevo where id_vendedor=@id_vendedor

	-- Mostrar: Sumar valor al salario
	execute SP_maxSal 2,800000

	-- Mostrar: Restar valor al salario
	execute SP_minSal 2,800000

	-- Mostrar: Cambiar nombre
	execute SP_camNOm 2,'Tatiana'
    