# 0
# Crear el directorio de trabajo Practica1_Herrera_Noriega_LincolnAntonio con mkdir

mkdir Practica3_Herrera_Noriega_LincolnAntonio
cd Practica3_Herrera_Noriega_LincolnAntonio
cd

# 1
# a) Conectandose remotamente con ssh a la máquina 132.248.129.8.

ssh est7@132.248.129.8.

# b) obtener el listado de últimas conexiones con w y enviarlos con > al archivo bitacora.conx

last > bitacora.conx

# c) Copiar un archivo desde la máquina remota con scp al directorio 

scp est7@132.248.129.8.:/home/bitacora.conx .

# 2
# a) Obtener el ip del equipo, se uso hostname con la opción -I que nos entrega directamente la ip con el segmento (192.168.7.nnn) y la ip particular de nuestro equipo (determinada por los dígitos después del último punto)

hostname -I

# b) Obtener el estado y características de los dispositivos de red y enviarlos a un archivo red.conf
# se uso la opción -a para incluir los dispositivos no activos

ifconfig -a > red.conf

# 3
# a) listado (con ps) de todos los procesos en formato sencillo (-e) con nombre de proceso "firefox" (filtrado con grep)

ps -e | grep firefox

# b) Matar y reiniciar el proceso encontrado. Primero obtenemos el PID tomando la primera columna del output de "ps -e | grep firefox" con awk (tomado de una situación similar encontrada en stackoverflow) y se lo entregamos como intput a kill como variable de sistema %() (tomado de otra respuesta en stackoverflow)

kill -15 $(ps -e | grep firefox | awk '{print $1}')

# 4
# a) Empaquetar el directorio de trabajo con tar, el empaquetado se realiza con la opción -c y dirigimos el empaquetado al archivo especificado con la opción -f

tar -cf Practica3_Herrera_Noriega_LincolnAntonio.tar Practica3_Herrera_Noriega_LincolnAntonio

# b) Comprimir el archivo con  con nivel de compresión de 9.

gzip -9 Practica3_Herrera_Noriega_LincolnAntonio.tar