-- ejemplo de referencia con
--  table relation

-- SELECT prdNombre, prdPrecio, mkNombre
-- FROM productos, marcas
-- WHERE productos.idMarca = marcas.idMarca

-- -----------------------------------
-- Consultas con JOIN
-- SELECT campo1, campo2, campo3
--    FROM tablaPrimaria
--    JOIN tablaSecundaria
--     ON tablaPrimaria.id = tablaSecundaria.id
SELECT prdNombre, prdPrecio, mkNombre
  FROM productos
      JOIN marcas
       ON  productos.idMarca = marcas.idMarca;


-- ahora con 3 tablas (otro JOIN)
SELECT prdNombre, prdPrecio, mkNombre, catNombre
    FROM productos
         JOIN marcas
              ON  productos.idMarca = marcas.idMarca
         JOIN categorias
              ON  productos.idCategoria = categorias.idCategoria;

-- ---- más friltros
SELECT prdNombre, prdPrecio, mkNombre, catNombre
    FROM productos
         JOIN marcas
              ON  productos.idMarca = marcas.idMarca
         JOIN categorias
              ON  productos.idCategoria = categorias.idCategoria
    AND productos.idCategoria = 1;

-- Utilizando Alias para las tablas
SELECT prdNombre, prdPrecio, mkNombre, catNombre
    FROM productos AS p
         JOIN marcas AS m
              ON  p.idMarca = m.idMarca
         JOIN categorias AS c
              ON  p.idCategoria = c.idCategoria
    WHERE p.idCategoria = 1;


