#!/usr/bin/env bash

# Google Drive installer for Linux terminal

cd ~
wget https://docs.google.com/uc?id=0B3X9GlR6EmbnWksyTEtCM0VfaFE&export=download
reset
mv uc\?id\=0B3X9GlR6EmbnWksyTEtCM0VfaFE gdrive
chmod +x gdrive
sudo install gdrive /usr/local/bin/gdrive
gdrive list
