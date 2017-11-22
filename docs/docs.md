# Cuenta Heroku
Para hacer el despliegue en Heroku primero he abierto una cuenta en en heroku. Para abrir la cuenta he utilizado
 mi correo de la ugr. Después de abrir la cuenta he instalado la herramienta heroku CLI en mi ordenador con el
comando "wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh".

# Crear despliege Heroku
Para hacer el despligue en heroku de mi aplicación lo que he hecho ha sido acceder a mi repositorio del proyecto
desde la terminal de mi ordenador. Después he introducido el comando "heroku login" para acceder a mi cuenta Heroku desde mi terminal. Dentro de  la carpeta de mi repositorio del proyecto he ejecutado el comando "heroku create".  

Antes de hacer un push para desplegar en Heroku mi aplicación he creado algunos ficheros necesarios para que pueda funcionar el despliegue.  

Primero he creado un fichero llamado Gemfile.lock que contiene todas las dependencias y especificaciones de las versiones de las gemas que utiliza mi aplicación. También incluirá los lenguajes que mi aplicación utiliza para funcionar.También esta especificado en el fichero la verisón de la gema bundle que utilizo para instalar las gemas necesarias antes de inicar la aplicación.  

Segundo se ha creado un fichero llamado config.ru el cuál contiene dos lineas:  
* require 'camino donde esta la aplicación'  
* run 'Nombre Aplicacion'  
De esta manera heroku sabe donde esta la aplicación para ejecutarla.  
Se ha definido en un fichero .ru ya que la aplciación esta desarrollada en ruby y el despliegue hecho también en ruby. El nombre de aplicación esta definido como una clase en el fichero principal como una clase.  

Tercero para que Heroku ejecute la alicación se ha creado un fichero llamado Procfile que ejecuta la aplicación con el siguiente comando "web: bundle exec rackup config.ru -p $PORT" Que ejecutará la aplciación indicándole el camino que se ha definido en el fichero config.ru y también indicándole el puerto donde se ejecuta la aplicación en Heroku.  

# Desplegar en heroku  
Para realizar el despliegue y una vez hechos los pasos anteriores vamos a la terminal del ordenador y en la carpeta del repositorio del proyecto ejecutamos el comando "git push heroku master" con esto subimos el código a Heroku para que pueda ser ejecutado.  

# Comprobación del despliegue  
Para comprobar que la palicación se ha desplegado con éxito y se ejecuta con normalidad en la consola y desde la carpeta del repositorio del proyecto de la asignatura ejecutamos ele comando "heroku open"  este comando abrirá el navegador sino esta abierto con el enlace de heroku donde se ejecutará mi aplicación. si esta abierto el navegador entonces abrirá una pestaña nueva con el enlace de heroku donde se ejecutarà mi aplicación.  
Si la aplciación se ejecuta bien entonces aparecerá un trozo de codigo json que muestre:  
{status: ok}
En mi caso el despliegue ser realizó con exito y se mostró el mensaje mencionado antes.
