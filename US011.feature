Feature: Actualizacion de contraseña.

    Como usuario, quiero tener la posibilidad de actualizar mi contraseña cada que lo requiera para
    tener mi cuenta en estado seguro constante y evitar el robo de mi cuenta.

Scenario Outline: Actualización de contraseña.

Given   Que el usuario ha iniciado sesión en la aplicación 
And     Se encuentra en la sección “Cuenta”  
When    Elija la opción para actualizar su contraseña  
And     Complete el primer recuadro colocando su <contraseña> original  
And     Luego complete el segundo recuadro con una <nueva_contraseña>  
And     Después complete el tercer recuadro repitiendo su nueva contraseña  
And     Luego dé clic en el botón “Cambiar contraseña”  
Then    El sistema mostrará un mensaje que indica “Se ha actualizado su contraseña exitosamente”. 

Examples: Variables de entrada

    |---------------------------------------------------|
    |   contraseña : prD2312_DSS###                     |
    |                                                   |
    |   nueva_contraseña : H__0lA_#m2nd0O1              |
    |                                                   |
    |   repetir nueva_contraseña : H__0lA_#m2nd0O1      |
    |---------------------------------------------------|

Examples: Variables de salida

    |----------------------------------------------------------------|
    |   show textbox: Se ha actualizado su contraseña exitosamente   |
    |----------------------------------------------------------------|