1- Obtener el monto máximo de factura.

	Select MAX(monto) 'Monto máximo de factura' From Facturas;


-- 2- Obtener el monto mínimo de factura.

	Select MIN(monto) 'Monto mínimo de factura' From Facturas;


-- 3- Obtener el monto mínimo de factura entre los años 2011 y 2020.

	Select MIN(monto) 'Mínimo factura' From Facturas Where YEAR(fecha) Between 2011 And 2020;


-- 4- Obtener el monto promedio de factura.

	Select ROUND(AVG(monto),2) 'Monto promedio de factura' From Facturas;

-- 5- Obtener la factura con el monto promedio del año 2011.

	Select ROUND(AVG(monto),2) 'Monto promedio de factura del año 2011' From Facturas Where YEAR(fecha) = 2011; 


-- 6- Obtener la cantidad de facturas.

	Select COUNT(*) 'Cantidad de facturas' From Facturas;


-- 7- Obtener la cantidad de facturas que tienen un monto entre $500 y $3.300.

	Select COUNT(*) 'Cantidad de facturas' From Facturas Where monto Between 500 And 3300;


-- 8- Obtener la cantidad de facturas que hay en cada año.

	Select YEAR(fecha) 'Año', COUNT(*) 'Cantidad de facturas' From Facturas Group By YEAR(fecha);


-- 9- Obtener la cantidad de facturas y el monto promedio en cada año.

	Select YEAR(fecha) 'Año', COUNT(*) 'Cantidad de facturas', ROUND(AVG(monto),2) 'Monto promedio' From Facturas Group By YEAR(fecha);
