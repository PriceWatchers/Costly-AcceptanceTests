Feature: Compartir información.

    Como consumidor, quiero poder compartir información de precios
    y ofertas con familiares y amigos para ayudarlos a estar informados.

Scenario Outline: Enlace para acceder a la información de un producto.

Given   Que el consumidor ha iniciado sesión en su cuenta  
When    Accede a la sección Tiendas 
And     Seleccione un producto de la lista  
And     Presione la opción “Compartir”  
Then    Se generará un enlace para que cualquiera pueda acceder y visualizar la información del producto. 


Scenario Outline: Enlace para acceder a la información en oferta de un producto.

Given   Que el consumidor ha iniciado sesión en su cuenta  
When    Accede a la sección Tiendas  
And     Accede a la sección “En oferta”  
And     Seleccione un producto de la lista 
And     Presione la opción “Compartir” 
Then    Se generará un enlace para que cualquiera pueda acceder y visualizar la información del producto en oferta. 