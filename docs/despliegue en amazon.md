# Despligue en amazon de la maquina  
## Abrir cuenta en amazon  
  Lo primero que he hecho para el despliegue de la aplicación en amazon es abrir una cuenta en amazon. Para eso nos dirigimos a la pagina de amazon https://aws.amazon.com/es/ y nos dirigimos al apartado crear una nueva cuenta gratis.  
## Crear maquina y provisionarla  
  Para crear la máquina en la cuenta de amazon se ha utilizado vagrant. Para crear poder crearla se crea y configura un fichero vagrantfile. El fichero vagrantfile se crea con el comando vagrant init. Este dichero creado se ha modificado para poder crear la máquina en amazon y decir desde que fichero se provisiona esta máquina.  

  Primero se pone en el fichero vagrantfile el sistema operativo que se va a utilizar. En este caso es ubuntu 16.04. Después se ha definido un nombre para la máquina con las lineas 'config.vm.define "liga" do |host|
  host.vm.hostname = "liga"'.
  Luego se ponen las claves de acceso de amazon el access_key y el secret_access_key. Se indica la región el identificador de la máquina, el security groups que se tiene que configurar para que se pueda acceder a la aplicación que se ejecute en la máquina y para poder acceder por ssh. Se crea el tipo de instancia que en este caso será t2.micro que es la gratuita. También se pone en vagrant el usuario de la máquina que se va a crear y un fichero.pem que será la clave de acceso a la máquina, esta clave se consigue creándola y descargándola desde amazon.  

 En las siguientes opciones se configura el archivo desde donde se va a provisionar la máquina, en este caso se ha hecho con ansible.  

 Para el aprovisionamiento con ansible en este caso se ha instalado ruby con las gemas sinatra, nokogiri y open-uri. También se ha instalado git para poder clonar el repositorio que contiene la aplicación más tarde en el despliegue.  

  Para poder realizar todo esto se ejecuta el comando vagrant up para que se realice todo lo indicado en el vagrantfile.  

##  Despliegue con capistrano
Después de haber creado la máquina con la imagen elegida y provisionado la máquina con lo necesario para ejecutar la aplicación, se realiza el despliegue del repositorio que contiene la aplicación y se ejecuta. Para eso se ha utilizado capistrano. Lo primero de todo es instalar capistrano, para ello se utiliza el comando gem install capistrano que instalará la última versión capistrano v3. Para realizar el despliegue se tiene que crear primero un fichero capfile, los directorios config y lib, los cuales contendrán: El directorio config tendrá un fichero ruby llamado deploy.rb y otro directorio llamado deploy con los ficheros production.rb y staging.rb. EL directorio lib contiene las librerias para poder ejecutar las tareas.  

Para crear todo esto solo es nencesario ejecutar el comando cap install que creará esto ficheros. Estos ficheros luego se tienen que modificar. El fichero production contendrá la dirección del servidor al que se va acceder para realizar las tareas que se quieran. En el fichero deploy se definirán las tareas que se van a realizar. En este caso las tareas que se realizarán son la del clonado del repositorio que contiene la aplicación y el comando para ejecutar la aplicación.  

Para realizar estas acciones se ha utilizado exec + conexión mediante ssh y ejecución del comando para clonar el repositorio con git && comando ejecución de la aplicación.  

Después solo hay que acceder a la dirección ip del servidor y ver la ejecución de la aplicación.
