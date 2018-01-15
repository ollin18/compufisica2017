1.Navegue por el sistema de archivos:

cd / #El comando cd se usó para cambiar de directorio y el signo "/" para cambiar al directorio "raíz"
ls #El comando ls se usó para listar lo que se encuentra en el directorio actual
cd /etc #El mismo comando cd pero apra cambiar al directorio etc dentro del directorio raíz.
ls

2.Busque el contenido de algunos archivos:

cat crontab #El comando cat se usó en este caso para leer el contenido del archivo crontab.
cat passwd
cat protocols

3.Copielos a su directorio personal:

cp /etc/crontab passwd protocols /home/hugo #El comando cp se usó para copiar el archivo crontab, passwd y protocols del directorio /etc al directorio /home/hugo. 

4.Crear un directorio de la fecha de hoy:

cd /home/hugo
mkdir 23Agosto #Se usó el comando mkdir para crear un directorio llamado 23Agosto.

5.Mueva los archivos copiados a ese directorio:

mv crontab passwd protocols /home/hugo/23Agosto #Se usó el comando mv para mover los archivos crontab, passwd y protocols al directorio 23Agosto que está dentro de /home/hugo.

6.Mueva todos los archivos a un directorio nuevo dentro del creado anteriormente:

cd /home/hugo/23Agosto
mkdir Dirnuevo
mv * Dirnuevo/ #Se usó nuevamente el comando mv para mover archivo pero el carácter * se usó para indicar que todo el contenido en el directorio actual se copie al directorio destino Dirnuevo.

Otra forma es:

mv /home/hugo/23Agosto/crontab passwd protocols /home/hugo/23Agosto/Dirnuevo #Aquí se especificó primero la ruta de origen de la que se moverán los archivos: crontab, passwd y protocols a la ruta destino.
