Feature: Comparación de precios de un producto con el precio del producto promedio de un distrito o región.

    Como consumidor, quiero comparar precios actuales de un producto en específico con el del
    distrito o región en el que resido para conocer cuánto cuesta el producto en mi lugar de residencia.

Scenario Outline: Elección de producto y un distrito o región.

Given   Que el consumidor ha iniciado sesión en su cuenta 
And     Se encuentra en la sección “Comparación de precios”  
When    Active la opción “Comparar por distritos o regiones”  
And     Seleccione un <producto> de la lista   
And     Seleccione un <distrito> o región de la lista  
And     Haga clic en el botón “Comparar”  
Then    La aplicación muestra el precio estándar actual del producto seleccionado  
And     El precio promedio del producto del distrito o región seleccionado  
And     Una imagen referencial del producto seleccionado. 

Examples: Variables de entrada:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   distrito : Chorrillos                           |
    |---------------------------------------------------|
.
Examples: Variables de salida:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   distrito : Chorrillos                           |
    |   precio_estandar : 5.10 / kg                     |
    |   imagen : papa_huayro.png                        |
    |---------------------------------------------------|
.


Scenario Outline: Elección de producto y varios distritos o regiones.

Given   Que el consumidor ha iniciado sesión en su cuenta  
And     Se encuentra en la sección “Comparación de precios”  
When    Active la opción “Comparar por distritos o regiones”  
And     Seleccione un <producto> de la lista   
And     Seleccione más de dos <distritos> o regiones de la lista  
And     Haga clic en el botón “Comparar”
Then    La aplicación muestra el precio estándar actual del producto seleccionado  
And     Los precios promedio del producto de los distritos o regiones seleccionados  
And     Una imagen referencial del producto seleccionado. 

Examples: Variables de entrada:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   distrito : Chorrillos                           |
    |   distrito : San Juan de Miraflores               |
    |   distrito : Surco                                |
    |---------------------------------------------------|
.
Examples: Variables de salida:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |                                                   |
    |   distrito : Chorrillos                           |
    |   precio_estandar : 5.10 / kg                     |
    |                                                   |
    |   distrito : San Juan de Miraflores               |
    |   precio_estandar : 5.10 / kg                     |
    |                                                   |
    |   distrito : Surco                                |
    |   precio_estandar : 5.30 / kg                     |
    |                                                   |
    |   imagen : papa_huayro.png                        |
    |---------------------------------------------------|
.