Feature: Buscar productos por su nombre.

    Como consumidor, quiero poder buscar productos por su nombre para
    encontrar fácilmente lo que necesito y comparar precios.

Scenario Outline: Búsqueda de nombre de producto.

Given   Que el consumidor ha iniciado sesión en su cuenta  
And     Se encuentra en la sección “Comparación de precios”  
When    Dé clic en el buscador de la sección  
Then    Podrá ver un campo de búsqueda de productos  
And     El consumidor puede ingresar el <nombre> de un producto en el campo de búsqueda  
And     Al darle clic al botón “Buscar”, la aplicación mostrará productos con nombres
        similares a los de la búsqueda  
And     Se mostrará el nombre del producto, su precio actual y una imagen referencial  
And     El consumidor podrá seleccionar un producto para iniciar el proceso de comparación.

Examples: Variables de entrada:

    |---------------------------------------------------|
    |   nombre_producto : lech                          |
    |---------------------------------------------------|
.
Examples: Variables de salida:

    |---------------------------------------------------|
    |   producto : lechuga                              |
    |   precio_actual : 3.00 / unidad                   |
    |   imagen : lechuga.png                            |
    |                                                   |
    |   producto : leche                                |
    |   precio_actual : 3.00 / unidad                   |
    |   imagen : leche.png                              |
    |                                                   |
    |   ...                                             |
    |---------------------------------------------------|
.