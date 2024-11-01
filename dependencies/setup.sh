# ok, fbans dropped!
awk '{print}' ./banner
console_print "Starting to build HorizonUX ${CODENAME} - v${CODENAME_VERSION_REFERENCE_ID} on $(id -un)'s computer..."
console_print "Build started by $(id -un) at $(date +%I:%M%p) on $(date +%d\ %B\ %Y)"
console_print "The Current User ID : $(lslogins | grep $(id -un) | xargs | cut -c 1-5)"
console_print "CPU Architecture : $(lscpu | grep Architecture | xargs | cut -c 15-21)"
console_print "CPU Manufacturer and model : $(lscpu | grep "Model name" | xargs | cut -c 13-1000)"
console_print "L2 Cache Memory Size : $(lscpu | grep L2 | xargs | cut -c 11-16)"
console_print "Available RAM Memory : $(free -h | grep Mem | xargs | cut -c 6-9)B"
console_print "The Computer is turned on since : $(uptime --pretty | cut -c 4-100)"

################ boom
if [ "${testEnv}" == "false" ] || [ -z "${testEnv}" ]; then
  if [[ ! -f "${SCRIPTS[1]}" ]]; then
    abort "Script files are missing, exiting..."
  elif [[ ! -f "${TARS[1]}" ]]; then
    abort "Tar files are missing, exiting..."
  fi

  # check if we have the dependencies or not.
  if ! apktool &>/dev/null; then
    abort "apktool is not installed. Please install it to proceed."
  elif ! zip &>/dev/null; then
    abort "zip is not installed. Please install it to proceed."
  fi

  if [ ${SYSTEM_DIR} == "xxx" ] || [ -z "${SYSTEM_DIR}" ]; then
    abort "system directory environment path is not set, exiting..."
  elif [ ${SYSTEM_EXT_DIR} == "xxx" ] || [ -z "${SYSTEM_EXT_DIR}" ]; then
    abort "system_ext directory environment path is not set, exiting..."
  elif [ ${VENDOR_DIR} == "xxx" ] || [ -z "${VENDOR_DIR}" ]; then
    abort "vendor directory environment path is not set, exiting..."
  elif [ ${PRODUCT_DIR} == "xxx" ] || [ -z "${PRODUCT_DIR}" ]; then
    abort "product directory environment path is not set, exiting..."
  elif [ ${PRISM_DIR} == "xxx" ] && [ ${BUILD_TARGET_HAS_PRISM} == "true" ] ; then
    abort "prism directory environment path is not set, exiting..."
  fi
  
  if [ -z "${JAVA_HOME}" ]; then
    abort "Please install the latest openjdk or any preferred java installation to proceed."
  fi
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
  } > ./build/system/etc/init/init.debug_castleprops.rc
  warns "Debugging stuffs are enabled in this build, please proceed with caution and do remember that your device will heat more due to debugging process running in the background.." "DEBUGGING_ENABLER"
fi

if [ "${BUILD_TARGET_ANDROID_VERSION}" -eq "14" ]; then
  console_print "removing some bloats, thnx Salvo!"
  cd ${SYSTEM_DIR}
  rm -rf etc/permissions/privapp-permissions-com.samsung.android.kgclient.xml \
  etc/public.libraries-wsm.samsung.txt \
  lib/libhal.wsm.samsung.so \
  lib/vendor.samsung.hardware.security.wsm.service-V1-ndk.so \
  lib64/libhal.wsm.samsung.so \
  lib64/vendor.samsung.hardware.security.wsm.service-V1-ndk.so priv-app/KnoxGuard
fi

console_print "changing default language..."
default_language_configuration ${NEW_DEFAULT_LANGUAGE_ON_PRODUCT} ${NEW_DEFAULT_LANGUAGE_COUNTRY_ON_PRODUCT}

