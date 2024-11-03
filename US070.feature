Feature: Agregar productos a la lista de compras.

    Como consumidor, quiero agregar varios productos a la lista de compras
    creada para saber qué compraré.

Scenario Outline: Añadir productos a la lista de compra.

Given   Que el consumidor ha creado una lista de compra  
When    Seleccione la opción “Agregar producto“   
Then    Se mostrarán espacios para completar 
And     El consumidor deberá escribir el <nombre> del producto y la <cantidad> que debe comprar 
And     Seleccionar la opción “Guardar”  
And     Se mostrará un mensaje que indique “Producto guardado”.

Examples: Variables de entrada:

    |----------------------------------|
    |   nombre : tomates               |
    |   cantidad : 1 kg                |
    |----------------------------------|
.
Examples: Variables de salida:

    |--------------------------------------------------------------------------------------------|
    |       show textbox: Se ha agregado el producto a la lista de compra correctamente.         |
    |--------------------------------------------------------------------------------------------|
.


Scenario Outline: Eliminar productos de la lista.

Given   Que el consumidor ha creado una lista 
And     Accede a la sección “Listas de compra”
And     Selecciona una lista en específico  
When    Seleccione algún producto de la lista
And     Dé clic en la opción “Eliminar producto”  
Then    Se eliminará el producto de la lista y no será visible
And     Se mostrará un mensaje que indique “Producto eliminado”. 


Scenario Outline: Modificar productos de la lista.

Given   Que el consumidor ha creado una lista
And     Accede a la sección “Listas de compra” 
And     Selecciona una lista en específico  
When    Seleccione algún producto de la lista
And     Reemplace la información colocada previamente con nueva información
And     Presione el botón “Actualizar producto”  
Then    Se actualizará la información sobre el producto en la lista de compra
And     Se mostrará un mensaje que indique “Producto modificado”. 

Examples: Variables de entrada:

    |----------------------------------|
    |   nombre : tomates               |
    |   cantidad : 1 kg                |
    |----------------------------------|
.

Examples: Variables de salida:

    |----------------------------------|
    |   nombre : tomates               |
    |   cantidad : 1.50 kg             |
    |----------------------------------|
.


Scenario Outline: Mover un producto de una lista a otra.

Given   Que el consumidor ha creado al menos dos listas
And     Accede a la sección “Listas de compra”
And     Selecciona una lista en específico 
When    Seleccione algún producto de la lista
And     Presione el botón “Mover a otra lista”
And     Seleccione la lista a la que quiere mover el producto  
Then    El producto se eliminará de la lista actual y se creará un producto con la misma
        información en la lista de destino
And     Se mostrará un mensaje que indique “Producto movido”. 


Scenario Outline: Copiar un producto de una lista a otra.

Given   Que el consumidor ha creado al menos dos listas
And     Accede a la sección “Listas de compra”
And     Selecciona una lista en específico
When    Seleccione algún producto de la lista
And     Presione el botón “Copiar a otra lista”  
And     Seleccione la lista a la que quiere mover el producto  
Then    Se creará un producto con la misma información en la lista de destino
And     Se mostrará un mensaje que indique “Producto copiado ”. 