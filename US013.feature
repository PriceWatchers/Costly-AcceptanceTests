Feature: Reestablecer contraseña.

    Como usuario, quiero recuperar el acceso a mi cuenta con el
    correo electrónico principal o secundario para volver a la aplicación.

Scenario Outline: Recuperación desde el dispositivo donde se creó la cuenta.

Given   Que el usuario se encuentra en la sección de “Login” 
And     Quiere volver a acceder a su cuenta, pero no recuerda sus contraseñas  
When    Presione el botón “Olvidé mi contraseña”  
And     Coloque el correo principal o secundario con el que se registró la cuenta  
And     Presione el botón “Recuperar contraseña” en el mensaje enviado a su correo  
And     Coloque una nueva contraseña que recuerde  
Then    El sistema mostrará un mensaje que indica “Contraseña recuperada exitosamente. Vuelva al Login”. 


Scenario Outline: Intento de recuperación desde el dispositivo de terceros.

Given   Que el usuario se encuentra realizando sus actividades  
And     Le llegan notificaciones de intentos de recuperación de su cuenta desde otros dispositivos  
When    El usuario acceda a su correo electrónico  
And     Presione el botón “No soy yo” en el mensaje que se envió a su correo  
Then    El sistema bloquea cualquier intento de recuperación de cuenta de parte de terceros.


Scenario Outline: Tiempo para presionar el botón de recuperación de contraseña.

Given   Que el usuario ha recibido el correo para recuperar su cuenta 
And     Han pasado alrededor de 5 minutos  
When    El usuario presione el botón “Recuperar contraseña” en el mensaje enviado a su correo  
Then    El sistema mostrará un mensaje que indica “Este enlace ha expirado. Inténtelo de nuevo”. 