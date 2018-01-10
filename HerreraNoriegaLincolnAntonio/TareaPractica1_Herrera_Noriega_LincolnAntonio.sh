# Crear el directorio de trabajo Practica1_Herrera_Noriega_LincolnAntonio con mkdir

mkdir Practica1_Herrera_Noriega_LincolnAntonio

# Movernos a ese directorio con cd para realizar la practica adentro

cd Practica1_Herrera_Noriega_LincolnAntonio

# 1
# Creacion de una estructura de directorios recursiva (mkdir -p) usando brace expansion (repite el comando para cada elemento separado por comas entre las llaves, puede usarse recursivamente)

mkdir -p respaldo_sistema/{configuracion/{X11,gnome},programas,reinstalacion,usuarios/python/scripts}

# 2 
# Creacion con touch de distintos archivos en reinstalación desde la carpeta de trabajo usando brace expansion

touch respaldo_sistema/reinstalacion/{guia,notas,secuencia.data,paquetes.pkg,imagen.iso}

# 3
# Listado con ls de  los archivos y directorios, con subdirectorios (-R), incluyendo ocultos (-a), mostrando todas sus caracteristicas (-l) por fecha de modificacion (-t) en la carpeta de trabajo

ls -Ralt

# 4 
# Copiar todos los archivos en el directorio y subdirectorio desde /bin al directorio programas

cp -r /bin/* respaldo_sistema/programas/

# 5 Copiar de forma interactiva (-i) a configuracion/X11 todos los archivos en el directorio /etc/X11 que comiencen con la letra x y informar de las copias (-v)

cp -riv /etc/X11/x* respaldo_sistema/configuracion/X11

# 6
# Borrar dos directorios con todos su contenido (-r)

rm -r /etc/apache /var/www

# Cambiar de nombre un archivo con mv y brace expansion

mv /etc/firefox-3.5/profile/{bookmarks.html,favoritos.resp}

# Borrar archivos que terminen en .conf en el directorio /etc/

rm -r /etc/*.conf