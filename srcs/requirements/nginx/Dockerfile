FROM debian:buster

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y nginx
RUN apt install -y openssl

#Without setup.sh
COPY conf/nginx.conf /etc/nginx/sites-available/cmichez
RUN ln -s /etc/nginx/sites-available/cmichez /etc/nginx/sites-enabled/cmichez

#with setup.sh
# COPY conf/setup.sh /
# RUN chmod 777 /setup.sh

# CMD [ "./setup.sh" ]

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=1337/OU=student/CN=cmichez.42.fr"

ENTRYPOINT ["nginx", "-g", "daemon off;"]