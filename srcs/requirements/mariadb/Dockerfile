FROM debian:buster

RUN apt update -y
RUN apt upgrade -y
RUN apt-get install mariadb-server -y

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/
RUN chmod 0644 /etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/setup.sh /

CMD [ "./setup.sh" ]