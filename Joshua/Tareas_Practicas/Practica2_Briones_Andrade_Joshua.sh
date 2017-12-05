mkdir Practica2_Briones_Andrade_Joshua
cd Practica2_Briones_Andrade_Joshua

grep -srl daemon /etc/* > linux.etc
grep -srl linux /etc/* | grep .conf >> linux.etc
grep "Joshua Briones /etc/passwd

find /usr/ -perm 777 >Usr777
cat Usr777
find /var/ -name *.tar > findvar
cat findvar

ps -fea > MisProcesos.prs

chmod 711 linux.etc
chmod 740 MisProcesos.prs

touch todos.prm
chmod u+rwx,g+r,g-wx,o+rwx todos.prm
touch grupo.prm
chmod 570 grupo.prm
touch usuario.prm
chmod 755 usuario.prm
