#!/bin/bash

echo "Backing up the database..."
projectName=${PROJECT_NAME}
database_name=${DATABASE_NAME}

# Decide about database name
if [ "$database_name" == '' ]; then
    database_name=$project_name
fi

outfile="$database_name-`date +%Y%m%d-%H%M%S`.sql"
latestfile="$database_name-latest.sql"

echo "Dumping to /mnt/db/$outfile"
mysqldump $database_name > /mnt/db/$latestfile
cp /mnt/db/$latestfile /mnt/db/$outfile

if [ "$1" != "" ] ; then
    echo "Saving named database dump: $1"
    cp /mnt/db/$latestfile "/mnt/db/$database_name-$1.sql"
fi;