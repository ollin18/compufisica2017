mkdir respaldo_sistema
#Con este comando se crea la carpeta respaldo_sistema
cd respaldo_sistema
#Con este comando te meuves a respaldo_sistema
	mkdir -p configuracion programas reinstalacion usuarios
	#con este comando y el areglo -p creas diferesntes carpetas
	cd configuracion
	#Te mueves adentro de la carpeta configuracion
		mkdir X11 gnome
		#Con este se crean carpetas
	cd /home/rockdrigoa/respaldo_sistem
	Con este rea	cd usuarios
		mkdir -p python/scripts
	cd /home/rockdrigoa/respaldo_sistema
	cd reinstalacion
	touch guia notas secuencia.data paquetes.pkg imagen.iso
	cd /home/rockdrigoa/respaldo_sistema
	tree -paD . | less
	cd programas
	cp -r /bin/ .
	cd /home/rockdrigoa/respaldo_sistema/configuracion/X11
		cp -i /etc/X11*x .
	cd /home/rockdrigoa/respaldo_sistema
# rmdir -r /etc/apache2
# rmdir -r /var/www
# mv bookmarks.html favoritos.resp
# rm -r etc/*.conf
