# Creacion y cambio al directorio de trabajo

mkdir Practica2_Herrera_Noriega_LincolnAntonio
cd Practica2_Herrera_Noriega_LincolnAntonio

# 1
# Buscar "daemon" dentro de los archivos del directorio /etc/ y subdirectorios (-r) y imprimir las rutas de los archivos que la contengan (-l) en un archivo linux.etc

grep -rl daemon /etc/ > linux.etc

# Agregar al archivo (>>) linux.etc las rutas de archivos con extension ".conf" que contengan la palabra "linux" en el directorio /etc/ (esto tomado de un comando similar encontrado en stackoverflow)

grep -l --include \*.h linux /etc/ >> linux.etc

# Filtrar las lineas que contengan mi usuario (obtenido con la variable $(whoami)) en /etc/passwd

grep "$(whoami)" /etc/passwd

# 2
# archivos con todos los permisos en /usr (opción -perm del comando find)

find /usr -perm 777

# archivos con la extensión .tar en /var (opción -name del comando find)

find /var -name "*.tar"

# 3
# escribir un listado de todos los procesos (-fea) de mi usuario (-u user) dentro del archivo MisProcesos.prs

ps -fea -u "$(whoami)" > MisProcesos.prs

# 4
# dar todos los permisos al dueño, y solo de ejecución al resto.

chmod 711 linux.etc

# dar todos los permisos al dueño, solo de lectura al grupo y sin permisos a los demas.

chmod 740 MisProcesos.prs

# 5
# a) crear archivo todos.prm y con método tradicional otorgar los permisos: de ejecución, lectura y escitura al usuario y otros, solo de lectura al grupo

touch todos.prm
chmod u+rwx,o+rwx,g-wx+r

# b) crear archivo grupo.prm y con metodo octal otorgar permisos: de ejecución y lectura al usuario, todos al grupo y ninguno a los demás

touch grupo.prm
chmod 570 grupo.prm

# c) crear archivo usuario.prm y otorgar permisos: todos al usuario, de ejecución y lectura al grupo y demás.

touch usuario.prm
chmod 755 usuario.prm