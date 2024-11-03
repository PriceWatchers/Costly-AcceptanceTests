Feature: Crear lista de compras.

    Como consumidor, quiero crear una lista de compras dentro de la aplicación para tener a
    la mano los productos que voy a comprar en la siguiente visita a la tienda.

Scenario Outline: Crear una lista de compra.

Given   Que el consumidor accede a la sección “Listas de compras”  
When    Seleccione la opción “Crear nueva lista“
Then    Se creará una lista y espacios en blanco  
And     Se mostrará un mensaje que indique “Lista creada”
And     El consumidor deberá escribir una <descripción> y crear un <título> para la lista
And     Seleccionar la opción “Guardar”.

Examples: Variables de entrada:

    |-------------------------------------------------------------------|
    |   titulo : Lista para compras - Sabado                            |
    |   descripcion : Lista para las compras semanales del dia sabado.  |
    |-------------------------------------------------------------------|
.
Examples: Variables de salida:

    |----------------------------------------------------------------------------|
    |       show textbox: Se ha creado la lista de compra correctamente.         |
    |----------------------------------------------------------------------------|
.


Scenario Outline: Eliminar una lista de compra.

Given   Que el consumidor ha creado una lista de compra 
And     Accede a la sección “Listas de compra”  
When    Seleccione una lista de compra 
And     Seleccione la opción “Eliminar” 
And     Confirme que desea eliminar dicha lista   
Then    Se eliminará la lista del sistema y no se podrá ver nunca más 
And     Se mostrará un mensaje que indique “Lista eliminada”. 


Scenario Outline: Modificar una lista de compra.

Given   Que el consumidor ha creado una lista de compra 
And     Accede a la sección “Listas de compra”  
When    Seleccione una lista de compra  
And     Modifique el título o la descripción de la lista
And     Presione el botón “Guardar”  
Then    La información de la lista se actualizará
And     Se mostrará un mensaje que indique “Lista actualizada”. 

Examples: Variables de entrada:

    |-------------------------------------------------------------------|
    |   titulo : Lista para compras - Sabado                            |
    |   descripcion : Lista para las compras semanales del dia sabado.  |
    |-------------------------------------------------------------------|
.

Examples: Variables de salida:

    |------------------------------------------------------------------------------|
    |   titulo : Lista para compras - Sabados y Domingos                           |
    |   descripcion : Lista para las compras semanales del sabado y domingo.       |
    |------------------------------------------------------------------------------|
.