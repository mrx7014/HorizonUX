# Required tools and scripts
APKTOOL := apktool
ZIP := zip

# Scripts and tar files
SCRIPTS := \
    ./misc/scripts/add_unlimited_backups.sh \
    ./horizon/patches/disable_adb_authorization/disable_adb_authorization.sh \
    ./horizon/patches/bluetooth_library_patcher/patch.sh \
    ./misc/scripts/github_at_luna__FLOSSPAPER.sh

TARS := \
    ./packages/horizonux_salvo-unica-updater/smali.tar \
    ./packages/horizonux_salvo-unica-updater/original/META-INF.tar

# Output directories
BUILD_DIR := ./build/system/product
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

check_zip:
	@command -v $(ZIP) >/dev/null 2>&1 || { \
		echo " - Error: $(ZIP) is not installed. Please install it to proceed."; \
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
	$(call build_target, A30 Cutout, $(OVERLAY_DIR), ./horizon/specific_device_patches/a30/overlay/framework-res/, $(OVERLAY_DIR)/luna_personal_build.a30.frameworkres.overlay.apk)

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

flops-module:
	@echo " - Building flops module..."
	mkdir -p ./build/magisk_modules
	[ -f "./magisk/modules/flops" ] || {
		echo " - Error: module files are not found." \
		exit 1; \
	}
	@cd ./magisk/modules/flops
	@zip -r flops-module.zip .
	@mv flops-module.zip ./build/magisk_modules/
	finished

# Prevent make from considering files with the same name as targets
.PHONY: check finished a30-cutout unlimited-photo-backups remove-useless-vendor-things disable-debugging-authorization bluetooth-library-patcher custom-horizonux-resolution-app-builder custom-horizonux-setup-wizard-overlay custom-horizonux-unica-updater custom-horizonux-wallpaper-maker flops-module check_zip