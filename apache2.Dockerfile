FROM ubuntu:latest

ENV TZ="Europe/Moscow"

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get -y update
RUN apt-get -y install apache2

COPY ./apache2.conf /etc/apache2/apache2.conf

EXPOSE 80

CMD apache2ctl -D FOREGROUND