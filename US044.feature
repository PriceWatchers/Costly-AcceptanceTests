Feature: Visualizar el historial de alteración de precios de productos.

    Como consumidor, quiero ver las alteraciones de precios de productos a lo largo del tiempo
    para comprender mejor el estado de los precios de los productos actuales.

Scenario Outline: Consumidor accede al historial de precios de un producto.

Given   Que el consumidor ha iniciado sesión en su cuenta 
And     Se encuentra en la sección “Historial de precios”  
When    Seleccione un producto de la lista de productos  
And     Seleccione la opción de “Ver tendencia”  
Then    La aplicación muestra un gráfico estadístico con la evolución de los precios a lo largo del tiempo  
And     Una imagen referencial del producto escogido 


Scenario Outline: Contraer o ampliar el gráfico estadístico.

Given   Que el consumidor está visualizando el gráfico estadístico de los precios de un producto  
When    Use la rueda de desplazamiento del ratón de computadora encima del gráfico  
Then    El gráfico se contraerá o ampliará dependiente de la acción con la rueda de desplazamiento. 