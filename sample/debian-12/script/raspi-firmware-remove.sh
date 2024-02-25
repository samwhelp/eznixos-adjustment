#!/usr/bin/env bash


##
## https://samwhelp.github.io/note-about-eznixos/read/troubleshooting/update/raspi-firmware.html
##

sudo rm -f /etc/initramfs/post-update.d/z50-raspi-firmware
sudo rm -f /etc/kernel/postinst.d/z50-raspi-firmware
sudo rm -f /etc/kernel/postrm.d/z50-raspi-firmware

sudo apt-get purge raspi-firmware
