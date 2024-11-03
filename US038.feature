Feature: Comparación de costos de producción de un producto en un rango de meses.

    Como comerciante, quiero comparar costos de producción y precios de compra actuales con los
    de meses anteriores deun producto en específico para saber si un producto está más caro o barato ahora.

Scenario Outline: Elección de producto y periodo de comparación.

Given   Que el comerciante ha iniciado sesión en su cuenta  
And     Posee una cuenta especial para comerciantes  
And     Se encuentra en la sección “Precios de producción” 
When    Seleccione la opción “Comparar por rango de meses”  
And     Seleccione un <producto> de la lista   
And     Seleccione un <periodo> de meses para comparar  
And     Haga clic en el botón “Comparar” 
Then    La aplicación muestra el costo de producción promedio del producto actual  
And     El precio de compra a proveedores promedio actual  
And     Los precios del mismo producto de los meses que se encuentren dentro
        del periodo de meses elegido por el comerciante  
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
    |   precio_prod_actual : 8000.00 / ha               |
    |   precio_venta_proov : 4.00 / kg                  |
    |                                                   |
    |   periodo : junio 2024 - agosto 2024              |
    |                                                   |
    |   precio_prod_junio : 7710.00 / ha                |
    |   precio_proov_junio : 3.40 / kg                  |
    |                                                   |
    |   precio_prod_agosto : 7860.32 / ha               |
    |   precio_proov_agosto : 3.80 / kg                 |
    |                                                   |
    |   imagen : papa_huayro.png                        |
    |---------------------------------------------------|
.