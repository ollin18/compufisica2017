mkdir Practica3_Fernanda_Martinez_Saldaña
ssh est7@132.248.129.8.
cd 
touch bitacora.conx
last > bitacora.conx
scp est7@132.248.129.8.:/home/bitacora.conx/ /fersaldana/
ifconfig
#la mascara de  red  (255.255.255.0),  la  puerta  de  enlace  (o  segmento) en la que nos encontramos (192.168.7.255) y la dirección ip que  tenemos  asignada  dentro  de  la  red  (192.168.7.49)
touch red.conf 
ifconfig > red.conf
ps -e |
kill -15 PID firefox
tar Practica3_Fernanda_Martinez_Saldaña.tar  bitacora.conx red.conf
gzip -9 Practica3_Fernanda_Martinez_Saldaña.tar
