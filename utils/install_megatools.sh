#!/usr/bin/env bash

# megatools (MEGA) installer for Linux terminal

cd ~
sudo apt-get update
sudo apt-get install libtool libglib2.0-dev gobject-introspection libgmp3-dev nettle-dev asciidoc glib-networking openssl libcurl4-openssl-dev libssl-dev
wget http://megatools.megous.com/builds/megatools-1.9.98.tar.gz
zcat megatools-1.9.98.tar.gz > megatools-1.9.98.tar
tar -xf megatools-1.9.98.tar
rm megatools-1.9.98.tar.gz
rm megatools-1.9.98.tar
mv megatools-1.9.98 MEGA
cd MEGA
./configure
make
sudo make install
echo [Login] >> ~/.megarc
echo Username = your@email >> ~/.megarc
echo Password = yourpassword >> ~/.megarc
nano ~/.megarc
cd ~
echo MEGA is now fully set-up on your Linux computer
