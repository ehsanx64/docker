FROM php:7.4-apache

RUN apt-get update \
    && apt-get install -y iputils-ping net-tools vim libxml2-dev \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install soap \
    && groupmod -g 1000 www-data \
    && usermod -u 1000 www-data \
    && a2enmod rewrite && service apache2 restart