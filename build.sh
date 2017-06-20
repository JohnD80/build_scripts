#!/usr/bin/env bash

# This will set device model and TWRP version you are building
export device="Z500"
export twrpver="3.1.1-0"

# Main building script
make clean
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img

# Uploading to Google Drive
gdrive upload twrp-$twrpver-$device.img
cd ../../../..
