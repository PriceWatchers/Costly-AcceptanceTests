Feature: Función de tiendas favoritas.

    Como consumidor, quiero tener tiendas favoritas en la aplicación para
    estar al tanto de las novedades de la tienda.

Scenario Outline: Etiquetar a una tienda como favorita.

Given   Que el consumidor ha iniciado sesión en su cuenta  
When    Accede a la sección Tiendas  
And     Visualice qué tiendas son sus favoritas de entre todas  
And     Presione la opción “Marcar como favorita”  
Then    Se almacenará a la tienda como favorita   
And     Se mostrará un mensaje que indica “Se ha guardado esta tienda como favorita”. 


Scenario Outline: Acceder a tiendas favoritas.

Given   Que el consumidor ha marcado al menos una tienda como favorita  
When    Accede a la sección Cuenta 
And     Acceda a la sección “Tiendas favoritas”  
And     Seleccione una tienda de su lista de tiendas favoritas 
Then    Se redirigirá al consumidor a la tienda seleccionada. 