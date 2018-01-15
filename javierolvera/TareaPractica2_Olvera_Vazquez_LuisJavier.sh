
mkdir Practica2_Olvera_Vazquez_LuisJavier # Creación del directorio de trabajo
cd Practica2_Olvera_Vazquez_LuisJavier    # Nos cambia a este nuevo directorio

grep -rl daemon /etc/ > linux.etc         # Busca la palabra daemon dentro de los archivos del directorio /etc/ y sus subdirectorios, escribiéndolas rutas que lo contienen en un archivo llamado linux.etc

grep -l --include \*.config linux /etc/ >> linux.etc
                                          # >> agrega al archivo linux.etc las rutas de archivos con extension ".conf" que
                                          # contengan la palabra "linux" en el directorio /etc/

grep "$(whoami)" /etc/passwd              # Busca en el archivo passwd a mi usuario

find /usr -perm 777                       # find busca a los archivos en los que los usuarios tengan todos los permisos en el directorio usr

find /var -name "*.tar"                   # Encuantra en /var todos los archivos que tengan a .tar como extensión 

ps -fea -u "$(whoami)" > MisProcesos.prs  #ps -fea encuentra todos los procesos activos de nuestro usuario y junto con sus características se insertan en un archivo que se crea con el nombre MisProcesos.prs

chmod 711 linux.etc                       #Se le dan todos los permisos al dueño (7) y solo de ejecución a los demás (1)

chmod 740 MisProcesos.prs                 # Se le dan todos los permisos al dueño (7), solo lectura al grupo(4) y sin permisos para otros (0)

touch todos.prm                           # Se crea un archivo y se le cambian los permisos con método tradicional
chmod u+rwx,g-wx+r,o+rwx todos.prm

touch grupo.prm                           # Se crea un archivo y se le cambian los permisos con el sistema octal
chmod 570 grupo.prm
 
touch usuario.prm                         # Le damos todos los permisos al usuario(7) y permisos de ejecución y lectura al resto del grupo (4+1=5) 
chmod 755 usuario.prm
