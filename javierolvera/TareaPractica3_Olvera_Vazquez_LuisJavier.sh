



mkdir Practica3_Olvera_Vazquez_LuisJavier   #Creación del directorio

cd Practica3_Olvera_Vazquez_LuisJavier      #Nos desplazamos al directorio recién creado



ssh est7@132.248.129.8.                     #Conección remota con ssh del est7 en la máquina 132.248.129.8.



last > bitacora.conx      #El comando last muestra  las  últimas  conexiones  de  los usuarios al servidor.

                          # y > redirecciona esa salida a un archivo llamado bitácora.conx y si no existe, lo crea además.



scp est7@132.248.129.8.:/home/bitacora.conx . #Es para traer un archivo de la máquina remota al directorio local (.)



hostname -I   #Uso de comando hostname para obtener el ip del equipo,  con la opción -I, 

              #para entregar directamente la ip con el segmento (los primerso tres conjuntos de números de izquierda a derecha)

              # y la ip (el conjunto restante) de nuestro equipo.



ifconfig a > red.conf  # El comando ifconfig detalla  las  características  de  nuestros  dispositivos de red y su salida 

                       # la mandamos a un archivo.



ps -e | grep firefox   # El comando ps muestra un listado de todos los procesos  que  esta  ejecutando  un  usuario en formato sencillo (-e)

                       # con nombre de proceso "firefox" para eso buscamos ese patrón de palabras con grep.



kill -15 $(ps -e | grep firefox | awk '{print $1}')   # kill -15 PID mata el proceso pero al mismo tiempo lo reinicia asignándole el mismo PID

                                                      # Primero obtenemos el PID tomando la primera columna del output de "ps -e | grep firefox"

                                                      # con awk (tomado de una situación similar encontrada en stackoverflow) y se lo entregamos

                                                      # como intput a kill como variable de sistema %() (tomado de otra respuesta en stackoverflow)





tar -cf Practica3_Olvera_Vazquez_LuisJavier.tar Practica3_Olvera_Vazquez_LuisJavier  # tar nos permite empaquetar una estructura de  directorios, 

                                                                                     # su función principal es almacenar el contenido de un directorio 

                                                                                     # en forma recursiva dentro de un archivo. Y como lo que queremos 

                                                                                     # es crear un nuevo archivo e indicarle al sistema que queremos 

                                                                                     # afectar el archivo usaremos usaremos las opciones c y f.



gzip -9 Practica3_Olvera_Vázquez_LuisJavier.tar    # con este comando comprimimos el archivo en el nivel más alto
