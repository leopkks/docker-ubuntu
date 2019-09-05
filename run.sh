#!/bin/bash
chmod -R 755 /var/lib/mysql/
usermod -d /var/lib/mysql/ mysql
service apache2 start
service mysql start
apt install vim -y
sed -i "s/|\s*\((count(\$analyzed_sql_results\['select_expr'\]\)/| (\1)/g" /usr/share/phpmyadmin/libraries/sql.lib.php
