###########################
##              N O T E

# change values to your needs and re-run the script.

# true means it's enabled, false means it's disabled.

# fill-up those variables with "xxx" to prevent build errors.

# Thank you for using HorizonUX, please provide your feedback in our official chat!

##              N O T E
#########################

# setup retard environments=.
mkdir -p ./build/system/product/priv-app ./build/system/product/etc ./build/system/product/sysconfig ./build/system/product/overlay/ ./build/system/etc/permissions/ ./build/system/product/etc/permissions/ ./build/custom_recovery_with_fastbootd/

# Horizon codename and etc..
CODENAME="Mango mango mango mango mango" # Those who know! :shitty-troll-face:
CODENAME_VERSION_REFERENCE_ID=0.0

# Build Target properties..
BUILD_TARGET_ANDROID_VERSION=xx
BUILD_TARGET_HAS_PRISM=false
BUILD_TARGET_MODEL=xxx

# Target properties.
TARGET_BUILD_IS_FOR_DEBUGGING=false
if [ "${TARGET_BUILD_IS_FOR_DEBUGGING}" == "true" ]; then TARGET_BUILD_REMOVE_ADB_AUTHORIZATION=true; else TARGET_BUILD_REMOVE_ADB_AUTHORIZATION=false; fi
TARGET_REQUIRES_BLUETOOTH_LIBRARY_PATCHES=false
TARGET_REMOVE_NONE_SECURITY_OPTION=true
TARGET_REMOVE_SWIPE_SECURITY_OPTION=false
TARGET_ADD_EXTRA_ANIMATION_SCALES=true
TARGET_ADD_ROUNDED_CORNERS_TO_THE_PIP_WINDOWS=true
TARGET_INCLUDE_FASTBOOTD_PATCH_BY_RATCODED=false
TARGET_INCLUDE_UNLIMITED_BACKUP=false
TARGET_INCLUDE_CUSTOM_SETUP_WELCOME_MESSAGES=false
TARGET_SCREEN_WIDTH=xxxx
TARGET_SCREEN_HEIGHT=xxxx
CUSTOM_SETUP_WELCOME_MESSAGE="xxx"

# misc properties..
RECOVERY_IMAGE_PATH=xx/recovery.img
PRODUCT_CSC_NAME=BTE
SWITCH_DEFAULT_LANGUAGE_ON_PRODUCT_BUILD=true
NEW_DEFAULT_LANGUAGE_ON_PRODUCT=xxx
NEW_DEFAULT_LANGUAGE_COUNTRY_ON_PRODUCT=xxx

# replace these with your dir
SYSTEM_DIR="xxx"
SYSTEM_EXT_DIR="xxx"
VENDOR_DIR="xxx"
PRODUCT_DIR="xxx"
PRISM_DIR="xxx"

# uuhrm.
SCRIPTS=(
  "./misc/scripts/add_unlimited_backups.sh"
  "./horizon/patches/disable_adb_authorization/disable_adb_authorization.sh"
  "./horizon/patches/bluetooth_library_patcher/patch.sh"
  "./misc/scripts/github_at_luna__FLOSSPAPER.sh"
  "./patches/bring_fastbootd_into_recovery/patches.sh"
)

TARS=(
  "./packages/horizonux_salvo-unica-updater/smali.tar"
  "./packages/horizonux_salvo-unica-updater/original/META-INF.tar"
)

BUILD_DIR=./build/system
OVERLAY_DIR=./build/system/product/overlay
ETC_DIR=./build/system/etc/sysconfig
PRIV_APP_DIR=./build/system/priv-app

function setprop() {
  awk -v pat="^$1=" -v value="$1=$2" '{ if ($0 ~ pat) print value; else print $0; }' $3 > $3.tmp
  mv $3.tmp $3
}

