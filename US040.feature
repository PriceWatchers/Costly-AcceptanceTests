Feature: Buscar productos usando su nombre.

    Como comerciante, quiero poder buscar productos por su nombre para
    encontrar fácilmente lo que necesito y visualizar su precio de producción.

Scenario Outline: Búsqueda de nombre de producto.

Given   Que el comerciante ha iniciado sesión en su cuenta 
And     Posee una cuenta especial para comerciantes  
And     Se encuentra en la sección “Precios de producción”  
When    Dé clic en el buscador de la sección  
Then    Podrá ver un campo de búsqueda de productos   
And     El comerciante puede ingresar el <nombre> de un producto en el campo de búsqueda 
And     Al darle clic al botón “Buscar”, la aplicación mostrará productos con
        nombres similares a los de la búsqueda 
And     Se mostrará el nombre del producto, el costo de producción del producto  
And     El precio el cual usan los proveedores para vender el producto  
And     Una imagen referencial  
And     El comerciante podrá seleccionar un producto para iniciar el proceso de comparación. 