Feature: Filtrar productos por categoría.

    Como consumidor, quiero poder buscar productos por categoría para encontrar fácilmente
    lo que necesito y comparar precios.

Scenario Outline: Elección de una categoría de productos para ver sus precios.

Given   Que el consumidor ha iniciado sesión en su cuenta 
And     Se encuentra en la sección “Comparación de precios”  
When    Acceda al botón “Filtros”  
And     Seleccione una <categoría> de productos  
And     Seleccione la opción “Comparar”  
Then    Podrá ver una lista de productos correspondientes a la categoría seleccionada   
And     Los precios actuales de cada producto  
And     Una imagen referencial de cada producto.

Examples: Variables de entrada:

    |---------------------------------------------------|
    |   categoria : verduras                            |
    |---------------------------------------------------|
.
Examples: Variables de salida:

    |---------------------------------------------------|
    |   producto : lechuga                              |
    |   precio_actual : 3.00 / unidad                   |
    |   imagen : lechuga.png                            |
    |                                                   |
    |   producto : arveja                               |
    |   precio_actual : 1.60 / kg                       |
    |   imagen : arveja.png                             |
    |                                                   |
    |   ...                                             |
    |---------------------------------------------------|
.


Scenario Outline: Elección de una categoría de productos para escoger un producto en específico.

Given   Que el consumidor ha iniciado sesión en su cuenta  
And     Se encuentra en la sección “Comparación de precios”  
When    Acceda al botón “Filtros”  
And     Seleccione una <categoría> de productos  
And     Seleccione un <producto> de la lista generada  
And     Seleccione la opción “Comparar”  
Then    Podrá ver el precio actual del producto seleccionado  
And     Una imagen referencial del producto. 

Examples: Variables de entrada:

    |---------------------------------------------------|
    |   categoria : verduras                            |
    |                                                   |
    |   producto : lechuga                              |
    |---------------------------------------------------|
.
Examples: Variables de salida:

    |---------------------------------------------------|
    |   producto : lechuga                              |
    |   precio_actual : 3.00 / unidad                   |
    |   imagen : lechuga.png                            |
    |---------------------------------------------------|
.