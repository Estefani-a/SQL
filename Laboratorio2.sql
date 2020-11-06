1 - Llenar las tablas artículos clientes y facturas con 5 registros cada una.
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (6,  'Cinta'	 , 110, 50);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (7,  'Espatula'  , 20 , 22);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (8,  'Fratas'    , 35 , 28);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (9,  'Regrla'    , 20 , 78);
insert into articulos(ArticuloID, Nombre, Precio, Stock) values (10, 'Tenaza'    , 12 , 13);

select * from articulos;

insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('B', 1, 1, 1, '2011/11/18', 5000);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('B', 2, 2, 2, '2011/11/18', 200);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('B', 3, 3, 3, '2011/11/18', 3020);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('B', 4, 4, 4, '2011/11/18', 1200);
insert into facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('B', 5, 5, 5, curdate()   , 3300);

select * from facturas;

insert into Clientes (ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (6 , 'Mario'  , 'Pena' , '20-14987008-8', 'Aguero 635'   , NULL);
insert into Clientes (ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (7 , 'Jorge'  , 'Rios' , '20-37562854-5', 'Nazca 1532'   , NULL);
insert into Clientes (ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (8 , 'Valeria', 'Lagos', '20-25487418-8', 'Chipre 5'     , NULL);
insert into Clientes (ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (9 , 'Natalia', 'Peña' , '20-25982665-2', 'Jufre 3651'   , NULL);
insert into Clientes (ClienteID, Nombre, Apellido, Cuit, Direccion, Comentarios) values (10, 'Juan'   , 'Khorn', '20-23587171-9', 'Belgrano 6525', NULL);

select * from clientes;

-- 2 - Basándose en la tabla artículos obtener los siguientes listados.
-- a- artículos con precio mayor a 100
select * from articulos where precio>100;

-- b- artículos con precio entre 20 y 40 (usar < y >)
select * from articulos where precio >= 20 and precio <= 40;

-- c- artículos con precio entre 40 y 60 (usar BETWEEN)
select * from articulos where precio between 40 and 60;

-- d- artículos con precio = 20 y stock mayor a 30
select * from articulos where precio = 20 and stock>30;

-- e- artículos con precio (12,20,30) no usar IN
select * from articulos where precio in (12,20,30);

-- f- artículos con precio (12,20,30) usar el IN
select * from articulos where (precio=12 or precio=20 or precio=30);

-- g- artículos que su precio no sea (12,20,30)
select * from articulos where precio not in (12,20,30);

-- 3- Listar los artículos ordenados por precio de mayor a menor, y si hubiera precio iguales deben quedar ordenados por nombre.
select * from articulos order by nombre, precio desc;

-- 4- Listar todos los artículos incluyendo una columna denominada precio con IVA, la cual deberá tener el monto con el iva del producto.
select 
	ArticuloID, 
	nombre, 
	precio, 
	stock,
	(precio * 1.21) AS iva
from articulos;

-- 5- Listar todos los artículos incluyendo una columna denominada “cantidad de cuotas” y otra “valor de cuota”, la cantidad es fija y es 3, el
--    valor de cuota corresponde a 1/3 del monto con un 5% de interés
SELECT 
	ArticuloID, 
	nombre, 
	precio, 
	stock,
	3  AS 'cantidad de cuotas',
	(precio /3)*1.05
from
	articulos;





