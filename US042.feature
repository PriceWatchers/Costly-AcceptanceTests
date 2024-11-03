Feature: Ver productos más rentables.

    Como comerciante, quiero identificar qué productos tienen márgenes
    de ganancia más altos para priorizar su venta y mejorar mis beneficios.

Scenario Outline: Usar opción de productos más rentables.

Given   Que el comerciante ha iniciado sesión en su cuenta  
And     Posee una cuenta especial para comerciantes  
And     Se encuentra en la sección “Precios de producción”  
When    El comerciante da clic en la opción “Ver productos más rentables” 
Then    Se mostrará una lista de productos ordenados de mayor a menor según sea su precio de producción 
        y de venta actual menor al de anteriores periodos
And     Se mostrará el nombre, el costo de producción  
And     El precio el cual usan los proveedores para vender de cada producto  
And     Una imagen referencial de los productos. 


Scenario Outline: Filtros en la opción de productos más rentables.

Given   Que el comerciante ha obtenido una lista de productos rentables  
When    Activa la opción de filtros  
And     Selecciona ordenar de menor a mayor  
Then    Se mostrará la lista, pero en orden inverso  
And     Se mostrará el nombre, el costo de producción  
And     El precio el cual usan los proveedores para vender de cada producto  
And     Una imagen referencial de los productos. 


Scenario: Límite de elementos que se muestran en la lista.

Given   Que el comerciante se encuentra en la sección “Precios de producción”  
When    El comerciante da clic en la opción “Ver productos más rentables”
Then    Se mostrará una lista de máximo 25 productos  
And     Se mostrará el nombre, el costo de producción  
And     El precio el cual usan los proveedores para vender de cada producto  
And     Una imagen referencial de los productos. 