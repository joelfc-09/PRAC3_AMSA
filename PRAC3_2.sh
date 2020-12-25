#/*----------------------------------------
#Pràctica 3 - Debian-Ubuntu
#Grau en Enginyeria Informàtica
#Administració i Manteniment de Sistemes i Aplicacions
#Joel Farré Cortés - 78103400T
#----------------------------------------*/
#!/bin/bash
if [ $(whoami) != "root" ]
then
	echo "Has d'estar registrat com a root per a crear usuaris."
	echo "Executa "sudo su" per a ser root."
	exit -1
fi

echo "Creant un grup per a afegir els usuaris..."
sudo groupadd PRAC3

echo "Creant usuaris amb les seves contrasenyes respectivament..."
sudo useradd -m -g PRAC3 joelv1
echo "joel:1234" | chpasswd
sudo useradd -m -g PRAC3 joelv2
echo "joel:5678" | chpasswd
sudo useradd -m -g PRAC3 joelv3
echo "joel:9100" | chpasswd

echo "Usuaris creats."

echo "Mostrant els usuaris:"
sudo cat /etc/passwd

echo "Mostrant les contrasenyes dels usuaris:"
sudo cat /etc/shadow

echo "Mostrant els grups creats:"
sudo cat /etc/group

echo "Vols esborrar els usuaris i els grups o vols sortir del programa? (E = Esborrar/S = Sortir): "
read opcio

if [ $opcio == "E" ] 
then
	sudo userdel joelv1
	sudo userdel joelv2
	sudo userdel joelv3
	sudo groupdel PRAC3
	exit 0
fi

if [ $opcio == "S" ]
then
	exit 0
fi
