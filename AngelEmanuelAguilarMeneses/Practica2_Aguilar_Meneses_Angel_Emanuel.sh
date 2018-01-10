find /etc/*/*daemon* > linux.etc #Aquí encontramos  los archivos dentro de los subdirectorios y el directorio /etc/ y creamos un archivo linux.etc y metemos ahí lo que que encontramos. 
find /etc/*/*linux*.conf > linux.etc #Aquí hacemos lo mismo de ariba, con la excepción de que ahora  meteremos en el archivp linux.etc  las rutas de los archivos del directorio /etc/ cuya extensión sea .conf y que su interior contengan la palabra "linux".

cat /etc/passwd | grep angel #Aquí  vemos el contenido del archivo /etc/passwd y al mismo tiempo filtro la información de mi usuario.
find /usr -perm 777 #Aquí utlizamos el comando find para encontrar los archivos del directorio /usr que cuenten con todos los permisos.
find /var -name "*.tar" #Aquí hacemos lo mismo pero ahora buscaremos los archivos que tengan la  extensión .tar dentro del directorio /var.
ps -ru >>MisProcesos.prs #Aquí hacemos un archivo y dentro de el se encontrarán todos mis procesos de usuario y sus características.
chmod 711 linux.etc #Aquí cambiamos los permisos de linux.etc  
chmod 740 MisProcesos.prs #Aquí cambiamos los permisos de MisProcesos.prs
touch todos.prm #Aquí creo un archivo vacío llamado todos.prm
chmod u+rwx,g+r,o+rwx todos.prm #Aquí vuelvo a cambiar los permisos para todos.prm pero con otro comando
touch grupo.prm #Aquí creo un archivo vacío llamado grup.prm
chmod 570 grupo.prm #Aquí cambio los permisos para  grupo.prm
touch usuario.prm  #Aquí creo un archivo vació llamado usuario.prm
chmod 755 usuario.prm #Aquí cambio los permisos para usuario.prm

