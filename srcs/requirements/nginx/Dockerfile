FROM debian:buster
RUN apt-get update && apt-get install -y nginx
RUN mkdir /etc/nginx/ssl

COPY nginx.conf /etc/nginx/sites-available/default
COPY ./tools/stuf.crt /
COPY ./tools/stuf.key  /
CMD ["nginx", "-g", "daemon off;"]