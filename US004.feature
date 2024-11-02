Feature: Personalizar la cuenta con una foto de perfil.

    Como usuario, quiero que en el proceso de creación de mi cuenta se me permita
    subir una imagen a manera de foto de perfil para tener una cuenta personalizada a mi gusto.

Scenario Outline: Elección de una foto de perfil.

Given   Que el usuario se encuentra creando una cuenta  
When    Llegue a la sección en la que puede subir una imagen a modo de foto de perfil 
And     Al hacer clic en el botón Subir imagen  
And     Seleccione una imagen de su galería  
Then    El sistema subirá dicha imagen 
And     La mostrará en la aplicación como vista previa. 

Examples: 
    |--------------------------|-------------------------|
    |   Variables de entrada   |   Variables de salida   |
    |--------------------------|-------------------------|
    |         Sin foto         |     foto_perfil.png     |
    |         Sin foto         |     foto_gatito.jng     |
    |--------------------------|-------------------------|
.

Scenario Outline: Tamaño y peso de la foto a subir.

Given   Que el usuario se encuentra decidiendo qué imagen subir  
When    Elija una imagen de tamaño mayor a 400 por 400 píxeles y un peso mayor a 2 megabytes 
And     Haga clic en el botón Subir imagen  
Then    El sistema no subirá dicha imagen 
And     mostrará un mensaje. 

Examples: 
    |-----------------------|------------|--------------|-------------------------------------------------------------------------------|
    |     Foto escogida     |    Peso    |    Tamaño    |                                 Mensaje                                       |
    |-----------------------|------------|--------------|-------------------------------------------------------------------------------|
    |    para_perfil.jpg    |   3.23 MB  | 200 x 200 px |     Su imagen sobrepasa el peso máximo establecido para fotos de perfil       |
    |     perrritos.png     |   5.19 MB  | 600 x 600 px |  Su imagen sobrepasa el tamaño y peso máximo establecido para fotos de perfil |
    |-----------------------|------------|--------------|-------------------------------------------------------------------------------|
.

Scenario Outline: Formato de imagen de la foto de perfil.

Given   Que el usuario se encuentra decidiendo qué imagen subir
When    Elija una imagen que no esté en formato JPG o PNG  
And     Haga clic en el botón “Subir imagen”  
Then    El sistema no subirá dicha imagen
And     Mostrará un mensaje que indique “El tipo de archivo subido no es apto para una foto de perfil”. 

Examples: 
    |-----------------------|------------------|---------------------------------------------------------------|
    |     Foto escogida     |  Tipo de archivo |                         Mensaje                               |
    |-----------------------|------------------|---------------------------------------------------------------|
    |   para_perfil.webp    |       WEBP       |  El tipo de archivo subido no es apto para una foto de perfil |
    |    perrritos.gif      |       GIF        |  El tipo de archivo subido no es apto para una foto de perfil |
    |-----------------------|------------------|---------------------------------------------------------------|