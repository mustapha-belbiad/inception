FROM debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server

ARG PASSWORD
ARG USER
ARG PASS_USER
ARG DATA_BASE
COPY ./tools/create-db-user.sh /
COPY mariad_config.conf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod 600 /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x ./create-db-user.sh

COPY ./tools/file.sql /


RUN ./create-db-user.sh

CMD ["mysqld"]
