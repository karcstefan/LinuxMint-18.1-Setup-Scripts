#!/bin/bash

sudo sh -c 'echo "deb https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client trusty main" > /etc/apt/sources.list.d/atlassian-hipchat4.list'
wget -O - https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public | sudo apt-key add -
sudo apt-get update

sudo apt-get install hipchat4
