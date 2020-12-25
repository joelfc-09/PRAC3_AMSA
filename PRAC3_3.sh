#/*----------------------------------------
#Pràctica 3 - Debian-Ubuntu
#Grau en Enginyeria Informàtica
#Administració i Manteniment de Sistemes i Aplicacions
#Joel Farré Cortés - 78103400T
#----------------------------------------*/
#!/bin/bash
user=`whoami`

if [ $user == "root" ]
then
    echo "Configurant el sistema per a escriure a /var/log/prova.log."
    sudo touch /etc/rsyslog.d/30-mylog.conf
    sudo echo "/var/log/prova.log" > /etc/rsyslog.d/30-mylog.conf
    sudo echo "& ~" >> /etc/rsyslog.d/30-mylog.conf
    sudo rm -f /var/log/prova.log
    sudo service rsyslog restart
    echo "Compilant i executant el programa per a escriure els missatges."
    gcc PRAC3_3.c -o PRAC3_3C
    ./PRAC3_3C
    echo "Dins del fitxer /var/log/prova.log/ podràs veure els resultats."
else
    echo "ERROR: Has d'estar registrat com a root per executar aquest programa."
    echo "Per a registrar-te com a root pots fer servir la comanda "sudo su"."
fi
