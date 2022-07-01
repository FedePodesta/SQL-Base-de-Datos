-- script para crear tablas

-- creación de tabla marcas
CREATE TABLE IF NOT EXISTS marcas
(
    idMarca TINYINT(255) NOT NULL AUTO_INCREMENT,
    mkNombre VARCHAR(30) NOT NULL,
    PRIMARY KEY (idMarca)
)
ENGINE = InnoDB;

-- creación de tabla categorías
CREATE TABLE IF NOT EXISTS `categorias`
(
    `idCategoria` TINYINT(255) NOT NULL AUTO_INCREMENT,
    `catNombre` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`idCategoria`)
)
ENGINE = InnoDB;

-- creación de tabla productos
CREATE TABLE IF NOT EXISTS `productos`
(
    `idProducto` MEDIUMINT NOT NULL,
    `prdNombre` VARCHAR(45) NOT NULL,
    `prdPrecio` FLOAT(8,2) NOT NULL,
    `idMarca` TINYINT(255) NOT NULL,
    `idCategoria` TINYINT(255) NOT NULL,
    `prdDescripcion` VARCHAR(500) NOT NULL,
    `prdImagen` VARCHAR(45) NOT NULL,
    `prdActivo` TINYINT(1) NOT NULL,
    PRIMARY KEY (`idProducto`)
)
    ENGINE = InnoDB;
