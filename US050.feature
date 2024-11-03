Feature: Ofertas con tiempo limitado.
    
    Como comerciante, quiero poder generar ofertas con una duración configurable a alguno
    de mis productos para automatizar las ofertas de mi negocio.

Scenario Outline: Automatizar una oferta.

Given   Que el comerciante ha iniciado sesión en su cuenta  
And     Posee una cuenta especial para comerciantes  
And     Se encuentre en la sección “Cuenta”  
And     Se encuentre en la sección “Mi tienda”  
When    Cree una oferta para algún producto de su tienda con la opción “Aplicar oferta”  
And     Active la opción “Duración” de la oferta  
And     Coloque el tiempo en el que la oferta estará activa  
And     Que el tiempo que se coloque sea mínimo siete días  
And     Da clic en la opción “Guardar cambios”
Then    Se guardará la oferta creada para el producto y se empezará a mostrar en su tienda  
And     Se mostrará con un aviso que indique “Tiempo limitado”. 