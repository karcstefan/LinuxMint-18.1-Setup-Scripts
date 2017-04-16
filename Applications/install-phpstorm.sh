#!/bin/bash
echo "Installing PhpStorm 2017.1.2"
wget https://download.jetbrains.com/webide/PhpStorm-2017.1.2.tar.gz --no-check-certificate
tar -xzf PhpStorm*

rm PhpStorm-2017.1.2.tar.gz
mv PhpStorm* ~/PhpStorm
sh ~/PhpStorm/bin/.phpstorm.sh

