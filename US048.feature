Feature: Descargar estadísticas de precios.

    Como usuario, quiero descargar en un archivo las estadísticas generadas en la aplicación
    para usarlas o almacenarlas para otros usos.

Scenario Outline: Elegir un formato de archivo para descargar.

Given   Que el usuario se encuentra en la sección “Historial de precios”  
And     El usuario ha obtenido el gráfico estadístico de los precios  
When    Seleccione la opción “Descargar”  
And     Elija un formato de archivo para descargar como DOC o PDF  
Then    Se guardará la configuración elegida por el usuario  
And     Preparará el archivo para la descarga  
And     Mostrará un mensaje que indica “Configuración guardada correctamente”. 

Examples: Variables de entrada:

    |-----------------------------------------------------|
    |   nombre_archivo : estadistica_precio_papa_huayro   |
    |   formato : PDF                                     |
    |-----------------------------------------------------|
.
Examples: Variables de salida:

    |----------------------------------------------------------------------|
    |        show textbox: Configuración guardada correctamente            |
    |----------------------------------------------------------------------|
.


Scenario Outline: Descargar el archivo.

Given   Que el usuario se encuentra en la sección “Historial de precios”  
And     El usuario ha obtenido el gráfico estadístico de los precios  
When    Seleccione la opción “Descargar”  
And     Haya elegido la configuración para descargar el archivo  
And     Presione el botón “Descargar” 
Then    Se iniciará la descarga del archivo   
And     Se mostrará un mensaje que indique “Se ha iniciado la descarga del archivo”.