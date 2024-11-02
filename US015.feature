Feature: Inicio de sesion.

    Como usuario registrado, quiero poder iniciar sesión con mi correo electrónico
    y contraseña para acceder a mi cuenta de manera segura.

Scenario Outline: Digitación correcta de las contraseñas.

Given   Que el usuario está en la pantalla de “Inicio de sesión” 
When    Ingresa sus credenciales correctamente  
Then    Podrá acceder a su cuenta sin problemas. 

Ejemplos: Variables de entrada:

    |---------------------------------------------------|
    |   correo_electrónico : juarezlnn200@gmail.com     |
    |   contraseña : prD2312_DSS###                     |
    |---------------------------------------------------|
.
Ejemplos: Variables de salida:

    |---------------------------------------------------|
    |      show textbox: Inicio de sesión exitoso       |
    |---------------------------------------------------|
.


Scenario Outline: Digitación incorrecta de las contraseñas.

Given   Que el usuario está en la pantalla de “Inicio de sesión” 
When    Ingrese erróneamente alguna credencial
And     Presione el botón “Iniciar sesión”
Then    Se mostrará un mensaje que indique “Correo electrónico o contraseña incorrectos”.

Ejemplos: Variables de entrada:

    |---------------------------------------------------|
    |   correo_electrónico : juarezlnn200@gmail.com     |
    |   contraseña : prD2312                            |
    |---------------------------------------------------|
.
Ejemplos: Variables de salida:

    |----------------------------------------------------------------------|
    |      show textbox: Correo electrónico o contraseña incorrectos       |
    |----------------------------------------------------------------------|
.


Scenario Outline: Digitación incorrecta de las contraseñas en múltiples ocasiones.

Dado que el usuario esté intentando iniciar sesión en su cuenta
Y lleve cinco intentos fallidos
Cuando intente ingresar nuevamente a su cuenta
Y se equivoque de nuevo en alguna credencial
Y presione el botón “Iniciar sesión”,
Entonces se mostrará un mensaje que indique “Múltiples intentos fallidos. Se bloqueará el acceso. Vuelve a intentarlo en 1 hora”.
Y si sigue intentando ingresar erróneamente a la cuenta en más periodos de tiempo se bloqueará la cuenta por seguridad.

Ejemplos: Variables de entrada:

    |---------------------------------------------------|
    |   correo_electrónico : juarezlnn200@gmail.com     |
    |   contraseña : prD2312                            |
    |---------------------------------------------------|
.
Ejemplos: Variables de salida:

    |---------------------------------------------------------------------------------------------------|
    |  show textbox: Múltiples intentos fallidos. Se bloqueará el acceso. Vuelve a intentarlo en 1 hora |
    |---------------------------------------------------------------------------------------------------|
.