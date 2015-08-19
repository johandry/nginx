# Version: 0.1.1
FROM ubuntu:latest

MAINTAINER Johandry Amador <Johandry@gmail.com> (@johandry)

RUN apt-get -qq update
RUN apt-get -q -y install nginx

RUN mkdir -p /var/www/html

ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf  /etc/nginx/nginx.conf

#COPY ./html /var/www/html

EXPOSE 80