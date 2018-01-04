#Empezaremos creando el directorio que usaremos para esta practica
mkdir Practica2_Celeste
#Nos cambiamos al mismo
cd Practica2_Celeste
#Para el número 1 primero creamos un archivo vacío llamado linux.etc con el comando touch 
touch linux.etc
#Ahora usamos grep para buscar el patrón "daemon" dentro del directorio etc y con > redireccionamos todas las rutas de los archivos con este patrón a nuestro archivo linux.etc
#Con -H lo que le decimos es que busque nombre y dirección, y con -r le informamos que va a buscar en un directorio
grep -H -r "daemon" /etc > linux.etc
#Con el siguiente comando va  buscar los archivos que tengan la palabra "linux" dentro del directorio etc, después usamos un pipe para conectar la salida del primer comando con el segundo 
#En el segundo comando que es el segundo grep le decimos que aparte de lo indicado en el primer grep, también busque los archivos que tengan extensión ".conf" 
#Por último usamos doble >> para que redireccione las rutas de los archivos que acaba de encontrar a linux.etc pero sin borrar lo que ya existía en él
grep -H -r "linux" /etc | grep -H -r "*.conf" >> linux.etc
#Finalmente, para terminar con el número 1, usamos el siguiente grep para filtrar la información del usuario analizando el archivo etc/passwd, en este caso usamos "Celeste" debido a que mi usuario es Celeste
grep -r "Celeste" /etc/passwd
#Continuamos con el número 2, en este caso vamos a buscar con el comando find
#Para el primer find usamos -perm para buscar por permisos, que en este caso buscamos archivos que tengan todos los permisos, por eso usamos 777
find /usr -perm 777
#Para este otro find vamos a buscar por nombre, por eso usamos -name, buscamos los archivos con la extensión "*.tar"
find /var -name "*.tar"
#Para el número 3, creamos primero un archivo llamado Mis procesos.prs
touch Misprocesos.prs
#Ahora el comando ps nos muestra los procesos del usuario que estén activos, con -f da un listado de los procesos que estén siendo ejecutados en nuestra sesión y con -u se refiere a los procesos del usuario
#Todo esto lo vamos a direccionar a nuestro archivo que acabamos de crear mediante un >
ps -fu > Misprocesos.prs
#Para el número 4, vamos a cambiar permisos, usando el comando chmod
#El  primer chmod lo hacemos usando el método octal, y decimos que todos los permisos para el dueño, y ejecución para grupo y otros al archivo linux.etc
chmod 711 linux.etc
#Permisos completos para el dueño, lectura al grupo y cero permisos a los otros para el archivo Mis procesos.prs
chmod 740 Misprocesos.prs
#Finalmente, tenemos el número 5
#Creamos un archivo vacío llamado todos.prm
touch todos.prm
#Cambiamos los permisos mediante el método tradicional, usuario y otros con permisos de lectura, escritura y ejecución, y el grupo con permisos de lectura, pero sin escritura y ejecución
chmod uo+rwx,g+r-wx todos.prm
#Creamos un archivo llamado grupo.prm y le damos permisos mediante el octal de ejecución y lectura al usuario, todos al grupo y cero a los otros
touch grupo.prm
chmod 570 grupo.prm
#Finalmente, creamos el último archivo llamado usuario.prm y le damos permisos de todo al usuario, y ejecución y lectura al grupo y a los otros
touch usuario.prm
chmod 755 usuario.prm
