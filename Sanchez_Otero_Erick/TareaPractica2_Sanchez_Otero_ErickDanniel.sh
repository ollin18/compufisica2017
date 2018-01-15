#1.a)
touch linux.etc
grep -rls daemon /etc/* > linux.etc
#1.b)
grep -ls linux /etc/*.conf > linux.etc
#1.c)
cat /etc/passwd | grep -e home | less
#2.a)
find /usr -perm 777
#2.b)
find /var -name *tar
#3.
touch MisProcesos.prs
ps -fea > MisProcesos.prs
#4.a)
chmod 711 linux.etc
#4.b)
chmod 740 MisProcesos.prs
#5.a)
touch todos.prm
chmod a+rwx,g-wx todos.prm
#5.b)
touch grupo.prm
chmod 570 grupo.prm
#5.c)
touch usuario.prm
chmod 755 usuario.prm