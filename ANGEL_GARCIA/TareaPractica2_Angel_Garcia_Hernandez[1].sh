mkdir priactica_2
#crea undirectorio de trabajo
cd practica_2
#nos movemos al directorio
grep -rli daemon /etc/* > linux.etc
#busca las cosaas en el directorio etc/ que contengan daemon y las guarda en el archivo linux.etc
grep -rli linux /etc/*.conf >> linux.etc 
#busca las cosas con la palabra linux y terminacion .conf y la agrega al archivo
cat linux.etc | less
#permite revisar el archivo con la opcion de retoceder
cat /etc/passwd | less
#permite revisar el archivo passwd con la opcion de retroceder
find /usr -perm 777 | less
#busca los archivos con tdos los permisos
find /var -name *.tar | less
#busca los arcivos con terminacion .tar
touch misprocesos.prs
#crea un archivo
ps -fea >> misprocesos.psr
#muestra todos los procesos con sus caracteristicas y los mete al archivo
chmod 711 linux.etc
#cambia los permisos del archivo a todos para el usuario y solo ejecucion para los grupos y los otros
chmod 740 misprocesos.psr
#le cambia los permisos a: todos para el usuario y para los grupos solo lectura y para los otros ninguno
touch todos.prm
#crea un archivo
chmod u+rwx,g-wx,o+rwx todos.prm
#le cambia los permisos a: todos para el ususario, solo lectura para los grupos y todos para los otros
touch grupo.prm
#crea un archivo
chmod 570 grupo.prm
#le cambia los permisos a: lectura y ejecucion para el usuario, todos para el grupo y ninguno para los otros
touch usuario.prm
#crea un archivo
chmod 755 usuario.prm
#le cambia los permisos a: todos para el usuario y lectura y ejecucion para el grupo y los otros
