--Seleccionar todos los m�todos de pago.
SELECT * FROM metodo_pago;

--Mostrar el nombre del almac�n y su capacidad para aquellos con una capacidad mayor a 1000.
SELECT nombre_almacen, capacidad FROM almacen 
WHERE capacidad > 1000;

--Obtener el nombre y la ubicaci�n de los almacenes que se encuentran en Lima Norte.
SELECT nombre_almacen, ubicacion FROM almacen 
WHERE ubicacion LIKE '%Lima Norte%';

--Mostrar los almacenes cuyo nombre empiece con 'Almac�n San'.
SELECT nombre_almacen, ubicacion FROM almacen 
WHERE nombre_almacen LIKE 'Almac�n San%';

--Seleccionar todas las categor�as de productos que contengan la palabra 'port�tiles' en su descripci�n.
SELECT * FROM categoria 
WHERE descripcion LIKE '%port�tiles%';

--Mostrar las categor�as que no sean 'Smartphones' o 'Tablets'.
SELECT * FROM categoria 
WHERE nombre_categoria NOT IN ('Smartphones', 'Tablets');

--Contar cu�ntos m�todos de pago hay disponibles..
SELECT COUNT(*) AS cantidad_metodos_pago FROM metodo_pago;

--Mostrar los proveedores y las marcas que distribuyen.
SELECT p.nombre_proveedor, m.nombre_marca 
FROM proveedor p
JOIN marca m ON p.id_proveedor = m.id_marca;

--Actualizar la capacidad del 'Almac�n Comas' a 1200.
UPDATE almacen 
SET capacidad = 1200 
WHERE nombre_almacen = 'Almac�n Comas';

--Eliminar el almac�n que se encuentre en 'Av. El Sol 654'.
DELETE FROM almacen 
WHERE ubicacion = 'Av. El Sol 654';

--Mostrar los productos de una categor�a espec�fica (ejemplo: Smartphones).
SELECT * 
FROM producto 
WHERE categoria_id IN (SELECT id_categoria FROM categoria WHERE nombre_categoria IN ('Smartphones', 'Tablets', 'Laptops'));


--Crear una vista que muestre el nombre del almac�n, su ubicaci�n y capacidad.
CREATE VIEW vw_almacen_info AS
SELECT nombre_almacen, ubicacion, capacidad 
FROM almacen;

SELECT * FROM vw_almacen_info;

--Mostrar el precio promedio, la desviaci�n est�ndar y la varianza de los precios de los productos en la categor�as 'Smartphones', 'Drones', 'Tablets', 'Laptops':
SELECT 
    AVG(precio) AS precio_promedio,
    STDEV(precio) AS desviacion_estandar_precio,
    VAR(precio) AS varianza_precio
FROM producto 
WHERE categoria_id IN (SELECT id_categoria FROM categoria WHERE nombre_categoria IN  ('Smartphones', 'Tablets', 'Laptops', 'Drones'));

--Devolver estad�sticas de productos en la categor�a 'Smartphones', 'Tablets', 'Laptops' y 'Televisores'. No devuelve 1
SELECT 
    categoria_id,
    SUM(precio) AS 'precio_total',
    AVG(precio) AS 'promedio_precio',
    MAX(precio) AS 'precio_maximo',
    MIN(precio) AS 'precio_minimo'
FROM producto
WHERE 
    categoria_id IN (SELECT id_categoria FROM categoria WHERE nombre_categoria IN('Smartphones', 'Tablets', 'Laptops','Televisores'))
GROUP BY categoria_id;

--Listar estad�sticas de productos cuyo precio total supere los 1,000 soles
SELECT 
    categoria_id,
    SUM(precio) AS 'precio_total',
    ROUND(AVG(precio), 2) AS 'promedio_precio',
    MAX(precio) AS 'precio_maximo',
    MIN(precio) AS 'precio_minimo'
FROM producto
GROUP BY categoria_id
HAVING SUM(precio) > 1000
ORDER BY 2 DESC;

--Listar los m�todos de pago con montos de transacciones que superen los 5,000 soles
SELECT 
    a.id_almacen,
    SUM(p.categoria_id) AS 'total_productos',
    AVG(p.categoria_id) AS 'promedio_productos',
    MAX(p.categoria_id) AS 'maximo_productos',
    MIN(p.categoria_id) AS 'minimo_productos'
FROM almacen a, producto p
GROUP BY a.id_almacen
HAVING SUM(p.categoria_id) > 1000;