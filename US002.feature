Feature: Elegir una contraseña segura

    Como usuario, quiero crear una cuenta con una contraseña de alta seguridad para que
    la cuenta no sufra robos por usar una contraseña sencilla.

Scenario Outline: Longitud correcta de la contraseña.

Given   Que el usuario se encuentra creando una cuenta
When    Digite una serie de caracteres alfanuméricos cuya cantidad sea menor a doce caracteres 
Then    Se mostrará un mensaje en la aplicación.

Examples: Variables de entrada:
    |---------------------------------------------------|
    |   contraseña : prDDSS###                          |
    |---------------------------------------------------|

Examples: Variables de salida:
    |--------------------------------------------------------------|
    |   La longitud mínima para una contraseña son 12 caracteres   |
    |--------------------------------------------------------------|
.

Scenario Outline: Digitación de contraseña de baja seguridad.

Given   Que el usuario se encuentra creando unque el usuario se encuentra creando una cuenta
When    Digite una serie de caracteres alfanuméricos con poca variación o caracteres repetidos  
And     El sistema procesa dicha serie  
And     Encuentre que la contraseña no es muy segura para una cuenta  
Then    Se mostrará un mensaje en la aplicación.

Examples: Variables de entrada:
    |---------------------------------------------------|
    |   contraseña : holamundo11111                     |
    |---------------------------------------------------|

Examples: Variables de salida:
    |--------------------------------------------------------------|
    |                 Contraseña poco segura                       |
    |--------------------------------------------------------------|
.


Scenario Outline: Digitación de contraseña segura.

Given   Que el usuario se encuentra creando una cuenta  
When    Digite una serie de caracteres alfanuméricos  
And     El sistema procesa dicha serie  
And     Encuentre que la contraseña es segura  
Then    Se mostrará un mensaje en la aplicación.

Examples: Variables de entrada:
    |-----------------------------------------------------|
    |   contraseña : hOlA_#mund011111                     |
    |-----------------------------------------------------|

Examples: Variables de salida:
    |--------------------------------------------------------------|
    |                       Contraseña segura                      |
    |--------------------------------------------------------------|
.


Scenario Outline: Digitación de contraseña muy segura.

Given   Que el usuario se encuentra creando una cuenta 
When    Digite una serie de caracteres alfanuméricos bastante combinados 
And     El sistema procesa dicha serie 
And     Encuentre la contraseña muy segura para una cuenta  
Then    Se mostrará un mensaje en la aplicación.

Examples: Variables de entrada:
    |------------------------------------------------------|
    |   contraseña : H__0lA_#m2nd0O1                       |
    |------------------------------------------------------|

Examples: Variables de salida:
    |------------------------------------------------------------------|
    |                       Contraseña muy segura                      |
    |------------------------------------------------------------------|
.
