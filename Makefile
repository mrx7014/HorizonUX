# Required stuffs
APKTOOL := apktool
ADD_UNLIMITED_BACKUPS_SCRIPT := ./generic_addons/additionals/unlimited_google_backups/add_unlimited_backups.sh
AUTHORIZATION_DISABLER_SCRIPT := ./patches/disable_adb_authorization/disable_adb_authorization.sh
BLUETOOTH_LIBRARY_PATCHER_SCRIPT := ./patches/bluetooth_library_patcher/patch.sh

# Check if the apktool is installed
check: 
	@command -v $(APKTOOL) >/dev/null 2>&1 || { \
		echo " - Error: $(APKTOOL) is not installed. Please install it to proceed."; \
		exit 1; \
	}
# Check if the apktool is installed

# Check if scripts exist
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
# Check if scripts exist

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

horizonux-resolution-app-builder: check
	@echo " - Build initiated by $(shell id -un) at $(shell date +"%I:%M%p") - $(shell date +"%Y-%d-%m")"
	@mkdir -p ./build/system/etc/permissions ./build/system/priv-app/HorizonUXResolution/
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

custom-horizonux-pip-rounded-corners-enabler-overlay: check
	@echo " - Build initiated by $(shell id -un) at $(shell date +"%I:%M%p") - $(shell date +"%Y-%d-%m")"
	@mkdir -p ./build/product/overlay
	@apktool build ./packages/systemui/oneui3/rounded_corners_on_pip/ > /dev/null 2>&1 && { \
		mv ./packages/systemui/oneui3/rounded_corners_on_pip/dist/luna.horizonux.pip_enabler.systemui.overlay.apk ./build/product/overlay/; \
	} || { \
		echo " - Failed to build the custom settings overlay, please try again.."; \
	}
# Build targets

# Prevent make from considering files with the same name as targets
.PHONY: check a30-cutout unlimited-photo-backups remove-useless-vendor-things disable-debugging-authorization bluetooth-library-patcher horizonux-resolution-app-builder custom-horizonux-setup-wizard-overlay custom-horizonux-remove-none-security-type-and-add-animations-scale custom-horizonux-pip-rounded-corners-enabler-overlay