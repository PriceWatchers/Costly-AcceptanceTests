Feature: Correo electronico secundario.

    Como usuario, quiero que al crear mi cuenta pueda colocar un correo electrónico
    secundario para tener una manera de recuperar mi cuenta en caso de pérdida.

Scenario Outline: Colocación de un correo electrónico secundario.

Given   Que el usuario se encuentra creando una cuenta  
When    Llegue al apartado de colocar correo electrónico  
And     Dé clic en el recuadro opcional de correo electrónico secundario  
And     Complete el espacio con un correo válido  
Then    La aplicación lo guardará como opción adicional para la recuperación de cuenta. 

Examples: 

    |-------------------------------------------------|--------------------------------|
    |            Variables de entrada                 |       Variables de salida      |
    |-------------------------------------------------|--------------------------------|
    |  Correo secundario: "juanperez123@hotmail.com"  |   Correo secundario guardado   |
    |  Correo secundario: "jzlnsss2000@gmail.com"     |  Correo secundario actualizado |
    |-------------------------------------------------|--------------------------------|