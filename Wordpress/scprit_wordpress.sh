wget https://wordpress.org/latest.tar.gz
tar xvf latest.tar.gz

cd wordpress
chown -R www-data:www-data .
chmod -R 755 .

# rm wp-config-sample.php
# mv /wp-config.php /var/www/html/wordpress

cp -R * ../
cd ..
rm -rf wordpress
# chmod +x *
mv /var/www/html/www.conf /etc/php/7.3/fpm/pool.d/www.conf
service php7.3-fpm start
service php7.3-fpm stop