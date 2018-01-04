cd
#El comando nos permite movernos a través de lo directorios, si la ruta no está indicada, nos dirige al directorio raíz.
mkdir -p Práctica1_Ramírez_Arvídez_Roxette/respaldo_sistema
#El comando mkdir tiene la función de crear un directorio nuevo y vacío. Por otra parte la opción "-p" nos da la facilidad de, primero bscar el árbol de directorios señalado para crear dentro, según la secuenccia, la señalada y en caso de no existir crea todo el árbol.
cd Práctica1_Ramírez_Arvídez_Roxette/respaldo_sistema
#Nos movemos al directorio "respaldo" que está ubicada dentro del directorio "Práctica1_Ramírez_Arvídez_Roxette"
mkdir -p configuración/X11 programas reinstalacion usuarios/phyton/scripts
#Ya describimos la función "mkdir -p". Entonces según ello, se están creando los directorios configuración, programas, reinstalacion y usuarios dentro de respaldo_sistema; las que suceden "/" se crean dentro de la escrita antes de "/".
cd
#No me fue posible entrar a configuración sin regresar a la raíz.
cd Práctica1_Ramírez_Arvídez_Roxette/respaldo_sistema/configuración 
#Entramos a configuración para crear una segund carpeta, pues de haber escrito "configuración/X11/gnome", el directorio gnome estaría dentro de X11 y no era lo que se requría.
mkdir gnome
#creamos el directorio gnome
cd
cd Práctica1_Ramírez_Arvídez_Roxette
tree respaldo_sistema 
#El comando tree desglosa en forma descendente todos los directorios que están dentro del directorio que indicamos (que sería el padre), tanto como los primarios, los secundarios, a partir de nuestra ubicación, en este caso, el directorio "Práctica1_Ramírez_Arvídez_Roxette". Esto para ver que obtuvimos el sistema de directorio que se requería
cd
cd Práctica1_Ramírez_Arvídez_Roxette/respaldo_sistema/reinstalacion
touch guia notas secuencia.data paquetes.pkg imagen.iso
#El comando touch crea archivos vacíos, es decir sin contenido en él, el nombre escrito después del comando, es el nombre del archivo; el espacio que separa las palabras nos dice que se han creado 5 diferentes. Las terminaciones .pkg y .iso, se refieren a extensiones, del tipo de archivo que se ha creado
cd
cd Práctica1_Ramírez_Arvídez_Roxette
ls -laRt
#El comando ls muestra el contenido de la carpeta en donde estamos ubicados actualmente. La opción l, nos da un vistazo de las propiedades del contenido que se enlista; "a" permite enlistar también el contenido oculto, pues pueden existir directorios o archivos que han sido marcados para que no aparecer en las carpetas; "R" posibilta ver los directorio secundarios, es decir que están contenidos dentro de otras carpetas, a partir de la misma ubicación; "t" Los acomoda de manera que ubiquemos primero los editados recientemente y por último los más viejos.
cd
cd Práctica1_Ramírez_Arvídez_Roxette/respaldo_sistema
cp -r /bin programas
#Con está opción podemos copiar la estructura de directorios /bin, con su contenido, a la carpeta llamada programas.
cd
cd Práctica1_Ramírez_Arvídez_Roxette/respaldo_sistema/configuración/X11
cp -riv /etc/X11/x* .
#Sabemos que para copiar todo el contenido de /etc/X11 a ".", el cual es un atajo para indicar que se copian a la ubicación actual: /configuración/X11, se usa el comando cp -r. Pero queremos que nos avise sobre este proceso, para ello es la opción -iv, que nos da un informe del proceso de copear, i para aquellos quese están a punto de sobreescribir y v en general d toos los archivos. Y que pra todos los diirectorios y archivos que sse copien cumplan la condici´on de empezar su nombre con la letra "x"
#rm -rf /etc/apache2 /var/www
#cd /etc/firefox-3.5/profile/ 
#mv bookmarks.html favoritos.resp
#cd /etc 
#rm -rf *.conf
##Para estos últimos 5, se indican como comentario, pues se está suponiendo que tienes todos los permisos necesarios, siendo "superusuario."rm" permite borrar archivos y la opción -r borra el directorio que se especifica junto a su contenido y -f fuerza  ue elementos sobre los que no tenemos permisos a ejecutar también sean eliminados. SE están borrando 2 directorios y su contenido.
##mv tiene dos funciones dependiendo de la estructura en este casa estamo renombrando bookmarks.html a favoritos.resp.
##rm -rf ya ha sido explicado. Se eliminara el contenido de nuestra ubicación, pero únicamento aquel con terminación .conf, gracias al metacaracter *


