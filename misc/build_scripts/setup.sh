# cache these headaches
HORIZON_SYSTEM_DIR=$(absolute_path --system)
HORIZON_SYSTEM_EXT_DIR=$(absolute_path --system_ext)
HORIZON_PRODUCT_DIR=$(absolute_path --product)
HORIZON_PRISM_DIR=$(absolute_path --prism)
HORIZON_VENDOR_DIR=$(absolute_path --vendor)

# bomboclatt
TARGET_BUILD_FLOATING_FEATURE_PATH="$(absolute_path --system)/etc/floating_feature.xml"
if [ ! -f "$(absolute_path --system)/etc/floating_feature.xml" ]; then
	TARGET_BUILD_FLOATING_FEATURE_PATH="$(absolute_path --vendor)/etc/floating_feature.xml"
fi

# bomb.
if [ "${TARGET_BUILD_IS_FOR_DEBUGGING}" == "true" ]; then 
	bool TARGET_BUILD_REMOVE_ADB_AUTHORIZATION true
else
	bool TARGET_BUILD_REMOVE_ADB_AUTHORIZATION false
fi

# ok, fbans dropped!
echo -e "'\033[0;31m'########################################################################"
echo -e "   _  _     _   _            _                _   ___  __"
echo -e " _| || |_  | | | | ___  _ __(_)_______  _ __ | | | \\ \/ /"
echo -e "|_  ..  _| | |_| |/ _ \\| '__| |_  / _ \\| '_ \\| | | |\\  / "
echo -e "|_      _| |  _  | (_) | |  | |/ / (_) | | | | |_| |/  \\ "
echo -e "  |_||_|   |_| |_|\___/|_|  |_/___\\___/|_| |_|\___//_/\\_\\"
echo -e "                                                         "
echo -e "   _  _     ____        _ _     _                           _       _   "
echo -e " _| || |_  | __ ) _   _(_) | __| | ___ _ __   ___  ___ _ __(_)_ __ | |_ "
echo -e "|_  ..  _| |  _ \\| | | | | |/ _\` |/ _ \\ '__| / __|/ __| '__| | '_ \\| __|"
echo -e "|_      _| | |_) | |_| | | | (_| |  __/ |    \\__ \\ (__| |  | | |_) | |_ "
echo -e "  |_||_|   |____/ \\__,_|_|_|\\__,_|\\___|_|    |___/\\___|_|  |_| .__/ \\__|"
echo -e "                                                             |_|"
echo -e "'\033[0;33m'########################################################################'\033[0m'"
console_print "Starting to build HorizonUX ${CODENAME} - v${CODENAME_VERSION_REFERENCE_ID} on $(id -un)'s computer..."
console_print "Build started by $(id -un) at $(date +%I:%M%p) on $(date +%d\ %B\ %Y)"
console_print "The Current Username : $(id -un)"
console_print "CPU Architecture : $(lscpu | grep Architecture | awk '{print $2}')"
console_print "CPU Manufacturer and model : $(lscpu | grep 'Model name' | awk -F: '{print $2}' | xargs)"
console_print "L2 Cache Memory Size : $(lscpu | grep L2 | awk '{print $3}')"
console_print "Available RAM Memory : $(free -h | grep Mem | awk '{print $7}')B"
console_print "The Computer is turned on since : $(uptime --pretty | awk '{print substr($0, 4)}')"

# boom
if ! $testEnv; then
	if [ ! -d "${SCRIPTS[1]}" ]; then
		abort "Script files are missing, exiting..."
	elif [ ! -d "${PREFIX}/bin/zip" ]; then
		abort "zip is not installed. Please install it to proceed."
	elif [ ! -d "${PREFIX}/bin/python3" ]; then
		warns "python3 is not installed. It's not required unless you want to patch your recovery image." "$(echo "DEPENDENCIES_ERRORS" | tr '[:lower:]' '[:upper:]')"
	elif [ -z "${JAVA_HOME}" ]; then
		abort "Please install the latest openjdk to proceed."
	fi
