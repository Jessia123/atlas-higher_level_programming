#!/bin/bash

-- MySQL root username and password
MYSQL_USER="root"
MYSQL_PASSWORD="your_mysql_root_password"

-- Database name to create
DATABASE_NAME="hbtn_0c_0"

-- Attempt to create the database if it doesn't already exist
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;"

-- Check if the database was created or already existed
if [ $? -eq 0 ]; then
    echo "Database $DATABASE_NAME created successfully or already exists."
else
    echo "Failed to create database $DATABASE_NAME. Check your MySQL credentials."
fi
