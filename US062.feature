Feature: Filtrar tiendas por categoría.

    Como consumidor, quiero poder buscar tiendas por categoría para encontrar
    fácilmente tiendas que vendan productos de la categoría que necesito.

Scenario Outline: Elección de una categoría de tiendas.

Given   Que el consumidor ha iniciado sesión en su cuenta  
And     Se encuentra en la sección “Tiendas”  
When    Acceda al botón “Filtros”  
And     Seleccione una categoría de productos que venden las tiendas como “alimentación” 
And     Seleccione la opción “Buscar”  
Then    Podrá ver una lista de tiendas que venden productos de la categoría seleccionada  