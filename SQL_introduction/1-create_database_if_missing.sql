#!/bin/bash

-- MySQL root username and password
MYSQL_USER="root"
MYSQL_PASSWORD="your_mysql_root_password"
-- Database name to create
DATABASE_NAME="hbtn_0c_0"

-- Check if the database already exists
EXISTING_DATABASE=$(mysql -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME='$DATABASE_NAME'" | grep -v '^SCHEMA_NAME$')

-- If the database does not exist, create it
if [ -z "$EXISTING_DATABASE" ]; then
    echo "Creating database $DATABASE_NAME"
    mysql -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "CREATE DATABASE $DATABASE_NAME;"
    echo "Database created successfully."
else
    echo "Database $DATABASE_NAME already exists."
fi
