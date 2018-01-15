cd
# con mkdir creamos la carpeta :practica1_Joaquin_Miranda_Santiago
mkdir practica1_Joaquin_Miranda_Santiago
# utilizamos cd para entrar a la carpeta que creamos
cd practica1_Joaquin_Miranda_Santiago/
#ahora dentro de la carpeta creamosla extructura de directorios
mkdir -p respaldo_sistema/configuracion/X11 gnome
mkdir -p respaldo_sistema/programas reinstalacion
mkdir -p respaldo_sistema/usuarios/python/scripts
mv gnome respaldo_sistema/configuracion/
mv reinstalacion respaldo_sistema/
#entramos a la carpeta reinstalacion con cd para crear los archivos:notas, secuencia.data paquetes.pgk e imagen.iso con el comando touch
cd respaldo_sistema/reinstalacion/

touch guia notas secuencia.data paquetes.pkg imagen.iso
#usamos el comando cd para ir a la carpeta personal y desde ahí, utilizamos el comado ls con la opciones:-l(para que nos muetre las propiedades de los archivos y directorios)
#-a(para que nos muestre todo el conetino, incluyendo los ocultos), -R(para que también nos muestre los subdirectorios) y -t(para que lo muestre por fecha)
ls -laRt practica1_Joaquin_Miranda_Santiago/
#con cp copiamos todos los archvos del dierectorio /bin usando la opción -r y el * (para copiar todo el contenido)
cp -r /bin/* practica1_Joaquin_Miranda_Santiago/respaldo_sistema/programas/
# entramos al directorio configuracion/X11 y de ahí con el comando cp copiamos todo el contenido del directorio /etc/X11/ que comiencen con la letra x,utlizamos la opciones -i y -v , para que sea de forma interactica y nos informe de las copias
cd practica1_Joaquin_Miranda_Santiago/respaldo_sistema/configuracion/X11/

cp -riva /etc/X11/[x-X]* .
#comandos del problema #6

#a)
# rmdir -r /etc/apache2     borra el directorio apache2 de forma recursiva
# rmdir -r /var/WWW    esto borra el dierectorio WWW de for+recursiva
#b)
# mv /etc/firefox-3.5/profile/booKmarks.html favoritos.resp   esto cambia el nombre booKmarks por favoritos.resp
#c)
# rm -R /etc/*.conf  con este comado borramos todo los archivos que están en etc/  y que terminan en .conf