fi

################ boom
if $TARGET_BUILD_IS_FOR_DEBUGGING; then
	echo -e "\n############ WARNING, EXPERIMENTAL FLAGS AHEAD!\nlogcat.live=enable\nsys.lpdumpd=1\npersist.debug.atrace.boottrace=1\npersist.device_config.global_settings.sys_traced=1\npersist.traced.enable=1\nlog.tag.ConnectivityManager=V\nlog.tag.ConnectivityService=V\nlog.tag.NetworkLogger=V\nlog.tag.IptablesRestoreController=V\nlog.tag.ClatdController=V\npersist.sys.lmk.reportkills=false\nsecurity.dsmsd.enable=true\npersist.log.ewlogd=1\nsys.config.freecess_monitor=true\npersist.heapprofd.enable=1\ntraced.lazy.heapprofd=1\ndebug.enable=true\nsys.wifitracing.started=1\nsecurity.edmaudit=false\nro.sys.dropdump.on=On\npersist.systemserver.sa_bindertracker=false\n############ WARNING, EXPERIMENTAL FLAGS AHEAD!" >> $(absolute_path --system)/build.prop 
	echo -e "\n############ WARNING, EXPERIMENTAL FLAGS AHEAD!\nsetprop log.tag.snap_api::snpe VERBOSE\nsetprop log.tag.snap_api::V3 VERBOSE\nsetprop log.tag.snap_api::V2 VERBOSE\nsetprop log.tag.snap_compute::V3 VERBOSE\nsetprop log.tag.snap_compute::V2 VERBOSE\nsetprop log.tag.snaplite_lib VERBOSE\nsetprop log.tag.snap_api::snap_eden::V3 VERBOSE\nsetprop log.tag.snap_api::snap_ofi::V1 VERBOSE\nsetprop log.tag.snap_hidl_v3 VERBOSE\nsetprop log.tag.snap_service@1.2 VERBOSE\n############ WARNING, EXPERIMENTAL FLAGS AHEAD!" > ./build/system/etc/init/init.debug_castleprops.rc
	warns "Debugging stuffs are enabled in this build, please proceed with caution and do remember that your device will heat more due to debugging process running in the background.." "DEBUGGING_ENABLER"
	# change the values to enable debugging without authorization.
	switchprop "ro.adb.secure" "0" "$(absolute_path --system)/build.prop"
	switchprop "ro.debuggable" "1" "$(absolute_path --system)/build.prop"
	if ! cat ${PRODUCT_PROP} | grep -q persist.sys.usb.config; then
		PRODUCT_PROP=$(absolute_path --system)/product/build.prop
		switchprop "persist.sys.usb.config" "mtp,adb" "$(absolute_path --system)/product/build.prop"
	else
		switchprop "persist.sys.usb.config" "mtp,adb" "$(absolute_path --product)/build.prop" 
	fi
fi

if [ "$BUILD_TARGET_ANDROID_VERSION" == "14" ]; then
	console_print "removing some bloats, thnx Salvo!"
	rm -rf $(absolute_path --system)/etc/permissions/privapp-permissions-com.samsung.android.kgclient.xml \
	$(absolute_path --system)/etc/public.libraries-wsm.samsung.txt \
	$(absolute_path --system)/lib/libhal.wsm.samsung.so \
	$(absolute_path --system)/lib/vendor.samsung.hardware.security.wsm.service-V1-ndk.so \
	$(absolute_path --system)/lib64/libhal.wsm.samsung.so \
	$(absolute_path --system)/lib64/vendor.samsung.hardware.security.wsm.service-V1-ndk.so \
	$(absolute_path --system)/priv-app/KnoxGuard
fi

if $TARGET_REMOVE_USELESS_SAMSUNG_APPLICATIONS_STUFFS; then
	. ${SCRIPTS[5]}
fi

