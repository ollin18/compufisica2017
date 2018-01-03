cd
mkdir TareaPractica2_RamírezArvídezRoxette
#Crear un nuevo directorio vacío que se llama TareaPractica2_RamírezArvídezRoxette
cd TareaPractica2_RamírezArvídezRoxette
#Nos trasladamos a este nuevo directorio
grep -lr daemon /etc/ > linux.etc 
#La opción greep es como un buscador dentro de uno o más archivos que ubica un patrón especificado, en ete caso "daemon" en el directorio /etc/ e imprime el parrafo donde se halló, en la terminal; añadida la opción -lr únicamente nos da el nombre de en qué archivo se encontró, buscando recursivamente (es decir incluye lo susbdirectorios). Por otro lado el comando ">" reirige el comando a un documento nuevo llamado linux.etc. Es decir escribe lo que anteriormente en la terminal en ese documento nuevo. 
find /etc/ -name *.conf || grep -lr linux /etc/ >> linux.etc 
#A diferencia de grep, que busca patrones, find busca archivos según su nombre o permisos, aquí -name indica que se busca por el nombre y gracias al metacaracter *, se buscan todos los que terminen en ".conf" luego "||" nos sirve para enlazar la salida de está orden con la entrada de otra diferente, es decir, encontrados los archivos elige sólo los que tengan dentro la palabra linux y ya filtrados de los demás. Finalmente >>, permite que estas nuevas rutas de archivos se ecriban después de las ya existentes en el archivo que se había creado en la orden anterior y no se pierda la información guardada. 
grep batman /etc/passwd 
#Busca en /etc/passwd el patrón "batman" e imprime en pantalla
ls -la /usr || find /usr -perm 777 
find /usr -perm 777
#Busca el el directorio /usr los archivos que tengan permisos de escritura, lectura y ejecutar para los 3 diferentes usuarios
find /var -name *.tar 
#Bsca n el directorio /var todos los archivos que terminen con la extensión .tar, gracias al meacaracter *
ps -u batman > MisProcesos.prs
#ps imprime en la pantalla todos los procesos que se estan ejecutando en tu máquina, al tiempo; la opción -u deja ver las carateríticas, de cada uno de estos. Y ">" lo escribe en el archivo nombrado MisProcesos.rs
chmod 711 linux.etc 
#chmod permite cambiar los permios de cualqier archivo. El método octal funicona así, el primer número refiere al usuario, el segundo al grupo al que pertenece y el tercero  a otros. Se indca 0 si no tiene ningun permiso, 1 si tiene de ejecución, 2 de escritura, y 5 de lectura, y se suman para indicar más permisos según el número, entonces el 7 nos dice que tiene los 3 permios. 711 indica que el usuario tiene todos y; grupo y otros sólo de ejecución. La orden es para el archivo nombrado linux.etc
ls -la linux.etc
chmod 740 MisProcesos.prs
#La misma explicación de arriba pero se aplica ahora al archivo MisProcesos.prs; para el usuario tiene todos, para el grupo de lectura y tros ninguno.
touch todos.prm 
#Touch crea un archivo vacío en donde nos encontramos nombrado con el título que este a continuación. En este caso todos.prm
chmod u+xwr,o+xwr,g-wx,g+r todos.prm
#Es el método concencional para cambiar permisos a un archivo, es más fácil de identificr, pero más largo. Se indica u, para usuarios, "+" para los permisos que se le dan y "-" para los que quieres quitarle. "g" paara indicar grupos y o para otros usuarios. Después de indicada esta estructura se nombra el archivo a modificar. En este caso todos.prm que da a usuarios permiso de ejecución lectura y escritura, a otros los 3 permisos y a grupos solo de lectura.
touch grupo.prm
##Touch crea un archivo vacío en donde nos encontramos nombrado con el título que este a continuación. En este caso grupo.prm
chmod 570 grupo.prm 
#Se usa el método octal y al recien  creado archivo se modifican los permisos. Dejando al usuario con permiso de lectura y ejecución. Grupo con todos los permisos y a otros con ninguno.
touch usuario.prm 
#Touch crea un archivo vacío en donde nos encontramos nombrado con el título que este a continuación. En este caso usuario.prm
chmod 755 usuario.prm 
#Se usa el método octal y al recien  creado archivo se modifican los permisos. Dejando al usuario con permiso de lectura, escritura y ejecución, a grupos y otrod con permiso de lectura y ejecución
