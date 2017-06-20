#!/usr/bin/env bash

export device="Z500"
export twrpver="3.1.1-0"

echo $device

make clean
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
gdrive upload twrp-$twrpver-$device.img
cd ../../../..
