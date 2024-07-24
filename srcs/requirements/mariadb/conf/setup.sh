#!/bin/bash

service mysql restart

mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${MB_DATABASE};"
mysql -u root -e "CREATE USER '${MB_USER}'@'%' IDENTIFIED BY '${MB_PASSWORD}';"
mysql -u root -e	"GRANT ALL ON ${MB_DATABASE} . * TO '${MB_USER}'@'%' IDENTIFIED BY '${MB_PASSWORD}';"
mysql -u root -e	"FLUSH PRIVILEGES;"
