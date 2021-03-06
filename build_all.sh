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

export device_tree="https://github.com/hejsekvojtech/android_device_acer_acer_Z500.git"
export brand="acer"
export device="acer_Z500"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_lenovo_A328.git"
export brand="lenovo"
export device="A328"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_acer_E39.git"
export brand="acer"
export device="E39"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_acer_S53.git"
export brand="acer"
export device="S53"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_acer_S55.git"
export brand="acer"
export device="S55"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_acer_Z520.git"
export brand="acer"
export device="Z520"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_huawei_holly.git"
export brand="huawei"
export device="holly"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_cherry_X170.git"
export brand="cherry"
export device="X170"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_lava_irisX8.git"
export brand="lava"
export device="irisX8"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_lenovo_A536.git"
export brand="lenovo"
export device="A536"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_lenovo_A3500.git"
export brand="lenovo"
export device="A3500"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_lenovo_S650_ROW.git"
export brand="lenovo"
export device="S650_ROW"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_micromax_Q345.git"
export brand="micromax"
export device="Q345"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_oppo_A33w.git"
export brand="oppo"
export device="A33w"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_prestigio_PSP5504DUO.git"
export brand="prestigio"
export device="PSP5504DUO"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_qmobile_J220.git"
export brand="qmobile"
export device="J220"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_symphony_V80.git"
export brand="symphony"
export device="V80"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_xolo_omega_5_5.git"
export brand="xolo"
export device="omega_5_5"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_intex_Aqua_Power_HD.git"
export brand="intex"
export device="Aqua_Power_HD"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_htc_htc_a31mg_dug.git"
export brand="htc"
export device="htc_a31mg_dug"

git clone $device_tree -b $branch device/$brand/$device
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

export device_tree="https://github.com/hejsekvojtech/android_device_xiaomi_lcsh92_wet_jb9.git"
export brand="xiaomi"
export device="lcsh92_wet_jb9"

git clone $device_tree -b $branch device/$brand/$device
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

# Lenovo S860 specific TWRP build configuration

export device_tree="https://github.com/hejsekvojtech/android_device_lenovo_S860.git"
export brand="lenovo"
export device="S860"

git clone $device_tree -b $branch device/$brand/$device
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

# Kingzone K1 Turbo specific TWRP build configuration

export device_tree="https://github.com/hejsekvojtech/android_device_kingzone_K1_turbo.git"
export brand="kingzone"
export device="K1_turbo"

git clone $device_tree -b $branch device/$brand/$device
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

# LG G3 Stylus specific TWRP build configuration

export device_tree="https://github.com/hejsekvojtech/android_device_lge_b2lss.git"
export brand="lge"
export device="b2lss"

git clone $device_tree -b $branch device/$brand/$device
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

# HTC Desire 816G dual sim specific TWRP build configuration

export device_tree="https://github.com/hejsekvojtech/android_device_htc_htc_a5mgp_dug.git"
export brand="htc"
export device="htc_a5mgp_dug"

git clone $device_tree -b $branch device/$brand/$device
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

# Xiaomi Redmi 1S TD specific TWRP build configuration

export device_tree="https://github.com/hejsekvojtech/android_device_xiaomi_HM2014011.git"
export brand="xiaomi"
export device="HM2014011"

git clone $device_tree -b $branch device/$brand/$device
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

echo "TWRP recovery $twrpver has been successfuly built for all LPAD supported devices!"
