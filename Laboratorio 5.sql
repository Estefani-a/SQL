-- 1- Informar nombre y apellido de los clientes que han realizado compras.
	
	Select Distinct nombre, apellido From Clientes c Join Facturas f On c.clienteid = f.clienteid;


-- 2- Informar nombre y apellido de los clientes que tienen facturas con monto mayor a 2000 pesos.
	
	Select nombre, apellido From Clientes c Join Facturas f On c.clienteid = f.clienteid Where 
	monto > 2000 Group By nombre, apellido;


-- 3- Informar letra y número de factura, el nombre y el precio de los artículos que se han vendido.

	Select letra, numero, nombre, precio From Facturas f Join Articulos a On f.articuloid = a.articuloid;


-- 4- Informar el precio máximo y mínimo de los artículos facturados con factura letra A.

	Select Max(precio) 'Precio Máximo', Min(precio) 'Precio Mínimo' From Facturas f Join Articulos a
	On f.articuloid = a.articuloid Where letra = 'A';
-- 5- Informar la cantidad de facturas, nombre y apellido de cada cliente.

	Select nombre, apellido, Count(*) from Clientes c Join Facturas f On c.clienteid = f.clienteid 
	Group By nombre, apellido;


-- 6- Informar el promedio de venta para los artículos con precio > 10.
	
	Select AVG(monto) 'Promedio' From Facturas f Join Articulos a On f.articuloid = a.articuloid Where precio > 10;


-- 7- Informar nombre y apellido y total de monto de facturas por año para cada cliente.
	
	Select nombre, apellido, YEAR(fecha) 'Año', Sum(monto) 'Monto de facturas' From Facturas f Join Clientes c
	On f.clienteid = c.clienteid Group By nombre, apellido, YEAR(fecha);
-- 8- Informar que facturas fueron emitidas al cliente Diaz.
	
	Select letra, numero From Facturas f Join Clientes c on f.clienteid = c.clienteid Where apellido ='Diaz';


-- 9- Informar el total vendido por artículo.

	Select f.articuloid, Sum(monto) 'Total vendido' From Facturas f Join Articulos a On f.articuloid = a.articuloid Group By f.articuloid;


-- 10- Informar nombre y apellido del cliente que más ha comprado.

	Select nombre, apellido, Sum(monto) Monto From Clientes c Join Facturas f On c.clienteid = f.clienteid 
	Group By nombre, apellido Order By Sum(monto) Desc Limit 1;
	
	-- Otra alternativa sería
	Select nombre, apellido, monto From Clientes c Join 