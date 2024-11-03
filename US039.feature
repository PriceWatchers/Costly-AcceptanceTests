Feature: Comparación de precios de producción de un producto con el precio del producto promedio de una region.

    Como comerciante, quiero comparar precios de producción de un producto en específico con
    el de la región en el que resido para conocer cuánto cuesta adquirir dicho producto para mi negocio.

Scenario Outline: Elección de producto y una región.

Given   Que el comerciante ha iniciado sesión en su cuenta  
And     Posee una cuenta especial para comerciantes  
And     Se encuentra en la sección “Precios de producción”  
When    Active la opción “Comparar por regiones”  
And     Seleccione un <producto> de la lista   
And     Seleccione una <región> de la lista  
And     Haga clic en el botón “Comparar”  
Then    La aplicación muestra el precio de producción promedio del producto actual  
And     El precio de compra a proveedores promedio actual  
And     El precio promedio del producto de la región seleccionada  
And     Una imagen referencial del producto seleccionado. 

Examples: Variables de entrada:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   region : Junin                                  |
    |---------------------------------------------------|
.
Examples: Variables de salida:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   precio_prod_actual : 8000.00 / ha               |
    |   precio_venta_proov : 4.00 / kg                  |
    |                                                   |
    |   region : Junin                                  |
    |                                                   |
    |   precio_prod_region : 8110.00 / ha               |
    |   precio_proov_region : 3.90 / kg                 |
    |                                                   |
    |   imagen : papa_huayro.png                        |
    |---------------------------------------------------|
.


Scenario Outline: Elección de producto y varias regiones.

Given   Que el comerciante ha iniciado sesión en su cuenta 
And     Posee una cuenta especial para comerciantes  
And     Se encuentra en la sección “Precios de producción”  
When    Active la opción “Comparar por regiones”  
And     Seleccione un <producto> de la lista   
And     Seleccione más de dos <regiones> de la lista  
And     Haga clic en el botón “Comparar”
Then    La aplicación muestra el precio de producción promedio del producto actual  
And     El precio de compra a proveedores promedio actual  
And     Los precios promedio del producto elegido de las regiones seleccionadas 
And     Una imagen referencial del producto seleccionado. 

Examples: Variables de entrada:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   region : Junin                                  |
    |   region : Ancash                                 |
    |---------------------------------------------------|
.
Examples: Variables de salida:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   precio_prod_actual : 8000.00 / ha               |
    |   precio_venta_proov : 4.00 / kg                  |
    |                                                   |
    |   region : Junin                                  |
    |   precio_prod_region : 8110.00 / ha               |
    |   precio_proov_region : 3.90 / kg                 |
    |                                                   |
    |   region : Ancash                                 |
    |   precio_prod_region : 8040.00 / ha               |
    |   precio_proov_region : 3.95 / kg                 |
    |                                                   |
    |   imagen : papa_huayro.png                        |
    |---------------------------------------------------|
.