Feature: Generación de ofertas.

    Como comerciante, quiero poder generar y colocar ofertas de mi
    negocio en la aplicación para llamar más la atención de los consumidores.

Scenario Outline: Generar una oferta.

Given   Que el comerciante ha iniciado sesión en su cuenta  
And     Posee una cuenta especial para comerciantes  
And     Se encuentre en la sección “Cuenta”  
When    Accede a la sección “Mi tienda”  
And     Cuenta con al menos un producto en su tienda  
And     Selecciona un producto  
And     Selecciona la opción “Aplicar oferta”  
And     Digita el porcentaje del precio que desea disminuir al precio original  
And     Da clic en la opción “Guardar cambios”  
Then    Se guardará la oferta creada para el producto y se empezará a mostrar en su tienda. 

Examples: 
    |-----------------------|-----------------------|-----------------|-----------------------|
    |        Producto       |    Precio_original    |    Descuento    |    Precio_descuento   | 
    |-----------------------|-----------------------|-----------------|-----------------------|
    |        lechuga        |     3.00 / unidad     |       10%       |      2.70 / unidad    |
    |      papa huayro      |       5.00 / kg       |        8%       |       4.60 / kg       |
    |-----------------------|-----------------------|-----------------|-----------------------|
.


Scenario Outline: Quitar una oferta.

Given   Que el comerciante ha iniciado sesión en su cuenta  
And     Posee una cuenta especial para comerciantes  
And     Se encuentre en la sección “Cuenta”  
When    Accede a la sección “Mi tienda”  
And     Cuenta con al menos un producto en oferta 
And     Selecciona un producto  
And     Deselecciona la opción “Aplicar oferta”  
And     Da clic en la opción “Guardar cambios”
Then    La oferta para el producto se quitará y ya no se mostrará en su tienda. 


Scenario Outline: Mostrar todos los productos con ofertas.

Given   Que el comerciante ha iniciado sesión en su cuenta 
And     Posee una cuenta especial para comerciantes  
And     Se encuentre en la sección “Cuenta”  
When    Accede a la sección “Mi tienda”  
And     Cuenta con al menos un producto en oferta  
And     Accede a la sección “En oferta” 
Then    Se mostrará una lista con todos los productos que tengan una oferta. 