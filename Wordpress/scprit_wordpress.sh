#!/bin/bash
wget https://wordpress.org/latest.tar.gz
tar xvf latest.tar.gz

cd wordpress
chown -R www-data:www-data .
chmod -R 755 .
mv /wordpress /var/www/html/
#cd /var/www/html/wordpress
#ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled
cp wp-config-sample.php wp-config.php
# cp wp-config-sample.php wp-config.php
service php7.3-fpm start
rm /run/php/php7.3-fpm.sock
# /usr/sbin/php-fpm7.3 -F

