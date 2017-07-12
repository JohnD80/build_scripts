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

# Build script for fully automated LineageOS building.

# Before building, please edit these script settings to suit your device
export device_tree="https://github.com/hejsekvojtech/android_device_acer_acer_Z500.git"
export vendor_tree="https://github.com/hejsekvojtech/android_vendor_acer_acer_Z500.git"
export brand="acer"
export device="acer_Z500"
export branch="cm-13.0"
export lineagever="13.0"
export CM_BUILDTYPE="NIGHTLY"

# Clonning device & vendor tree
git clone $device_tree -b $branch device/$brand/$device
git clone $vendor_tree -b $branch vendor/$brand/$device

# Patching source (some devices requires it)
cd device/$brand/$device/patches
. apply.sh

# Main building script
source build/envsetup.sh
make update-api
brunch lineage_$device-userdebug

date=`date +%Y%m%d`

# Uploading to MEGA
cd out/target/product/$device
mv lineage-$lineagever-$date-$CM_BUILDTYPE-$device.zip lineage-$lineagever-$date-nightly-$device-signed.zip
megaput --no-progress --path /Root/LPAD/Devices/$device/ROMs/Custom/LineageOS lineage-$lineagever-$date-nightly-$device-signed.zip
cd ../../../..

# Cleaning the source
make clean
cd device
rm -rf $brand
cd ..

echo "lineage-$lineagever-$date-nightly-$device-signed.zip has been built and uploaded successfuly!"
