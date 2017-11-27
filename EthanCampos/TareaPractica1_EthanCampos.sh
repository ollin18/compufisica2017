mkdir respaldo_sistema
cd respaldo_sistema
mkdir configuracion programas reinstalacion usuarios
cd configuracion 
mkdir X11 gnome
cd ..
cd usuarios
mkdir python
cd python
mkdir scripts
cd /home/ethan/TareaCompu/respaldo_sistema/reinstalacion
touch guia notas secuencia.data paquetes.pkg imagen.iso
cd ..
ls -l -a -t  
cp /bin/* programas
cp -i -v -R /etc/X11/x* configuracion/X11 
#"Suponiendo que soy super usuario:"
#"rm -f -r /etc/apache2"
#"rm -f -r /var/www"
#"cd /etc/firefox-3.5/profile/"
#"mv bookmarks.html favoritos.resp"
#"rm -f -r /etc/ *.conf"
