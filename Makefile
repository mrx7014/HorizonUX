# Required tools and scripts
APKTOOL := apktool

# Scripts and tar files
SCRIPTS := \
    ./misc/scripts/add_unlimited_backups.sh \
    ./patches/disable_adb_authorization/disable_adb_authorization.sh \
    ./patches/bluetooth_library_patcher/patch.sh \
    ./misc/scripts/github_at_luna__FLOSSPAPER.sh

TARS := \
    ./packages/horizonux_salvo-unica-updater/smali.tar \
    ./packages/horizonux_salvo-unica-updater/original/META-INF.tar

# Output directories
BUILD_DIR := ./build/system
OVERLAY_DIR := $(BUILD_DIR)/product/overlay
ETC_DIR := $(BUILD_DIR)/etc/sysconfig
PRIV_APP_DIR := $(BUILD_DIR)/priv-app

# Check if required tools and files exist
check: check_apktool check_files

check_apktool:
	@command -v $(APKTOOL) >/dev/null 2>&1 || { \
		echo " - Error: $(APKTOOL) is not installed. Please install it to proceed."; \
		exit 1; \
	}

check_files:
	@for script in $(SCRIPTS); do \
		[ -f $$script ] || { \
			echo " - Error: Script $$script does not exist. Please check the path."; \
			exit 1; \
		}; \
	done
	@for tar in $(TARS); do \
		[ -f $$tar ] || { \
			echo " - Error: Tar file $$tar does not exist. Please check the path."; \
			exit 1; \
		}; \
	done

# Log build completion
finished:
	@echo " - Build finished by $(shell id -un) at $(shell date +\"%I:%M%p\") on $(shell date +\"%Y-%m-%d\")"
	@echo "   Check the /build folder for the items you have built."
	@echo "   Please sign the built overlay or application packages manually with your own private keys; do not use any public keys."

# Build targets
define build_target
	@echo " - Building $1..."
	@mkdir -p $2
	@apktool build $3 > /dev/null 2>&1 && { \
		mv $4 $2; \
	} || { \
		echo " - Failed to build $1, please try again."; \
	}
	finished
endef

a30-cutout: check
	$(call build_target, A30 Cutout, $(OVERLAY_DIR), ./specific_device_patches/a30/overlay/framework-res/, $(OVERLAY_DIR)/luna_personal_build.a30.frameworkres.overlay.apk)

s20-cutout: check
	$(call build_target, S20 Framework Overlay, $(OVERLAY_DIR), ./specific_device_patches/s20/overlay/framework-res/, $(OVERLAY_DIR)/luna_personal_build.s20.frameworkres.overlay.apk)
	$(call build_target, S20 System UI Overlay, $(OVERLAY_DIR), ./specific_device_patches/s20/overlay/systemui/, $(OVERLAY_DIR)/samsung-S20fe-systemui.apk)

unlimited-photo-backups: check
	@echo " - Creating XML configuration for unlimited photo backups..."
	@mkdir -p $(ETC_DIR)
	@bash -c "$(SCRIPTS[0])"
	finished

remove-useless-vendor-things: check
	@echo " - Removing useless vendor items..."
	@mkdir -p $(BUILD_DIR)/vendor/etc/init $(BUILD_DIR)/vendor/etc/vintf
	@bash -c "$(SCRIPTS[0])"
	finished

disable-debugging-authorization: check
	@echo " - Disabling debugging authorization..."
	@bash -c "$(SCRIPTS[1])"
	finished

bluetooth-library-patcher: check
	@echo " - Patching Bluetooth library..."
	@bash -c "$(SCRIPTS[2])"
	finished

custom-horizonux-resolution-app-builder: check
	@echo " - Building HorizonUX Resolution app..."
	@mkdir -p $(PRIV_APP_DIR)/HorizonUXResolution
	@bash -c "$(SCRIPTS[3])"
	@apktool build ./packages/horizonux_resolution/ > /dev/null 2>&1 && { \
		mv ./packages/horizonux_resolution/dist/HorizonUXResolution.apk $(PRIV_APP_DIR)/HorizonUXResolution/; \
	} || { \
		echo " - Failed to build the resolution app, please try again."; \
	}
	finished

custom-horizonux-setup-wizard-overlay: check
	@echo " - Building HorizonUX Setup Wizard overlay..."
	@mkdir -p $(OVERLAY_DIR)
	@apktool build ./packages/sec_setup_wizard_horizonux_overlay/ > /dev/null 2>&1 && { \
		mv ./packages/sec_setup_wizard_horizonux_overlay/dist/horizonux.android.setup.wizard.overlay.apk $(OVERLAY_DIR)/; \
	} || { \
		echo " - Failed to build the custom setup wizard overlay, please try again."; \
	}
	finished

custom-horizonux-unica-updater: check
	@echo " - Building HorizonUX Unica Updater..."
	@mkdir -p $(PRIV_APP_DIR)/HorizonUXUpdater
	@tar -xf $(TARS[0]) -C ./packages/horizonux_salvo-unica-updater/
	@tar -xf $(TARS[1]) -C ./packages/horizonux_salvo-unica-updater/original/
	@apktool build ./packages/horizonux_salvo-unica-updater/ > /dev/null 2>&1 && { \
		mv ./packages/horizonux_salvo-unica-updater/dist/HorizonUXUpdater.apk $(PRIV_APP_DIR)/HorizonUXUpdater; \
	} || { \
		echo " - Failed to build the Unica Updater, please try again."; \
	}
	finished

custom-horizonux-wallpaper-maker: check
	@echo " - Building HorizonUX Wallpaper Maker..."
	@mkdir -p $(PRIV_APP_DIR)/HorizonUXWallpapers
	@bash -c "$(SCRIPTS[3])"
	@apktool build ./packages/flosspaper_purezza/ > /dev/null 2>&1 && { \
		mv ./packages/flosspaper_purezza/dist/horizonux-cust-wallpapers.apk $(PRIV_APP_DIR)/HorizonUXWallpapers/; \
	} || { \
		echo " - Failed to build the Wallpaper Maker, please try again."; \
	}
	finished

# License placeholder
c:
	@echo "
					GNU GENERAL PUBLIC LICENSE
                      Version 3, 29 June 2007

Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
Everyone is permitted to copy and distribute verbatim copies
of this license document, but changing it is not allowed.
 
    HorizonUX, Personalized version(s) of Samsung's official OneUI software.
    Copyright (C) 2024 Luna

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program. If not, see <https://www.gnu.org/licenses/>.
"

# Prevent make from considering files with the same name as targets
.PHONY: check finished a30-cutout s20-cutout unlimited-photo-backups remove-useless-vendor-things disable-debugging-authorization bluetooth-library-patcher custom-horizonux-resolution-app-builder custom-horizonux-setup-wizard-overlay custom-horizonux-unica-updater custom-horizonux-wallpaper-maker c
