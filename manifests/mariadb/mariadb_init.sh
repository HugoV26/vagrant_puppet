#! /bin/bash

# Set root password
mysql -u root -ptemp123 -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('temp123');"
# Delete anonymous users
mysql -u root -ptemp123 "DELETE FROM mysql.user WHERE User='';"
#Disable remote session for root
mysql -u root -ptemp123 "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1');"
#Drop database test
mysql -u root -ptemp123 "DROP DATABASE IF EXISTS test";
mysql -u root -ptemp123 "DELETE FROM mysql.db WHERE Db='test" OR Db ='test\\_%';"

mysql -u root -ptemp123 "FLUSH PRIVILEGES"


