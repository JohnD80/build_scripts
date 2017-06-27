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

# Build script for fully automated Team Win Recovery Project (TWRP) building
# for all Liquid Porting And Development supported devices.

# If you want to add your device to our build rooster, create pull request
# or contact me at https://www.facebook.com/kh4os

export twrpver="3.1.1-0"
export branch="android-5.1"

# Acer Liquid Z500 specific TWRP build configuration

export brand="acer"
export device="Z500"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Lenovo A328 specific TWRP build configuration

export brand="lenovo"
export device="A328"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Acer Liquid E700 specific TWRP build configuration

export brand="acer"
export device="E39"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Acer Liquid X1 specific TWRP build configuration

export brand="acer"
export device="S53"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Acer Liquid Jade Plus specific TWRP build configuration

export brand="acer"
export device="S55"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Acer Liquid Z520 specific TWRP build configuration

export brand="acer"
export device="Z520"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Huawei Honor 3C Lite specific TWRP build configuration

export brand="huawei"
export device="holly"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Cherry Mobile Me Vibe specific TWRP build configuration

export brand="cherry"
export device="X170"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Lava Iris X8 specific TWRP build configuration

export brand="lava"
export device="irisX8"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Lenovo A536 specific TWRP build configuration

export brand="lenovo"
export device="A536"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Lenovo IdeaTab A7-50 specific TWRP build configuration

export brand="lenovo"
export device="A3500"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Lenovo S650 specific TWRP build configuration

export brand="lenovo"
export device="S650_ROW"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Micromax Canvas Selfie Lens Q345 specific TWRP build configuration

export brand="micromax"
export device="Q345"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Oppo Neo 7 specific TWRP build configuration

export brand="oppo"
export device="A33w"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Prestigio MultiPhone 5504 Duo specific TWRP build configuration

export brand="prestigio"
export device="PSP5504DUO"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# QMobile X70 specific TWRP build configuration

export brand="qmobile"
export device="J220"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Symphony Xplorer V80 specific TWRP build configuration

export brand="symphony"
export device="V80"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# XOLO Omega 5.5 specific TWRP build configuration

export brand="xolo"
export device="omega_5_5"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Intex Aqua Power HD specific TWRP build configuration

export brand="intex"
export device="Aqua_Power_HD"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# HTC Desire 620G dual sim specific TWRP build configuration

export brand="htc"
export device="a31mg_dug_htc_europe"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

# Xiaomi Redmi Note 3G specific TWRP build configuration

export brand="xiaomi"
export device="lcsh92_wet_jb9"

git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..
make clean
cd device
rm -rf $brand
cd ..

echo "Building was successful!"
