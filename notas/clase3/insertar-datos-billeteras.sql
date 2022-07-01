-- Insertar datos en una tabla
-- Fórmula

-- INSERT INTO nombreTabla
--        ( campo1, campo2, campo3, ... )
--    VALUES
--        ( valor1, valor2, valor3, ... )

INSERT INTO billeteras
        ( id, nombre, precio, stock )
    VALUES
        ( DEFAULT,  'Ledger Nano S', 16000, 30 );

-- INSERTANDO varios datos de una vez
INSERT INTO billeteras
        ( id, nombre, precio, stock )
    VALUES
        ( DEFAULT, 'Trezor One', 19500, 30 ),
        ( DEFAULT, 'Trezor T', 78000, 20 ),
        ( DEFAULT, 'Ledger Nano X', 56000, 20 );


-- una variante del comando insert
-- no mencionamos los campos

-- INSERT INTO nombreTabla
--    VALUES
--        ( valor1, valor2, valor3, ... )

INSERT INTO billeteras
    VALUES
        ( DEFAULT, 'Coolwalet Pro', 56600, 15 );
