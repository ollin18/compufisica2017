mkdir respaldo_sistema
  #Creamos la carpeta      
cd respaldo_sistema
     #Nos movemos a ella    
mkdir -p configuracion programas reinstalacion usuarios
   #creamos una carpeta con caracteristicas especificas       
cd configuracion
         
mkdir X11 gnome
         
cd ..
         
cd reinstalacion
         
touch guia notas secuencia.data paquetes.pkg imagen.iso
   #Cremos archivos      
cd ..
        
 cd usuarios
        
 mkdir -p python/scripts
 
cd ..
 tree -paD . | less
 cd programas
        
cp /bin/* .
 cd configuracion
         
cd X11
        
cp -riva /etc/X11/[x-X]* .
#rm -R /etc/apache2
 
#rm -R /var/www
 
# cd /etc/ficheros-3.5/profile/ mv bookmarks.html favoritos.resp
 
#rm -R /etc/*.conf