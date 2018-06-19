#!/bin/sh

#installing sqlite
sudo apt-get update -y
sudo apt-get install -y sqlite sqlite3

#installing mysql server
sudo apt-get install -y mysql-server mysql-client
sudo mysql_secure_installation
sudo mysql_install_db
service mysql status
mysqladmin -p -u root version
