Feature: Agregar productos en la tienda de la aplicación.

    Como comerciante, quiero poder colocar los productos que vendo en mi tienda en
    la aplicación para que los consumidores tengan otra forma de visualizar lo que vendo.

Scenario Outline: Creación de producto.

Given   Que el comerciante ha creado una tienda  
And     Acceda a la sección “Mi tienda” dentro de la sección “Cuenta”  
When    El comerciante presione el botón “Agregar producto” 
Then    Se mostrarán espacios para completar información acerca del producto  
And     El comerciante deberá digitar el <nombre> de su producto  
And     Deberá digitar el <precio> por el cual lo está vendiendo  
And     Deberá especificar a qué <categoría> de producto pertenece  
And     Deberá subir una <imagen> que muestre al producto  
And     Podrá colocar <información_adicional> sobre el producto  
And     Deberá presionar el botón “Agregar” para que el producto se muestre en su tienda. 

Examples: Variables de entrada:

    |---------------------------------------------|
    |   nombre : Leche Gloria                     |
    |   precio : 4.20                             |
    |   categoria : lacteos                       |
    |   información_adicional :                   |
    |   imagen : leche_gloria.png                 |
    |---------------------------------------------|
.
Examples: Variables de salida:

    |----------------------------------------------------------------------------|
    |          show textbox: Se ha agregado el producto correctamente.           |
    |----------------------------------------------------------------------------|
.


Scenario Outline: Eliminación de producto.

Given   Que el comerciante ha creado una tienda  
And     Ha agregado al menos un producto a su tienda  
And     Acceda a la sección “Mi tienda” dentro de la sección “Cuenta”  
When    El comerciante selecciona algún producto 
And     Presione el botón “Eliminar”  
And     Vuelva a confirmar que desea eliminar el producto 
Then    Se elimina el producto del sistema y de la tienda y no se mostrará más. 


Scenario Outline: Modificación de información de producto.

Given   Que el comerciante ha creado una tienda
And     Ha agregado al menos un producto a su tienda 
And     Acceda a la sección “Mi tienda” dentro de la sección “Cuenta”  
When    El comerciante selecciona algún producto  
And     Complete los espacios con información actualizada de su producto como el precio  
And     Presione el botón “Actualizar”  
And     Vuelva a confirmar que desea actualizar la información del producto  
Then    Se actualizará la información del producto en la aplicación. 

Examples: Variables de entrada:

    |---------------------------------------------|
    |   nombre : Leche Gloria                     |
    |   precio : 4.20                             |
    |   categoria : lacteos                       |
    |   información_adicional :                   |
    |   imagen : leche_gloria.png                 |
    |---------------------------------------------|
.
Examples: Variables de salida:

    |--------------------------------------------------------------|
    |   nombre : Leche Gloria                                      |
    |   precio : 4.30                                              |
    |   categoria : lacteos                                        |
    |   información_adicional : Tarro de Leche Gloria azul x 390g  |
    |   imagen : leche_gloria.png                                  |
    |--------------------------------------------------------------|
.