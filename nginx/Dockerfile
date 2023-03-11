# GCC support can be specified at major, minor, or micro version
# (e.g. 8, 8.2 or 8.2.0).
# See https://hub.docker.com/r/library/gcc/ for all supported GCC
# tags from Docker Hub.
# See https://docs.docker.com/samples/library/gcc/ for more on how to use this image
# FROM debian:10
# RUN apt-get update && \
#     apt-get install -y nginx vim
# COPY script.sh /
# COPY nginx.conf /etc/nginx/sites-available/default

# RUN chmod 777 script.sh

# CMD /script

FROM debian:10
RUN apt-get update && apt-get install -y nginx
RUN mkdir /etc/nginx/ssl

COPY nginx.conf /etc/nginx/sites-available/default
COPY hello.php /var/www/html/index.nginx-debian.html
# COPY index.html /var/www/html/index.nginx-debian.html
COPY ./stuf.crt /
COPY ./stuf.key  /
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
# CMD ["mkdir", "/etc/nginx/certificate "]


# These commands copy your files into the specified directory in the image
# and set that as the working location
# COPY . /usr/src/myapp
# WORKDIR /usr/src/myapp

# # This command compiles your app using GCC, adjust for your source code
# RUN g++ -o myapp main.cpp

# # This command runs your application, comment out this line to compile only
# CMD ["./myapp"]

# LABEL Name=inception Version=0.0.1
