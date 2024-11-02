Feature: Proteccion de datos del usuario.

    Como usuario, deseo que la aplicación posea un sistema de protección de datos de usuarios para que los
    datos asociados a mi cuenta no puedan ser accedidos por posibles atacantes.

Scenario Outline: Aceptación de política de datos.

Given   Que el usuario se encuentra creando una cuenta  
When    Rellene cada apartado obligatorio 
And     Lea la política de la aplicación relacionada a protección de datos de los usuarios  
And     Presione en el botón “Aceptar”  
Then    El usuario podrá crear una cuenta y sus datos se guardan. 


Scenario Outline: Cifrado de datos del usuario.

Given   Que el usuario se encuentra creando una cuenta  
When    Rellene cada apartado obligatorio 
And     Dé clic en el botón “Crear cuenta”  
Then    La aplicación almacenará las contraseñas 
And     Encriptará los datos de manera que no puedan acceder a ellos.