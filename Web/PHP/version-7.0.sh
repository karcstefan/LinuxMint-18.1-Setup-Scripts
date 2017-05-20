#!/bin/bash

echo "Installing PHP-7.0"
sudo apt-get install -y php7.0

echo "Installing additional PHP Extensions"
sudo apt-get install -y php7.0-mysql php7.0-mbstring php7.0-mcrypt php7.0-xml php7.0-curl php7.0-gd php7.0-dom php7.0-zip php7.0-bcmath

