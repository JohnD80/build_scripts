Get started with scripts
=======================

This repository contains some useful bash scripts for fully automated building of LineageOS based ROMs or TWRP recovery
for your device. These bash based scripts are easy to use and they just needs to be executed in terminal from the root folder
of source you want to build from (LineageOS or TWRP)

* Scripts in this repository
  * build_all.sh - builds TWRP for all Liquid Porting And Development devices (only for LPAD admins)
  * build_lineageos.sh - builds LineageOS for one particular device
  * build_twrp.sh - builds TWRP for one particular device
  
* Misc. scripts
  * install_gdrive.sh - installs Google Drive for uploading builds
  * install_megatools.sh - installs MEGA for uploading builds

Before using these build scripts you have to install utilities for uploading builds. You can choose betwen MEGA (default in my scripts) and Google Drive.
Install them by executing following commands:

```sh
bash bash install_gdrive.sh
```

or

```sh
bash install_megatools.sh
```

After installing required utilities you have to configure script you want to use by opening it with text editor and changing following:

`export device_tree=`
`export vendor_tree=`
`export brand=`
`export device=`
`export branch=`
`export twrpver=`

Once your script is set-up, place it to the root of TWRP or LineageOS source. If you don't have it synced yet, you can use these links:

For TWRP click [here](https://github.com/hejsekvojtech/android_bootable_recovery)

For LineageOS click [here](https://github.com/LineageOS/android)

Once your choosen and configured script is placed into the root of required source, execute it by:

```sh
bash <script name>
```