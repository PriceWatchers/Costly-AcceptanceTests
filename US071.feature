Feature: Compartir lista de compras.

    Como consumidor, quiero compartir mi lista de compras creada con otras personas para que
    también puedan comprar lo mismo que yo y puedan usar la lista.

Scenario Outline: Crear enlace para visualizar la lista.

Given   Que el consumidor posee una lista de compras 
And     Se encuentre en la sección “Listas de compra”  
When    El consumidor seleccione una lista de compras 
And     Seleccione la opción “Generar enlace”
And     Modifique el final del enlace a su gusto
Then    Se generará un enlace personalizado de acceso directo a la lista de compra del consumidor. 


Scenario Outline: Actualizar enlace para acceder a la lista de compra.

Given   Que el consumidor ha creado un enlace para acceder a su lista de compra
When    El consumidor seleccione una lista de compras
And     Seleccione la opción “Generar enlace”
And     Presione la opción “Actualizar enlace” 
And     Modifique el final del enlace a su gusto
Then    Se generará un nuevo enlace personalizado de acceso directo a la lista de compra del consumidor. 