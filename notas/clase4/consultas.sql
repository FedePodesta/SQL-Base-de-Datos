-- Consultas en SQL
-- palabra reservada: SELECT

-- SELECT nCampo, nCampo2 FROM nTabla
SELECT idRegion, regNombre FROM regiones;

-- traer nombre y precio de destinos
SELECT destNombre, destPrecio
    FROM destinos;

-- FILTROS
-- palabra redesrvada WHERE
SELECT destNombre, destPrecio
    FROM destinos
    WHERE destPrecio <= 8000;

-- traer con un rango de precios
SELECT destNombre, destPrecio
    FROM destinos
    WHERE destPrecio >= 6600
     AND  destPrecio <= 8000;

-- rango utilizando BETWEEN
SELECT destNombre, destPrecio
    FROM destinos
    WHERE destPrecio BETWEEN 6600 AND 8000;

SELECT destNombre, destPrecio
    FROM destinos
    WHERE idRegion = 5;

SELECT destNombre, destPrecio
    FROM destinos
    WHERE idRegion = 5
    AND destPrecio <= 8000;

-- inclusión de resultados
-- traer destinos de regiones 5 y 7
SELECT destNombre, destPrecio
    FROM destinos
    WHERE idRegion = 5
     OR idRegion = 7;

SELECT destNombre, destPrecio
    FROM destinos
    WHERE ( idRegion = 5 OR idRegion = 7 )
      AND destPrecio <= 7000;

-- una subconsulta
SELECT destNombre, destPrecio
    FROM destinos
    WHERE destPrecio = ( SELECT min(destPrecio) FROM destinos )
