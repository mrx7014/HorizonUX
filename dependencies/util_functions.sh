# mango mango mango mango :Those who know💀: :shitty-trollface:
mkdir -p ./build/system/product/priv-app ./build/system/product/etc ./build/system/product/sysconfig ./build/system/product/overlay/ ./build/system/etc/permissions/ ./build/system/product/etc/permissions/ ./build/custom_recovery_with_fastbootd/ ./build/system/etc/init/

# uuhrm.
SCRIPTS=(
  "./misc/scripts/add_unlimited_backups.sh"
  "./horizon/patches/disable_adb_authorization/disable_adb_authorization.sh"
  "./horizon/patches/bluetooth_library_patcher/patch.sh"
  "./misc/scripts/resolution_app_permissions_xml_conf.sh"
  "./misc/scripts/github_at_luna__FLOSSPAPER.sh"
  "./patches/bring_fastbootd_into_recovery/patches.sh"
)

TARS=(
  "./packages/horizonux_salvo-unica-updater/smali.tar"
  "./packages/horizonux_salvo-unica-updater/original/META-INF.tar"
)

function setprop() {
  awk -v pat="^$1=" -v value="$1=$2" '{ if ($0 ~ pat) print value; else print $0; }' $3 > $3.tmp
  mv $3.tmp $3
}

function abort() {
  echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] [:\e[0;36mABORT\e[0;37m:] -\e[0;31m $1\e[0;37m"
  sleep 0.5
  exit 1;
}

function warns() {
  echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] / [:\e[0;36mWARN\e[0;37m:] / [:\e[0;32m$2\e[0;37m:] -\e[0;33m $1\e[0;37m"
  sleep 0.5
}

function console_print() {
  echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)\e[0;37m] / [:\e[0;36mMESSAGE\e[0;37m:] / [:\e[0;32mJOB\e[0;37m:] -\e[0;33m $1\e[0;37m"
  sleep 0.5
}

function default_language_configuration() {
  local language="$1"
  local country="$2"
  [ -z $language ] && language=en
  [ -z $country ] && country=US
  
  # change the strings cases to prevent issues on the system.
  language=$(echo $language | tr '[:upper:]' '[:lower:]')
  country=$(echo $country | tr '[:lower:]' '[:upper:]')
  
  # capture and abort the op if the length is invalid.
  if [ "$(echo ${country} | wc -c)" -ge "4" ]; then
    abort "invalid country string length."
  fi
  
  # thing that actually switches the default lang.
  if [ -f "${PRODUCT_DIR}/omc/${PRODUCT_CSC_NAME}/conf/consumer.xml" ]; then
    sed 's|<DefLanguage>[^<]*</DefLanguage>|<DefLanguage>${language}-${country}</DefLanguage>|g' ${PRODUCT_DIR}/omc/${PRODUCT_CSC_NAME}/conf/consumer.xml
    sed 's|<DefLanguageNoSIM>[^<]*</DefLanguageNoSIM>|<DefLanguageNoSIM>${language}-${country}</DefLanguageNoSIM>|g' ${PRODUCT_DIR}/omc/${PRODUCT_CSC_NAME}/conf/consumer.xml
  else 
    local tmp_dir="$(echo "${PRODUCT_DIR}/omc/*/conf/consumer.xml")"
	for i in ${tmp_dir}; do # just in case if we have any bunch of shits laying around.
      sed 's|<DefLanguage>[^<]*</DefLanguage>|<DefLanguage>${language}-${country}</DefLanguage>|g' $i
      sed 's|<DefLanguageNoSIM>[^<]*</DefLanguageNoSIM>|<DefLanguageNoSIM>${language}-${country}</DefLanguageNoSIM>|g' $i
	done
  fi
}

function custom_setup_finished_messsage() {
  [ -z "${CUSTOM_SETUP_WELCOME_MESSAGE}" ] && CUSTOM_SETUP_WELCOME_MESSAGE="Welcome to HorizonUX"
  [ "${CUSTOM_SETUP_WELCOME_MESSAGE}" == "xxx" ] && CUSTOM_SETUP_WELCOME_MESSAGE="Welcome to HorizonUX"
  sed -i 's|<string name="outro_title">.*</string>|<string name="outro_title">&quot;${CUSTOM_SETUP_WELCOME_MESSAGE}&quot;</string>|' ./packages/sec_setup_wizard_horizonux_overlay/res/values/strings.xml
}

function build_and_sign() {
  local conventional_system_name="$4"
  local conventional_path="$3"
  local extracted_dir_path="$2"
  local type="$1"
  local apkFileName=$(if [ -f "$extracted_dir_path/apktool.yml" ]; then grep apkFileName $extracted_dir_path/apktool.yml | cut -c 14-1000; else echo "/dev/null"; fi)
  mkdir -p ./build/sign_applications/
  rm -rf ./build/sign_applications/*
  apktool build --api-level "${BUILD_TARGET_SDK_VERSION}" "${extracted_dir_path}" &>/dev/null
  mv ${extracted_dir_path}/dist/${apkFileName} ./build/sign_applications/
  java -jar ./dependencies/signer.jar --apks ./build/sign_applications/${apkFileName}
  case "$(echo $type | tr '[:upper:]' '[:lower:]')" in 
    --overlay)
      mv ./build/sign_applications/$(ls | grep aligned-debugSigned.apk | head -n 1) ./build/system/product/overlay/
    ;;
  
    --conventional)
	  if [ ${conventional_path} == "--privilaged" ]; then
	    mkdir -p ./build/system/product/priv-app/${conventional_system_name}
		mv ./build/sign_applications/$(ls | grep aligned-debugSigned.apk | head -n 1) ./build/system/product/priv-app/${conventional_system_name}/
	  elif [ ${conventional_path} == "--non-privilaged" ]; then
	    mkdir -p ./build/system/product/${conventional_system_name}
		mv ./build/sign_applications/$(ls | grep aligned-debugSigned.apk | head -n 1) ./build/system/product/${conventional_system_name}/
	  fi
    ;;
  esac
  rm -rf ${extracted_dir_path}/build ${extracted_dir_path}/dist ./build/sign_applications
}