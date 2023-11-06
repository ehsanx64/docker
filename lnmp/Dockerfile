FROM php:8.2.12-fpm-alpine

WORKDIR /var/www/html

RUN apk update \
    && apk add nginx

COPY ./conf/nginx.conf /etc/nginx/http.d/default.conf

EXPOSE 80

CMD nginx ; /usr/local/sbin/php-fpm