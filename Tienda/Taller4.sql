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
