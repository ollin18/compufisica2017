#Recomendacion: Guardar todo en un directorio
mkdir Practica2_Briones_Andrade_Joshua
cd Practica2_Briones_Andrade_Joshua

#1)Para que no mande mensajes de error por comodidad ponemos -s
#Ponemos -r para que sea recursiva
#Y tambien -l para que imprima los archivos que concuerden
grep -srl daemon /etc/* > linux.etc
grep -srl linux /etc/* | grep .conf >> linux.etc
grep "Joshua Briones /etc/passwd

#2)
#Usamos la opcion -perm para buscar los archivos que tengan todos los permisos
#luego los mandamos a Usr777 e imprimimos su contenido
find /usr/ -perm 777 >Usr777
cat Usr777

#Usamos la opcion -name para buscar los archivos que su nombre empieza con .tar
#luego los mandamos a findvar e imprimimos su contenido
find /var/ -name *.tar > findvar
cat findvar

#3)Utilizamos el primer comando para ver nuestros procesos y luego guardamos el output en MisProcesos.prs
ps -fea > MisProcesos.prs

#4)Cambiamos los permisos de los archivos
chmod 711 linux.etc
chmod 740 MisProcesos.prs

#5)Creamos los archivos y asignamos permisos segun se nos pide
touch todos.prm
chmod u+rwx,g+r,g-wx,o+rwx todos.prm
touch grupo.prm
chmod 570 grupo.prm
touch usuario.prm
chmod 755 usuario.prm
