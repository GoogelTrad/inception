FROM debian:buster

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y nginx
RUN apt install -y openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=1337/OU=student/CN=cmichez.42.fr"

COPY conf/nginx.conf /etc/nginx/sites-available/

CMD [ "nginx -g daemon off;" ]