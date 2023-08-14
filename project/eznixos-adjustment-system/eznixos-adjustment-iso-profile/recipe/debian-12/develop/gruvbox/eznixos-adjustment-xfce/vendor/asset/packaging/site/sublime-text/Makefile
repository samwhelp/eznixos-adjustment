

THE_MAKEFILE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
THE_BASE_DIR_PATH := $(abspath $(dir $(THE_MAKEFILE_FILE_PATH)))
THE_PLAN_DIR_PATH := $(THE_BASE_DIR_PATH)
THE_HELPER_DIR_PATH := $(THE_PLAN_DIR_PATH)/helper
THE_BIN_DIR_PATH := $(THE_HELPER_DIR_PATH)/bin
THE_MAK_DIR_PATH := $(THE_HELPER_DIR_PATH)/mak

PATH := $(THE_BIN_DIR_PATH):$(PATH)




THE_ASSET_DIR_PATH := $(THE_PLAN_DIR_PATH)/asset
THE_PACKAGE_DIR_PATH := $(THE_PLAN_DIR_PATH)/package
THE_TMP_DIR_PATH := $(THE_PLAN_DIR_PATH)/tmp

THE_BUILD_SCRIPT_FILE_PATH := $(THE_PLAN_DIR_PATH)/build.sh




THE_PKG_NAME := eznixos-adjustment-modeling-wallpaper-collection

THE_DEB_FILE_NAME := $(THE_PKG_NAME)
THE_DEB_FILE_PATH := $(THE_PACKAGE_DIR_PATH)/$(THE_DEB_FILE_NAME).deb




default: help
.PHONY: default

help:
	@echo
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make build'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make uninstall'
	@echo
	@echo '	$$ make clean'
	@echo
.PHONY: help


prepare:
	sudo apt-get install build-essential
.PHONY: prepare


build:
	$(THE_BUILD_SCRIPT_FILE_PATH)
.PHONY: build


install:
	sudo dpkg -i $(THE_DEB_FILE_PATH)
.PHONY: install


reinstall:
	sudo dpkg -i $(THE_DEB_FILE_PATH)
.PHONY: reinstall


uninstall:
	sudo dpkg -r $(THE_PKG_NAME)
.PHONY: uninstall


clean:
	rm -rf $(THE_TMP_DIR_PATH)
	rm -rf $(THE_PACKAGE_DIR_PATH)
.PHONY: clean


list:
	dpkg -c $(THE_DEB_FILE_PATH)
.PHONY: list


info:
	dpkg -I $(THE_DEB_FILE_PATH)
.PHONY: info


list-installed:
	dpkg -L $(THE_PKG_NAME)
.PHONY: list


info-installed:
	apt-cache show $(THE_PKG_NAME)
	dpkg -l $(THE_PKG_NAME)
.PHONY: info


prepare-gdebi:
	sudo apt-get install gdebi
.PHONY: prepare


install-by-gdebi:
	sudo gdebi --non-interactive $(THE_DEB_FILE_PATH)
.PHONY: prepare
