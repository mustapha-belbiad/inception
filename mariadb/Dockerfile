FROM debian:10

RUN apt-get update && \
    apt-get install -y mariadb-server

COPY create-db-user.sh /
COPY mariad_config.conf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod 600 /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /create-db-user.sh

RUN ./create-db-user.sh
CMD ["mysqld"]
