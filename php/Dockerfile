FROM php:7.4-apache

COPY docker-php-ext-xdebug.ini /tmp
RUN apt-get update \
    && apt-get install -y iputils-ping net-tools vim libxml2-dev \
    && pecl install xdebug \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install soap \
    && docker-php-ext-enable xdebug \
    && groupmod -g 1000 www-data \
    && usermod -u 1000 www-data \
	&& cp /tmp/docker-php-ext-xdebug.ini $PHP_INI_DIR/conf.d \
    && a2enmod rewrite && service apache2 restart

