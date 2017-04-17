#!/bin/bash

echo "Installing apache2 and mysql"
sudo apt-get install -y apache2
sudo apt-get install -y mysql

echo "Installing mysql-worbench"
sudo apt-get install mysql-workbench


echo "Adding ondrej/php repository for older versions of php"
sudo apt-add-repository ppa:ondrej/php
sudo apt-get update

read -r -p "Which version of php do you want to install? (e.g 5.6, 7.0): " version

if [[ -f "PHP/version-$version.sh" ]]; then
	echo "Starting on installing php$version"
	sh "PHP/version-$version.sh"
else
	echo "There is no script for that version"
fi 

if  which php > /dev/null; then
	echo "Installing Composer"
	curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
fi

php -v
composer --version
