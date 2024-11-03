Feature: Acceder a lecturas acerca del aumento de precios.

    Como usuario, quiero saber por qué razones los precios de los productos aumentan para estar
    más informado sobre el tema.

Scenario Outline: Acceso a la sección de artículos.

Given   Que el usuario ha accedido a su cuenta
When    El usuario accede a la sección “Artículos”
Then    Se mostrarán los diversos artículos sobre los precios de los productos
And     Se mostrará el título del artículo
And     Una breve descripción del artículo.


Scenario Outline: Lectura de un artículo.

Given   Que el usuario se encuentra en la sección “Artículos”  
When    El usuario selecciona uno de los artículos que se presentan
Then    Se mostrará la información desarrollada del artículo seleccionado 
And     El usuario podrá leer la información que se presenta. 