mkdir practica1_Fer
cd practica1_Fer      #Utilizamos cd para cambiar de directorio
mkdir respaldo_sistema #Con mkdir creamos un directorio
cd respaldo_sistema  #Cambiamos de directorio 
mkdir configuracion  #Creamos en el directorio otro directorio
cd configuracion 
mkdir x11
mkdir gnome
cd respaldo_sistema
mkdir programas
mkdir reinstalacion
mkdir usuarios
cd usuarios
mkdir python
cd python
mkdir scripts
cd reinstalación #cambiamos de directorio
touch guia notas secuencia.data paquetes.pkg imagen.iso. #Creamos archivos dentro del directorio reinstalacion
cd
cd practica1_Fer
ls -Rlat practica1_Fer      #Con ls se muestra el contenido del directorio actual y con -
cp -r /bin respaldo_sistema/programas    #Con copy copiamos archivos uno por uno y con -r se hace una copia recursiva del directorio informe 
cp -riv /etc/X11/x* respaldo_sistema/configuracion/X11
#sudo rm -r  etc/apache2  #Con rm borramos los archivos y con -r se hace un borrado en forma recursiva
#sudo rm -r var/www
cd /etc/firefox-3.5/profile/
#sudo mv bookmarks.html favoritos.resp    #Con mv movemos archivos o se renombran archivos o directorios
#sudo rm etc/ *.conf.   #Con * borramos todos los archivos del directorio etc


