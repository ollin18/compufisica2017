mkdir Practica1_BayronAmador #Creamos carpeta para que todo quede aqui adentro
cd Practica1_BayronAmador
mkdir respaldo_sistema
 #Creamos carpeta
cd respaldo_sistema
 #Nos movemos a la carpeta
mkdir -p configuracion programas reinstalacion usuarios #Creamos carpetascd configuracion

mkdir X11 gnome
 #creamos carpetas
cd ..
 #Regresamos
cd reinstalacion
 #Vamos a carpeta
touch guia notas secuencia.data paquetes.pkg imagen.iso
 #Creamos archivos
cd ..
 #regresamos
cd usuarios
 #Vamos a carpeta
mkdir -p python/scripts
 #creamos carpeta
cd ..
 #regresamos
tree -paD . | less
 cd programas
 #Vemos en forma de arbol
cp /bin/* .
 cd configuracion
 #copiamos archivos
cd X11
 #Vamos a la carpeta
cp -riva /etc/X11/[x-X]* .
 #Copiamos archivo
#rm -R /etc/apache2
 #eliminamos archivo
#rm -R /var/www
 #Eliminamos Archivo
# cd /etc/ficheros-3.5/profile/ mv bookmarks.html favoritos.resp
 #Vamos a la carpeta y y la movemos
#rm -R /etc/*.conf #Eliminamos archivos