# Required stuffs
APKTOOL := apktool
ADD_UNLIMITED_BACKUPS_SCRIPT := ./misc/scripts/add_unlimited_backups.sh
AUTHORIZATION_DISABLER_SCRIPT := ./patches/disable_adb_authorization/disable_adb_authorization.sh
BLUETOOTH_LIBRARY_PATCHER_SCRIPT := ./patches/bluetooth_library_patcher/patch.sh
HORIZONUX_WALLPAPER_JSON_MAKER_SCRIPT := ./misc/scripts/github_at_luna__FLOSSPAPER.sh
PERMISSIONS_CONF_FILE := ./misc/scripts/resolution_app_permissions_xml_conf.sh
UNICA_UPDATER_SMALI_TAR := ./packages/horizonux_salvo-unica-updater/smali.tar
UNICA_UPDATER_META_INF_TAR := ./packages/horizonux_salvo-unica-updater/original/META-INF.tar

# Check if the apktool is installed
check: 
	@command -v $(APKTOOL) >/dev/null 2>&1 || { \
		echo " - Error: $(APKTOOL) is not installed. Please install it to proceed."; \
		exit 1; \
	}
# Check if the apktool is installed

# Check if things are found
check_if_add_unlimited_backups_script_exists:
	@test -f $(ADD_UNLIMITED_BACKUPS_SCRIPT) || { \
		echo " - Error: The script $(ADD_UNLIMITED_BACKUPS_SCRIPT) does not exist. Please check the path."; \
		exit 1; \
	}

check_if_authorization_disabler_exists:
	@test -f $(AUTHORIZATION_DISABLER_SCRIPT) || { \
		echo " - Error: The script $(AUTHORIZATION_DISABLER_SCRIPT) does not exist. Please check the path."; \
		exit 1; \
	}

check_if_bluetooth_patcher_exists:
	@test -f $(BLUETOOTH_LIBRARY_PATCHER_SCRIPT) || { \
		echo " - Error: The script $(BLUETOOTH_LIBRARY_PATCHER_SCRIPT) does not exist. Please check the path."; \
		exit 1; \
	}
	
check_if_updater_smali_tar_exists:
	@test -f $(UNICA_UPDATER_SMALI_TAR) || { \
		echo " - Error: The tar file $(UNICA_UPDATER_SMALI_TAR) does not exist. Please check the path."; \
		exit 1; \
	}
	
check_if_updater_original_tar_exists:
	@test -f $(UNICA_UPDATER_META_INF_TAR) || { \
		echo " - Error: The tar file $(UNICA_UPDATER_META_INF_TAR) does not exist. Please check the path."; \
		exit 1; \
	}

check_if_wallpaper_json_maker_script_exists:
	@test -f $(HORIZONUX_WALLPAPER_JSON_MAKER_SCRIPT) || { \
		echo " - Error: The script $(HORIZONUX_WALLPAPER_JSON_MAKER_SCRIPT) does not exist. Please check the path."; \
		exit 1; \
	}
# Check if things are found

# Build targets
a30-cutout: check
	@echo " - Build initiated by $(shell id -un) at $(shell date +"%I:%M%p") - $(shell date +"%Y-%d-%m")"
	@echo " - Compiling the framework overlay..."
	@mkdir -p ./build/system/product/overlay/
	@apktool build ./specific_device_patches/a30/device_cutout/ > /dev/null 2>&1 && { \
		mv ./specific_device_patches/a30/device_cutout/dist/luna_personal_build.android.overlay.apk ./build/system/product/overlay/; \
	} || { \
		echo " - Failed to build the device cutout fix, please try again.."; \
	}

unlimited-photo-backups: check_if_add_unlimited_backups_script_exists
	@echo " - Build initiated by $(shell id -un) at $(shell date +"%I:%M%p") - $(shell date +"%Y-%d-%m")"
	@echo " - Creating XML file configurations for enabling unlimited photo backups."
	@mkdir -p ./build/system/product/etc/sysconfig/
	@bash -c "$(ADD_UNLIMITED_BACKUPS_SCRIPT)"

remove-useless-vendor-things:
	@echo " - Build initiated by $(shell id -un) at $(shell date +"%I:%M%p") - $(shell date +"%Y-%d-%m")"
	@mkdir -p ./build/vendor/etc/init ./build/vendor/etc/vintf
	@bash -c "$(ADD_UNLIMITED_BACKUPS_SCRIPT)"

disable-debugging-authorization: check_if_authorization_disabler_exists
	@echo " - Build initiated by $(shell id -un) at $(shell date +"%I:%M%p") - $(shell date +"%Y-%d-%m")"
	@bash -c "$(AUTHORIZATION_DISABLER_SCRIPT)"

bluetooth-library-patcher: check_if_bluetooth_patcher_exists
	@echo " - Build initiated by $(shell id -un) at $(shell date +"%I:%M%p") - $(shell date +"%Y-%d-%m")"
	@bash -c "$(BLUETOOTH_LIBRARY_PATCHER_SCRIPT)"

