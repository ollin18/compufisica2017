mkdir Practica2_BayronAmador #Creamos carpeta para que todo quede aqui adentro
cd Practica2_BayronAmador
touch linux.etc #Creamosun archivo
grep -r -l -i daemon /etc/* > linux.etc #Mandamos todas  las salidas a este
grep -r -l -i linux /etc/*.conf >> linux.etc  # >> para que no se eliminen las salidas del anterior comando
cat /etc/passwd | less #Se muestra el contenido de un archivo 
grep -e home | less
find /usr -perm 777 #Buscamos por permisos y por nombre
find /var -name *.tar
touch MisProcesos.prs
ps -fea >> MisProcesos.prs #Creamos un archivo y mandamos los resultados de ps al archivo
chmod 711 linux.etc #Cambiamos permisos de los archivos
chmod 740 MisProcesos.prs 
touch todos.prm | chmod u+rwx,g-wx,o+rwx todos.prm
touch grupo.prm | chmod 570 grupo.prm
touch usuario.prm | chmod 755 usuario.prm  