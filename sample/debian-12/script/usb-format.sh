#!/usr/bin/env bash


##
## https://samwhelp.github.io/note-about-ventoy/read/start/remove.html
##

mod_part_001 () {

	sudo parted --script -- "/dev/sdc" \
		mktable gpt \
		mkpart primary 1M 2M \
		mkpart primary 2M '-1' \
		set 1 bios_grub on \
		print


	sudo mkfs.ext4 -L Data "/dev/sdc2"

}

mod_part_001
