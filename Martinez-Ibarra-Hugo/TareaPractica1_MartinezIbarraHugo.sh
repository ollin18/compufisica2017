#Ejercicio 1
mkdir Practica1_Hugo
#Se usó el comando mkdir para crear el directorio de nombre Practica1_Hugo.
cd Practica1_Hugo
#Se usó el comando cd para cambiar al directorio creado.
mkdir -pv respaldo_sistema configuracion/X11 configuracion/gnome programas reinstalacion usuarios/python/scripts
#Se usó el comando mkdir para crear una serie de directorios en el directorio actual (mediante la especificación de la ruta relativa). En el caso de que un directorio tuviera más de un subdirectorio dentro de él, se indicó a cada subdirectorio la ruta relativa que tiene al mismo "directorio padre". La opción -p es para crear los directorios padres inexistentes que se indican en las rutas relativas. La opción -v es para imformar (visualizar) lo que está ejecutando el comando.
cd ..
#Se usó el comando cd con dos puntos para cambiar al directorio anterior en el que se está.
chmod 777 TareaPractica1_MartinezIbarraHugo.sh
#Se usó el comando chmod 777 para dar todos los permisos al usuario, grupo y otros (con el método octal) al presente script.

#Ejercicio 2
cd Practica1_Hugo/reinstalacion
#Se usó cd con la respectiva ruta relativa para cambiar al directorio deseado.
touch guia notas secuencia.data paquetes.pkg imagen.iso
#Se usó el comando touch para crear los archivos que tienen por nombre: guia,  notas, secuencia.data, paquetes.pkg e imagen.iso; los cuales están separados por un espacio para indicar que se trata de diferentes.

#Ejercicio 3
cd ..
ls -Rlat
#Se usó el comando ls para listar de forma recursiva (-R) con formato largo (-l) todo el contenido, incluyendo archivos y directorios ocultos (-a) y en orden por fecha de modificación a todo el contenido en el directorio actual.

#Ejercicio 4
cp -rv /bin/* programas
#Se usó el comando cp para copiar de manera recursiva (-r) e informando sobre la ejecución del comando (-v), todo el contenido (*) dentro del directorio /bin hacía el directorio programas que está en el directorio actual.

#Ejercicio 5
find /etc/X11 -name "[x]*"|xargs cp -irvt configuracion/X11
#Se usó el comando find para buscar y encontrar en el directorio /etc/X11 a todos los archivos que tienen por nombre (-name) a la letra inicial X ([X]*), luego dirigir los resultados de dicho comando (|xargs) al comando cp, que copiará de manera interactiva (-i), recursiva (-r), informando sobre la ejecución (-v) los archivos encontrados por find a la ruta destino (-t) configuracion/X11. 

#Propuesta de comandos para ejercicio 6

#Se usa el comando sudo para dar permisos de superusuario.

#sudo rm -r /etc/apache2
#Aquí se usó el comando rm para remover, o eliminar, de manera recursiva (-r) al directorio apache2 (de ruta absoluta:/etc/apache2)  y su contenido. 

#sudo rm -r /var/www
##Aquí se usó el comando rm para remover, o eliminar, de manera recursiva (-r) al directorio www (/var/www) y su contenido.

#sudo mv /etc/firefox-3.5/profile/bookmarks.html /etc/firefox-3.5/profile/favoritos.resp
#Aquí se usó el comando mv para cambiar el nombre del archivo bookmarks.html (de ubicación: /etc/firefox-3.5/profile/bookmarks.html) por el nombre de favoritos.resp (de ubicación: /etc/firefox-3.5/profile/favoritos.resp).

#sudo rm -r /etc/*.conf
#Aquí se usó el comando rm para eliminar de manera recursiva (-r) en el directorio /etc/ a todos los archvios cuyo nombre termine con ".conf" (*.conf).
