Feature: Tutorial sobre herramientas exclusivas para comerciantes.

    Como comerciante, quiero acceder a un tutorial que me enseñe a usar las herramientas
    exclusivas para comerciantes de la aplicación para estar informado sobre su 
    funcionamiento y aprovecharlas al máximo.

Scenario Outline: Visualizar los tutoriales.

Given   Que el comerciante ha iniciado sesión en su cuenta 
And     Posee con una cuenta especial de comerciante  
When    Accede a la sección Tutoriales
And     Elija la opción “Herramientas para comerciantes”  
Then    Se mostrarán los tutoriales relacionados a las herramientas como comparación
        de costos de producción de productos.