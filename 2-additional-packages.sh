#!/bin/bash

sudo apt-get install -y mate-tweak whois

find Applications/ -type f -name "*.sh" -exec sh {} \;
