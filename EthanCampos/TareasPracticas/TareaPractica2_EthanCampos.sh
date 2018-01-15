#Creamos un archivo y todas las lineas que arrojo el filtro grep se mando 
#a este 
touch linux.etc
grep -r -l -i daemon /etc/* > linux.etc 
#Use >> para que no eliminará las líneas del comando anterior#
grep -r -l -i linux /etc/*.conf >> linux.etc
#Se muestra el contenido de un archivo y lo filtramos#
cat /etc/passwd | less
grep -e home | less
#Buscamos archivos por permisos y por nombres#
find /usr -perm 777
find /var -name *.tar
#Creamos un archivo y arojamos los resultados de ps a este#
touch MisProcesos.prs
ps -fea >> MisProcesos.prs
#Cambiamos permisos de archivos#
chmod 711 linux.etc
chmod 740 MisProcesos.prs 
touch todos.prm | chmod u+rwx,g-wx,o+rwx todos.prm
touch grupo.prm | chmod 570 grupo.prm
touch usuario.prm | chmod 755 usuario.prm  

