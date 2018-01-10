#Practica en shell 1
#1.Para crear una estructura de directorios se utiliza el comando mkdir con la opción -p dando las rutas de archivos que se desean obtener.
mkdir -p respaldo_sistema/configuracion/X11 respaldo_sistema/configuracion/gnome respaldo_sistema/programas respaldo_sistema/reinstalacion respaldo_sistema/usuarios/python/scripts
#2.Para crear archivos desde el directorio en el que se trabaja se pone el comando touch seguido de la ruta donde se desea el archivo con el nombre del archivo.
touch respaldo_sistema/reinstalacion/guia respaldo_sistema/reinstalacion/notas respaldo_sistema/reinstalacion/secuencia.data respaldo_sistema/reinstalacion/paquetes.pkg respaldo_sistema/reinstalacion/imagen.iso
ls -Rla respaldo_sistema | less #El less es para que se puedan ver los datos que lanza
cp -r /bin/* respaldo_sistema/programas/ #el -r es para que sea de forma recursiva
cp -rv /etc/X11/x* /etc/X11/X* respaldo_sistema/configuracion/X11/ | less #-rv es que sea de forma recursiva y que escriba todo lo que está copiando y con less podemos ver con calma todos los datos copiados.

#Lo siguiente es suponiendo que somos superusuario.

#rm -r /etc/apache2 /var/www
#mv /etc/firefox-3.5/profile/bookmarks.html /etc/firefox-3.5/profile/favoritos.resp
#rm -r /etc/*.conf
