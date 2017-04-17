#!/bin/bash
echo "Installing Redis"
sudo apt-get install -y redis-server

redis-cli -v
