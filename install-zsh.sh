#!/bin/bash

echo "Installing ZSH and terminator"
sudo apt-get install -y zsh terminator

echo "Installing Oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

read -r -p "Do you want to install agnoster theme? [Y/n]" response
response=${response,,}
if [[ $response =~ ^(yes|y| ) ]] | [ -z $response ]; then
   your-action-here
fi

echo "Setting default shell to zsh"
chsh -s /bin/zsh

