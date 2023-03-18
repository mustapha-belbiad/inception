FROM debian:buster
RUN apt-get update && apt-get install -y nginx
RUN mkdir /etc/nginx/ssl

COPY nginx.conf /etc/nginx/sites-available/default
# COPY hello.php /var/www/html/index.nginx-debian.html
# COPY index.html /var/www/html/index.nginx-debian.html
COPY ./stuf.crt /
COPY ./stuf.key  /
CMD ["nginx", "-g", "daemon off;"]
# CMD ["mkdir", "/etc/nginx/certificate "]


# LABEL Name=inception Version=0.0.1
