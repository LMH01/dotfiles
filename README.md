# This repository has been archived, because I switched to nixos. My current config files can be found here: [github.com/lmh01/nixos](https://github.com/lmh01/nixos)

# Folders
Device specific configs are located in the [specific](./specific/) folder, all other configs are stored in [general/.config](./general/.config/) and [general/etc](./general/etc/).
- Red is my old Dell laptop
- Dell is my new laptop

# Scripts
### This repository contains some scripts that i use.
### The following scripts are located in the [scripts](./scripts/) directory:

## [setup-linux](./scripts/setup-linux) 
Will install some basic software and setup i3 with sddm. This [dotfiles repository](https://github.com/LMH01/dotfiles) is cloned and some config files are copied. Launch the script for more information on what is installed.

## [suspend-pc](./scripts/suspend-pc)
Uses i3lock to display a lockscreen after the pc is woken from suspend. The file located at ~/Pictures/lockscreen.png will be shown when the pc is woken.

## [open-encrypted-usb](./scripts/open-encrypted-usb)
Opens an veracrypt encrypted usb drive located at /dev/sda and mounts it to `/mnt/encrypted`.

## [close-encrypted-usb](./scripts/close-encrypted-usb)
Closes the previously opened usb drive at /dev/mapper/luks
