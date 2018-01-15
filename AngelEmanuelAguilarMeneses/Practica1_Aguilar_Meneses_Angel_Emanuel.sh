mkdir -p respaldo_sistema/{configuracion/{X11,gnome},programas,reinstalacion,usuarios/{python,scripts}} #Aquí se crea una directorio con una estructura
touch respaldo_sistema/reinstalacion/{guia,notas,secuencia.data,paquetes.pkg,imagen.iso}#Creamos archivos dentro del directorio reinstalacion
ls -la respaldo_sistema #El comando ls despliega una lista y el -la muestra todas las propiedades de los archivos y directorios,y muestra todo el contenido del directorio
cd respaldo_sistema/programas #El comando cd hace que cambiemos a el directorio indicado
cp  /bin/* . #El comando cp copia un archivo,después de indica  el directorio donde se encuntran los archivos y directorios, y el * indica que todo se copie y el . indica que se copie en el directorio actual
cd #Cambiamos a el directorio /home
cd respaldo_sistema/configuracion/X11 #Cambiamos a el directorio indicado
cp -riv /etc/X11/x* . #Aquí se realiza una copia de todos los archivo y directorios del directorio indicado que comiencon con x a el directorio actual
#rm -r /etc/apache2 /var/www 
#mv /etc/firefox-3.5/profile/bokmarks.html /etc/firefox-3.5/profile/favoritos.resp
#rm -r /etc/*.conf
touch /. misprocesos.prs





