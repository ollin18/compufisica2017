mkdir Tarea2_Alv_Ram_Rodrigo
#Se crea la carpeta para que se realicen todos los archivos de esta c¿practica
cd Tarea2_Alv_Ram_Rodrigo
#cambiamos a dicha carpeta
grep -ilr daemon /etc/* >> linux.etc
#Con este comando se busca patrones en archivos y los arreglos son para que ignore la dierencia entre mayusculas y minusculas, solo muestre el nobre del archivo que se encontro y que busque de forma recursiva en directorios y tambien se usa el doble redireccionamiento para que no borre lo que ya tiene el archivo "linux.etc"
grep -ilr linux /etc/*.conf >> linux.etc
#Es practicamente lo mismo que arriba con la dierencia de que aca busca otros patrones
cat /etc/passwd/ | less
#Se ve el contenido del archivo y con el redireccionamiento entre programas se muestra su contenido
find /usr -perm 777 | less
#Con find se puede buscar por permiso o por nombre, en este caso es por permiso  y busca por el metodo octal y despues lo muestra con la barrita de redireccionaiento
find /var -name *.tar | less
#En este caso busca pero ahora para terminacion de archivos en ".tar" y luego lo uestra con el redireccionamiento
touch Misprocesos.prs
#Con touch se crean archivos vacios
ps -fea >> Misprocesos.prs
#Con ps muestra los procesos que se esten ejecutando en ese instante
chmod 711 linux.etc
#Con este se cambiar los permisos de un archivo de forma octal
chmod 740 Misprocesos.prs
#Lo mismoq que arriba, cambiarle los permisos de forma octal
touch todos.prm | chmod u+rwx,g-wx,o+rwx todos.prm
#se crea el archivo y despues con el redireccionamiento de archivos se le cambian los permisos de tradicional
touch grupo.prm | chmod 750 grupo.prm
#Se crea el archivo y con el redireccionamiento de programas se le cambian los permisos de forma octal
touch usuario.prm | chmod 755 usuario.prm
#Lo mismo que arriba, se crea y despues se le cambian los permisos
