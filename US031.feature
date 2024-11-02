Feature: Comparación de precios de un producto en distintas tiendas.

    Como consumidor, quiero comparar precios actuales de un producto en específico de distintas
    tiendas que lo vendan para saber en dónde debo comprar

Scenario Outline: Elección de producto y una tienda.

Given   Que el consumidor ha iniciado sesión en su cuenta  
And     Se encuentra en la sección “Comparación de precios” 
When    Seleccione la opción “Comparar por tiendas”  
And     Seleccione un <producto> de la lista   
And     Una <tienda> que venda dicho producto de una lista de tiendas  
And     Haga clic en el botón “Comparar” 
Then    La aplicación muestra el precio estándar actual del producto seleccionado 
And     El precio del producto de la tienda seleccionada 
And     Una imagen referencial del producto seleccionado. 

Examples: Variables de entrada:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   tienda : Tienda Juanita                         |
    |---------------------------------------------------|
.
Examples: Variables de salida:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   tienda : Tienda Juanita                         |
    |   precio_estandar : 5.20 / kg                     |
    |   precio_tienda : 5.00 / kg                       |
    |   imagen : papa_huayro.png                        |
    |---------------------------------------------------|
.


Scenario Outline: Elección de producto y varias tiendas.

Given   Que el consumidor ha iniciado sesión en su cuenta 
And     Se encuentra en la sección “Comparación de precios” 
When    Seleccione la opción “Comparar por tiendas”  
And     Seleccione un producto de la lista  
And     Elija por separado más de dos tiendas que vendan dicho producto de una lista de tiendas  
And     Haga clic en el botón “Comparar”  
Then    La aplicación muestra el precio estándar actual del producto seleccionado  
And     El precio del producto de las tiendas seleccionadas  
And     Una imagen referencial del producto seleccionado. 

Examples: Variables de entrada:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   tienda : Tienda Juanita                         |
    |   tienda : Don Pepe                               |
    |   tienda : Don Juancito                           |
    |---------------------------------------------------|
.
Examples: Variables de salida:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   tienda : Tienda Juanita                         |
    |   precio_estandar : 5.20 / kg                     |
    |                                                   |
    |   precio_tienda_1 : 5.00 / kg                     |
    |   precio_tienda_2 : 5.10 / kg                     |
    |   precio_tienda_3 : 4.90 / kg                     |
    |                                                   |
    |   imagen : papa_huayro.png                        |
    |---------------------------------------------------|
.