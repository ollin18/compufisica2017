#Con este comando cree un directorio#
mkdir respaldo_sistema
#Nos cambiamos de directorio#
cd respaldo_sistema
#Creamos 4 directorios#
mkdir configuracion programas reinstalacion usuarios
#Volvimos a cambiar de directorio#
cd configuracion 
#Creamos 2 directorios#
mkdir X11 gnome
#Regresamos al directorio principal#
cd ..
#Cambiamos de directorio#
cd usuarios
#Dentro de este directorio creamos otro directorio#
mkdir python
#Cambiamos de directorio y creamos otro directorio#
cd python
mkdir scripts
#Cambiamos la ruta del directorio y creamos 5 archivos"
cd /home/ethan/TareaCompu/respaldo_sistema/reinstalacion
touch guia notas secuencia.data paquetes.pkg imagen.iso
#Regresamos al primer directorio que creamos#
cd ..
#Enlistamos los archivos y copiamos todos los archivos hacia otro#
ls -l -a -t  
cp /bin/* programas
cp -i -v -R /etc/X11/x* configuracion/X11 
#Los siguientes comandos los puse de esa manera pues era para superusuario#
#"Suponiendo que soy super usuario:"
#Forzamos la eliminación de directorios y cambiamos la ruta#
#"rm -f -r /etc/apache2"
#"rm -f -r /var/www"
#"cd /etc/firefox-3.5/profile/"
#Cambiamos el nombre de un archivo y eliminamos todos los archivos .conf#
#"mv bookmarks.html favoritos.resp"
#"rm -f -r /etc/ *.conf"
