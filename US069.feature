Feature: Seleccionar listas de compra favoritas.

    Como consumidor, quiero seleccionar como favoritas a algunas de mis listas
    de compra para acceder más rápida a las mismas.

Scenario Outline: Etiquetar a una lista de compra como favorita.

Given   Que el consumidor ha iniciado sesión en su cuenta  
When    Accede a la sección “Listas de compra“ 
And     Visualice qué listas de compra son sus favoritas 
And     Presione la opción “Marcar como favorita”
Then    Se almacenará a la lista de compra como favorita 
And     Se mostrará un mensaje que indica “Se ha guardado esta lista como favorita”. 


Scenario Outline: Acceder a listas de compra favoritas.

Given   Que el consumidor ha marcado al menos una lista de compra como favorita  
When    Accede a la sección “Cuenta“  
And     Acceda a la sección “Listas favoritas” 
And     Seleccione una lista de compra de su lista de tiendas favoritas
Then    Se redirigirá al consumidor a la lista de compra seleccionada. 