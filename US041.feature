Feature: Filtrar productos por categoría

    Como comerciante, quiero poder buscar productos por categoría para encontrar
    fácilmente lo que necesito y visualizar sus costos de producción y precios de compra

Scenario Outline:  Elección de una categoría de productos para ver sus precios.

Given   Que el comerciante ha iniciado sesión en su cuenta  
And     Posee una cuenta especial para comerciantes  
And     Se encuentra en la sección “Precios de producción”  
When    Acceda al botón “Filtros”  
And     Seleccione una categoría de productos  
And     Seleccione la opción “Comparar”  
Then    Podrá ver una lista de productos correspondientes a la categoría seleccionada   
And     Se mostrará el nombre, el costo de producción  
And     El precio el cual usan los proveedores para vender de cada producto  
And     Una imagen referencial del mismo.


Scenario Outline: Elección de una categoría de productos para escoger un producto en específico.

Given   Que el comerciante ha iniciado sesión en su cuenta  
And     Posee una cuenta especial para comerciantes  
And     Se encuentra en la sección “Precios de producción”  
When    Acceda al botón “Filtros”  
And     Seleccione una categoría de productos  
And     Seleccione un producto de la lista generada  
And     Seleccione la opción “Comparar”  
Then    Se mostrará el nombre, el costo de producción  
And     El precio el cual usan los proveedores para vender de cada producto  
And     Una imagen referencial del mismo. 