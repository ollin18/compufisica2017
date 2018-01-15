mkdir Practica2_jose_antonio_lopez_aranda #Aqui creamos un directorio donde almacenaremos la practica
cd Practica2_jose_antonio_lopez_aranda #Aqui nos cambiamos al directorio previamente creado
grep -rls daemon /etc/ > linux.etc #Aqui le pedimos que cree un archivo llamado "linux.etc" y que en el liste todos los archivos que contiene la palabra daemon que esten el en directorio etc
grep -ls linux /etc/* .conf >> linux.etc #Aquí agregamos de manera no destructiva los archivos que contengan la parabra linux y terminen en .conf
cat /etc/passwd | grep home #Aqui buscamos la palabra home dentro del archivo /etc/passwd
find /usr/ -perm 777 #Aqui buscamos todos ls archivos que cuenten con todos los permisos en el directorio usr
find /var/ -name ".tar"  #Aquí buscamos todos los archivos que tengan la extensión tar dentro del directorio var
ps -f > MisProcesos.prs #Aqui creamos un archivo que contenga todos los procesos dentro del directorio de trabajo que esten activos
chmod u+rwx,g+x-rw,o+x-rw linux.etc #Aqui cambiamos los permisos de linux.etc,quitandole los de lectura y escritura al grupo y otros
chmod u+rwx,g+r-wx,o-rwx MisProcesos.prs #Aquí cambiamos los permisos de MisProcesos.prs, quitandole todo a otros y de escritura y ejecucion al grupo
touch todos.prm #Aqui creamos nu archivo llamado todos.prm
chmod u+rwx,g+r-wx,o+rwx todos.prm #Aqui cambiamos los permisos de todos.prm, quitandole al grupo de escritura y ejecución
touch grupo.prm #Aquí creamos un archivo llamado grupo.prm
chmod 570 grupo.prm #Aqui cambiamos los permisos de grupo.prm, le quitamos permisos al usuario de escritura, dandole todos los permisos al grupo y quitando permisos a otros
touch usuario.prm #Aqui creamos un archivo llamado usuario.prm
chmod 755 usuario.prm  #Aquí le cambiamos permisos a usuario.prm dandole todos los permisos al usuario y quitandole el de escritura al grupo y a otros.

