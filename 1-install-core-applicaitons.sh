#!/bin/bash
echo "Updating packages and installing core packages"
sudo apt-get update
sudo apt-get install -y ppa-purge vim dconf-cli dconf-editor

echo "Installing file compressors"
sudo apt-get install -y zip unzip rar unrar

echo "Installing additional applications from packages"

sudo apt-get install -y vlc shutter
