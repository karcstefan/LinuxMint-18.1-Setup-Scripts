#!/bin/bash

echo "Installing PHP-5.6"
sudo apt-get install -y php5.6

echo "Installing php-xdebug"
sudo apt-get install -y php-xdebug

echo "Installing additional PHP Extensions"
sudo apt-get install -y php5.6-mysql php5.6-mbstring php5.6-mcrypt php5.6-xml php5.6-curl php5.6-gd php5.6-dom


