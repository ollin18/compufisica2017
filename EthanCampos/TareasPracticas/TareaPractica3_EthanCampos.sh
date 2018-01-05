#Para una conexión segura usaremos ssh con mi usuario
ssh ethan@132.248.129.8
#El comando last nos arrojará los ultimas conexión y lo mandaremos al archivo nuevo
last > bitacora.conx
#No entendí como era, de mi compu a la maquina o al revés así que puse los dos comandos
#De mi compu a la maquina
scp /home/ethan/Archivo1 ethan@132.248.129.8:/home/Escritorio/
#de la maquina a mi compu
scp ethan@132.248.129.8:/home/Escritorio/Archivo1 /home/ethan/
#Las primeras 3 cifras de numeros (separadas por un punto) es la puerta de enlace
#La ultima cifra es la dirección ip que tenemos asiganada en la red local
hostname -i
#El comando ifconfig nos dará las caracteristicas de la red y la redireccionaremos a un archivo nuevo
ifconfig > red.conf
#Tendremos usar un filtro para encontrar los procesos que requerimos
pgrep firefox
#Como no siempre es el mismo PID, pondré PID en el comando
kill -15 PID #"PID de firefox"#
#USaremos en comando  tar -c es para crear el archivo tar, -f para poder enviarlo al nuevo archivo
touch Practica_3_EthanCampos.tar
tar -cf Practica_3 Practica_3_EthanCampos.tar
#Usaremos gzip para comprimirlo
gzip -9 Practica_3_EthanCampos.tar


