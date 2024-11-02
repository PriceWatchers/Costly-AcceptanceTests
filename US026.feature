Feature: Elección de plan completo para la cuenta.

    Como pequeño comerciante, quiero elegir el plan completo para crear mi cuenta de comerciante y usar por
    completo las herramientas exclusivas para comerciantes.

Scenario Outline: Elección de plan completo.

Given   Que el pequeño comerciante no tiene ningún plan asociado a su cuenta
And     Quiere convertirla en una cuenta especial para comerciantes en la aplicación  
When    El pequeño comerciante acceda a la sección “Planes”  
And     Seleccione la opción “Elegir plan completo”  
And     Acepte los términos y condiciones de la aplicación  
And     Procese el pago con el método de pago preferido por el comerciante
Then    El sistema habilitará las herramientas exclusivas para comerciantes. 


Scenario Outline: No se realiza el pago del plan de la cuenta.

Given   Que el pequeño comerciante se encuentra realizando sus actividades  
And     Reciba una notificación de que debe pagar su suscripción  
When    El pequeño comerciante decida no tomar en cuenta la notificación 
And     Pasen los días sin realizar el pago 
Then    El sistema cancelará automáticamente la suscripción de la cuenta 
And     Irá aumentando progresivamente el cargo que debe pagar el comerciante.


Scenario Outline: Activar pago recurrente.

Given   Que el pequeño comerciante ha iniciado sesión en su cuenta 
And     Se encuentra en la sección “Cuenta” 
And     Se dirija a la sección “Suscripciones”  
When    El pequeño comerciante active la opción “Activar pago recurrente” 
And     Confirme en la aplicación que quiere activar la opción 
Then    El sistema automáticamente pagará el monto mensual del plan con la tarjeta del usuario. 