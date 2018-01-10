cd
# creamos el directorio Tarea_practica2_Miranda_Santiago_Joaquin  y con cd entramos 
mkdir Tarea_practica2_Miranda_Santiago_Joaquin

cd Tarea_practica2_Miranda_Santiago_Joaquin
# con el comando grep buscamos en /etc/ los archivos que contienen la palabra daemon, usamos la opción -r(para que tambiéb busque en los subdirectorios) 
#y -l(para que soló muestre la ruta de los archivos). mandamos la salida del comando grep al archivo linux.etc con el caracter ">"
grep rl daemon /etc/* > linux.etc
# ahora  buscamos con grep  en el directorio /etc/ los archivos que terminan en ".conf" y que contienen la palabra linux, usamos la opciones -r y -l 
# y con ">>" agregamos la salida de el comando grep junto con el contenido anterior de el archivo linux.etc
grep rl linux /etc/*.conf >> linux.etc
# con more leemos le archivo passwd  que esta en le directorio /etc/ y con grep buscamos la información de nuestro usuario 
more /etc/passwd

grep est7 /etc/passwd 
# en la siguiente linea utilizamos el comando find con la opción -perm para que busque los archivos, que cuentan con todos los permisos, en le directorio /etc/
find /usr -perm 777 
# ahora, usamos el comando find con la opción -name para que busque  los archivos, que terminen en .tar, en el directorio /var 
find /var -name *.tar 
#ps -fea muestra todos los procesos que se ejectan en le servidor, con ">>" enviamos la salida de ps al archivo MisProcesos.prs(el archivo se crea por defecto)
ps -fea >> MisProcesos.prs
#con chmod cambiamos los permisos de linux.etc donde el número 7 indica que el usuario tiene todos los permisos,el siguiente número,1, indica que el grupo soló 
#tiene permiso de ejecución y el ultimo uno indica que los otros usuarios igual tienen permiso de ejecución solamete.
chmod 711 linux.etc
#aquí el primer número le todos los permisos al usuario,el siguiente le da soló permiso de lectura al grupo y el ultimo número le quita todos los permisos a los otros.
chmod 740 MisProcesos.prs
# creamos el archivo todos.prm y enseguida cambiamos los permisos con chmod con el metodo tradicional 
touch todos.prm | chmod u+rwx,g-wx,o+rwx todos.prm
# se crea el archivo grupo.prm y con chmod cambiamos los permisos con el metodo octal

touch grupo.prm | chmod 570 grupo.prm
# se crea el archivo usuario.prm y con chmod cambiamos los permisos con el metodo octal
touch usuario.prm | chmod 755 usuario.prm


