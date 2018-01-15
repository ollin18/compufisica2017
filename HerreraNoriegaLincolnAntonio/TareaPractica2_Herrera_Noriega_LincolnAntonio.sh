# Creacion y cambio al directorio de trabajo

mkdir Practica2_Herrera_Noriega_LincolnAntonio
cd Practica2_Herrera_Noriega_LincolnAntonio

# 1
# Buscar "daemon" dentro de los archivos del directorio /etc/ y subdirectorios (-r) y imprimir las rutas de los archivos que la contengan (-l) en un archivo linux.etc

grep -rl daemon /etc/ > linux.etc

# Agregar al archivo (>>) linux.etc las rutas de archivos con extension ".conf" que contengan la palabra "linux" en el directorio /etc/ (esto tomado de un comando similar encontrado en stackoverflow)

grep -l --include \*.config linux /etc/ >> linux.etc

# Filtrar las lineas que contengan mi usuario (obtenido con la variable $(whoami)) en /etc/passwd

grep "$(whoami)" /etc/passwd

# 2
# archivos con todos los permisos en /usr (opci�n -perm del comando find)

find /usr -perm 777

# archivos con la extensi�n .tar en /var (opci�n -name del comando find)

find /var -name "*.tar"

# 3
# escribir un listado de todos los procesos (-e, -a) junto con sus caracteristicas (-f) de mi usuario (-u user) dentro del archivo MisProcesos.prs

ps -fea -u "$(whoami)" > MisProcesos.prs

# 4
# dar todos los permisos al due�o, y solo de ejecuci�n al resto.

chmod 711 linux.etc

# dar todos los permisos al due�o, solo de lectura al grupo y sin permisos a los demas.

chmod 740 MisProcesos.prs

# 5
# a) crear archivo todos.prm y con m�todo tradicional otorgar los permisos: de ejecuci�n, lectura y escitura al usuario y otros, solo de lectura al grupo

touch todos.prm
chmod u+rwx,g-wx+r,o+rwx todos.prm

# b) crear archivo grupo.prm y con metodo octal otorgar permisos: de ejecuci�n y lectura al usuario, todos al grupo y ninguno a los dem�s

touch grupo.prm
chmod 570 grupo.prm

# c) crear archivo usuario.prm y otorgar permisos: todos al usuario, de ejecuci�n y lectura al grupo y dem�s.

touch usuario.prm
chmod 755 usuario.prm