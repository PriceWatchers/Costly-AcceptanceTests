Feature: Guardar productos favoritos.

    Como consumidor, quiero poder guardar una lista de productos favoritos
    para monitorear sus precios con mayor facilidad.

Scenario Outline: Selección de productos favoritos.

Given   Que el consumidor ha iniciado sesión en su cuenta  
And     Se encuentra en la sección “Comparación de precios”  
When    Haga la búsqueda de un producto en la sección  
And     Dé clic en el botón “Guardar como favorito”  
Then    El sistema almacenará dicho la información de dicho producto en la “Lista de favoritos” del consumidor. 


Scenario Outline: Primera forma de visualizar productos favoritos.

Given   Que el usuario ha añadido algún o algunos productos a su “Lista de favoritos”  
When    El usuario accede la sección “Cuenta”  
And     Da clic en el botón “Lista de favoritos”
Then    Puede ver los productos almacenados en la lista  
And     El consumidor podrá dar clic a algún producto   
And     Será redirigido a la sección “Comparación de precios”. 


Scenario Outline: Segunda forma de visualizar productos favoritos.

Given   Que el usuario ha añadido algún o algunos productos a su “Lista de favoritos”  
When    El usuario accede la sección “Comparación de precios”  
And     Da clic en el botón “Lista de favoritos”
Then    Puede ver los productos almacenados en la lista 