custom-horizonux-resolution-app-builder: check
	@echo " - Build initiated by $(shell id -un) at $(shell date +"%I:%M%p") - $(shell date +"%Y-%d-%m")"
	@mkdir -p ./build/system/etc/permissions ./build/system/priv-app/HorizonUXResolution/
	@bash -c "$(PERMISSIONS_CONF_FILE)"
	@apktool build ./packages/horizonux_resolution/ > /dev/null 2>&1 && { \
		mv ./packages/horizonux_resolution/dist/HorizonUXResolution.apk ./build/system/priv-app/HorizonUXResolution/; \
	} || { \
		echo " - Failed to build the resolution app, please try again.."; \
	}

custom-horizonux-setup-wizard-overlay: check
	@echo " - Build initiated by $(shell id -un) at $(shell date +"%I:%M%p") - $(shell date +"%Y-%d-%m")"
	@mkdir -p ./build/product/overlay/
	@apktool build ./packages/sec_setup_wizard_horizonux_overlay/ > /dev/null 2>&1 && { \
		mv ./packages/sec_setup_wizard_horizonux_overlay/dist/horizonux.android.setup.wizard.overlay.apk ./build/product/overlay/; \
	} || { \
		echo " - Failed to build the custom setup wizard overlay, please try again.."; \
	}

custom-horizonux-remove-none-security-type-and-add-animations-scale: check
	@echo " - Build initiated by $(shell id -un) at $(shell date +"%I:%M%p") - $(shell date +"%Y-%d-%m")"
	@mkdir -p ./build/product/overlay
	@apktool build ./packages/settings/oneui3/nullthing/ > /dev/null 2>&1 && { \
		mv ./packages/settings/oneui3/nullthing/dist/luna.horizonux.system.settings.overlay_animations_null.apk ./build/product/overlay/; \
	} || { \
		echo " - Failed to build the custom settings overlay, please try again.."; \
	}

custom-horizonux-unica-updater: check check_if_updater_original_tar_exists check_if_updater_smali_tar_exists
	@echo " - Build initiated by $(shell id -un) at $(shell date +"%I:%M%p") - $(shell date +"%Y-%d-%m")"
	@mkdir -p ./build/system/priv-app/HorizonUXUpdater
	@tar -xf $(UNICA_UPDATER_SMALI_TAR) -C ./packages/horizonux_salvo-unica-updater/
	@tar -xf $(UNICA_UPDATER_META_INF_TAR) -C ./packages/horizonux_salvo-unica-updater/original/
	@apktool build ./packages/horizonux_salvo-unica-updater/ > /dev/null 2>&1 && { \
		mv ./packages/horizonux_salvo-unica-updater/dist/HorizonUXUpdater.apk ./build/system/priv-app/HorizonUXUpdater; \
	} || { \
		echo " - Failed to build the custom settings overlay, please try again.."; \
	}

custom-horizonux-pip-rounded-corners-enabler-overlay: check
	@echo " - Build initiated by $(shell id -un) at $(shell date +"%I:%M%p") - $(shell date +"%Y-%d-%m")"
	@mkdir -p ./build/product/overlay
	@apktool build ./packages/systemui/oneui3/rounded_corners_on_pip/ > /dev/null 2>&1 && { \
		mv ./packages/systemui/oneui3/rounded_corners_on_pip/dist/luna.horizonux.pip_enabler.systemui.overlay.apk ./build/product/overlay/; \
	} || { \
		echo " - Failed to build the custom settings overlay, please try again.."; \
	}
	
custom-horizonux-wallpaper-maker: check check_if_wallpaper_json_maker_script_exists
	@echo " - Build initiated by $(shell id -un) at $(shell date +"%I:%M%p") - $(shell date +"%Y-%d-%m")"
	@mkdir -p ./build/system/priv-app/HorizonUXWallpapers/
	@bash -c "$(HORIZONUX_WALLPAPER_JSON_MAKER_SCRIPT)"
	@apktool build ./packages/flosspaper_purezza/ > /dev/null 2>&1 && { \
		mv ./packages/flosspaper_purezza/dist/horizonux-cust-wallpapers.apk ./build/system/priv-app/HorizonUXWallpapers/; \
	} || { \
		echo " - Failed to build the custom settings overlay, please try again.."; \
	}
# Build targets

# Prevent make from considering files with the same name as targets
.PHONY: check check_if_updater_original_tar_exists check_if_updater_smali_tar_exists check_if_add_unlimited_backups_script_exists check_if_bluetooth_patcher_exists check_if_authorization_disabler_exists check_if_wallpaper_json_maker_script_exists a30-cutout unlimited-photo-backups remove-useless-vendor-things disable-debugging-authorization bluetooth-library-patcher horizonux-resolution-app-builder custom-horizonux-setup-wizard-overlay custom-horizonux-remove-none-security-type-and-add-animations-scale custom-horizonux-pip-rounded-corners-enabler-overlay custom-horizonux-unica-updater custom-horizonux-wallpaper-maker