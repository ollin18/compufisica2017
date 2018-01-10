mkdir -p respaldo_sistema/configuracion/X11/ respaldo_sistema/configuracion/gnome respaldo_sistema/programas/ respaldo_sistema/reinstalacion/ respaldo_sistema/usuarios/python/scripts/
# aqui se crean los directorios de la forma que estoy especificando, toda la estructura para ello sirve el  -p
cd respaldo_sistema/reinstalacion/
#cambia de directorio
touch guia notas sacuancia.data paquetes.pkg imagen.iso
# aque se crean los archivos con el nombre especificado cada espacio significa que se trata de un nuevo archivo
cd
# cambia al directorio HOME
ls -Rtl respaldo_sistema/
# despliega una lista de lo que hay en el directorio respaldo_sistematomando en cuenta la fecha mostrando las propiedades y es de forma recursiva
cp /bin/* respaldo_sistema/programas/
# copia todo lo delñ directorio bin a respaldo_sistema/programas
cp -ivR /etc/X11/x* respaldo_sistema/configuracion/X11/
cp -ivR /etc/X11/X* respaldo_sistema/configuracion/X11/
# ambas realizan la copia de forma que pida permisos al usuario, ademas le informe y revise cada subdirectorio
echo .....................comandos para ........................
echo ......1.- borrar /etc/apache2/ y /var/www/
echo ........rmdir -fr /etc/apache2/
echo ........rmdir -fr /var/www/
echo ......2.- cambiar nombre a bookmarks.html a favoritos.resp
echo ........mv bookmarks.html favoritos.resp
echo ......3.- borrar todos los archivos con terminacion .conf
echo ........cd /etc/
echo ........rm *.conf
echo ..........................................................
# en esta seccion escribo los comandos que pide en el punto numero seis
