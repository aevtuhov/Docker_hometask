FROM ubuntu:18.04
 
RUN apt-get -y update
RUN apt-get install -y nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

COPY ./nginx.conf /etc/nginx/conf.d/custom_nginx.conf
#COPY ./index.html /var/www/html/index.html

EXPOSE 8080

# Запускаем Nginx.
CMD [ "nginx" ]