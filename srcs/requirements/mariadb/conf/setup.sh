service mysql start 


echo "CREATE DATABASE IF NOT EXISTS toto ;" > db1.sql #$db1_name
echo "CREATE USER IF NOT EXISTS 'tata'@'%' IDENTIFIED BY 'titi' ;" >> db1.sql # $db1_user $db1_pwd
echo "GRANT ALL PRIVILEGES ON toto.* TO 'tata'@'%' ;" >> db1.sql #$db1_name $db1_user
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql < db1.sql

kill $(cat /var/run/mysqld/mysqld.pid)

mysqld