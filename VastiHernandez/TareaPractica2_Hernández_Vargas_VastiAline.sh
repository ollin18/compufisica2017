mkdir Práctica2_Hernández_Vargas_VastiAline
cd Práctica2_Hernández_Vargas_VastiAline
grep -rli daemon /etc/* > linux.etc
find /etc/ -name *.conf || grep -rli linux /etc/*.conf >> linux.etc
grep  /home /etc/passwd
ls -la /usr -perm 777
find /usr -perm 777 | less
find /var -name *.tar | less
ps -u /home > MisProcesos.prs
chmod 771 linux.etc
ls -la linux.etc
chmod 740 MisProcesos.prs
touch todos.prm | chmod u+rwx,g-wx,o+rxw todos.prm
touch grupo.prm | chmod 570 grupo.prm
touch usuario.prm | chmod 755 usuario.prm



