# Version: 0.0.1
FROM ubuntu:latest

MAINTAINER Johandry Amador <Johandry@gmail.com> (@johandry)

RUN apt-get -qq update
RUN apt-get install -y nginx

COPY ./html /usr/share/nginx/html

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]