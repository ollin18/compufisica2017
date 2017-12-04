#Recomendacion: Crear un directorio y guardar lo que se me pida
mkdir Practica1_Joshua
cd Practica1_Joshua

#1) Crear directorios
mkdir -p respaldo_sistema/configuracion/X11
cd respaldo_sistema
mkdir configuracion/gnome programas reinstalacion
mkdir -p usuarios/python/scripts

#2) Crear archivos dentro de /reinstalacion
cd reinstalacion
touch guia notas secuencia.data paquetes.pkg imagen.iso

cd..
cd..

#3)
ls -latR

#4)
cd respaldo_sistema

#5)
cp -iv /etc/X11/x* configuracion/X11

#6)
#Suponiendo que ya esta en modo super usuario "sudo"
rm -r /etc/apache2 /var/www
mv /etc/firefox-3.5/profile/bookmarks.html /etc/firefox-3.5/profile/favoritos.resp
rm etc/*conf
