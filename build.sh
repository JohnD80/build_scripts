#!/usr/bin/env bash

# Before building, please edit these script settings to suit your device
export devicetree="https://github.com/hejsekvojtech/android_device_acer_Z500.git"
export brand="acer"
export device="Z500"
export twrpver="3.1.1-0"
export branch="android-5.1"

# Clonning device tree
git clone $devicetree -b $branch device/$brand/$device

# Main building script
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img

# Uploading to Google Drive
gdrive upload twrp-$twrpver-$device.img
cd ../../../..

# Cleaning the source
make clean
cd device
rm -rf $brand
cd ..
echo "TWRP building and uploading is done!"
