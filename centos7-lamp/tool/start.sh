#!/bin/bash

project_name=${PROJECT_NAME}
database_name=${DATABASE_NAME}

if [ ${ENABLE_VHOST} == "true" ]; then
    # Add apache vhost
    tfile=/etc/httpd/conf.d/$project_name.conf
    echo "<VirtualHost *:80>" > $tfile
    echo "    ServerName $project_name.local" >> $tfile
    echo "    DocumentRoot /var/www/html" >> $tfile
    echo "</VirtualHost>" >> $tfile
fi

cp -f /mnt/tool/php.ini /etc/opt/remi/php72
mysqld_safe --skip-grant-table &
httpd -k start
sleep 5

# Decide about database name
if [ "$database_name" == '' ]; then
    database_name=$project_name
fi

# Bootstrap the database
tfile=/tmp/sqlsetup.sql
echo "create database $database_name character set utf8 collate utf8_general_ci;" > $tfile
echo "use $database_name;" >> $tfile
if [ -e "/mnt/db/$database_name-latest.sql" ]; then
    echo "source /mnt/db/$database_name-latest.sql" >> $tfile
else
    if [ -e "/mnt/db/$database_name.sql" ]; then
        echo "source /mnt/db/$database_name.sql" >> $tfile
    fi
fi

if [ -e /mnt/db/setup.sql ]; then
    echo "source /mnt/db/setup.sql;" >> $tfile
fi

mysql -uroot < $tfile
rm $tfile

tail -f /dev/null