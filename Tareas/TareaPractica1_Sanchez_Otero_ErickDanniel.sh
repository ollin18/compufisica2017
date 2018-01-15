mkdir -p respaldo_sistema/configuracion/X11 respaldo_sistema/configuracion/gnome respaldo_sistema/programas respaldo_sistema/reinstalacion respaldo_sistema/usuarios/python/scripts
touch respaldo_sistema/reinstalacion/guia respaldo_sistema/reinstalacion/notas respaldo_sistema/reinstalacion/secuencia.data respaldo_sistema/reinstalacion/paquetes.pkg respaldo_sistema/reinstalacion/imagen.iso
ls -Rla respaldo_sistema | less
cp -r /bin/* respaldo_sistema/programas/
cp -rv /etc/X11/x* /etc/X11/X* respaldo_sistema/configuracion/X11/ | less
#rm -r /etc/apache2 /var/www
#mv /etc/firefox-3.5/profile/bookmarks.html /etc/firefox-3.5/profile/favoritos.resp
#rm -r /etc/*.conf
