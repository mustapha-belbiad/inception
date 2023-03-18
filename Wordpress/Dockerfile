FROM debian:buster

RUN apt-get update && apt-get install wget -y \
    curl \
    php7.3 \
    php7.3-fpm \
    unzip \
    php7.3-mysql \
    php7.3-phar

WORKDIR /var/www/html
COPY www.conf /var/www/html
COPY scprit_wordpress.sh /var/www/html
COPY /wp-config.php /var/www/html
# RUN chmod +x wp-config.php

RUN chmod +x /var/www/html/scprit_wordpress.sh

# RUN cd / && ./scprit_wordpress.sh

# CMD [ "php-fpm7.3", "-F" ]

RUN /var/www/html/scprit_wordpress.sh



CMD ["/usr/sbin/php-fpm7.3", "-F", "-R"]

# apt-get install php-fpm

#COPY nginx.conf /etc/nginx/sites-available/wordpress.conf

# RUN ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/