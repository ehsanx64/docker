#!/bin/bash

echo "Setting up centos7-lamp..."

packages=" php72-php php72-php-cli php72-php-mbstring php72-php-mysqli"
packages+=" php72-php-gd"
packages+=" httpd mariadb mariadb-server phpmyadmin"

# Start here
yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum-config-manager --enable remi-php72
yum repolist
yum install -y $packages

yum clean all

# Configuration
cd /mnt/conf
cp -v httpd.conf /etc/httpd/conf
cp -v config.inc.php /etc/phpMyAdmin
cp -v phpMyAdmin.conf /etc/httpd/conf.d
