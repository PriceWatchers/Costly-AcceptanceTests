Feature: Crear publicaciones sobre la tienda

    Como comerciante, quiero crear publicaciones en la aplicación para
    promocionar mi negocio.

Scenario Outline: Crear una publicación.

Given   Que el comerciante posee una tienda en la aplicación  
And     Se encuentre en la sección “Mi tienda” dentro de la sección “Cuenta”  
When    Presione el botón “Crear publicación” 
Then    Se mostrará un apartado con secciones para rellenar para poder crear una publicación  
And     El comerciante deberá escribir una <descripción>  
And     Podrá subir una <imagen> que acompañe la publicación  
And     Deberá presionar el botón “Subir publicación” para que se pueda ser visualizado. 

Examples: Variables de entrada:

    |-----------------------------------------------------------------------------|
    |   descripcion : Se aproximan ofertas por la navidad en verduras y frutas.   |
    |   imagen : oferta_navidad_2024.png                                          |
    |-----------------------------------------------------------------------------|
.
Examples: Variables de salida:

    |-----------------------------------------------------------------------------|
    |          show textbox: Se ha creado la publicacion correctamente.           |
    |-----------------------------------------------------------------------------|
.


Scenario Outline: Eliminar una publicación.

Given   Que el comerciante posee una tienda en la aplicación 
And     Ha creado una publicación  
When    Presione dicha publicación  
And     Presione el botón “Eliminar”  
Then    Se eliminará la publicación y no se podrá ver nunca más. 


Scenario Outline: Modificar una publicación.

Given   Que el comerciante posee una tienda en la aplicación 
And     Ha creado una publicación  
When    Presione dicha publicación 
Then    Se mostrarán los espacios para la publicación donde podrá reescribir la
        descripción o colocar una nueva imagen 
And     El comerciante deberá presionar el botón “Actualizar” para que se muestre el
        contenido actualizado de la publicación. 

Examples: Variables de entrada:

    |-----------------------------------------------------------------------------|
    |   descripcion : Se aproximan ofertas por la navidad en verduras y frutas.   |
    |   imagen : oferta_navidad_2024.png                                          |
    |-----------------------------------------------------------------------------|
.

Examples: Variables de salida:

    |--------------------------------------------------------------------------------------|
    |   descripcion : Se aproximan ofertas por la navidad en verduras, frutas y lacteos.   |
    |   imagen : oferta_navidad_2024_NUEVO.png                                             |
    |--------------------------------------------------------------------------------------|
.


Scenario Outline: Guardar el borrador de una publicación.

Given   Que el comerciante posee una tienda en la aplicación 
And     Se encuentre en la sección “Mi tienda” dentro de la sección “Cuenta”  
And     Tenga una idea vaga de qué escribir en una publicación  
When    Presione el botón “Crear publicación”
Then    Se mostrará un apartado con secciones para rellenar para poder crear una publicación 
And     El comerciante podrá escribir un avance sobre la publicación 
And     Presionar el botón “Guardar” para usar la plantilla posteriormente. 