if $TARGET_INCLUDE_UNLIMITED_BACKUP; then
	console_print "Adding unlimited backup feature...."
	mkdir -p ./build/system/product/etc/sysconfig/
	. ${SCRIPTS[0]}
	mv ./build/system/product/etc/sysconfig/* $(absolute_path --system)/etc/sysconfig/
fi

if $TARGET_REQUIRES_BLUETOOTH_LIBRARY_PATCHES; then
	console_print "Patching bluetooth...."
	# initial checks.
	if [ ! -f "$(absolute_path --system)/lib64/libbluetooth_jni.so" ]; then
		abort "The \"libbluetooth_jni.so\" file from the system/lib64 wasn't found, copy and put them in a random directory and try again.."
	fi
	# patch this weird device lib.
	HEX_PATCH "$(absolute_path --system)/lib64/libbluetooth_jni.so" "6804003528008052" "2b00001428008052"
fi

if $TARGET_INCLUDE_FASTBOOTD_PATCH_BY_RATCODED; then
	console_print "Patching recovery image..."
	. ${SCRIPTS[2]}
fi

if $TARGET_INCLUDE_CUSTOM_SETUP_WELCOME_MESSAGES; then
	console_print "adding custom setup wizard text...."
	custom_setup_finished_messsage
	build_and_sign --overlay ./horizon/packages/sec_setup_wizard_horizonux_overlay/
fi

if $TARGET_REMOVE_NONE_SECURITY_OPTION; then
	warns_api_limitations "11"
	console_print "removing none security option from lockscreen settings..."
	echo -e "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<resources>\n\t<bool name=\"config_hide_none_security_option\">true</bool>\n" > ./horizon/packages/settings/oneui3/remove_none_option_on_security_tab/res/values/bools.xml
fi

if $TARGET_REMOVE_SWIPE_SECURITY_OPTION; then
	console_print "removing swipe security option from lockscreen settings..."
	warns_api_limitations "11"
	echo -e "\t<bool name=\"config_hide_swipe_security_option\">true</bool>\n</resources>" >> ./horizon/packages/settings/oneui3/remove_none_option_on_security_tab/res/values/bools.xml
else
	echo "</resources>" >> ./horizon/packages/settings/oneui3/remove_none_option_on_security_tab/res/values/bools.xml
fi

if $TARGET_REMOVE_SWIPE_SECURITY_OPTION; then
	warns_api_limitations "11"
	build_and_sign --overlay ./horizon/packages/settings/oneui3/remove_none_option_on_security_tab/
fi

if $TARGET_ADD_EXTRA_ANIMATION_SCALES; then
	console_print "cooking extra animation scales.."
	build_and_sign --overlay ./horizon/packages/settings/oneui3/extra_animation_scales/
fi

if $TARGET_ADD_ROUNDED_CORNERS_TO_THE_PIP_WINDOWS; then
	console_print "cooking rounded corners on pip window...."
	warns_api_limitations "11"
	build_and_sign --overlay ./horizon/packages/systemui/oneui3/rounded_corners_on_pip/
fi

if $TARGET_FLOATING_FEATURE_INCLUDE_GAMELAUNCHER_IN_THE_HOMESCREEN; then
	console_print "Enabling Game Launcher..."
	change_xml_values "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_DEFAULT_GAMELAUNCHER_ENABLE" "TRUE"
elif $TARGET_FLOATING_FEATURE_INCLUDE_GAMELAUNCHER_IN_THE_HOMESCREEN; then
	warns "Disabling Game Launcher..." "TARGET_FEATURE_CONFIGURATION"
	change_xml_values "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_DEFAULT_GAMELAUNCHER_ENABLE" "FALSE"
fi

if $BUILD_TARGET_HAS_HIGH_REFRESH_RATE_MODES; then
	console_print "Switching the default refresh rate to ${BUILD_TARGET_DEFAULT_SCREEN_REFRESH_RATE}Hz..."
	change_xml_values "SEC_FLOATING_FEATURE_LCD_CONFIG_HFR_DEFAULT_REFRESH_RATE" "${BUILD_TARGET_DEFAULT_SCREEN_REFRESH_RATE}"
elif ! $BUILD_TARGET_HAS_HIGH_REFRESH_RATE_MODES; then
	warns "Switching the default refresh rate to 60Hz (due to the BUILD_TARGET_HAS_HIGH_REFRESH_RATE_MODES variable being set to false)." "TARGET_FEATURE_CONFIGURATION"
	change_xml_values "SEC_FLOATING_FEATURE_LCD_CONFIG_HFR_DEFAULT_REFRESH_RATE" "60"
fi

if $TARGET_FLOATING_FEATURE_INCLUDE_SPOTIFY_AS_ALARM; then
	console_print "Adding spotify as an option in the clock app.."
	add_float_xml_values "SEC_FLOATING_FEATURE_CLOCK_CONFIG_ALARM_SOUND" "spotify"
fi

if $TARGET_FLOATING_FEATURE_BATTERY_SUPPORT_BSOH_SETTINGS; then
	console_print "This feature needs some patches to work on some roms, if you dont"
	console_print "see anything in the battery settings, please remove this on the next build."
	add_float_xml_values "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_BSOH_SETTINGS" "TRUE"
fi

# the live clock icon in the OneUI launcher.
if $TARGET_FLOATING_FEATURE_INCLUDE_CLOCK_LIVE_ICON; then
	console_print "Disabling the live clock icon from the launcher, great move!"
	change_xml_values "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_CLOCK_LIVE_ICON" "TRUE"
elif $TARGET_FLOATING_FEATURE_INCLUDE_CLOCK_LIVE_ICON; then
	console_print "Enabling the live clock icon from the launcher, bad move!"
	change_xml_values "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_CLOCK_LIVE_ICON" "FALSE"
fi

if $TARGET_FLOATING_FEATURE_INCLUDE_EASY_MODE; then
	console_print "Enabling Easy Mode..."
	change_xml_values "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE" "TRUE"
elif ! $TARGET_FLOATING_FEATURE_INCLUDE_EASY_MODE; then
	console_print "Disabling Easy Mode..."
	change_xml_values "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE" "FALSE"
fi

if $TARGET_FLOATING_FEATURE_DISABLE_BLUR_EFFECTS; then
	console_print "Disabling blur effects..."
	for blur_effects in SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_PARTIAL_BLUR SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_CAPTURED_BLUR SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG; do
		change_xml_values "$blur_effects" "FALSE" 
	done
fi

if $TARGET_FLOATING_FEATURE_ENABLE_ENHANCED_PROCESSING; then
	for enhanced_gaming in SEC_FLOATING_FEATURE_SYSTEM_SUPPORT_LOW_HEAT_MODE SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE SEC_FLOATING_FEATURE_SYSTEM_SUPPORT_ENHANCED_CPU_RESPONSIVENESS; do
		change_xml_values "$enhanced_gaming" "FALSE"
	done
fi

if $TARGET_FLOATING_FEATURE_ENABLE_EXTRA_SCREEN_MODES; then
	console_print "Adding support for extra screen modes...."
	for led_modes in SEC_FLOATING_FEATURE_LCD_SUPPORT_MDNIE_HW SEC_FLOATING_FEATURE_LCD_SUPPORT_WIDE_COLOR_GAMUT; do
		change_xml_values "${led_modes}" "FALSE"
	done
fi

if $TARGET_FLOATING_FEATURE_SUPPORTS_WIRELESS_POWER_SHARING; then
	console_print "Enabling Wireless powershare...."
	for wireless_power_sharing_lore in SEC_FLOATING_FEATURE_BATTERY_SUPPORT_HV SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_NIGHT_MODE \
		SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_TX; do
		add_float_xml_values "${i}" "TRUE"
	done
fi

if $TARGET_FLOATING_FEATURE_ENABLE_ULTRA_POWER_SAVING; then
	console_print "Enabling Ultra Power Saver mode...."
	add_float_xml_values "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING" "TRUE"
fi

if $TARGET_FLOATING_FEATURE_DISABLE_SMART_SWITCH; then
	console_print "Disabling Smart Switch feature in setup...."
	change_xml_values "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SMART_SWITCH" "FALSE"
fi

if $TARGET_FLOATING_FEATURE_SUPPORTS_DOLBY_IN_GAMES; then
	console_print "Enabling dolby encoding in games...."
	for dolby_in_games in SEC_FLOATING_FEATURE_AUDIO_SUPPORT_DEFAULT_ON_DOLBY_IN_GAME SEC_FLOATING_FEATURE_AUDIO_SUPPORT_DOLBY_GAME_PROFILE; do
		add_float_xml_values "${dolby_in_games}" "TRUE"
	done
fi

# let's download goodlook modules from corsicanu's repo.
if [[ "${BUILD_TARGET_SDK_VERSION}" -le "28" ]] && [[ "${TARGET_INCLUDE_SAMSUNG_THEMING_MODULES}" == "true" ]]; then
	console_print "Goodlook is not supported in android 9.0 or lower"
elif [[ "${BUILD_TARGET_SDK_VERSION}" -ge "29" ]] && [[ "${TARGET_INCLUDE_SAMSUNG_THEMING_MODULES}" == "true" ]]; then
	console_print "Checking internet connection...."
	timeout 3 ping supl.google.com &>/dev/null && {
    case "${BUILD_TARGET_SDK_VERSION}" in
		28)
			for i in $(seq 13); do
				if ask "Do you want to download ${GOODLOOK_MODULES_FOR_28_APP_NAMES[${i}]}"; then
					mkdir -p ./build/system/priv-app/${GOODLOOK_MODULES_FOR_28_APP_NAMES[${i}]}/
					download_stuffs https://github.com/corsicanu/goodlock_dump/releases/download/28/${GOODLOOK_MODULES_FOR_28[${i}]} ./build/system/priv-app/${GOODLOOK_MODULES_FOR_28_APP_NAMES[${i}]}/
				else 
					rmdir ./build/system/priv-app/${GOODLOOK_MODULES_FOR_28_APP_NAMES[${i}]}/ &>/dev/null
				fi
			done
		;;
	
		29)
			for i in $(seq 15); do
				if ask "Do you want to download ${GOODLOOK_MODULES_FOR_29_APP_NAMES[${i}]}"; then
					mkdir -p ./build/system/priv-app/${GOODLOOK_MODULES_FOR_29_APP_NAMES[${i}]}/
					download_stuffs https://github.com/corsicanu/goodlock_dump/releases/download/29/${GOODLOOK_MODULES_FOR_29[${i}]} ./build/system/priv-app/${GOODLOOK_MODULES_FOR_29_APP_NAMES[${i}]}/
				else 
					rmdir ./build/system/priv-app/${GOODLOOK_MODULES_FOR_29_APP_NAMES[${i}]}/ &>/dev/null
				fi
			done
		;;
	
		30)
			for i in $(seq 14); do
				if ask "Do you want to download ${GOODLOOK_MODULES_FOR_30_APP_NAMES[${i}]}"; then
					mkdir -p ./build/system/priv-app/${GOODLOOK_MODULES_FOR_30_APP_NAMES[${i}]}/
					download_stuffs https://github.com/corsicanu/goodlock_dump/releases/download/30/${GOODLOOK_MODULES_FOR_30[${i}]} ./build/system/priv-app/${GOODLOOK_MODULES_FOR_30_APP_NAMES[${i}]}/
				else 
					rmdir ./build/system/priv-app/${GOODLOOK_MODULES_FOR_30_APP_NAMES[${i}]}/ &>/dev/null
				fi
			done
		;;
	
		31)
			for i in $(seq 14); do
				if ask "Do you want to download ${GOODLOOK_MODULES_FOR_31_APP_NAMES[${i}]}"; then
					mkdir -p ./build/system/priv-app/${GOODLOOK_MODULES_FOR_31_APP_NAMES[${i}]}/
					download_stuffs https://github.com/corsicanu/goodlock_dump/releases/download/31/${GOODLOOK_MODULES_FOR_31[${i}]} ./build/system/priv-app/${GOODLOOK_MODULES_FOR_31_APP_NAMES[${i}]}/
				else 
					rmdir ./build/system/priv-app/${GOODLOOK_MODULES_FOR_31_APP_NAMES[${i}]}/ &>/dev/null
				fi
			done
		;;
	
		32)
			for i in $(seq 14); do
				if ask "Do you want to download ${GOODLOOK_MODULES_FOR_32_APP_NAMES[${i}]}"; then
					mkdir -p ./build/system/priv-app/${GOODLOOK_MODULES_FOR_32_APP_NAMES[${i}]}/
					download_stuffs https://github.com/corsicanu/goodlock_dump/releases/download/32/${GOODLOOK_MODULES_FOR_32[${i}]} ./build/system/priv-app/${GOODLOOK_MODULES_FOR_32_APP_NAMES[${i}]}/
				else 
					rmdir ./build/system/priv-app/${GOODLOOK_MODULES_FOR_32_APP_NAMES[${i}]}/ &>/dev/null
				fi
			done
		;;
	
		33)
			for i in $(seq 15); do
				if ask "Do you want to download ${GOODLOOK_MODULES_FOR_33_APP_NAMES[${i}]}"; then
					mkdir -p ./build/system/priv-app/${GOODLOOK_MODULES_FOR_33_APP_NAMES[${i}]}/
					download_stuffs https://github.com/corsicanu/goodlock_dump/releases/download/33/${GOODLOOK_MODULES_FOR_33[${i}]} ./build/system/priv-app/${GOODLOOK_MODULES_FOR_33_APP_NAMES[${i}]}/
				else 
					rmdir ./build/system/priv-app/${GOODLOOK_MODULES_FOR_33_APP_NAMES[${i}]}/ &>/dev/null
				fi
			done
		;;
	
		34)
			for i in $(seq 16); do
				if ask "Do you want to download ${GOODLOOK_MODULES_FOR_34_APP_NAMES[${i}]}"; then
					mkdir -p ./build/system/priv-app/${GOODLOOK_MODULES_FOR_34_APP_NAMES[${i}]}/
					download_stuffs https://github.com/corsicanu/goodlock_dump/releases/download/34/${GOODLOOK_MODULES_FOR_34[${i}]} ./build/system/priv-app/${GOODLOOK_MODULES_FOR_34_APP_NAMES[${i}]}/
				else 
					rmdir ./build/system/priv-app/${GOODLOOK_MODULES_FOR_34_APP_NAMES[${i}]}/ &>/dev/null
				fi
			done
		;;
	
		35)
			for i in $(seq 15); do
				if ask "Do you want to download ${GOODLOOK_MODULES_FOR_35_APP_NAMES[${i}]}"; then
					mkdir -p ./build/system/priv-app/${GOODLOOK_MODULES_FOR_35_APP_NAMES[${i}]}/
					download_stuffs https://github.com/corsicanu/goodlock_dump/releases/download/35/${GOODLOOK_MODULES_FOR_35[${i}]} ./build/system/priv-app/${GOODLOOK_MODULES_FOR_35_APP_NAMES[${i}]}/
				else 
					rmdir ./build/system/priv-app/${GOODLOOK_MODULES_FOR_35_APP_NAMES[${i}]}/ &>/dev/null
				fi
			done
		;;
	
		*)
			warns "Unsupported SDK version, skipping the installation of goodlook modules..." "GOODLOCK_INSTALLER"
		;;
		esac
} || {
	warns "Please connect the computer to a wifi or an ethernet connection to download good look modules." "GOODLOCK_INSTALLER"
}
fi

# installs audio resampler.
if $TARGET_INCLUDE_HORIZON_AUDIO_RESAMPLER; then
	console_print "Enabling HorizonUX audio resampler..."
	echo -e "\n# HorizonUX Audio resampler manager prop\npersist.horizonux.audio.resampler=available\n" >> $(absolute_path --system)/build.prop 
else
	console_print "Disabling HorizonUX audio resampler..."
	echo -e "\n# HorizonUX Audio resampler manager prop\npersist.horizonux.audio.resampler=unavailable\n" >> $(absolute_path --system)/build.prop 
fi

if $TARGET_INCLUDE_HORIZON_TOUCH_FIX; then
	console_print "Adding brotherboard's GSI touch fix..."
	echo -e "persist.horizonux.brotherboard.touch_fix=available\n" >> $(absolute_path --system)/build.prop
	cp -af ./horizon/rom_tweaker_script/brotherboard_touch_fix.sh $(absolute_path --system)/bin/
	chmod 755 $(absolute_path --system)/bin/brotherboard_touch_fix.sh
	chown 0 $(absolute_path --system)/bin/brotherboard_touch_fix.sh
	chgrp 0 $(absolute_path --system)/bin/brotherboard_touch_fix.sh
fi

# L, see the dawn makeconfigs.prop file :\
if $TARGET_INCLUDE_HORIZON_OEMCRYPTO_DISABLER_PLUGIN; then
	for part in $(absolute_path --system) $(absolute_path --vendor); do
		for libdir in $part/lib $part/lib64; Do
			if [ -f $part/$libdir/liboemcrypto.so ]; then
				touch $part/$libdir/liboemcrypto.so
			fi
		done
	done
fi

# custom wallpaper-res resources_info.json generator.
if $CUSTOM_WALLPAPER_RES_JSON_GENERATOR; then
	console_print "Opening resources_info.json generator....."
	. ${SCRIPTS[3]}
fi

# removes useless samsung stuffs from the vendor partition.
if $TARGET_REMOVE_USELESS_VENDOR_STUFFS; then
	console_print "Nuking useless vendor stuffs..."
	mkdir -p ./build/vendor/etc/init/
    nuke_stuffs
	console_print "Finished removing stuffs from wifi.rc file, checkout patched_resources/vendor/etc/init/ folder"
	console_print " and yeah besure to copy that into your actual vendor/etc/init folder and try if it works or not!"
fi

# nukes display refresh rate overrides on some video platforms.
if $DISABLE_DISPLAY_REFRESH_RATE_OVERRIDE; then
	console_print "Disabling Refresh rate override from surfaceflinger..."
	sed -i \
		"/max_frame_buffer_acquired_buffers/a ro.surface_flinger.enable_frame_rate_override=false" \
		"$(absolute_path --vendor)/default.prop"	
fi

# disable's DRC shit
if $DISABLE_DYNAMIC_RANGE_COMPRESSION; then
	console_print "Disabling Dynamic Range Compression..."
	sed -i 's/speaker_drc_enabled="true"/speaker_drc_enabled="false"/' $(absolute_path --vendor)/etc/audio_policy_configuration.xml
fi

# let's extend audio offload buffer size to 256kb and plug some of our things.
console_print "Running misc jobs..."
default_language_configuration ${NEW_DEFAULT_LANGUAGE_ON_PRODUCT} ${NEW_DEFAULT_LANGUAGE_COUNTRY_ON_PRODUCT}
change_xml_values "SEC_FLOATING_FEATURE_LAUNCHER_CONFIG_ANIMATION_TYPE" "${TARGET_FLOATING_FEATURE_LAUNCHER_CONFIG_ANIMATION_TYPE}"
echo -e "\n# extends the audio offload buffer size to 256kb\nvendor.audio.offload.buffer.size.kb=256" >> $(absolute_path --vendor)/build.prop
rm -rf $(absolute_path --system)/hidden $(absolute_path --system)/preload $(absolute_path --system)/recovery-from-boot.p $(absolute_path --system)/bin/install-recovery.sh
cp -af ./misc/etc/ringtones_and_etc/media/audio/* $(absolute_path --system)/media/audio/
cp -af ./horizon/rom_tweaker_script/init.ishimiiiiiiiiiiiiiii.rc $(absolute_path --system)/etc/init/
cp -af ./horizon/rom_tweaker_script/ishimiiiiiiiiii.sh $(absolute_path --system)/bin/
echo -e "\nservice brotherboard_touch_fix /system/bin/sh -c /system/bin/brotherboard_touch_fix.sh\n\tuser root\n\tgroup root\n\toneshot" >> $(absolute_path --system)/etc/init/init.ishimiiiiiiiiiiiiiii.rc
chmod 755 $(absolute_path --system)/bin/ishimiiiiiiiiii.sh
chmod 644 $(absolute_path --system)/etc/init/init.ishimiiiiiiiiiiiiiii.rc
chown 0 $(absolute_path --system)/bin/ishimiiiiiiiiii.sh $(absolute_path --system)/etc/init/init.ishimiiiiiiiiiiiiiii.rc
chgrp 0 $(absolute_path --system)/bin/ishimiiiiiiiiii.sh $(absolute_path --system)/etc/init/init.ishimiiiiiiiiiiiiiii.rc
change_xml_values "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAMSUNG_MARKETING_INFO" "FALSE"
# let's remove the flash recovery service on android 11, idk how to remove those in android 12+
# i guess we can use diff for that.
if [[ "$BUILD_TARGET_SDK_VERSION" == "30" ]] && grep -q "flash_recovery_sec" "$(absolute_path --system)/etc/init/uncrypt.rc"; then
	grep -v "flash_recovery_sec" "$(absolute_path --system)/etc/init/uncrypt.rc" > ./tmp/uncrypt.rc
	mv ./tmp/uncrypt.rc "$(absolute_path --system)/etc/init/uncrypt.rc"
fi
$TARGET_INCLUDE_CUSTOM_BRAND_NAME && change_xml_values "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME" "${BUILD_TARGET_CUSTOM_BRAND_NAME}"
[ -f "$(absolute_path --system)$(fetch_rom_arch --libpath)/libhal.wsm.samsung.so" ] && touch $(absolute_path --system)$(fetch_rom_arch --libpath)/libhal.wsm.samsung.so
# let's patch restart_radio_process for my own will. PLEASE LET THIS SLIDE OUTT!!!!
if [ "${BUILD_TARGET_SDK_VERSION}" -ge "29" ] && [ "${BUILD_TARGET_SDK_VERSION}" -le "33" ]; then
	apply_diff_patches "$(absolute_path --system)/etc/restart_radio_process.sh" "${DIFF_UNIFED_PATCHES[0]}"
fi
# again, let's patch wifi init files :/
if [ "${BUILD_TARGET_SDK_VERSION}" -eq "29" ]; then
	apply_diff_patches "$(absolute_path --vendor)/etc/init/wifi.rc" "${DIFF_UNIFED_PATCHES[1]}"
elif [ "${BUILD_TARGET_SDK_VERSION}" -eq "30" ] && [ "${BUILD_TARGET_SDK_VERSION}" -le "31" ]; then
	apply_diff_patches "$(absolute_path --vendor)/etc/init/wifi.rc" "${DIFF_UNIFED_PATCHES[2]}"
elif [ "${BUILD_TARGET_SDK_VERSION}" -eq "32" ] &&  [ "${BUILD_TARGET_SDK_VERSION}" -le "33" ]; then
	apply_diff_patches "$(absolute_path --vendor)/etc/init/wifi.rc" "${DIFF_UNIFED_PATCHES[3]}"
fi

# send off message.
console_print " Check the /build folder for the items you have built."
console_print " Please sign the built overlay or application packages manually with your own private keys;"
console_print " Do not use any public keys provided by any application building software. "
console_print " script errors are moved to the ./error_ring.log file, please consider checking it out! "