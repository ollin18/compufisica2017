#1)

#a)Debemos conectarnos remotamente a la maquina 132.248.129.8; para ello debemos saber nuestro usuario
	whoami #nos va a entregar el nombre del usuario que tenemos
	ssh apollo11@132.248.129.8 #en mi caso porque asi se llama mi usuario en mi laptop

#b)Ahora crearemos un archivo llamado bitacora.conx que contenga un listado de las ultimas conexiones de los usuarios a la maquina
	last > bitacora.conx

#c)En este inciso vamos a copiar un archivo en la maquina remota al directorio (local) donde estemos trabajando
	scp ~/holamundo  apollo11@132.248.129.8:/home/
	
	scp apollo11@132.248.129.8:/home/holamundo ~/

#2)

#a)Codigo para saber mi "ip", los primeros tres digitos representan la puerta de enlace y el ultimo digito es la red local asociada a la ip
	hostname -i

#b)Crearemos un archivo con el caracter >, esto significa que la salida de nuestro comando creara ese archivo
	ifconfig > red.conf

#3)

#a)Con ps -e mostramos un formato sencillo de los procesos ejecutandose y con el grep solo nos fijamos en los que se llaman firefox
	ps -e | grep "firefox"
	pgrep firefox #o puede ser con este para que indique el PID directamente

#b)Con kill -15 PID nos aseguramos que va a matar el proceso con ese PID pero tambien lo va a reiniciar con el mismo PID...
	kill -15 1128 #en mi pc, el PID fue 1128 de "firefox", obtenido usando cualquiera de los dos comandos anteriores
#4)

#a)Primero crearemos el directorio, luego con tar -cf es para crear el archivo tar y enviarlo alli
	mkdir PRACTICA_3
	tar -cf PRACTICA_3_BrionesAndradeJoshua.tar PRACTICA_3
#b)Con gzip comprimimos el archivo .tar y con -9 le deciamos que es nivel 9 de compresion
	gzip -9 PRACTICA_3_BrionesAndradeJoshua.tar
