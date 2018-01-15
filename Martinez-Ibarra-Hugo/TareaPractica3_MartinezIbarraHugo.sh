#Ejercicio 1
mkdir Practica3_Hugo
#Se usó el comando mkdir para crear en el directorio actual el directorio con nombre Practica3_Hugo.
cd Practica3_Hugo
#Se usó el comando cd con dos puntos (..) para ir al directorio padre; es decir, regresar al directorio anterior.
chmod 777 TareaPractica3_MartinezIbarraHugo.sh
#Se usó el comando chmod 777 para dar todos los permisos al usuario, grupo y otros (777, con el método octal) al archivo TareaPractica3_MartinezIbarraHugo.sh en el directorio actual. 
cd Practica3_Hugo
#Se uso cd para cambiar al directorio Practica3_Hugo, mediante la especificación de su ruta relativa; es decir sólo su nombre es este caso.

#a)
ssh hugo@132.248.129.8
#Con el comando ssh se está se conectando de manera remota bajo el nombre de usuario hugo al servidor 132.248.129.8.

#b)
last > bitacora.conx
#Se usó un redireccionamiento de salida, del comando last, que lista las últimas conexiones de usuarios al servidor, a el archivo de nombre bitacora.conx, el cual al no existir es creado.

#c)
scp hugo@132.248.129.8:/etc/passwd /Practica3_Hugo
#Aquí se está usando el comando scp (para copiar archivos entre equipos en red) para copiar el archivo passwd, que está en el directorio /etc) de la máquina remota al directorio (local) Practica3_Hugo.

#Ejercicio 2
#a)
ifconfig
#Con el comando ifconfig se obtienen las caracterisitcas del estado actual de las interfaces de red activas, y con eso se muestra la IP del dispositivo, que en este caso se encuentra dentro de la descripción de la interfaz wp2s0 como Direc. inet: 192.168.0.13. Donde los número 192.168 corresponden a la descripción de redes locales, luego 0. corresponde al parte de la red y finalmente 13 corresponde al segmento de la red.

#b)
ifconfig > red.conf
#Se usó un redireccionamiento de salida, del comando ifconfig, que lista las caracterisitcas del estado actual de las interfaces de red activas, a el archivo de nombre red.conf, el cual al no existir es creado.

#Ejercicio 3
#a)
ps -fea|grep firefox
#Se usó un redireccionamiento de comando a comando, para listar primero en formato largo los procesos que se están ejecutando, y luego dirigir la salida de este comando al comando grep que filtra aquellos resultados que contngan la palabra firefox en su contenido, es decir procesos que estén relacionados con el programa firefox. Así se puede leer el ID del proceso que interesa.
kill -15 3399
#El comando kill se usó para eliminar o cesar el proceso que se indagó en el punto anterior el cual tenía ID 3399 y la opción -9 es para forzar esa eliminación.

#Ejercicio 4
#a)
cd ..
#Para regresar un directorio atrás
tar -cvf Practica3_Hugo.tar Practica3_Hugo
#Se crea el archivo de empaquetamiento (-c) con nombre Practica3_Hugo.tar y se informa sobre la ejecución del comando (-v), indicando que se está afectando un archivo (-f), y el directorio afectado el Practica3_Hugo.

#b)
gzip -9 Practica3_Hugo.tar
#Se usó el comando gzip para comprimir el archivo Practica3_Hugo.tar con un nivel de compresión de 9 (-9), es decir el más alto.




