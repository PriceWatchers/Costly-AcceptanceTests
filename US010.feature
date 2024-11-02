Feature: Alerta sobre ingresos fallidos

    Como usuario, quiero que se me notifique de intentos fallidos de acceso a mi cuenta que no provengan
    de mi parte para poder tomar medidas y evitar el robo de mi cuenta.

Scenario Outline: Sistema de alerta por ingreso fallido de un tercero.

Given   Que el usuario posee una cuenta creada en la aplicación  
When    Un tercero intente ingresar a la cuenta   
And     Se equivoca continuamente en la introducción de contraseñas 
Then    El usuario recibirá una alerta que notifique sobre el intento y qué sugerencias puede
        tomar para proteger su cuenta. 


Scenario Outline: Dispositivo que intenta ingresar.

Given   Que el usuario posee una cuenta creada en la aplicación  
When    Un tercero intente ingresar a la cuenta 
And     Se equivoca continuamente en la introducción de contraseñas 
Then    El usuario podrá visualizar la ubicación desde la que se intenta ingresar a su cuenta, el 
        dispositivo desde donde se están ejecutando estas acciones y la hora en la que se ejecutó la acción.

Examples:

    |-----------------------------------------------------|
    |            Dispositivo intenta ingresar             |
    |-----------------------------------------------------|
    |   Dispositivo:    Xiaomi Note 13 Pro                |
    |   Ubicacion:      Peru, Lima                        |
    |   Fecha:          31 de octubre, 2024               |
    |   Hora:           19:27:03                          |
    |-----------------------------------------------------|