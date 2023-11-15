
#!/bin/bash

service mysql start

mysql -u root -e  "SET PASSWORD FOR root@localhost = PASSWORD('$PASSWORD');"
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DATA_BASE;"
mysql -u root -e "CREATE USER  IF NOT EXISTS '$USER'@'%' IDENTIFIED BY '$PASS_USER';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $DATA_BASE.* TO '$USER'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -p$PASSWORD $DATA_BASE < file.sql
