#!/bin/bash
apt-get upgrade -y
apt-get install git -y
apt-get install apache2 -y
apt-get install mysql-server -y
apt-get -y -qq install php5 libapache2-mod-auth-mysql php5-mysql
service mysql start
echo "ALTER USER 'root'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY 'root';FLUSH PRIVILEGES;" > file.txt
mysql -u root < file.txt
apt-get install phpmyadmin -y
echo "Include /etc/phpmyadmin/apache.conf \n ServerName localhost" >> /etc/apache2/apache2.conf
chmod -R 755 /var/lib/mysql/
touch /var/run/mysqld/mysqld.sock
chown -R mysql /var/run/mysqld 