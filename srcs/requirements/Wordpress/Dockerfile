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
COPY /tools/scprit_wordpress.sh /var/www/html
COPY /tools/wp-config.php /var/www/html

RUN chmod +x /var/www/html/scprit_wordpress.sh

RUN /var/www/html/scprit_wordpress.sh

CMD ["/usr/sbin/php-fpm7.3", "-F", "-R"]