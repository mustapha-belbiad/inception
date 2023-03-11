FROM debian:10

RUN apt-get update && \
apt-get install -y wget && \
apt-get install -y  php7.3-fpm php-cli php-fpm php-mysql php-json php-opcache php-mbstring php-xml php-gd php-curl curl

WORKDIR /var/www/html

COPY scprit_wordpress.sh /

RUN chmod +x /scprit_wordpress.sh

RUN cd / && ./scprit_wordpress.sh

COPY wp-config.php /var/www/html/wordpress/wp-config.php

CMD [ "php-fpm7.3", "-F" ]

# apt-get install php-fpm

#COPY nginx.conf /etc/nginx/sites-available/wordpress.conf

# RUN ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/