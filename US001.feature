Feature: Generación de cuenta.

    Como usuario, quiero poder registrarme en la aplicación fácilmente usando mi correo electrónico
    y una contraseña para empezar a usar todas las funcionalidades de la aplicación.

Scenario Outline: Creación de cuenta con correo electrónico y contraseña.

Given   Que el usuario ha accedido a la sección de registro 
When    El usuario coloca su <correo_electrónico> 
And     Crea una <contraseña> segura
Then    Su cuenta es creada
And     Recibirá un mensaje de confirmación.

Ejemplos: Variables de entrada:
    |---------------------------------------------------|
    |   correo_electrónico : juarezlnn200@gmail.com     |
    |   contraseña : prD2312_DSS###                     |
    |---------------------------------------------------|
.
Ejemplos: Variables de salida:
    |---------------------------------------------------|
    |   Su cuenta se ha creado exitosamente.            |
    |---------------------------------------------------|
.


Scenario Outline: Activación de cuenta de usuario.

Given   Que el usuario ha recibido un mensaje de confirmación para activar su cuenta
When    El usuario presiona el botón “Confirmar”  
Then    Su cuenta se activa y accede a la aplicación. 


Scenario Outline: Primer inicio de sesión.

Given   Que el usuario ha activado su cuenta exitosamente 
When    Accede a la sección de inicio de sesión 
And     Completa los espacios con su <correo_electrónico> y <contraseña>  
Then    El usuario puede acceder a la aplicación. 

Ejemplos: Variables de entrada:
    |---------------------------------------------------|
    |   correo_electrónico : juarezlnn200@gmail.com     |
    |   contraseña : prD2312_DSS###                     |
    |---------------------------------------------------|
.
Ejemplos: Variables de salida:
    |---------------------------------------------------|
    |             Inicio de sesión exitoso              |
    |---------------------------------------------------|
.