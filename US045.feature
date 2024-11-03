Feature: Visualizar el historial de alteración de costos de producción de productos.

    Como comerciante, quiero acceder a datos de precios históricos para entender cómo ha fluctuado
    el costo de los productos y ajustar mis precios de manera competitiva.

Scenario Outline: Comerciante accede al historial de costos de producción de un producto.

Given   Que el comerciante ha iniciado sesión en su cuenta  
And     Posee una cuenta especial para comerciantes  
And     Se encuentra en la sección “Historial de precios”  
When    Seleccione un producto de la lista de productos  
And     Active la opción exclusiva para comerciantes “Ver costos de producción”  
And     Seleccione la opción de “Ver tendencia”  
Then    La aplicación muestra un gráfico estadístico con la evolución de los 
        costos de producción del producto a lo largo del tiempo. 
And     Una imagen referencial del producto escogido. 


Scenario Outline: Comerciante accede al historial de precios de venta de un producto.

Given   Que el comerciante ha iniciado sesión en su cuenta  
And     Posee una cuenta especial para comerciantes  
And     Se encuentra en la sección “Historial de precios”  
When    Seleccione un producto de la lista de productos  
And     Active la opción exclusiva para comerciantes “Ver precios de venta”  
And     Seleccione la opción de “Ver tendencia”  
Then    La aplicación muestra un gráfico estadístico con la evolución de los precios de venta que usaron
        los proveedores del producto a lo largo del tiempo  
And     Una imagen referencial del producto escogido. 


Scenario Outline: Contraer o ampliar el gráfico estadístico.

Given   Que el comerciante está visualizando el gráfico estadístico de los precios de un producto  
When    Use la rueda de desplazamiento del ratón de computadora encima del gráfico  
Then    El gráfico se contraerá o ampliará dependiente de la acción con la rueda de desplazamiento. 