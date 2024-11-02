Feature: Sugerir contraseña segura.

    Como usuario, quiero que en el proceso de creación de mi cuenta se me sugiera
    una contraseña segura para así ahorrar tiempo en pensar en una contraseña para utilizar.

Scenario Outline: Sugerencia de contraseña.

Given   Que el usuario se encuentra creando una cuenta
When    Llegue a la sección en la que tiene que elegir una contraseña para su cuenta 
And     Al hacer clic en el recuadro donde se debe digitar esta contraseña 
Then    El sistema generará una contraseña de alta seguridad que consiste en una combinación
        de varios caracteres alfanuméricos y símbolos.

Scenario Outline: Cambio en la sugerencia de contraseña.

Given   Que el usuario ha recibido una sugerencia de contraseña para usar 
When    Dé un clic en cualquier parte de la pantalla para salir del recuadro para digitar una contraseña  
And     Vuelva a hacer clic en el mismo recuadro   
Then    El sistema generará una contraseña de alta seguridad distinta a la anterior.