Feature: Elección de métodos de pago: Tarjetas bancarias.

    Como pequeño comerciante, quiero pagar el plan que elegí con las tarjetas de crédito o débito que posea, para
    ser libre de elegir con qué quiero pagar mi suscripción.

Scenario Outline: Digitar los datos de la tarjeta.

Given   Que el pequeño comerciante se encuentra en el proceso de activar una suscripción para su cuenta  
When    El pequeño comerciante llegue a la sección de elección de métodos de pago 
And     Elija la opción de tarjetas  
And     Rellene los espacios con los datos de seguridad de la tarjeta  
And     Haga clic en “Pagar”  
Then    El sistema muestra un mensaje al terminar de procesar el pago que
        indica “Se ha procesado el pago correctamente” 
And     Envía un mensaje al correo electrónico del usuario con los detalles del pago realizado. 

Examples: Variables de entrada:

    |---------------------------------------------------|
    |   numero_tarjeta : 999 999 999 999                |
    |   cvc : 242                                       |
    |   fecha_vencimiento : 30/06                       |
    |---------------------------------------------------|
.
Examples: Variables de salida:

    |----------------------------------------------------------------------|
    |        show textbox: Se ha procesado el pago correctamente           |
    |----------------------------------------------------------------------|
.


Scenario Outline: Activar opción “Recordar mis datos”.

Given   Que el pequeño comerciante se encuentra en el proceso de activar una suscripción para su cuenta  
When    El pequeño comerciante llegue a la sección de elección de métodos de pago 
And     Elija la opción de tarjetas  
And     Rellene los espacios con los datos de seguridad de la tarjeta 
And     Seleccione la opción “Recordar mis datos”  
And     Haga clic en “Pagar”  
Then    El sistema muestra un mensaje al terminar de procesar 
        el pago que indica “Se ha procesado el pago correctamente”  
And     Envía un mensaje al correo electrónico del usuario con los detalles del pago realizado  
And     Almacenará la información de pago del usuario para futuros pagos que 
        deba realizar sobre la suscripción elegida. 


Scenario Outline: Digitación errónea de los datos de la tarjeta.

Given   Que el pequeño comerciante se encuentra en el proceso de activar una suscripción para su cuenta  
When    El pequeño comerciante llegue a la sección de elección de métodos de pago 
And     Elija la opción de tarjetas  
And     Rellene los espacios con los datos de seguridad de la tarjeta  
And     Se olvide rellenar algún espacio o coloque mal la información en alguno de los espacios  
Then    El sistema muestra un mensaje debajo del recuadro vacío o mal digitado 
        que indica “Debe completar el espacio” o “Error en la digitación de la información”, respectivamente. 
    

Scenario Outline: Error en el procesamiento del pago.

Given   Que el pequeño comerciante se encuentra en el proceso de activar una suscripción para su cuenta 
And     Quiere usar una tarjeta sin fondos o que no alcance para pagar el monto de la suscripción  
When    El pequeño comerciante llegue a la sección de elección de métodos de pago  
And     Elija la opción de tarjetas  
And     Rellene los espacios con los datos de seguridad de la tarjeta 
And     Haga clic en “Pagar”  
Then    El sistema muestra un mensaje que indica “Error en el procesamiento del pago. Fondos insuficientes”. 