Feature: Visualizar ofertas.

    Como consumidor, quiero poder visualizar las ofertas que las tiendas
    aplican a sus productos para saber dónde comprar los productos que me hacen falta.

Scenario Outline: Visualizar productos de un comerciante.

Given   Que el consumidor ha iniciado sesión en su cuenta  
When    Accede a la sección “Tiendas“  
Then    Se mostrarán todos los productos que posea el comerciante. 


Scenario Outline: Visualizar las ofertas de un comerciante.

Given   Que el consumidor ha iniciado sesión en su cuenta  
When    Accede a la sección “Tiendas“   
And     Accede a la sección “En oferta”  
Then    Se mostrará una lista con todos los productos que tengan una oferta. 