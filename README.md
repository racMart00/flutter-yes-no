# YES NO APP
 A new Flutter project.

# -->Pasos para hacer mi primer commit<--
1. git init
2. git add .
3. git commit -m "first commit"
4. git remote add origin https://github.com/NOMBRE_USUARIO/NOMBRE_PROYECTO.git
5. git push -u origin master

# -->Crear una rama nueva y movernos a ella<--
1. git checkout -b branch_name

# -->Volver al ultimo commit<--
1. git checkout -- .

# -->Flujo de la Arquitectura Limpia<--
1. UI: Tiene la comunicacion con la capa de presentacion
2. Presentacion: Tiene providers o gestionadores de estado q terminan llamando los casos de uso
3. Casos de Uso: Se comunica con los repositorios //NO SE HACE EN ESTE PROYECTO
4. Repositorios y Datasources: Los repositorios llaman los datasources
5. Informacion: Y luego la informacion regresa al UI.

# -->Run Flutter Launcher Icons<--
1. dart run flutter_launcher_icons

# -->Run Flutter Rename App<--
1. dart run rename_app:main all="My App Name"
2. dart run rename_app:main android="Anroid Name" ios="IOS Name" others="Others Name"
3. dart run rename_app:main android="Android Name" ios="IOS Name" web="Web Name" mac="Mac Name" windows="Windows Name"

# -->Build<--
1. flutter build apk

# -->Ruta para instalar apk en emulador<--
1. C:\Users\racma\AppData\Local\Android\Sdk\platform-tools
2. Copiar nombre.apk en esta ruta
2. Crear txt escribir CMD y guardarlo como run.bat en esta ruta
2. Iniciar run.bat
2. adb install nombre.apk
