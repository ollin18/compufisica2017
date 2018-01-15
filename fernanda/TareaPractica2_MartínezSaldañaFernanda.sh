mkdir Tareapractica2_Fer.sh  #Creamos un directorio 
cd Tareapractica2_Fer.sh    #Cambiamos de directorio
touch linux.etc              #Creamos un archivo
grep -Hr "daemon" /etc > linux.etc #Agregamos las rutas de los archivos del directorio
grep -Hr "linux" /etc grep -Hr "*.conf" linux.etc #Agregamos las rutas de los archivos del directorio 
grep “fersaldana” /etc/passwd   #Filtramos la información de mi usuario
find /usr./ -perm 777
find /var/ -name "*.tar"
touch ps -fea -u "$(whoami)" > MisProcesos.prs  #Creamos un archivo que contenga todos los procesos de mi usuario
chmod 711 linux.etc #Con chmod cambiamos todos los permisos, con el primer número que es 7 le doy permiso de lectura, escritura y ejecución al usuario, con el segundo número que es 1 y el último le damos permiso de ejecución al grupo y a los otros 
chmod 740 MisProcesos.prs #Cambiamos permisos con el primer numero que es 7 le damos permiso de lectura, ejecución y escritura al usuario, al grupo le damos permiso de lectura y a los otrosno le damos permiso
touch "todos.prm" #Creamos archivo
chmod u+rwx,g-wx+r,o+rwx todos.prm  #Cambiamos permisos le damos permiso al usuario y a los otros de ejecución, lectura y escritura y al grupo de lectura
chmod 570 grupo.prm      #Cambiamos permisos al usuario de lectura y ejecución, al grupo de lectura, ejecución y lectura y a los otros no le damos ninguno 
chmod 755 "usuario.prm”  #Cambiamos permisos del usuario de ejecución, lectura y lectura, tanto al grupo como a los otros le damos permiso de lectura y ejecución

