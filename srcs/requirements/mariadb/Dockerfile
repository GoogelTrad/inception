FROM debian:buster

RUN apt update -y
RUN apt upgrade -y
RUN apt-get install mariadb-server -y


RUN mkdir /var/lib/mysqld && chmod 777 /var/lib/mysqld
RUN mkdir /var/run/mysqld && chmod 777 /var/run/mysqld

COPY ./conf/default.cnf /etc/mysql/my.cnf
COPY ./conf/setup.sh ./

RUN chmod +x ./setup.sh

CMD ["mysqld_safe", "--log-error=er.log"]