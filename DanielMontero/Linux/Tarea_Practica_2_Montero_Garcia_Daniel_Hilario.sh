#1a. Primero creo el directorio de la tarea. En ese directorio creoun archivo llamado linux.etc. Luego con ls veo dentro del directorio etc y grep filtra lo que contenga "daemon", eso lo paso al archivo linux.etc.
mkdir Tarea_Practica_2_Montero_Garcia_Daniel_Hilario
cd Tarea_Practica_2_Montero_Garcia_Daniel_Hilario
 touch linux.etc
ls /etc|grep daemon> ./linux.etc
#1b. aquí busca los archivos que tienen "linux" y terminan en .conf (dentro de etc).
grep linux /etc/*.conf>> linux.etc
#1c. Buca la palabra Daniel (mi usuario) dentro del artchivo etc/passwd.
grep Daniel /etc/passwd
#2a. Enlista y encuentra los archivos de usr que contengan "rwxrwxrwx" que son los archivos con todos los permisos.
ls -l /usr|grep rwxrwxrwx
#2b. Dentro del directorio var enlista los archivos con la terminación ".tar".
ls /var/*.tar
#3. ps encuentra los procesos del usuario y los manda al archivo "MisProcesos.prs" (a la vez que lo crea).
ps>./MisProcesos.prs
#4a. Cambia los permisos u7(todos) g1(ejecución) o1(ejecución).
chmod 711 linux.etc
#4b. Cambia los permisos u7(todos) g4(lectura) o0(sin permisos).
chmod 740 MisProcesos.prs 
#5a. Crea el archivo "todos.prm". Después da permisos u(todos) g(lectura) o(todos)
touch todos.prm
chmod u+rwx,g+r,o+rwx todos.prm
#5b. Crea el archivo "grupo.prm". Después da permisis u5(ejecución y lectura) g(todos) o(sin permisos).
touch grupo.prm
chmod 570 grupo.prm
#5c. Crea el archivo "usuario.prm". Después da permisos u7(todos) g5(ejecución y lectura) o(ejecución y lectura).
touch usuario.prm
chmod 755 usuario.prm





