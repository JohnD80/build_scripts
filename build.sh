#!/usr/bin/env bash

# This will set-up the script
export devicetree="https://github.com/hejsekvojtech/android_device_acer_Z500.git -b android-5.1"
export brand="acer"
export device="Z500"
export twrpver="3.1.1-0"

# Clonning device tree
git clone $devicetree device/$brand/$device

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
echo "It's done!"
