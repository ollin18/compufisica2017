#Lo primero que vamos a hacer es crear un directorio para la pr�ctica
mkdir Practica3_Celeste
#Para el n�mero 1, el inciso a, para conectarnos remotamente usamos lo siguiente: 
#El comando ssh permite abrir una sesi�n segura de manera remota en el equipo o servidor indicado
#Desu�s se coloca el usuario que se va a conectar, que en este caso es est7
#Y finalmente la m�quina
ssh est7@132.248.129.8.
#Estando ya conectados nos cambiamos al home
cd
#Continuamos con el inciso b, primero creamos un archivo vac�o llamado bitacora.conx mediante el comando touch
touch bitacora.conx
#El comando last nos muestra las �ltimas conexiones de los usuarios al servidor
#Usando el ">" vamos a redireccionar la salida del comando last a nuestro archivo bitacora.conx
last > bitacora.conx
#Por �ltimo, para el inciso c, usamos scp para copiar de manera segura archivos entre dos equipos
#Como lo que queremos es traer un archivo, usamos lo siguiente
#Despu�s el scp, va el usuario, el servidor, la ruta de origen y finalmente la ruta del destino
#En este caso la ruta de destino es en mi m�quina
scp est7@132.248.129.8.:/home/bitacora.conx/ /home/Practica3_Celeste
#Para el n�mero 2, el comando ifconfig nos permite conocer el ip
ifconfig
#El comando va a arrojar un serie de n�meros, por ejemplo 132.248.129.8.
#La mascara de red son todos los n�meros(132.248.129.8),  la  puerta  de  enlace  (o  segmento) en la que nos encontramos son los primeros 3 grupos de n�meros (132.248.129) y la direcci�n ip es el �ltimo n�mero (8.)
#Continuamos con el inciso b, primero creamos un archivo vac�o llamado red.conf en nuesto directorio
cd
cd Practica3_Celeste
touch red.conf
#Ahora, el comando ifconfig detalla las caracter�sticas de nuestros dispositivos de red, y la salida de este comando la vamos a direccionar a nuestro archivo que acabamos de crear 
ifconfig > red.conf
#Para el n�mero 3, el comando ps -e nos muestra un listado en formato sencillo de todos los prcesos ejecut�ndose en el servidor
#Con ayuda del pipe vamos a conectar la salida del comando ps -e con la entrada del grep, para que nos permita buscar dentro de los procesos, aquellos cuyo nombre sea firefox 
ps -e | grep firefox
#Ahora vamos a matar el proceso llamado firefox con el comando kill
#Y con el -15 PID nos aseguamos de matarlo y al mismo tiempo reiniciarlo asig�ndole su mismo PID
kill -15 PID firefox
#Finalmente, para el n�mero 4, vamos a empaquetar todo nuestro directorio en un archivo con extensi�n .tar
tar Practica3_Castro_Granados_Celeste.tar  Practica3_Celeste
#Y comprimimos este archivo con un nivel de compresi�n 9
gzip -9 Practica3_Castro_Granados_Celeste.tar