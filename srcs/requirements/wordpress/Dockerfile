FROM debian:buster

RUN apt update -y

RUN apt install php-fpm php-mysql -y
RUN apt install curl -y

COPY ./conf/setup.sh /
COPY ./conf/wp-config.php /

CMD [ "./setup.sh" ]