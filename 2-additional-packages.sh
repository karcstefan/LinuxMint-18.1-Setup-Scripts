#!/bin/bash

sudo apt-get install -y mate-tweak

find Applications/ -type f -name "*.sh" -exec sh {} \;
