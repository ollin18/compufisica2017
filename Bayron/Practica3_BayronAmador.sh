mkdir Practica3_BayronAmador #Creamos carpeta para que todo quede aqui adentro
cd Practica3_BayronAmador
ssh est7@132.248.129.8. #El comando ssh abre una sesión segura de manera remota en el equipo
cd #Vamos a Home
touch bitacora.conx #creamos un archivo vacío llamado bitacora.conx
#Usando el ">" vamos a redireccionar la salida del comando last a nuestro archivo bitacora.conx
last > bitacora.conx #muestra las últimas conexiones de los usuarios y con el > enviamos la salida del comando last al archivo 
scp est7@132.248.129.8.:/home/bitacora.conx/ /home/Practica3 #usamos scp para copiar los archivos entre dos equipos 
ifconfig #nos permite conocer el ip
#La mascara de red son todos los números,  la  puerta  de  enlace en la que nos encontramos son los primeros 3 grupos de números y la dirección ip es el último número
cd #Regresamos a nuestra home
cd Practica3 #Entramos a la carpeta de la practica
touch red.conf #creamos un archivo llamado red.conf
ifconfig > red.conf #Enviamos la salida del comando ifconfig a el archivo red.conf
ps -e | grep firefox  #ps -e  muestra un listado en formato de todos los prcesos ejecutándose en el servidor y el | hace que busque en el anterior listado firefox
kill -15 PID firefox #Con este matamos el proceso Firefox y se reinicia asignando el mismod PID
tar Practica3.tar  Practica3 #Empaquetamos 
gzip -9 Practica3_Castro_Granados_Celeste.tar #Comprimimos con nivel de compresión 9