Feature: Elección de prueba gratis para la cuenta.

    Como pequeño comerciante, quiero elegir el plan completo a modo de prueba gratuita para crear mi cuenta de
    comerciante y hacer una prueba de las herramientas exclusivas para comerciantes

Scenario Outline: Elección de prueba gratuita.

Given   Que el pequeño comerciante no tiene ningún plan asociado a su cuenta 
And     Convertirla en una cuenta especial para comerciantes en la aplicación  
When    El pequeño comerciante acceda a la sección “Planes”  
And     Seleccione la opción “Iniciar prueba gratuita”  
And     Acepte los términos y condiciones de la aplicación
Then    El sistema habilitará las herramientas exclusivas para comerciantes por una duración de 1 mes. 


Scenario Outline: Vencimiento de la prueba gratis.

Given   Que el pequeño comerciante ha estado utilizando las herramientas para 
        comerciantes en la duración establecida para la prueba gratis  
And     El tiempo de prueba haya finalizado  
When    El pequeño comerciante acceda a la aplicación el día contiguo en el que la prueba gratis haya finalizado 
And     Inicie sesión en su cuenta exitosamente 
Then    El sistema mostrará un mensaje que indique 
        “Su prueba gratis a vencido. Actualice ahora al plan completo para seguir usando las herramientas.
And     Se enviará un mensaje al correo electrónico del comerciante. 


Scenario Outline: Actualización a plan de cuenta completo.

Given   Que el pequeño comerciante ha estado utilizando las herramientas para
        comerciantes en la duración establecida para la prueba gratis  
And     El tiempo de prueba haya finalizado  
When    El pequeño comerciante acceda a la sección “Planes” 
And     Seleccione la opción “Actualizar a plan completo” 
And     Elija el tiempo para cada pago que debe hacer para mantener su plan  
And     Acepte los términos y condiciones de la aplicación  
And     Procese el pago con el método de pago preferido por el comerciante 
Then    El sistema actualizará la cuenta del comerciante 
And     Podrá utilizar por completo todas las funciones sin restricciones. 