#!/bin/bash


sed -i 's|MYSQL_DATABASE|'${MB_DATABASE}'|g' /init.sql
sed -i 's|MYSQL_USER|'${MB_USER}'|g' /init.sql
sed -i 's|MYSQL_PASSWORD|'${MB_PASSWORD}'|g' /init.sql
sed -i 's|MYSQL_ROOT_PASSWORD|'${MB_ROOT_PASSWORD}'|g' /init.sql

if [ -d "/var/lib/mysql/$MB_DATABASE" ]

then
  echo "Database already exists."
  mysqld_safe

else
  mysql_install_db
  mysqld --init-file="/init.sql"

fi

exec "$@"
