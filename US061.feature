Feature: Buscar tiendas por su nombre.

    Como consumidor, quiero buscar tiendas por su nombre para tener más opciones
    de búsqueda y encontrar la tienda que deseo visualizar

Scenario Outline: Búsqueda de nombre de tienda.

Given   Que el consumidor ha iniciado sesión en su cuenta  
And     Se encuentra en la sección “Tiendas”  
When    Dé clic en el buscador de la sección  
Then    Podrá ver un campo de búsqueda de tiendas  
And     El consumidor puede ingresar el nombre de una tienda en el campo de búsqueda  
And     Al darle clic al botón “Buscar”, la aplicación mostrará tiendas con
        nombres similares a los de la búsqueda.