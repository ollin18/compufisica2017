touch linux.etc
grep -r -l -i daemon /etc/* > linux.etc 
grep -r -l -i linux /etc/*.conf >> linux.etc
cat /etc/passwd | less
grep -e home | less
find /usr -perm 777
find /var -name *.tar
touch MisProcesos.prs
ps -fea >> MisProcesos.prs
chmod 711 linux.etc
chmod 740 MisProcesos.prs 
touch todos.prm | chmod u+rwx,g-wx,o+rwx todos.prm
touch grupo.prm | chmod 570 grupo.prm
touch usuario.prm | chmod 755 usuario.prm