#Lo primero que vamos a hacer es crear el directorio de trabajo donde guardaremos todo lo que hagamos en esta pr�ctica
#Nos cambiamos entonces primero a nuestro  home
cd
#Creamos el directorio
mkdir Practica1_Celeste
#Ya teniendo creado nuestro directorio, nos cambiamos a �l
cd Practica1_Celeste
#Empezamos a crear los directorios que se piden en el n�mero 1
mkdir respaldo_sistema
mkdir configuracion
mkdir programas
mkdir reinstalacion
mkdir usuarios
#Ahora vamos a crear dos directorios que van a estar dentro de configuraci�n y uno dentro de usuarios
#Es importante que nos cambiemos primero al home, para que espec�ficamente la ruta que estamos colocando sea correcta
cd
cd Practica1_Celeste/configuracion/
mkdir X11
mkdir gnome
cd
cd Practica1_Celeste/usuarios/
#Usamos -p para indicarle que va a crear los directorios padres, es decir, el directorio scripts va a estar dentro del directorio python
mkdir -p python/scripts
#Volvemos al home
cd
#Ahora continuamos con el n�mero 2, nos cambiamos primero al directorio reinstalaci�n
cd Practica1_Celeste/reinstalacion
#Dentro de este directorio vamos a crear los siguientes archivos usando el comando touch que nos permite crear archivos vac�os
#Podemos crear todos los archivos a la vez, separ�ndolos por un espacio
touch guia notas secuencia.data paquetes.pkg imagen.iso
#Volvemos a cambiarnos al home
cd
#Lo siguiente que vamos a hacer es desplegar una lista en pantalla, para lo cual usamos el comando ls que muestra el contenido del directorio que le indiquemos, en este caso Practica1_Celeste
#Usamos -R para que sea e forma recursiva, -l para que muestre todas las propiedades de los archivos y directorios, -a para que muestre todo incluyendo ocultos, y -t para que lo haga por fecha de modificaci�n
#Podemos poner todo lo anterior junto con un solo -
ls -Rlat Practica1_Celeste
#Para el n�mero 4 vamos a copiar al directorio programas todo lo que est� en el directorio bin del sistema
#Usamos -r porque estamos copiando un directorio
cp -r /bin Practica1_Celeste/programas
#Para el n�mero 5, copiaremos al directorio X11 que est� en configuraci�n todo lo que est� contenido en el directorio x11 del directorio etc
#Usamos -r porque estamos copiando un directorio, -i porque va a ser una copia interactiva y -v para que el sistema nos vaya informando del nombre de los archivos que est� copiando
#Notemos que primero se coloca la ruta del origen y despu�s del destino
#Colocamos x* para indicarle que copiar� todo lo que comience con la letra x
cp -r -i -v /etc/X11/x* Practica1_Celeste/configuracion/X11
#Propuesta suponiendo que eres el super usuario para el ejercicio 6
#sudo rm -r /etc/apache2 Usamos rm -r para que nos permita borrar el directorio ya que no est� vac�o
#sudo rm -r /var/www  *-r es para borrar directorios no vac�os
#Nos cambiamos al directorio bookmarks.html
#cd /etc/firefox-3.5/profile
#Y le cambiamos el nombre usando mv
#mv bookmarks.html favoritos.resp
#Finalmente, vamos a borrar del directorio etc todo lo que termina en conf, por eso agregamos a la ruta *conf
#sudo rm -r /etc/*.conf