if [ ${TARGET_INCLUDE_UNLIMITED_BACKUP} == "true" ]; then
  console_print "adding unlimited backup feature...."
  mkdir -p ./build/system/product/etc/sysconfig/
  . ${SCRIPTS[0]}
  mv ./build/system/product/etc/sysconfig/* ${SYSTEM_DIR}/etc/sysconfig/
fi

if [ "${TARGET_BUILD_REMOVE_ADB_AUTHORIZATION}" == "true" ]; then
  console_print "sheeeeshhhhhh, removing adb authorization!"
  . ${SCRIPTS[1]} "${SYSTEM_DIR}" "${PRODUCT_DIR}"
fi

if [ "${TARGET_REQUIRES_BLUETOOTH_LIBRARY_PATCHES}" == "true" ]; then
  console_print "Patching bluetooth...."
  . ${SCRIPTS[2]} "${SYSTEM_DIR}/lib64/libbluetooth_jni.so"
fi

if [ "${TARGET_SCREEN_WIDTH}" == "1080" ] && [ "${TARGET_SCREEN_HEIGHT}" == "2340" ]; then
  console_print "Building HorizonUXScreenResolution app for your device...."
  mkdir -p ./build/system/product/priv-app/HorizonUXResolution
  . ${SCRIPTS[3]}
  build_and_sign --conventional ./packages/horizonux_resolution/ --privilaged "HorizonUXResolution"
  mv ./build/system/etc/permissions/privapp-permissions-horizonux.screen.resolution.xml ./build/system/product/etc/permissions/
fi

if [ "${TARGET_INCLUDE_FASTBOOTD_PATCH_BY_RATCODED}" == "true" ]; then
  console_print "Patching recovery image..."
  . ${SCRIPTS[4]}
fi

if [ "${TARGET_INCLUDE_CUSTOM_SETUP_WELCOME_MESSAGES}" == "true" ]; then
  console_print "adding custom setup wizard text...."
  custom_setup_finished_messsage
  build_and_sign --overlay ./packages/sec_setup_wizard_horizonux_overlay/
fi

# nuke shits from the system.
rm -rf "${SYSTEM_DIR}"/hidden "${SYSTEM_DIR}"/preload "${SYSTEM_DIR}"/recovery-from-boot.p "${SYSTEM_DIR}"/bin/install-recovery.sh

if grep -q "flash_recovery_sec" "${SYSTEM_DIR}/etc/init/uncrypt.rc"; then
  mkdir -p ./tmp/
  grep -v "flash_recovery_sec" "${SYSTEM_DIR}/etc/init/uncrypt.rc" > ./tmp/uncrypt.rc
  mv ./tmp/uncrypt.rc "${SYSTEM_DIR}/etc/init/uncrypt.rc"
  rm -rf ./tmp/
fi

if [ "$TARGET_REMOVE_NONE_SECURITY_OPTION" == "true" ]; then
  console_print "removing none security option from lockscreen settings..."
  if [ "${BUILD_TARGET_ANDROID_VERSION}" -ge "12" ]; then warns "this TARGET_REMOVE_NONE_SECURITY_OPTION feature is found on android 11, report if it doesn't work. thanks!" "TARGET_OUT_OF_BOUNDS"; fi
  cat >> "./packages/settings/oneui3/remove_none_option_on_security_tab/res/values/bools.xml" << EOF
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <bool name="config_hide_none_security_option">true</bool>
EOF
fi

if [ "${TARGET_REMOVE_SWIPE_SECURITY_OPTION}" == "true" ]; then
  console_print "removing swipe security option from lockscreen settings..."
  if [ "${BUILD_TARGET_ANDROID_VERSION}" -ge "12" ]; then warns "this TARGET_REMOVE_SWIPE_SECURITY_OPTION feature is found on android 11, report if it doesn't work. thanks!" "TARGET_OUT_OF_BOUNDS"; fi
  echo "    <bool name="config_hide_swipe_security_option">true</bool>" >> ./packages/settings/oneui3/remove_none_option_on_security_tab/res/values/bools.xml
  echo "</resources>" >> ./packages/settings/oneui3/remove_none_option_on_security_tab/res/values/bools.xml
else
  echo "</resources>" >> ./packages/settings/oneui3/remove_none_option_on_security_tab/res/values/bools.xml
fi

if [ "${TARGET_REMOVE_SWIPE_SECURITY_OPTION}" == "true" ]; then
  if [ "${BUILD_TARGET_ANDROID_VERSION}" -ge "12" ]; then warns "this TARGET_REMOVE_SWIPE_SECURITY_OPTION feature is found on android 11, report if it doesn't work. thanks!" "TARGET_OUT_OF_BOUNDS"; fi
  build_and_sign --overlay ./packages/settings/oneui3/remove_none_option_on_security_tab/
fi

if [ "${TARGET_ADD_EXTRA_ANIMATION_SCALES}" == "true" ]; then
  console_print "cooking extra animation scales.."
  build_and_sign --overlay ./packages/settings/oneui3/extra_animation_scales/
fi

if [ "${TARGET_ADD_ROUNDED_CORNERS_TO_THE_PIP_WINDOWS}" == "true" ]; then
  console_print "cooking rounded corners on pip window...."
  if [ "${BUILD_TARGET_ANDROID_VERSION}" -ge "12" ]; then warns "this TARGET_ADD_ROUNDED_CORNERS_TO_THE_PIP_WINDOWS feature is found on android 11, report if it doesn't work. thanks!" "TARGET_OUT_OF_BOUNDS"; fi
  build_and_sign --overlay ./packages/systemui/oneui3/rounded_corners_on_pip/
fi

# send off message.
console_print " Check the /build folder for the items you have built."
console_print " Please sign the built overlay or application packages manually with your own private keys;"
console_print " Do not use any public keys provided by any application building software. "
console_print " script errors are moved to the ./error_ring.log file, please consider checking it out! "