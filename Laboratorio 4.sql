1- Agregar la relación(FK) entre la tabla Facturas y la tabla Clientes.
	
	Alter Table Facturas Add Constraint fk_fact_cli Foreign Key(ClienteID) References Clientes(ClienteID);


-- 2- Agregar la relación(FK) entre la tabla Facturas y la tabla Articulos.

	Alter Table Facturas Add Constraint fk_fact_art Foreign key(ArticuloID) References Articulos(ArticuloID);


-- 3- Generar un error de FK en la tabla Facturas.

	Insert Into Facturas(Letra, Numero, ClienteID, ArticuloID, Fecha, Monto) values ('B', 16, 22, 1, '2011/11/18', 5000);


-- 4- Agregar la columna CPostal a la tabla Clientes.

	Alter Table Clientes Add CPostal Char(8);
-- 5- Eliminar la columna CPostal de la tabla Clientes.

	Alter Table Clientes Drop Column CPostal;