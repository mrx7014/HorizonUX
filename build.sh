###########################
##              N O T E

# change values to your needs and re-run the script.

# true means it's enabled, false means it's disabled.

# fill-up those variables with "xxx" to prevent build errors.

# Thank you for using HorizonUX, please provide your feedback in our official chat!

##              N O T E
#########################


# setup retard environments=.
mkdir -p ./build/system/product/priv-app ./build/system/product/etc ./build/system/product/sysconfig ./build/system/etc/permissions/ ./build/system/product/etc/permissions/

# Horizon codename and etc..
CODENAME=Horizon
CODENAME_VERSION_REFERENCE_ID=1.0

# Build Target properties..
BUILD_TARGET_REFERENCE_ID=11
BUILD_TARGET_HAS_PRISM=false
BUILD_TARGET_MODEL=xxx

# Target properties.
TARGET_BUILD_IS_FOR_DEBUGGING=false
if [ "${TARGET_BUILD_IS_FOR_DEBUGGING}" == "true" ]; then TARGET_BUILD_REMOVE_ADB_AUTHORIZATION=true; else TARGET_BUILD_REMOVE_ADB_AUTHORIZATION=false; fi
TARGET_INCLUDE_UNLIMITED_BACKUP=false
TARGET_INCLUDE_CUSTOM_SETUP_WELCOME_MESSAGES=false
TARGET_SCREEN_WIDTH=xxxx
TARGET_SCREEN_HEIGHT=xxxx
CUSTOM_SETUP_WELCOME_MESSAGE="xxx"

# misc properties..
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
)

TARS=(
  "./packages/horizonux_salvo-unica-updater/smali.tar"
  "./packages/horizonux_salvo-unica-updater/original/META-INF.tar"
)

BUILD_DIR=./build/system
OVERLAY_DIR=./build/system/product/overlay
ETC_DIR=./build/system/etc/sysconfig
PRIV_APP_DIR=./build/system/priv-app

for script in ${SCRIPTS[@]}; do
  [ -f $script ] || { 
    echo " - Error: Script $$script does not exist. Please check the path."; 
	exit 1;
  };
done
for tar in ${TARS[@]}; do
  [ -f $tar ] || { 
    echo " - Error: Tar file $$tar does not exist. Please check the path.";
	exit 1; 
  }; 
done

command -v apktool >/dev/null 2>&1 || { \
  echo " - Error: apktool is not installed. Please install it to proceed."; \
  exit 1; \
}

command -v zip >/dev/null 2>&1 || { \
  echo " - Error: zip is not installed. Please install it to proceed."; \
  exit 1; \
}

function setprop() {
  awk -v pat="^$1=" -v value="$1=$2" '{ if ($0 ~ pat) print value; else print $0; }' $3 > $3.tmp
  mv $3.tmp $3
}

function abort() {
  echo "$1"
  exit 1;
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

if [ "${BUILD_TARGET_REFERENCE_ID}" -ge "14" ]; then
  cd ${SYSTEM_DIR}
  rm -rf etc/permissions/privapp-permissions-com.samsung.android.kgclient.xml \
  etc/public.libraries-wsm.samsung.txt \
  lib/libhal.wsm.samsung.so \
  lib/vendor.samsung.hardware.security.wsm.service-V1-ndk.so \
  lib64/libhal.wsm.samsung.so \
  lib64/vendor.samsung.hardware.security.wsm.service-V1-ndk.so priv-app/KnoxGuard
fi

################ boom
if [ ${SYSTEM_DIR} == "xxx" ]; then
  abort " - system directory environment path is not set, exiting..."
elif [ ${SYSTEM_EXT_DIR} == "xxx" ]; then
  abort " - system_ext directory environment path is not set, exiting..."
elif [ ${VENDOR_DIR} == "xxx" ]; then
  abort " - vendor directory environment path is not set, exiting..."
elif [ ${PRODUCT_DIR} == "xxx" ]; then
  abort " - product directory environment path is not set, exiting..."
elif [ ${PRISM_DIR} == "xxx" ] && [ ${BUILD_TARGET_HAS_PRISM} == "false" ] ; then # l3gacy device momento.
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
	ro.horizonux.sys.dropdump.on=ENABLED
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
fi

if [ "${TARGET_BUILD_REMOVE_ADB_AUTHORIZATION}" == "true" ]; then
  . ${SCRIPTS[1]} "${SYSTEM_DIR}" "${PRODUCT_DIR}"
fi

default_language_configuration ${NEW_DEFAULT_LANGUAGE_ON_PRODUCT} ${NEW_DEFAULT_LANGUAGE_COUNTRY_ON_PRODUCT}

if [ ${TARGET_INCLUDE_UNLIMITED_BACKUP} == "true" ]; then
  mkdir -p ./build/system/product/etc/sysconfig/
  . ${SCRIPTS[0]}
  mv ./build/system/product/etc/sysconfig/* ${SYSTEM_DIR}/etc/sysconfig/
fi

if [ "${TARGET_INCLUDE_CUSTOM_SETUP_WELCOME_MESSAGES}" == "true" ]; then
  custom_setup_finished_messsage
  apktool build ./packages/sec_setup_wizard_horizonux_overlay/ 2>/dev/null
fi

if [ "${TARGET_SCREEN_WIDTH}" == "1080" ] && [ "${TARGET_SCREEN_HEIGHT}" == "2340" ]; then
  mkdir -p ./build/system/product/priv-app/HorizonUXResolution
  . ${SCRIPTS[3]}
  apktool build ./packages/horizonux_resolution/
  mv ./build/system/etc/permissions/privapp-permissions-horizonux.screen.resolution.xml ./build/system/product/etc/permissions
fi

echo " - Build finished by $(id -un) at $(date +%I:%M%p) on $(date +%Y-%m-%d)"
echo "   Check the /build folder for the items you have built."
echo "   Please sign the built overlay or application packages manually with your own private keys; do not use any public keys."
echo "   provided by any application building software. "