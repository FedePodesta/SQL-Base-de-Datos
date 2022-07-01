# Importar desde Excell

> No se puede importar directamente desde un archivo excell.  
> Primero hay que realizar una serie de pasos

## Formatear el archivo excell

> Tal vez el excell que tenemos no tiene una columna ID
> o debo agregar alguna columna

## Exportar como CSV

> En el archivo excel vamos a Archivo -> Exportar  
> y allí seleccionar la opción CSV (comma separated values)

> Ya tenemos nuestro archivo listo para importar

## Al workbench

> En el workbench, seleciconamos nuestra base de datos y haciendo click derecho seleccionamos "Table Data Import Wizzard"  
> Seleccionamos el archivo a importar  
> Seleccionamos "Create New Table"  
> en Encoding vemos que diga 'utf-8'  
> y confirmamos los nombres de las columnas y sus tipos de datos  
> Next -> Next -> Next -> Finish

> Acá ya terminó de importar, sólo nos resta setear Primary key y ajuste fino.

## Últimos ajustes

> Sobre la tabla nueva hacemos click derecho y "Alter Table"
> setear Primary key, auto increment  y ajuste fino de otros campos.  

