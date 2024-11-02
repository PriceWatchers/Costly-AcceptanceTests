Feature: Cambio de correo electronico.

    Como usuario, quiero cambiar el correo electrónico asociado a mi cuenta para
    tener actualizados mis datos personales asociados a mi cuenta.

Scenario Outline: Actualización de información de contacto.

Given   Que el usuario ha iniciado sesión en su cuenta  
And     Se encuentra en la sección “Cuenta”  
When    Presione el botón “Actualizar información”  
And     Complete el recuadro con el <nuevo_correo_electrónico> que desee colocar a su cuenta  
And     Presione el botón “Guardar”  
And     Complete la verificación del sistema para confirmar que es el usuario  
Then    Sus datos serán actualizados en el sistema  
And     Mostrará un mensaje indicando “Información actualizada correctamente”  
And     Recibirá un mensaje en su nuevo correo electrónico. 

Examples: 

    |-------------------------------------------------|---------------------------------------|
    |            nuevo_correo_electrónico             |           Variables de salida         |
    |-------------------------------------------------|---------------------------------------|
    |          juanitoperez123@hotmail.com            | Información actualizada correctamente |
    |         juarezinholnsss2000@gmail.com           | Información actualizada correctamente |
    |-------------------------------------------------|---------------------------------------|
.


Scenario Outline: Error en la digitación del correo electrónico.

Given   Que el usuario ha iniciado sesión en su cuenta  
And     Se encuentra en la sección “Cuenta”  
When    Presione el botón “Actualizar información”  
And     Complete el recuadro con el <nuevo_correo_electrónico> que desee a su cuenta, 
        pero digitó mal un carácter haciendo que el correo sea inválido  
And     Presione el botón “Guardar”  
Then    El sistema m mostrará un mensaje indicando “El correo es inválido. Intente con uno nuevo”

Examples: 

    |-------------------------------------------------|----------------------------------------------|
    |            nuevo_correo_electrónico             |              Variables de salida             |
    |-------------------------------------------------|----------------------------------------------|
    |            juanitoperez123@homailcom            | El correo es inválido. Intente con uno nuevo |
    |          juarezinholnsss2000gmail.com           | El correo es inválido. Intente con uno nuevo |
    |-------------------------------------------------|----------------------------------------------|