mkdir Practica1_lopez_aranda_jose_antonio #Aquí creamos un directorio que contendra el resto de la información
cd Practica1_lopez_aranda_jose_antonio #Aquí nos cambiamos al directorio previamente creado
mkdir respaldo_sistema #Aqui creamos otro directorio llamado respaldo_sistema
cd respaldo_sistema #Aqui nos cambiamos al directorio respaldo_sistema
mkdir -p configuracion programas reinstalacion usuarios/python/scripts #Aquí creamos varios directorios utilizando el comando -p para crear todas lar ramas
cd configuracion #Aqui nos cambiamos al directorio configuracion previamente creado
mkdir X11 gnome #Aquí creamos otros dos directorios "X11" y "gnome"
cd ..  #Nos regresamos un directorio atras a respaldo_sistema
cd reinstalacion #Nos cambiamos al directorio reinstalacion
touch guia notas secuencia.data paquetes.pkg imagen.iso #creamos 5 archivos
cd ../.. #Nos cambiamos dos directorios hacia arriba
ls -laRt #listamos todos los archivos, mostrando la fecha, de forma recursiva,ademas de mostrar todos los directoerios ocultos
cd respaldo_sistema/programas #nos cambiamos al directorio programas
cp -r /bin . #Copiamos de manera recursiva los archivos del directorio bin al directorio en el que estamos parados actualmente
cd .. #Nos regresamos un directorio atras
cd configuracion/X11 #Nos cambiamos de directorio a X11
cp -irv /etc/X11/ x* . #Hacemos una copia recursiva y que nos vayan enseñando los elementos  del directorio etc/X11 que contengan "x"
cd #Nos cambiamos al home 
rm -r /etc/apache2/ /var/www/ #borramos de manera recursiva los directorios /etc/apache2/ y /var/www/
cd /etc/firefox-3.5/profile/ #Nos cambiamos al directorio /etc/firefox-3.5/profile/
mv bookmarks.html favorites.resp #Cambiamos el nombre del archivo bookmarks.html a favories.resp 
cd ../.. #Nos cambiamos dos directorios arriba
rm *.conf #Borramos todos los archivos que terminen en .conf