function abort() {
  echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] [:\e[0;36mABORT\e[0;37m:] -\e[0;31m $1\e[0;37m"
  exit 1;
}

function warns() {
  echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] / [:\e[0;36mWARN\e[0;37m:] / [:\e[0;32m$2\e[0;37m:] -\e[0;33m $1\e[0;37m"
  return 1;
}

function console_print() {
  echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] / [:\e[0;36mWARN\e[0;37m:] / [:\e[0;32mJOB\e[0;37m:] -\e[0;33m $1\e[0;37m"
}

function default_language_configuration() {
  local language="$1"
  local country="$2"
  [ -z $language ] && language=en
  [ -z $country ] && country=US
  if [ -f "${PRODUCT_DIR}/omc/${PRODUCT_CSC_NAME}/conf/consumer.xml" ]; then
    sed 's|<DefLanguage>[^<]*</DefLanguage>|<DefLanguage>${language}-${country}</DefLanguage>|g' ${PRODUCT_DIR}/omc/${PRODUCT_CSC_NAME}/conf/consumer.xml
    sed 's|<DefLanguageNoSIM>[^<]*</DefLanguageNoSIM>|<DefLanguageNoSIM>${language}-${country}</DefLanguageNoSIM>|g' ${PRODUCT_DIR}/omc/${PRODUCT_CSC_NAME}/conf/consumer.xml
  else 
    sed 's|<DefLanguage>[^<]*</DefLanguage>|<DefLanguage>${language}-${country}</DefLanguage>|g' ${PRODUCT_DIR}/omc/*/conf/consumer.xml
    sed 's|<DefLanguageNoSIM>[^<]*</DefLanguageNoSIM>|<DefLanguageNoSIM>${language}-${country}</DefLanguageNoSIM>|g' ${PRODUCT_DIR}/omc/*/conf/consumer.xml
  fi
}

function custom_setup_finished_messsage() {
  [ -z "${CUSTOM_SETUP_WELCOME_MESSAGE}" ] && CUSTOM_SETUP_WELCOME_MESSAGE="Welcome to HorizonUX"
  [ "${CUSTOM_SETUP_WELCOME_MESSAGE}" == "xxx" ] && CUSTOM_SETUP_WELCOME_MESSAGE="Welcome to HorizonUX"
  sed -i 's|<string name="outro_title">.*</string>|<string name="outro_title">&quot;${CUSTOM_SETUP_WELCOME_MESSAGE}&quot;</string>|' ./packages/sec_setup_wizard_horizonux_overlay/res/values/strings.xml
}

for script in ${SCRIPTS[@]}; do
  [ -f $script ] || { 
    abort "Script files are missing, exiting..."; 
  };
done
for tar in ${TARS[@]}; do
  [ -f $tar ] || { 
    abort "Tar files are missing, exiting...";
  }; 
done

command -v apktool >/dev/null 2>&1 || { \
  abort "apktool is not installed. Please install it to proceed."; \
}

command -v zip >/dev/null 2>&1 || { \
  abort "zip is not installed. Please install it to proceed."; \
}

# ok, fbans dropped!
awk '{print}' ./banner
console_print "Starting to build HorizonUX ${CODENAME} - v${CODENAME_VERSION_REFERENCE_ID} on $(id -un)'s computer..."

################ boom
if [ ${SYSTEM_DIR} == "xxx" ] || [ -z "${SYSTEM_DIR}" ]; then
  abort " - system directory environment path is not set, exiting..."
elif [ ${SYSTEM_EXT_DIR} == "xxx" ] || [ -z "${SYSTEM_EXT_DIR}" ]; then
  abort " - system_ext directory environment path is not set, exiting..."
elif [ ${VENDOR_DIR} == "xxx" ] || [ -z "${VENDOR_DIR}" ]; then
  abort " - vendor directory environment path is not set, exiting..."
elif [ ${PRODUCT_DIR} == "xxx" ] || [ -z "${PRODUCT_DIR}" ]; then
  abort " - product directory environment path is not set, exiting..."
elif [ ${PRISM_DIR} == "xxx" ] && [ ${BUILD_TARGET_HAS_PRISM} == "false" ] ; then
  abort " - prism directory environment path is not set, exiting..."
fi
################ boom

if [ ${TARGET_BUILD_IS_FOR_DEBUGGING} == "true" ]; then
	{
	  echo "############ WARNING, EXPERIMENTAL FLAGS AHEAD!
	logcat.live=enable
	sys.lpdumpd=1
	persist.debug.atrace.boottrace=1
	persist.device_config.global_settings.sys_traced=1
	persist.traced.enable=1
	log.tag.ConnectivityManager=V
	log.tag.ConnectivityService=V
	log.tag.NetworkLogger=V
	log.tag.IptablesRestoreController=V
	log.tag.ClatdController=V
	persist.sys.lmk.reportkills=false
	security.dsmsd.enable=true
	persist.log.ewlogd=1
	sys.config.freecess_monitor=true
	persist.heapprofd.enable=1
	traced.lazy.heapprofd=1
	debug.enable=true
	sys.wifitracing.started=1
	security.edmaudit=false
	ro.sys.dropdump.on=On
	persist.systemserver.sa_bindertracker=false
	############ WARNING, EXPERIMENTAL FLAGS AHEAD!"
	} >> ${SYSTEM_DIR}/build.prop

	{ 
	  echo "############ WARNING, EXPERIMENTAL FLAGS AHEAD!
	setprop log.tag.snap_api::snpe VERBOSE
	setprop log.tag.snap_api::V3 VERBOSE
	setprop log.tag.snap_api::V2 VERBOSE
	setprop log.tag.snap_compute::V3 VERBOSE
	setprop log.tag.snap_compute::V2 VERBOSE
	setprop log.tag.snaplite_lib VERBOSE
	setprop log.tag.snap_api::snap_eden::V3 VERBOSE
	setprop log.tag.snap_api::snap_ofi::V1 VERBOSE
	setprop log.tag.snap_hidl_v3 VERBOSE
	setprop log.tag.snap_service@1.2 VERBOSE
	############ WARNING, EXPERIMENTAL FLAGS AHEAD!"
	} >> ./build/system/etc/init/init.debug_castleprops.rc
	warns "Debugging stuffs are enabled in this build, please proceed with caution and do remember that your device will heat more due to debugging process running in the background.." "DEBUGGING_ENABLER"
fi

if [ "${BUILD_TARGET_ANDROID_VERSION}" -ge "14" ]; then
  console_print "removing some bloats, thnx Salvo!"
  cd ${SYSTEM_DIR}
  rm -rf etc/permissions/privapp-permissions-com.samsung.android.kgclient.xml \
  etc/public.libraries-wsm.samsung.txt \
  lib/libhal.wsm.samsung.so \
  lib/vendor.samsung.hardware.security.wsm.service-V1-ndk.so \
  lib64/libhal.wsm.samsung.so \
  lib64/vendor.samsung.hardware.security.wsm.service-V1-ndk.so priv-app/KnoxGuard
fi

if [ "${TARGET_BUILD_REMOVE_ADB_AUTHORIZATION}" == "true" ]; then
  console_print "sheeeeshhhhhh, removing adb authorization!"
  . ${SCRIPTS[1]} "${SYSTEM_DIR}" "${PRODUCT_DIR}"
  console_print "done RAHHHHHHHHHHHHHH!"
fi

console_print "changing default language..."
default_language_configuration ${NEW_DEFAULT_LANGUAGE_ON_PRODUCT} ${NEW_DEFAULT_LANGUAGE_COUNTRY_ON_PRODUCT}
console_print "done RAHHHHHHHHHHHHHH!"

if [ ${TARGET_INCLUDE_UNLIMITED_BACKUP} == "true" ]; then
  console_print "adding unlimited backup feature...."
  mkdir -p ./build/system/product/etc/sysconfig/
  . ${SCRIPTS[0]}
  mv ./build/system/product/etc/sysconfig/* ${SYSTEM_DIR}/etc/sysconfig/
  console_print "done RAHHHHHHHHHHHHHH!"
fi

if [ "${TARGET_INCLUDE_CUSTOM_SETUP_WELCOME_MESSAGES}" == "true" ]; then
  console_print "adding custom setup wizard text...."
  custom_setup_finished_messsage
  apktool build ./packages/sec_setup_wizard_horizonux_overlay/ &>/dev/null
  mv ./packages/sec_setup_wizard_horizonux_overlay/dist/horizonux.android.setup.wizard.overlay.apk ./build/system/product/overlay/
  console_print "done RAHHHHHHHHHHHHHH!"
fi

if [ "${TARGET_SCREEN_WIDTH}" == "1080" ] && [ "${TARGET_SCREEN_HEIGHT}" == "2340" ]; then
  console_print "Building HorizonUXScreenResolution app for your device...."
  mkdir -p ./build/system/product/priv-app/HorizonUXResolution
  . ${SCRIPTS[3]}
  apktool build ./packages/horizonux_resolution/ &>/dev/null
  mv ./packages/horizonux_resolution/dist/HorizonUXResolution.apk ./build/system/product/priv-app/HorizonUXResolution/
  mv ./build/system/etc/permissions/privapp-permissions-horizonux.screen.resolution.xml ./build/system/product/etc/permissions/
  console_print "done RAHHHHHHHHHHHHHH!"
fi

if [ "${TARGET_REQUIRES_BLUETOOTH_LIBRARY_PATCHES}" == "true" ]; then
  console_print "Patching bluetooth...."
  . ${SCRIPTS[2]} "${SYSTEM_DIR}/lib64/libbluetooth_jni.so"
  console_print "Done RAHHHHHHHHHHHHHH!"
fi

if [ "${TARGET_INCLUDE_FASTBOOTD_PATCH_BY_RATCODED}" == "true" ]; then
  console_print "Patching recovery image..."
  . ${SCRIPTS[4]}
  console_print "Done RAHHHHHHHHHHHHHH!"
fi

# nuke shits from the system.
rm -rf "${SYSTEM_DIR}"/hidden "${SYSTEM_DIR}"/preload "${SYSTEM_DIR}"/recovery-from-boot.p "${SYSTEM_DIR}"/bin/install-recovery.sh

if grep -q "flash_recovery_sec" "${SYSTEM_DIR}/etc/uncrypt.rc"; then
  mkdir -p ./tmp/
  grep -v "flash_recovery_sec" "${SYSTEM_DIR}/etc/uncrypt.rc" > ./tmp/uncrypt.rc
  mv ./tmp/uncrypt.rc "${SYSTEM_DIR}/etc/uncrypt.rc"
  rm -rf ./tmp/
fi

if [ "$TARGET_REMOVE_NONE_SECURITY_OPTION" == "true" ]; then
  console_print "removing none security option from lockscreen settings..."; echo ""
  if [ "${BUILD_TARGET_ANDROID_VERSION}" -ge "12" ]; then warns "this TARGET_REMOVE_NONE_SECURITY_OPTION feature is found on android 11 and it might exist on later revisions, report if it doesn't work. thanks!" "TARGET_OUT_OF_BOUNDS"; fi
  cat >> "./packages/settings/oneui3/remove_none_option_on_security_tab/res/values/bools.xml" << EOF
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <bool name="config_hide_none_security_option">true</bool>
EOF
  console_print "Done RAHHHHHHHHHHHHHH!"
fi

if [ "${TARGET_REMOVE_SWIPE_SECURITY_OPTION}" == "true" ]; then
  console_print "removing swipe security option from lockscreen settings..."; echo ""
  if [ "${BUILD_TARGET_ANDROID_VERSION}" -ge "12" ]; then warns "this TARGET_REMOVE_SWIPE_SECURITY_OPTION feature is found on android 11 and it might exist on later revisions, report if it doesn't work. thanks!" "TARGET_OUT_OF_BOUNDS"; fi
  echo "    <bool name="config_hide_swipe_security_option">true</bool>" >> ./packages/settings/oneui3/remove_none_option_on_security_tab/res/values/bools.xml
  echo "</resources>" >> ./packages/settings/oneui3/remove_none_option_on_security_tab/res/values/bools.xml
  console_print "Done RAHHHHHHHHHHHHHH!"
else
  echo "</resources>" >> ./packages/settings/oneui3/remove_none_option_on_security_tab/res/values/bools.xml
fi

if [ "${TARGET_REMOVE_SWIPE_SECURITY_OPTION}" == "true" ]; then
  if [ "${BUILD_TARGET_ANDROID_VERSION}" -ge "12" ]; then warns "this TARGET_REMOVE_SWIPE_SECURITY_OPTION feature is found on android 11 and it might exist on later revisions, report if it doesn't work. thanks!" "TARGET_OUT_OF_BOUNDS"; fi
  apktool build ./packages/settings/oneui3/remove_none_option_on_security_tab/ &>/dev/null
  mv ./packages/settings/oneui3/remove_none_option_on_security_tab/dist/luna.horizonux.system.settings.nullster.apk ./build/system/product/overlay/
fi

if [ "${TARGET_ADD_EXTRA_ANIMATION_SCALES}" == "true" ]; then
  console_print "cooking extra animation scales.."
  apktool build ./packages/settings/oneui3/extra_animation_scales/ &>/dev/null
  mv ./packages/settings/oneui3/extra_animation_scales/dist/luna.horizonux.system.settings.extranimation.apk ./build/system/product/overlay/
  console_print "Done RAHHHHHHHHHHHHHH!"
fi

if [ "${TARGET_ADD_ROUNDED_CORNERS_TO_THE_PIP_WINDOWS}" == "true" ]; then
  console_print "cooking rounded corners on pip window...."
  if [ "${BUILD_TARGET_ANDROID_VERSION}" -ge "12" ]; then warns "this TARGET_REMOVE_SWIPE_SECURITY_OPTION feature is found on android 11 and it might exist on later revisions, report if it doesn't work. thanks!" "TARGET_OUT_OF_BOUNDS"; fi
  apktool build ./packages/systemui/oneui3/rounded_corners_on_pip/ &>/dev/null
  mv ./packages/systemui/oneui3/rounded_corners_on_pip/dist/luna.horizonux.pip_enabler.systemui.overlay.apk ./build/system/product/overlay/
  console_print "Done RAHHHHHHHHHHHHHH!"
fi

console_print " - Build finished by $(id -un) at $(date +%I:%M%p) on $(date +%Y-%m-%d)"
console_print "   Check the /build folder for the items you have built."
console_print "   Please sign the built overlay or application packages manually with your own private keys; do not use any public keys."
console_print "   provided by any application building software. "