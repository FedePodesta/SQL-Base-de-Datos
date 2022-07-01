-- Relaciones entre tablas (table relations)
-- Consultas dos o más tablas

SELECT destNombre, destPrecio, regNombre
    FROM destinos, regiones
    WHERE destinos.idRegion = regiones.idRegion
