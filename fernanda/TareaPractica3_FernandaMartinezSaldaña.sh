mkdir Practica3_Fernanda_Martinez_Saldaña #Creamos directorio
cd Practica3_Fernanda_Martinez_Saldaña #Cambiamos de directorio
ssh est7@132.248.129.8   #Nos conectamos con ssh a una máquina remota 
last > bitacora.conx   #Nos muestra las últimas conexiones de los usuarios
scp est7@132.248.129.8.:/home/bitacora.conx/ #Con scp copiamos un archivo de la máquina remota
hostname -I #Obtenemos el ip de la máquina     
ifconfig > red.conf #Mandamos el archivo con ifconfig nos dice el estado y las características de la red 
ps -e | grep firefox    #Ps nos muestra un listado de forma sencilla
kill -15 (ps -e | grep firefox | awk '{print $1}')   #Con kill matamos el proceso
tar -cf Practica3_Fernanda_Martinez_Saldaña.tar  #Con tar empaquetamos un directorio
gzip -9 Practica3_Fernanda_Martinez_Saldaña.tar. #Con gzip comprimimos el archivo en un nivel 9
