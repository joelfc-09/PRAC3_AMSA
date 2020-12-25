#/*----------------------------------------
#Pràctica 3 - Debian-Ubuntu
#Grau en Enginyeria Informàtica
#Administració i Manteniment de Sistemes i Aplicacions
#Joel Farré Cortés - 78103400T
#----------------------------------------*/

#include <stdio.h>
#include <syslog.h>

int main(int argc, char *argv[]) {
    openlog("Pràctica 3 AMSA", 0, LOG_USER);

    syslog(LOG_INFO, "Primer missatge: Hola!");
    syslog(LOG_INFO, "Segon missatge: Què tal?");
    syslog(LOG_INFO, "Tercer missatge: Adéu!");

    closelog();
    return 0;
}
