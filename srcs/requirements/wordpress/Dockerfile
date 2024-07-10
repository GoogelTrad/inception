FROM debian:buster

RUN apt update -y

RUN apt install php-fpm php-mysql -y
RUN apt install curl -y

COPY ./conf/setup.sh /
COPY ./conf/wp-config.php /
RUN chmod 777 /setup.sh

CMD [ "./setup.sh" ]