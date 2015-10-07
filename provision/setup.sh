#!/bin/bash

echo "Provisioning virtual machine..."

echo "Installing PHP extensions"
apt-get install curl php5-gd php5-mcrypt php5-mysql -y > /dev/null

echo "Installing debconf-utils"
apt-get install debconf-utils -y > /dev/null


debconf-set-selections <<< "mysql-server mysql-server/root_password password 123456"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password 123456"

echo "Installing MySQL"
apt-get install mysql-server -y > /dev/null


