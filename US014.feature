Feature: Recuperacion de cuenta mediante asistencia.

    Como usuario, quiero recuperar el acceso a mi cuenta mediante el uso de la asistencia al
    usuario para volver a ingresar a la aplicación.

Scenario Outline: Recuperación de cuenta en la asistencia

Given   Que el usuario ingresa a la aplicación 
And     Quiere volver a acceder a su cuenta, pero no recuerda sus contraseñas  
And     Tampoco recuerda los correos electrónicos asociados a la cuenta  
When    El usuario acceda a la sección “Asistencia”  
And     Introduce su duda mediante un mensaje en el chat de asistencia  
And     Responde a las preguntas sobre datos de la cuenta por parte del asistente 
Then    El sistema generará un enlace en el que el usuario puede escribir una
        nueva contraseña con la que puede acceder 
And     Se le mostrará el correo principal con el que estaba vinculado su cuenta 


Scenario Outline: Recuperación fallida en la asistencia.

Given   Que el usuario ingresa a la aplicación
And     Quiere volver a acceder a su cuenta, pero no recuerda sus contraseñas  
And     Tampoco recuerda los correos electrónicos asociados a la cuenta  
When    El usuario acceda a la sección “Asistencia” 
And     Introduce su duda mediante un mensaje en el chat de asistencia  
And     Responde erróneamente a algunas de las preguntas que realiza el asistente
Then    El sistema bloqueará el acceso a la cuenta   
And     Mostrará un mensaje que indique 
        “Respuestas incorrectas. Se ha bloqueado el acceso a la cuenta por seguridad”.