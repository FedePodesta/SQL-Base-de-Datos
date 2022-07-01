-- Consultas con relaciones entre tablas

-- nombre, precio, marca de productos
-- donde el nombre de la marca está en otra tabla
SELECT prdNombre, prdPrecio, mkNombre
    FROM productos, marcas
    WHERE productos.idMarca = marcas.idMarca;

-- nombre, precio, marca y categoría de productos
-- donde el nombre de la marca está en otra tabla
-- y el nombre de la categoría está en otra tabla
SELECT prdNombre, prdPrecio, mkNombre, catNombre
    FROM productos, marcas, categorias
    WHERE productos.idMarca = marcas.idMarca
     AND  productos.idCategoria = categorias.idCategoria;

-- nombre, precio, marca y categoría de productos
-- donde el nombre de la marca está en otra tabla
-- y el nombre de la categoría está en otra tabla
-- sólo de categoría Smartphone
SELECT prdNombre, prdPrecio, mkNombre, catNombre
FROM productos, marcas, categorias
WHERE productos.idMarca = marcas.idMarca
  AND  productos.idCategoria = categorias.idCategoria
  AND catNombre = 'Smartphone';

-- nombre, precio, marca y categoría de productos
-- donde el nombre de la marca está en otra tabla
-- y el nombre de la categoría está en otra tabla
-- sólo de categoría 1  (Smartphone)
SELECT prdNombre, prdPrecio, mkNombre, catNombre
    FROM productos, marcas, categorias
    WHERE productos.idMarca = marcas.idMarca
     AND  productos.idCategoria = categorias.idCategoria
     AND  categorias.idCategoria = 1;
