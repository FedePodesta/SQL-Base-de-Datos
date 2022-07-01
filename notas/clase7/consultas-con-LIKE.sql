-- consultas con LIKE
-- buscar coincidencias
--  que contenga el término especificazdo

-- dónde en la descripción contenga 'inalámbrico'
SELECT prdNombre, prdPrecio, prdDescripcion
    FROM productos
    WHERE prdDescripcion LIKE '%inalambrico%';

-- dónde en la descripción comiende con 'Alta'
SELECT prdNombre, prdPrecio, prdDescripcion
    FROM productos
    WHERE prdDescripcion LIKE 'Alta%';

-- traer nombre, precio, marca, categoría y descripción
-- que contenga el término 'Bluetooth'
SELECT prdNombre, prdPrecio, mkNombre, catNombre, prdDescripcion
    FROM productos
    JOIN marcas
        ON productos.idMarca = marcas.idMarca
    JOIN categorias
        ON productos.idCategoria = categorias.idCategoria
    WHERE prdDescripcion LIKE '%bluetooth%';

-- variante sin el JOIN
SELECT prdNombre, prdPrecio, mkNombre, catNombre, prdDescripcion
    FROM productos, marcas, categorias
    WHERE productos.idMarca = marcas.idMarca
      AND productos.idCategoria = categorias.idCategoria
      AND prdDescripcion LIKE "%bluetooth%";

-- y que además sean cámaras
SELECT prdNombre, prdPrecio, mkNombre, catNombre, prdDescripcion
FROM productos, marcas, categorias
WHERE productos.idMarca = marcas.idMarca
  AND productos.idCategoria = categorias.idCategoria
  AND prdDescripcion LIKE "%bluetooth%"
  AND categorias.idCategoria = 2;
