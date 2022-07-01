-- Obtener id, nombre, apellido y rol
-- utilizando table relations
SELECT idUsuario, nombre, apellido, rol
    FROM usuarios, roles
    WHERE roles.idRol = usuarios.idRol;

-- Obtener id, nombre, apellido y rol
-- utilizando JOINS
SELECT idUsuario, nombre, apellido, rol
    FROM usuarios
     JOIN roles
      ON roles.idRol = usuarios.idRol;

-- Obtener id, nombre, apellido y rol
-- de todos los miembros de Pied Piper
SELECT idUsuario, nombre, apellido, rol
    FROM usuarios
     JOIN roles
      ON roles.idRol = usuarios.idRol
    WHERE email LIKE '%piedpiper%';
-- usamos conicidencia con el email

SELECT idUsuario, nombre, apellido, rol
    FROM usuarios, roles
    WHERE roles.idRol = usuarios.idRol
    AND email LIKE '%piedpiper%';

-- ---
-- Obtener listado usuarios ordenados por edad
SELECT * FROM usuarios
    ORDER BY fechaNacimiento;

--  Obtener listado usuarios nacidos en 1998
SELECT * FROM usuarios
    WHERE fechaNacimiento
    BETWEEN '1998-01-01' AND '1998-12-31';

SELECT * FROM usuarios
    WHERE  YEAR(fechaNacimiento) = 1998;

--  Obtener listado usuarios nacidos en junio de  1998
SELECT * FROM usuarios
    WHERE  YEAR( fechaNacimiento ) = 1998
      AND  MONTH( fechaNacimiento ) = 6;
