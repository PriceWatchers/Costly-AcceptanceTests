Feature: Autenticacion de dos pasos.

    Como usuario, quiero habilitar la autenticación de pasos para mejorar
    la seguridad de mi cuenta y evitar accesos no autorizados.

Scenario Outline: Activación del sistema de autenticación.

Given   Que el usuario ha iniciado sesión en la aplicación y se encuentra en la sección “Cuenta” 
When    Elija la opción para habilitar el sistema de autenticación de dos pasos 
And     Rellene el <primer_paso> 
And     Luego complete el <segundo_paso>  
And     Luego dé clic en el botón “Confirmar”,  
Then    El sistema mostrará un mensaje que indica “Se ha activado el sistema de autenticación de dos pasos exitosamente en su cuenta”. 

Examples:

    |-----------------------|-----------------------|
    |        Paso 1         |        Paso 2         |
    |-----------------------|-----------------------|
    |  Contraseña de cuenta |   Correo secundario   |
    |  Contraseña de cuenta |     Token digital     |
    |  Contraseña de cuenta |  Numero de telefono   |
    |-----------------------|-----------------------|
.

Scenario Outline: Falla en la activación del sistema de autenticación.

Given   Que el usuario ha iniciado sesión en la aplicación 
And     Se encuentra en la sección “Cuenta”  
When    Elija la opción para habilitar el sistema de autenticación de dos pasos  
And     Rellene el primer paso  
And     Luego complete el segundo paso erróneamente  
Then    El sistema mostrará un mensaje que indica “No se ha podido activar el sistema de autenticación de dos pasos en su cuenta”.