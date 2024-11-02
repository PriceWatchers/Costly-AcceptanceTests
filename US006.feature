Feature: Bloqueo temporal de cuenta.

    Como usuario, quiero poder bloquear mi cuenta temporalmente en caso de 
    actividad sospechosa o pérdida de acceso para evitar que alguien más la utilice.

Scenario Outline: Bloquear la cuenta.

Given   Que el usuario ha iniciado sesión en su cuenta 
And     Ha detectado actividad sospechosa en su cuenta 
When    El usuario accede a la sección “Cuenta” 
And     Selecciona la opción de “Bloqueo temporal”, 
Then    La cuenta se bloqueará en todos los dispositivos hasta que el usuario la reactive.


Scenario Outline: Desbloquear la cuenta.

Given   Que el usuario ya no detecta actividad sospechosa en su cuenta 
When    El usuario accede a la aplicación en el dispositivo original donde creó su cuenta 
And     Desactiva la opción de “Bloqueo temporal”, 
Then    La cuenta se desbloqueará y se podrá volver a ingresar a la aplicación.