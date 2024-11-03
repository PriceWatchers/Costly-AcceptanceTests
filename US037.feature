Feature: Visualizar costos de producción y precios de compra.

    Como comerciante, quiero poder ver los precios de producción de los productos que vendo en
    mi tienda y los costos con los que tendría que comprar los productos a los proveedores para
    negociar mejores condiciones de compra.

Scenario Outline: Visualizar el costo de producción de un producto.

Given   Que el comerciante ha iniciado sesión en su cuenta  
And     Posee una cuenta especial para comerciantes  
When    El comerciante acceda a la sección “Precios de producción”  
And     Elija un <producto> de la lista  
Then    se mostrará para visualizar el costo de producción del producto  
And     El precio el cual usan los proveedores para vender el producto  
And     una imagen referencial del producto

Examples: Variables de entrada:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |---------------------------------------------------|
.
Examples: Variables de salida:

    |---------------------------------------------------|
    |   producto : papa huayro                          |
    |   precio_produccion : 8000.00 / ha                |
    |   precio_venta_proov : 4.00 / kg                  |
    |   imagen : papa_huayro.png                        |
    |---------------------------------------------------|
.