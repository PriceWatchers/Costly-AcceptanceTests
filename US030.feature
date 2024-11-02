Feature: Comparación de precios de un producto.

    Como consumidor, quiero comparar precios actuales con los de meses anteriores de un producto en
    específico para saber si un producto está más caro o barato ahora.

Scenario Outline: Elección de producto y periodo de comparación

Given   Que el consumidor ha iniciado sesión en su cuenta  
And     Se encuentra en la sección “Comparación de precios”  
When    Seleccione la opción “Comparar por rango de meses”  
And     Seleccione un <producto> de la lista   
And     seleccione un <periodo> de meses para comparar  
And     Haga clic en el botón “Comparar”  
Then    La aplicación muestra el precio actual por kilo del producto seleccionado  
And     los precios del mismo producto de los meses que se encuentren dentro del periodo de
        meses elegido por el consumidor  
And     Una imagen referencial del producto seleccionado. 

Examples: Variables de entrada:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   periodo : junio 2024 - agosto 2024              |
    |---------------------------------------------------|
.
Examples: Variables de salida:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   periodo : junio 2024 - agosto 2024              |
    |   precio_actual : 5.20 / kg                       |
    |       precio_junio : 5.10 / kg                    |
    |       precio_agosto : 5.20 / kg                   |
    |   imagen : papa_huayro.png                        |
    |---------------------------------------------------|
.


Scenario Outline: Elección de producto, pero no un periodo de comparación.

Given   Que el consumidor ha iniciado sesión en su cuenta  
And     Se encuentra en la sección “Comparación de precios”
When    Seleccione la opción “Comparar por rango de meses”  
And     Seleccione un <producto> de la lista  
And     No seleccione un periodo de tiempo anterior  
And     Haga clic en el botón “Comparar”
Then    La aplicación solo muestra el precio actual por kilo del producto seleccionado 
And     Una imagen referencial del producto seleccionado. 

Examples: Variables de entrada:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |---------------------------------------------------|
.
Examples: Variables de salida:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   precio_actual : 5.20 / kg                       |
    |   imagen : papa_huayro.png                        |
    |---------------------------------------------------|
.