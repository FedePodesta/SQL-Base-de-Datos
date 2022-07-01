-- creación de la tabla destinos
CREATE TABLE destinos
(
    idDestino int primary key auto_increment not null,
    destNombre varchar(45) not null,
    idRegion int not null,
    destPrecio int not null,
    destAsientos int not null,
    destDisponibles int not null,
    destActivo boolean not null
)
