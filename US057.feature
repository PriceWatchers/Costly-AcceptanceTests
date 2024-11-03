Feature: Bandeja de notificaciones y alertas.

    Como usuario, quiero que las notificaciones y alertas que reciba se almacenen en una
    bandeja para visualizar el contenido de cada uno si desaparece la notificación flotante
    o para visualizarlas luego.

Scenario Outline: Una notificación se registra en la bandeja.

Given   Que el usuario se encuentre realizando sus actividades  
When    El usuario reciba una alerta o notificación 
Then    Se guardará la notificación en la bandeja para poder ser vista luego. 

Examples: 

    |---------|----------------------------------------------|
    |   Num   |          Bandeja de notificaciones           | 
    |---------|----------------------------------------------|
    |    1    |  El precio de papa huayro ha incrementad...  |   
    |    2    |  El precio de lechuga ha incrementado en...  |
    |    3    |  Tienda Juanita ha ofertado leche con un...  |   
    |---------|----------------------------------------------|
.

Scenario Outline: Acceder a la bandeja.

Given   Que el usuario ha recibido una notificación  
When    El usuario acceda a la sección “Cuenta” 
And     Acceda a la sección “Notificaciones”  
And     Acceda a la sección “Bandeja de notificaciones” 
Then    Accederá a la bandeja donde se registran todas las notificaciones que ha recibido el usuario. 