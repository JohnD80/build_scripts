#!/usr/bin/env bash

#
# Copyright (C) 2017 Liquid Porting And Development
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Build script for fully automated Team Win Recovery Project (TWRP) building.

# Before building, please edit these script settings to suit your device

export device_tree="https://github.com/hejsekvojtech/android_device_acer_Z500.git"
export brand="acer"
export device="Z500"
export twrpver="3.1.1-0"
export branch="android-5.1"

# Clonning device tree
git clone $device_tree -b $branch device/$brand/$device

# Main building script
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img

# Uploading to Google Drive
# gdrive upload twrp-$twrpver-$device.img
# cd ../../../..

# Uploading to MEGA
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..

# Cleaning the source
make clean
cd device
rm -rf $brand
cd ..
echo "twrp-$twrpver-$device.img has been built and uploaded successfuly!"
