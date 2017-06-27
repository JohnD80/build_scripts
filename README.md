To clone and start...
====================

First of all you need to have TWRP recovery source synced. If so, clone this repository and copy build.sh file to the root folder of
TWRP source you synced before.

Before using these scripts, you need to have Google Drive installed on your Linux instance because the scripts includes commands
that requires this tool.
To do that, place `gdrive_install.sh` to your home directory and run this command:

```sh
bash gdrive_install.sh
```

Or you can alternatively use megatools for uploading by installing it using this command:

```sh
bash megatools_install.sh
```

Now type: `nano build.sh` and set your device model, brand and TWRP version.
And then type the last command to run it:

```sh
bash build.sh
```
