#!/bin/bash

if [[ -f /tmp/skypeforlinux-* ]]; then
	sudo rm /tmp/skypeforlinux-*.deb
fi

sudo wget https://go.skype.com/skypeforlinux-64.deb -O /tmp/skypeforlinux-64.deb

sudo dpkg -i /tmp/skypeforlinux-64.deb
sudo apt-get install -f

sudo rm /tmp/skypeforlinux-64.deb
