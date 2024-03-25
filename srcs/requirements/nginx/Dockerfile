FROM debian:buster

#Packages to install
RUN apt update
RUN apt install nginx -y
RUN apt install vim -y
RUN apt install openssl -y

#Config OpenSSL
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=login.42.fr/UID=login"

#Config Nginx
RUN mkdir -p /var/run/nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf 
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

#Lancement de NGINX
#CMD [ "nginx", "-g", "daemon off;" ]
