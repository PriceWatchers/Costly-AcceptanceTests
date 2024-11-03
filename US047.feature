Feature: Visualizar pronósticos de costos de producción.

    Como comerciante, quiero recibir pronósticos de precios basados en datos históricos para
    anticiparme a cambios en el mercado y ajustar las estrategias de compra.

Scenario Outline: Generar una predicción sobre el costo de producción de un producto.

Given   Que el comerciante ha iniciado sesión en su cuenta  
And     Posee una cuenta especial para comerciantes  
And     Se encuentra en la sección “Historial de precios”  
When    Seleccione un producto de la lista de productos  
And     Active la opción exclusiva para comerciantes “Ver costos de producción”  
And     Seleccione la opción de “Ver tendencia”  
And     Después de obtener el gráfico seleccione la opción “Visualizar pronósticos” 
Then    La aplicación muestra una predicción basada en la situación actual del país
        sobre un posible precio de la producción del producto, ya sea un aumento
        o una disminución en el precio
And     Se mostrará el porcentaje correspondiente al aumento o disminución del precio.