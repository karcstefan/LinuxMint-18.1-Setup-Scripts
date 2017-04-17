#!/bin/bash

echo "Installing apache2l"
sudo apt-get install -y apache2

echo "Enable mod_rewrite for apache2"
sudo a2enmod rewrite

echo "Link command for virtual host creation (a2create) to /usr/bin"
sudo ln -s $PWD/a2create /usr/bin/a2create

echo "Installing MySQLl serevr"
sudo apt-get install -y mysql-server

echo "Installing mysql-worbench"
sudo apt-get install mysql-workbench


echo "Adding ondrej/php repository for older versions of php"
sudo apt-add-repository ppa:ondrej/php
sudo apt-get update

read -r -p "Which version of php do you want to install? (e.g 5.6, 7.0): " version

if [[ -f "PHP/version-$version.sh" ]]; then
	echo "Starting on installing php$version and phpunit"
	sh "PHP/version-$version.sh"
	sh "PHP/install-phpunit.sh"
else
	echo "There is no script for that version"
fi 

if  which php > /dev/null; then
	echo "Installing Composer"
	curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
fi

php -v
composer --version
