-- MODIFICACIONES
-- UPDATE nombreTabla
--    SET nColumna = valor
UPDATE productos
    SET prdPrecio = 1250
   WHERE idProducto = 2;

-- modificar en Miami
-- el precio a 6600
-- asientos y disponibles a 6
UPDATE destinos
    SET destPrecio = 6600,
        destAsientos = 6,
        destDisponibles = 6
    WHERE idDestino = 3;


