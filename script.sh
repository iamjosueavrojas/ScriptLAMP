#!bin/sh

#   Script escrito en BASH encargado de instalar Apache, MySQL, PHP y phpMyAdmin
#   Este script puede funcionar tanto en distribuciones basadas en Ubuntu asi como Debian 
#   Cualquier problema que tenga ponerse en contacto con el desarrollador
#   Creado por Josue Rojas

#Paleta de colores
reset='\033[0m'         #color para resetear el texto
green='\033[0;32m'      #color verde

#Actualizacion del sistema
echo "$green\nActualizando el sistema, espere por favor... $reset"
apt-get update -y && apt-get upgrade -y

#Instalacion de Apache
echo "$green\n\nInstalando Apache en el sistema, espere por favor... $reset"
apt-get install apache2 -y
apache2 -v

#Instalacion de MySQL
echo "$green\n\nInstalando MySQL en el sistema, espere por favor... $reset"
apt-get install mysql-server mysql-client -y
mysql --version

#Configuracion de MySQL
echo "$green\n\nConfigurando MySQL en el sistema, espere por favor... $reset"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'toor';
FLUSH PRIVILEGES;"

#Instalando PHP y librerias
echo "$green\nInstalando PHP en el sistema, espere por favor...$reset"
apt-get install php libapache2-mod-php php-mysql -y

#Instalando phpMyAdmin
echo "$green\nInstalando phpMyAdmin en el sistema, espere por favor...$reset"
apt-get install phpmyadmin -y

#Permiso a la carpeta /www
chmod -R 0777 /var/www

#Actualizacion del sistema
echo "$green\n\n##########################################################################$reset"
echo "$green\n\t\t\tDesarrollador: Josue Rojas$reset"
echo "$green\n\tTwitter: iamjosueavrojas | Instagram: iamjosueavrojas\n$reset"
echo "$green##########################################################################$reset"







