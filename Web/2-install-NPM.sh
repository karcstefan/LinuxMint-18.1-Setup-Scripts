#!/bin/bash

echo "Installing nodejs package manager"
sudo apt-get install -y npm
sudo ln -s /usr/bin/nodejs /usr/bin/node

echo "Update NPM to the latest"
sudo npm install npm@latest -g

echo "Install NodeJS version manager"
sudo npm install n

echo "Update NodeJS to the latest stable version"
sudo n stable
rm -rf node_modules

echo "NPM Version:"
npm -v
echo "NodeJS Version"
node -v


sudo npm install -g grunt
sudo npm install -g gulp
