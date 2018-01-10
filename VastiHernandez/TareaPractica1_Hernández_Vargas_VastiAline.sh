mkdir -p Practica1_Hernández_Vargas_VastiAline/respaldo_sistema
cd Practica1_Hernández_Vargas_VastiAline
ls
cd respaldo_sistema
mkdir -p configuración/X11 configuración/gnome programas reinstalación usuarios/python/scripts
echo "utilizo el -p pues este crea directorios padres y a partir de él creo otros directorios secundarios"
cd reinstalación
touch guia
touch notas
touch secuancia.data
touch paquetes.pkg
touch imagen.iso
cd ..
ls -lat
cd programas
cp -r /bin/ .
cd ..
cd configuración/X11
cp -ivr /etc/X11/x* .
echo "el -i indica que quiero que se realice una copia, de la misma manera ocupo el -v para que este indique la información de estos archivos copiados"
cd ..
cd ..
echo " a) rm -r /etc/apache2/ /var/www/
       b) cd /etc/firefox-3.5/porfile/
          ls
          mv bookmarks.html favoritos.resp
       c) rm -r etc/*.conf"


