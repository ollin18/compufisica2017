#1. Primero creo el directorio de trabajo. Dentro de éste hago el directorio "respaldo sistema", y dentro de éste creo la estructura con varias ramas.
 mkdir -p Tarea_Practica_1/
 cd Tarea_Practica_1/
   mkdir -p respaldo_sistema
   cd respaldo_sistema/
   mkdir -p configuracion/x11 configuracion/gnome \
             programas reinstalacion usuarios/python/script
#2. Cambio al directorio reinstalación para hacer una serie de archivos (separando por espacios)
cd reinstalacion
touch guia notas secuencia.data paquetes.pkg imagen.iso
#3. Cambio de directorio y después con ls despliego una lista de archivos y directorios con sus características (-lRa)
cd ../..
ls -lRa
#4. Con cp copio tdos los archivos y directorios de bin a "programas" (dentro de respaldo_sistema)
cp -R /bin respaldo_sistema/programas
#5.Copio todos los archivos de forma interactiva (-i) que están en la ruta /etc/x11 y que contengan x (x*) al directorio x11 que hice.
cp -r -i -v /etc/X11/x* respaldo_sistema/configuracion/x11
#6. Uso el comando echo para que aparezcan los comando en pantalla solo como texto y no se ejecuten. Primero boroo dos directorios y su contenido (.Rf). Después muevo el nombre (cambio) de "bookmarks.html" a favoritos.resp. Y por último borro (rm -Rf)dentro del directorio /etc los que contenga .conf como terminación(*.conf).
echo Para punto 6 las instrucciones son:
echo rm -Rf  /etc/apache2 /var/www
echo mv /etc/firefox-3.5/profile/bookmarks.html favoritos.resp
echo rm -Rf etc/*.conf
