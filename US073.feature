Feature: Dar opinión sobre lecturas acerca del aumento de precios.

    Como usuario, poder dar una opinión acerca del tema que he leído para expresar mi opinión y que
    los demás puedan saber mi postura.

Scenario Outline: Establecer un comentario de opinión

Given   Que el usuario se encuentra en la sección “Artículos”
And     Accede a un artículo para leer  
When    El <usuario> acceda a la parte de “Comentarios” 
And     Presione la opción “Crear comentario”
Then    Se mostrará un recuadro en blanco
And     El usuario deberá redactar su <opinión> en un mensaje con longitud menor a 1000 caracteres
And     Deberá presionar el botón “Publicar” para que se publique su comentario 
And     Se mostrará un mensaje que indique “Comentario publicado”. 

Examples: Variables de entrada:

    |-----------------------------------|
    |   usuario : juarez@_10            |
    |   opinión : <text>                |
    |   save comment : input button     |
    |-----------------------------------|
.
Examples: Variables de salida:

    |--------------------------------------------------------------------------|
    |       show textbox: Se ha publicado el comentario correctamente.         |
    |--------------------------------------------------------------------------|
.


Scenario Outline: Responder a un comentario de opinión.

Given   Que el usuario se encuentra en la sección “Artículos” 
And     Accede a un artículo para leer  Cuando el usuario acceda a la parte de “Comentarios” 
And     Visualice un comentario de opinión interesante 
And     Seleccione la opción “Responder”
Then    Se mostrará un recuadro en blanco 
And     El usuario deberá redactar su <respuesta> en un mensaje con longitud menor a 1000 caracteres 
And     Deberá presionar el botón “Publicar” para que se publique su respuesta
And     Se mostrará la respuesta debajo del comentario principal 
And     Se mostrará un mensaje que indique “Respuesta publicado”.

Examples: Variables de entrada:

    |-----------------------------------|
    |   usuario : juarez@_10            |
    |   comentario_id : 1123124acb      |
    |   respuesta : <text>              |
    |   save comment : input button     |
    |-----------------------------------|
.
Examples: Variables de salida:

    |--------------------------------------------------------------------------|
    |       show textbox: Se ha publicado el comentario correctamente.         |
    |--------------------------------------------------------------------------|
.


Scenario Outline: Indicar que un comentario es bueno.

Given   Que el usuario se encuentra en la sección “Artículos” 
And     Accede a un artículo para leer  
When    El usuario acceda a la parte de “Comentarios”
And     Visualice un comentario de opinión que le gustó
And     Presione el botón “Me gusta”
Then    El contador de “Me gusta” aumentará y se registrará la acción. 