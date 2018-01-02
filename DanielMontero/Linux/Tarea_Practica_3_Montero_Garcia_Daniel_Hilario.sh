#1.
#a)
#en mi pc
ssh daniel@132.248.129.8              #Se conecta y se ingresa usuario@ip de la máquina. Desupués se ingresa contraseña.
#b)
who>bitacor.conx                      #Who dice las últimas conexiones y eso se guarda en el archivo creado bitacor.conx
#c)
exit
scp daniel@132.248.129.8:archivo .    #Fuera de la máquina remota se copia con scp: "Dirección del archivo" "Lugar en que estoy(.)"

#2.
#a)
ifconfig                              #Los números significan la dirección de la red (primeros 3)y el número de máquina(último). Porque el netmask es de 3 dígitos.
#b)
ifconfig>red.conf                     #Los datos se envían a un archivo creado en el momento llamado red.conf
       
#3.
#a)
ps aux | grep firefox                 #Se muestran los procesos que se están ejecutando
#b)
kill "PID"                            #Matar proceso con el número "PID", no es posible asignar el mismo PID al proceso al reiniciarlo de manera normal.(https://superuser.com/questions/907774/restart-process-on-linux-by-its-pidn-number-with-kill-command-how).

#4.
#a) 
tar cvf Practica_3-Montero_Garcia_Daniel_Hilario.tar PRACTICA_3  #Crea un archivo tar y se le asigna el nombre y lugar al que se envía
#b)
gzip -9 Practica_3-Montero_Garcia_Daniel_Hilario.tar             #Lo comprime con nivel 9, y es renombrado con .gz adicional
