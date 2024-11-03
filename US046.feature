Feature: Visualizar pronósticos de precios.

    Como consumidor, quiero visualizar pronósticos sobre los precios de los productos para
    saber si un producto va a aumentar su precio o disminuir.

Scenario Outline: Generar una predicción sobre el precio de un producto.

Given   Que el consumidor ha iniciado sesión en su cuenta 
And     Se encuentra en la sección “Historial de precios”  
When    Seleccione un producto de la lista de productos  
And     Seleccione la opción de “Ver tendencia”
And     Después de obtener el gráfico seleccione la opción “Visualizar pronósticos”  
Then    La aplicación muestra una predicción basada en la situación actual del país sobre un posible precio del producto
        ya sea un aumento o una disminución en el precio  
And     Se mostrará el porcentaje correspondiente al aumento o disminución del precio. 