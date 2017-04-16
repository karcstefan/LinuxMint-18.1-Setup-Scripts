#!/bin/bash

echo "Installing ZSH and terminator"
sudo apt-get install -y zsh terminator

echo "Installing Oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Do you want to install agnoster theme(Y/n)"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        sh install-agnoster.sh
else
        echo "Skipping agnoster installation"
fi

echo "Setting default shell to zsh"
chsh -s /bin/zsh

