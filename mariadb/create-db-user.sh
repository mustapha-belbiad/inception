
#!/bin/bash

service mysql start
# Set the root password for MariaDB

mysql -u root -e "SET PASSWORD FOR root@localhost = PASSWORD('123');"
# Create a new database and user
mysql -u root -e "CREATE DATABASE hola;"
mysql -u root -e "CREATE USER 'hola1'@'%' IDENTIFIED BY '147';"
mysql -u root -e "GRANT ALL PRIVILEGES ON hola.* TO 'hola1'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -p123 hola < file.sql