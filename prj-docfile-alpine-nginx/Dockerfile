FROM alpine:3.16.0
MAINTAINER "Moon-Kee Bahk, mkbahk@gmail.com"

RUN apk update
RUN apk upgrade
RUN apk add nginx=1.22.0-r1
RUN apk add curl
RUN apk add nano

RUN mkdir -p /usr/share/nginx/html
ADD index.html /usr/share/nginx/html/index.html
ADD nginx.conf /etc/nginx/nginx.conf
ADD http-default_server.conf /etc/nginx/http.d/default.conf 

EXPOSE 80
CMD ["nginx"]

## docker build . --tag mkbahk/alpine-nginx:1.0 