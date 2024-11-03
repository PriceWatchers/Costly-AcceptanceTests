Feature: Tutorial sobre herramientas generales.

    Como consumidor, quiero acceder a un tutorial que me enseñe a usar las herramientas
    generales de la aplicación para estar informado sobre su funcionamiento y aprovecharlas al máximo.

Scenario Outline: Visualizar el tutorial.

Given   Que el consumidor ha iniciado sesión en su cuenta  
When    Accede a la sección Tutoriales  
And     Elija la opción “Herramientas generales”  
Then    Se mostrarán los tutoriales relacionados a las herramientas
        como comparación de precios de productos. 