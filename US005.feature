Feature: Personalizar la cuenta con nombre de usuario original.

    Como usuario, quiero que en el proceso de creación de mi cuenta se me permita elegir
    un nombre de usuario para tener una cuenta personalizada a mi gusto.

Scenario Outline: Elección de un nombre de usuario.

Given   Que el usuario se encuentra creando una cuenta  
When    Llegue a la sección en la que puede elegir un nombre de usuario  
And     Hace clic en el recuadro donde debe escribir su nombre de usuario  
And     Escribe su nombre de usuario  
Then    El sistema registrará dicho nombre de usuario al momento de crear la cuenta. 


Scenario Outline: Prohibiciones en el nombre de usuario.

Given   Que el usuario se encuentra creando una cuenta 
When    Llegue a la sección en la que puede elegir un nombre de usuario  
And     Hace clic en el recuadro donde debe escribir su nombre de usuario  
And     Escribe una palabra obscena, una grosería o una palabra que pueda llegar a ofender  
Then    El sistema emitirá un mensaje de alerta que indique “El nombre de usuario no es apropiado. Elija otro”.