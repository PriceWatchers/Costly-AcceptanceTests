Feature: Alertas y notificaciones con fecha y hora exacta.

    Como usuario, quiero que las notificaciones y alertas que reciba se muestren junto con la
    fecha y hora en la que se enviaron para saber cuándo ocurrió dicha notificación.

Scenario Outline: Notificación con fecha y hora.

Given   Que el usuario ha recibido una notificación 
And     No la ha podido revisar  
When    Accede a la sección Cuenta
And     Acceda a la sección “Notificaciones”  
And     Acceda a la sección “Bandeja de notificaciones”  
Then    Podrá visualizar la notificación junto con la hora y fecha de envío a su cuenta.

Examples: 

    |---------|----------------------------------------------|----------------------|
    |   Num   |          Bandeja de notificaciones           |     Fecha enviado    |
    |---------|----------------------------------------------|----------------------|
    |    1    |  El precio de papa huayro ha incrementad...  |  28-07-24 / 19:42:44 |
    |    2    |  El precio de lechuga ha incrementado en...  |  27-07-24 / 11:35:21 |
    |    3    |  Tienda Juanita ha ofertado leche con un...  |  27-07-24 / 10:41:17 |
    |---------|----------------------------------------------|----------------------|