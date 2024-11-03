Feature: Crear tienda en la aplicación.

    Como comerciante, quiero poder colocar los productos que vendo en mi tienda en la
    aplicación para que los consumidores tengan otra forma de visualizar lo que vendo.

Scenario Outline: Creación de tienda.

Given   Que el comerciante ha iniciado sesión en su cuenta 
And     Posee una cuenta de comerciante  
And     Se encuentra en la sección “Tiendas”  
When    Presione el botón “Crear tienda” 
And     Complete los espacios en blanco con el <nombre> de su tienda 
And     Especifique qué <tipo_de_productos> vende  
And     Coloque la <ubicación> real de su tienda  
And     Coloque una <foto> real de su tienda  
And     Presione el botón “Crear” 
Then    Se mostrará un mensaje que indique “Se ha creado la tienda correctamente. Ahora debe activarla”

Examples: Variables de entrada:

    |-----------------------------------------------------|
    |   nombre_tienda : Tienda Juanita                    |
    |   tipo_de_productos : verduras, frutas              |
    |   ubicacion : Av. San Marcos 1789                   |
    |   foto : mitienda.png                               |
    |-----------------------------------------------------|
.
Examples: Variables de salida:

    |----------------------------------------------------------------------------|
    |  show textbox: Se ha creado la tienda correctamente. Ahora debe activarla  |
    |----------------------------------------------------------------------------|
.


Scenario Outline: Activación de tienda.

Given   Que el comerciante ha creado una tienda 
And     Ha recibido un mensaje a su correo para activar la tienda  
When    Acceda al mensaje enviado a su correo  
And     Presione el botón “Activar tienda” 
Then    Se mostrará un mensaje que indique “Se ha activado la tienda correctamente” 
And     Se almacenará la información de la tienda creada.


Scenario Outline: Modificación de información de tienda.

Given   Que el comerciante ha creado una tienda  
And     Acceda a la sección “Mi tienda” dentro de la sección “Cuenta”  
When    El comerciante accede a la sección “Información de la tienda”  
And     Complete los espacios con información actualizada de su tienda como el nombre o la descripción 
And     Presione el botón “Actualizar” 
And     Vuelva a confirmar que desea actualizar la información de la tienda  
Then    Se actualizará la información de la tienda en la aplicación. 

Examples: Variables de entrada:

    |-----------------------------------------------------|
    |               Actualizar informacion                |
    |-----------------------------------------------------|
    |   nombre_tienda : Tienda Juanita                    |
    |   tipo_de_productos : verduras, frutas              |
    |   ubicacion : Av. San Marcos 1789                   |
    |   foto : mitienda.png                               |
    |-----------------------------------------------------|
.
Examples: Variables de salida:

    |-----------------------------------------------------|
    |   nombre_tienda : Tienda Doña Juanita               |
    |   tipo_de_productos : verduras, frutas, lacteos     |
    |   ubicacion : Av. San Marcos 1789                   |
    |   foto : mitienda_nuevo.png                         |
    |-----------------------------------------------------|
.