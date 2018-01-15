cd                                         # Nos cambia al directorio Home
mkdir Practica1_Olvera_Vazquez_LuisJavier  # Crea un directorio con mi nombre
cd Practica1_Olvera_Vazquez_LuisJavier     # Nos cambia al directorio recién creado
mkdir respaldo_sistema                     # Crea el directorio respaldo dentro del anterior
cd respaldo_sistema                        # Nos cambia al directorio respaldo
mkdir configuracion                        # Crea el directorio configuración dentro de respaldo
mkdir programas                            # Crea el directorio programas dentro de respaldo
mkdir reinstalacion                        # Crea el directorio reinstalación dentro de respaldo
mkdir usuarios                             # Crea el directorio usuarios dentro de respaldo 
cd configuracion                           # Nos cambia al directorio configuracion
mkdir X11                                  # Crea el directorio X11 dentro de configuracion
mkdir gnome                                # Crea el directorio gnome dentro de configuración
cd ..                                      # No cambia a un directrio arriba, es decir a respaldo
cd usuarios                                # Cambia al directorio usuarios
mkdir python                               # Crea el directorio python dentro de usuarios
cd python                                  # Nos cambia al directorio python
mkdir scripts                              # Crea el directorio scripts dentro de python
cd ..                                      # Sube al directorio usuarios
cd ..                                      # Sube al directorio resplado
cd reinstalacion                           # Nos cambia al directorio resintalacion
touch guia notas secuencia.data paquetes.pkg imagen.iso
                                           # Crea varios archivos dentro de reinstalacion
cd                                         # Nos lleva a Home
cd Practica1_Olvera_Vazquez_LuisJavier     # Entramos al directorio de trabajo
ls -Rlat                                   # El comando ls lista los archivos y directorios,
                                           # con la opción (-R) incluye subdirectorios
                                           # con la opción (-a) ocultos
                                           # con la opción (-l) muestra todas sus características
                                           # y con (-t) por fecha de modificación
cp -r /bin/* respaldo_sistema/programas      # Copia recursivamente directorios y subdirectorios
cp -riv /etc/X11/x* respaldo_sistema/configuracion/X11
                                           # copia a configuración/X11 todos los archivos de /etc/X11
                                           # para esto, igual que en el caso anterior se usa la opción recursiva (-r)
                                           # y además (-i) hace que la copia sea interactiva y (-v) es para que vaya informando
rm -r /etc/apache2 /var/www                # suponiendo que somos el superusuario y tenemos todos los permisos:
                                           # podemos borrar todo el contenido de los direcorios citados recursivamente
cd /etc/firefox-3.5/profile                # Nos cambia al directorio profile
mv bookmarks.html favoritos.resp           # Con el comando mv se cambia el nombre del archivo
rm -r /etc/*.conf                          # Con esta instrucción se borran los archivos de etc/ que empiezen con 
                                           # cualquier cosa (para eso ponemos el *), pero que terminen con .conf
 
