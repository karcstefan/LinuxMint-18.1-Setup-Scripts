#!/bin/bash

echo "Changing theme to agnoster"
sudo sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"agnoster\"/g' ~/.zshrc

echo "Installing Powerline font for the agnoster theme"\

mkdir -p ~/.config/fontconfig/conf.d
mkdir -p ~/.fonts

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf ~/.fonts/

echo " - Clear font cache"
fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
