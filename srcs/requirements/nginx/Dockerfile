FROM debian:buster

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y nginx
RUN apt install -y openssl

#Without setup.sh
#COPY conf/nginx.conf /etc/nginx/sites-available/

#with setup.sh
COPY conf/setup.sh /


CMD [ "./setup.sh" ]