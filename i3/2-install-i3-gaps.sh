#!/bin/bash

#sh install-dependencies.sh

rm -rf /tmp/Airblader

git clone https://github.com/Airblader/i3.git /tmp/Airblader
cd /tmp/Airblader

autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

../configure --prefix=/usr --sysconfdir=/etc

make && sudo make install

rm -rf /tmp/Airblader



