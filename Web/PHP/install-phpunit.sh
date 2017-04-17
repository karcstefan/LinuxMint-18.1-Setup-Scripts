#!/bin/bash

wget https://phar.phpunit.de/phpunit-6.1.phar -O /tmp/phpunit
chmod +x /tmp/phpunit
sudo mv /tmp/phpunit /usr/local/bin/
