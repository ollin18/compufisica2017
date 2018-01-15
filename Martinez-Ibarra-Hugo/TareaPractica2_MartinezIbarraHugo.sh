#Ejercicio 1
mkdir Practica2_Hugo
#Se usó el comando mkdir para crear en el directorio actual al directorio con nombre Practica2_Hugo.
cd Practica2_Hugo
#Se usó el comando cd para cambiar al directorio creado.
cd ..
#Se usó el comando cd con dos puntos (..) para ir al directorio padre; es decir, regresar al directorio anterior.
chmod 777 TareaPractica2_MartinezIbarraHugo.sh
#Se usó el comando chmod 777 para dar todos los permisos al usuario, grupo y otros (777, con el método octal) al archivo TareaPractica2_MartinezIbarraHugo.sh en el directorio actual. 
cd Practica2_Hugo
# Se uso cd para cambiar al directorio Practica2_Hugo, mediante la especificación de su ruta relativa; es decir sólo su nombre es este caso.

#a)
grep -Hrlw 'daemon' /etc > linux.etc
#Se usó el comando grep para filtrar, enlistar el nombre (-Hl) de manera recursiva (-r) a los arhivos y directorios cuyo contenido tenga la palabra (-w) 'daemon' y que se encuentran en el directorio /etc. Después la salida del comando grep se escribirá (>) en el archivo de nombre linux.etc en el directorio actual.

#b)
echo "Aquí comienza inciso b" >> linux.etc
#Se usó el comando echo para añadir el texto "Aquí comienza inciso b" al final del contenido (>>) del archivo linux.etc.
find /etc -name "*.conf" | xargs grep -Hlr 'linux' >> linux.etc
#Se suó el comando find para encontrar por nombre (-name) en el directorio /etc a todos los archivos y/o directorio que su nombre tenga al final la palabra ".conf" ("*.conf"), luego el resultado de esta búsqueda será enviado (|xargs) a la entrada del comando grep que filtrará, enlistará el nombre (-Hl) de manera recursiva (-r) a los archivos que en su contenido tengan a la palabra linux ('linux') y cuya salida de éste último comando será escrita o añadida al final del contenido (>>) del archivo linux.etc ubiccado en el directorio actual. 

#c)
grep -e "user" -e "hugo" /etc/passwd
#Se usó el comando grep para filtrar todo el contenido del archivo passwd (/etc/passwd) que contenga la palabra (-e) "user" y "hugo".

#Ejercicio 2
#a)
find /usr -perm 777
#Se usó el comando find para encontrar en le directorio /usr a todos los archivos o directorios que tengan todos los permisos para usuario, grupo y otros (-perm 777, con el metood octal).

#b)
find /var -name "*.tar*"
#Se uso el comando find para encontrar a todos los archivos o directorios que por nombre (-name) tenga al final la palabra .tar ("*.tar") en el directorio /var.

#Ejercicio 3
ps -fu > MisProcesos.prs
#Se usó el comando ps para mostrar los procesos del usuario (-u) que se están ejecutando en la sesión, en formato largo (-f), y luego la salida de dicho comando será escrita en el archivo de nombre MisProcesos.prs en el directorio actual. 

#Ejercicio 4
#a)
chmod 711 linux.etc
#Se usó el comando chmod 711 para dar todos los permisos al usuario (7), y sólo de ejecución para el el grupo (1) y otros (1) al archivo linux.etc con el método octal; en el directorio actual.

#b)
chmod 740 MisProcesos.prs
#Se usó el comando chmod para dar todos los permisos al usuario (7), sólo de lectura para el grupo (4) y sin permisos para otros (0) al archivo MisProcesos.prs con el método cotal; en el directorio actual.

#Ejercicio 5
#a)
chmod u+rwx,g+r,g-w,o+rwx todos.prm >> todos.prm
#Se usó el comando chmod con el método tradicional para dar todos los permisos al usuario (u+rwx) y otros (o+rwx), pero sólo de lectura al grupo (g-w), esto porque por defecto ya tienen permisos de lectura y escritura, así que sólo se quito el permiso de escritura; al archivo todos.prm, pero como este no había sido creado entonces se indica que dicha modificación se hará al archivo todos.prm que al no existir, automaticamente lo creará (>> todos.prm). 

#b)
chmod 570 grupo.prm >> grupo.prm
#Se usó el comando chmod con el método octal para dar permisos de ejecución y lectura al usuario (5), de ejecución, lectura y escritura al grupo (7) y ninguno a otros (0) al archivo grupo.prm, pero como este no había sido creado entonces se indica que dicha modificación se hará al archivo todos.prm que al no existir, automaticamente lo creará (>> grupo.prm).

#c)
chmod 755 usuario.prm >> usuario.prm
#Se usó el comando cgmod con el método octal para dar permisos de ejecución, lectura y escritura (7) al usuario, y de ejecución y lectura tanto al grupo (5) como a otros (5) al archivo usuario.prm, pero como este no había sido creado entonces se indica que dicha modificación se hará al archivo todos.prm que al no existir, automaticamente lo creará (>> usuario.prm).
