Feature: Crear enlace para acceder a la tienda.

    Como comerciante, quiero crear un enlace especial para que los usuarios puedan
    acceder directamente a mi tienda.

Scenario Outline: Crear enlace para acceder a la tienda.

Given   Que el comerciante posee una tienda en la aplicación 
And     Se encuentre en la sección “Mi tienda” dentro de la sección “Cuenta”  
When    El comerciante presione el botón “Crear enlace” dentro de la sección “Información de la tienda” 
And     Modifique el final del enlace a su gusto
Then    Se generará un enlace personalizado de acceso directo a la tienda del comerciante. 


Scenario Outline: Actualizar enlace para acceder a la tienda.

Given   Que el comerciante ha creado un enlace para acceder a su tienda  
When    El comerciante presione el botón “Crear enlace” dentro de la sección “Información de la tienda” 
And     Presione la opción “Actualizar enlace”  
And     Modifique el final del enlace a su gusto
Then    Se generará un nuevo enlace personalizado de acceso directo a la tienda del comerciante. 