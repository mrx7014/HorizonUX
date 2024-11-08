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
  exit 1
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
  elif [ "$(echo ${language} | wc -c)" -ge "4" ]; then
    abort "invalid language string length."
  fi
  
  # thing that actually switches the default lang.
  if [ -f "${PRODUCT_DIR}/omc/${PRODUCT_CSC_NAME}/conf/consumer.xml" ]; then
    sed 's|<DefLanguage>[^<]*</DefLanguage>|<DefLanguage>${language}-${country}</DefLanguage>|g' ${PRODUCT_DIR}/omc/${PRODUCT_CSC_NAME}/conf/consumer.xml
    sed 's|<DefLanguageNoSIM>[^<]*</DefLanguageNoSIM>|<DefLanguageNoSIM>${language}-${country}</DefLanguageNoSIM>|g' ${PRODUCT_DIR}/omc/${PRODUCT_CSC_NAME}/conf/consumer.xml
  else 
    local tmp_dir="$(echo "${PRODUCT_DIR}/omc/*/conf/consumer.xml")"
    sed 's|<DefLanguage>[^<]*</DefLanguage>|<DefLanguage>${language}-${country}</DefLanguage>|g' $tmp_dir
    sed 's|<DefLanguageNoSIM>[^<]*</DefLanguageNoSIM>|<DefLanguageNoSIM>${language}-${country}</DefLanguageNoSIM>|g' $tmp_dir
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

function custom_setup_finished_messsage() {
  [ -z "${CUSTOM_SETUP_WELCOME_MESSAGE}" ] && CUSTOM_SETUP_WELCOME_MESSAGE="Welcome to HorizonUX"
  [ "${CUSTOM_SETUP_WELCOME_MESSAGE}" == "xxx" ] && CUSTOM_SETUP_WELCOME_MESSAGE="Welcome to HorizonUX"
  sed -i 's|<string name="outro_title">.*</string>|<string name="outro_title">&quot;${CUSTOM_SETUP_WELCOME_MESSAGE}&quot;</string>|' ./packages/sec_setup_wizard_horizonux_overlay/res/values/strings.xml
}

function catch_duplicates_in_xml() {
  local feature_code="$1"
  local file="$2" 
  # Check if feature_code and file are provided
  if [ "$#" -le "1" ]; then
    warns "Arguments are not enough for this script to run..." "DUPLICATES_CATCHER"
	return 1
  fi
  
  # Convert feature_code to uppercase
  feature_code="$(echo "${feature_code}" | tr '[:lower:]' '[:upper:]')"
  # Initialize count
  count=0
  # Count occurrences of the feature_code in the file
  while IFS= read -r line; do
    if echo "$line" | grep -q "${feature_code}"; then
      count=$((count + 1))
    fi
  done < "${file}"
  # this mf prints this out for the variable shit.
  echo "${count}"
}

function add_float_xml_values() {
  local feature_code="$1"
  local feature_code_value="$2"
  
  # Check if feature_code, feature_code_value, and file are provided
  if [ "$#" -le "1" ]; then
    warns "Arguments are not enough for this script to run..." "ADD_FLOAT_VALUES"
	return 1
  fi
  
  # Convert feature_code to uppercase
  feature_code="$(echo "${feature_code}" | tr '[:lower:]' '[:upper:]')"
  
  # check if we have duplicates or not, uf we have anything extra, call the catch_duplicates_in_xml to do the job lol.
  if [ "$(catch_duplicates_in_xml "${feature_code}" "${TARGET_BUILD_FLOATING_FEATURE_PATH}")" == "0" ]; then
	# Create a temporary file to hold the modified content
    local tmp_file="./tmp_feature"
    # Read the original file and write to the temporary file
    {
      while IFS= read -r line; do
        echo "${line}"
        if [ "${line}" == "<SecFloatingFeatureSet>" ]; then
          echo "    <${feature_code}>${feature_code_value}</${feature_code}>"
        fi
      done
    } < "${TARGET_BUILD_FLOATING_FEATURE_PATH}" > "${tmp_file}"
    # write the ending thing cuz this mf is not writing that for some reason.
    echo "</SecFloatingFeatureSet>" >> "${tmp_file}"
    # Replace the original file with the modified one
    mv "${tmp_file}" "${TARGET_BUILD_FLOATING_FEATURE_PATH}"
  else
    change_xml_values "${feature_code}" "${feature_code_value}" "${TARGET_BUILD_FLOATING_FEATURE_PATH}"
  fi
}

function add_csc_xml_values() {
  local feature_code="$1"
  local feature_code_value="$2"
  # Check if feature_code, feature_code_value, and file are provided
  if [ "$#" -le "1" ]; then
    warns "Arguments are not enough.." "CSC_MODIFIER"
	return 1
  fi
  
  # Convert feature_code to uppercase
  feature_code="$(echo "${feature_code}" | tr '[:lower:]' '[:upper:]')"
  # check if we have duplicates or not, uf we have anything extra, call the catch_duplicates_in_xml to do the job lol.
  if [ "$(catch_duplicates_in_xml "${feature_code}" "${TARGET_BUILD_FLOATING_FEATURE_PATH}")" == "0" ]; then
	# Create a temporary file to hold the modified content
    local tmp_file="./tmp_feature"
    # Read the original file and write to the temporary file
    {
      while IFS= read -r line; do
        echo "${line}"
        if [[ "${line}" == "<SecFloatingFeatureSet>" ]]; then
          echo "    <${feature_code}>${feature_code_value}</${feature_code}>"
        fi
      done
    } < "${TARGET_BUILD_FLOATING_FEATURE_PATH}" > "${tmp_file}"
    # write the ending thing cuz this mf is not writing that for some reason.
    echo "</SecFloatingFeatureSet>" >> "${tmp_file}"
    # Replace the original file with the modified one
    mv "${tmp_file}" "${TARGET_BUILD_FLOATING_FEATURE_PATH}"
  else
    change_xml_values "${feature_code}" "${feature_code_value}" "${TARGET_BUILD_FLOATING_FEATURE_PATH}"
  fi
}

function change_xml_values() {
  local feature_code="$1"
  local feature_code_value="$2"
  # Check for missing arguments
  if [ "$#" -le "1" ]; then
    warns "Arguments are not enough.." "XML_VALUE_TINKER"
	return 1
  fi
  
  # Convert feature_code to uppercase
  feature_code="$(echo "${feature_code}" | tr '[:lower:]' '[:upper:]')"
  # catch the duplicate values and warn the user lol.
  if [ "$(catch_duplicates_xml "${feature_code}" "${TARGET_BUILD_FLOATING_FEATURE_PATH}")" -ge "2" ]; then
    warns "${feature_code} named feature has duplicate values, please remove them to prevent conflicts."
  fi
  # Use sed to update the XML value
  sed -i "s|<${feature_code}>.*</${feature_code}>|<${feature_code}>${feature_code_value}</${feature_code}>|" "${TARGET_BUILD_FLOATING_FEATURE_PATH}"
}

# these things are intended for those " pro " programmers 
function int() {
    local variable_name="$1"
    local value="$2"
    if [ "$value" =~ ^-?[0-9]+$ ]; then
        eval "$variable_name=$value"
    else
        abort "Error: '$value' is not an integer."
    fi
}

function bool() {
    local variable_name="$1"
    local value="$(echo "$2" | tr '[:upper:]' '[:lower:]')"
    # Check if the value is either "true" or "false"
    if [ "$value" == "true" || "$value" == "false" || "$value" == "1" || "$value" == "0" ]; then
        eval "$variable_name=$value"
    else
        abort "Error: '$value' is not a boolean."
    fi
}
# these things are intended for those " pro " programmers 

function warns_api_limitations() {
  local adrod_version=$1
  warns "this feature is found on android $adrod_version, report if it doesn't work. thanks!" "TARGET_OUT_OF_BOUNDS"; 
}

function omc() {
  local arg="$1"
  local xml_filename="$2"
  
  # boom boom
  if [ "$#" -le "1" ]; then
    warns "Arguments are not enough.." "OMC_DECODER"
	return 1
  fi
  
  # bomboclatttttttt 😭😭😭😭😭
  if [ "${arg}" == "--decode" ]; then
    java -jar ./dependencies/omc-decoder.jar -i ${xml_filename}.xml -o ${xml_filename}_decoded.xml
  elif [ "${arg}" == "--encode" ]; then
    java -jar omc-decoder.jar -e -i ${xml_filename}_decoded.xml -o ${xml_filename}.xml
  fi
}

function ask() {
  local question="$1"
  local answer=""
  printf "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)\e[0;37m] / [:\e[0;36mMESSAGE\e[0;37m:] / [:\e[0;32mJOB\e[0;37m:] -\e[0;33m $1\e[0;37m (y/n) : "
  read answer
  answer="$(echo "${answer}" | tr '[:upper:]' '[:lower:]')"
  if [ "${answer}" == "y" ]; then
    return 0
  else
    return 1
  fi
}

function initialize_macloader() {
    local line
    local macloader_array=(
        "service macloader /vendor/bin/hw/macloader"
        "    class main"
        "    user wifi"
        "    group wifi inet net_raw net_admin"
        "    capabilities NET_ADMIN NET_RAW SYS_MODULE"
        "    oneshot"
        "# end of WiFi MFG (TestMode)"
    )

    # Add the macloader lines to the file
    for line in "${macloader_array[@]}"; do
        echo "$line" >> ./build/vendor/etc/init/wifi.rc
    done
}

function remove_attributes() {
	local INPUT_FILE="$1"
	local OUTPUT_FILE="$2"
	local NAME_TO_SKIP="$3"

	# Start writing the new XML file
	{
		echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
		echo "<manifest version=\"2.0\" type=\"device\" target-level=\"3\">"
		
		# Read each line of the input XML
		while IFS= read -r line; do
			# Check if the line starts a <hal> block
			if [[ "$line" == *"<hal"* ]]; then
				# Read the entire <hal> block into a variable
				block="$line"
				skip_block=false

				# Check subsequent lines for the closing </hal>
				while IFS= read -r line; do
					block+=$'\n'"$line"
					if [[ "$line" == *"</hal>"* ]]; then
						break
					fi
				done
				
				# Check if the block contains the <name> to skip
				if [[ "$block" == *"<name>$NAME_TO_SKIP</name>"* ]]; then
					# Skip this block
					continue
				fi
				
				# Write the entire block to the output file if not skipped
				echo "$block"
			else
				# Write lines that are not part of a <hal> block
				echo "$line"
			fi
		done < "$INPUT_FILE"
		
		echo "</manifest>"
	} > "$OUTPUT_FILE"

	# Feedback
	console_print "Rewritten XML saved to $OUTPUT_FILE, skipping <hal> with name='$NAME_TO_SKIP'."
}

function nuke_stuffs() {
    local service
    local line
	local tlc
	local shit
	local stuffs2nukeinvintf=(
        "android.hardware.dumpstate*.xml"
        "engmode_manifest.xml"
		"vaultkeeper_manifest.xml"
        "vendor.samsung.hardware.tlc*.xml"
        "wsm_manifest.xml"
    )
	local stuffs2nukeininitdir=(
		"${VENDOR_ETC_FOLDER}/init/*android.hardware.dumpstate@*.rc"
		"${VENDOR_ETC_FOLDER}/init/boringssl_self_test.rc"
		"${VENDOR_ETC_FOLDER}/init/cass.rc"
		"${VENDOR_ETC_FOLDER}/init/vaultkeeper_common.rc"
		"${VENDOR_ETC_FOLDER}/init/pa_daemon_teegris.rc"
		"${VENDOR_ETC_FOLDER}/init/wsm-service.rc"
		"${VENDOR_ETC_FOLDER}/init/vendor.samsung.hardware.tlc*.rc"
	)

    for service in "security.wsm" "security.proca" "tlc.ucm" "tlc.payment"; do
		console_print "Removing ${service} service from the system config files..."
		remove_attributes "${service}"
	done
	for line in "${stuffs2nukeinvintf[@]}"; do
		if [ -f "${VENDOR_ETC_FOLDER}/vintf/manifest/${line}" ]; then
			rm -f "${VENDOR_ETC_FOLDER}/vintf/manifest/${line}"
			console_print "Deleting ${line}..."
		fi
	done
	for tlc in "$(ls ${VENDOR_ETC_FOLDER}/init/ | grep tlc.)"; do
		if [ -f "${tlc}" ]; then
			rm -f ${tlc}
			console_print "Deleting ${tlc}..."
		fi
	done
	for shit in "${stuffs2nukeininitdir[@]}"; do
		if [ -f "${shit}" ]; then
			rm -f "${shit}"
			console_print "Deleting ${shit}...\e[0m"
		fi
	done
	echo ""
}

function switchprop() {
    local pat="$1"
    local value="$2"
    local filename="$3"
    local temp_file="temp.txt"

    # Check if the file exists
    if [[ ! -f "$filename" ]]; then
        echo " - Failed to open file for reading: $filename."
        return
    fi

    # Create a temporary file
    touch "$temp_file" || {
        echo " - Failed to create temporary file for writing."
        return
    }

    # Read the original file line by line
    while IFS= read -r line; do
        if [[ "$line" == "$pat"* ]]; then
            echo "$pat=$value" >> "$temp_file"
        else
            echo "$line" >> "$temp_file"
        fi
    done < "$filename"

    # Remove the original file
    if ! rm "$filename"; then
        echo " - Failed to remove original file: $filename."
    fi

    # Rename the temporary file to the original filename
    if ! mv "$temp_file" "$filename"; then
        echo " - Failed to rename temporary file to $filename."
    fi
}

function ADD_THE_WALLPAPER_METADATA() {
	local value="$1"
	local the_type_of_wallpaper="$2"
	[ -z "$value" ] && value=bomb
	[ -z "$the_type_of_wallpaper" ] && the_type_of_wallpaper=bomb
	the_type_of_wallpaper="$(echo "${the_type_of_wallpaper}" | tr '[:upper:]' '[:lower:]')"
	cat >> resources_info.json << EOF
    {
EOF

case "$the_type_of_wallpaper" in 
	# adding the homescreen wallpapers META-DATA
	home)
	cat >> resources_info.json << EOF
        "isDefault": ${the_homescreen_wallpaper_has_been_set},
        "index": ${value},
        "which": 1,
        "screen": 0,
        "type": 0,
        "filename": "wallpaper_${value}.png",
        "frame_no": -1,
        "cmf_info": [""]
    }${special_symbol}
EOF
	;;
	
	# adding the lockscreen wallpapers META-DATA
	lock)
	cat >> resources_info.json << EOF
        "isDefault": ${the_lockscreen_wallpaper_has_been_set},
        "index": ${value},
        "which": 2,
        "screen": 0,
        "type": 0,
        "filename": "wallpaper_${value}.png",
        "frame_no": -1,
        "cmf_info": [""]
    }${special_symbol}
EOF
	;;
	
	# probably the normal additional wallpapers..
	*)
	cat >> resources_info.json << EOF
		"isDefault": false,
        "index": ${value},
        "which": 1,
        "screen": 0,
        "type": 0,
        "filename": "wallpaper_${value}.png",
        "frame_no": -1,
        "cmf_info": [""]
    }${special_symbol}
EOF
	;;
	esac
}

function well() {
    case "$@" in 
    "home")
		printf "\e[1;36m   Do you want to make this wallpaper as the default homescreen wallpaper (yes/ye/y/no/nah/n)\e[0;37m "
		read default_wallpaper_configuration
		default_wallpaper_configuration=$(echo "${default_wallpaper_configuration}" | tr '[:upper:]' '[:lower:]')
		case "$default_wallpaper_configuration" in 
			y*|ye*|yes*)
				the_homescreen_wallpaper_has_been_set=true
				ADD_THE_WALLPAPER_METADATA "${wallpaper_count_additional_int}${i}" "home"
			;;
			esac
    ;;

    "lock")
		printf "\e[1;36m   Do you want to make this wallpaper as the default lockscreen wallpaper (yes/ye/y/no/nah/n)\e[0;37m "
		read default_wallpaper_configuration
		default_wallpaper_configuration=$(echo "${default_wallpaper_configuration}" | tr '[:upper:]' '[:lower:]')
		case "$default_wallpaper_configuration" in 
			y*|ye*|yes*)
				the_lockscreen_wallpaper_has_been_set=true
				ADD_THE_WALLPAPER_METADATA "${wallpaper_count_additional_int}${i}" "lock"
			;;
		esac
    ;;
    esac
}

function CHANGE_THE_DEFAULT_WALLPAPER_CONFIGURATIONS() {
	# add or remove the comma "," symbol to correctly align the json file.
	if [ "${wallpaper_count}" -eq "${i}" ]; then
		# remove the special symbol char and add the wallpapers meta-data cuz this one is the
		# last thing..
		special_symbol=""
	else
		# add the wallpapers meta-data and the special symbol char cuz this one is still continuing..
		special_symbol=","
	fi
	
	# switching the default wallpapers..
	if ! $the_homescreen_wallpaper_has_been_set; then
		well "home"
	elif ! $the_lockscreen_wallpaper_has_been_set; then
		well "lock"
	else
		ADD_THE_WALLPAPER_METADATA "${wallpaper_count_additional_int}${i}"
	fi
}

function json_header() {
	cat >> resources_info.json << EOF
// autogenerated by FLOSSPaper.sh in $(uname -r | cut -c 1-3) kernel by the user $(uname -n) with $(uname -i) platform environment
{
  "version": "0.0.1",
  "phone": [
EOF
}

function json_ending_stuffs() {
	cat >> resources_info.json << EOF
  ]
}
// autogenerated by FLOSSPaper.sh in $(uname -r | cut -c 1-3) kernel by the user $(uname -n) with $(uname -i) platform environment
EOF
}

HEX_PATCH() {
    local FILE="$1"
    local FROM="$2"
    local TO="$3"

    if xxd -p "$FILE" | tr -d \\n | tr -d " " | grep -q "$TO"; then
        warns "the patches were already applied to the file, no need to apply them again.." "HEX_PATCHER"
        return 0
    fi

    if ! xxd -p "$FILE" | tr -d \\n | tr -d " " | grep -q "$FROM"; then
        warns "No need to patch the file cuz the file was perfect..." "HEX_PATCHER"
        return 1
    fi

    console_print "Patching the bluetooth system file..."
    xxd -p "$FILE" | tr -d \\n | tr -d " " | sed "s/$FROM/$TO/" | xxd -r -p > "$FILE.tmp"
	mkdir -p ./patched_resources/system/lib64/
	mv "$FILE.tmp" "./patched_resources/system/lib64/libbluetooth_jni.so"
    console_print "Patched successfully, the file was moved to \"patched_resources/system/lib64/libbluetooth_jni.so\" folder.."
}

function existance() {
   local file="$1"
   [ -e "$file" ] && { return 0; } || { return 1; }
}

function download_stuffs() {
  local link="$1"
  local save_path="$2"
  
  # let's end the op if the args werent enough.
  if [ "$#" -le "1" ]; then
    warns "Arguments are not enough.." "DOWNLOADER"
	return 1
  fi
  
  # let's start the shits...
  wget "${link}" "${save_path}"
  if [ "$?" -ge "1" ]; then
    abort "The download was failed..."
  fi
}

function install_horizon_modules() {
  local i
  local tarPATH="$1"
  local additionalARGUMENTS=""$(echo "$3" | tr '[:upper:]' '[:lower:]')""
  
  # let's end the op if the args werent enough.
  if [ "$#" == "0" ]; then
    warns "Arguments are not enough.." "HORIZON_MODULE_INSTALLER"
	return 1
  fi

  # the bomb starts from here.
  mkdir -p ./tmp/
  tar -xf ${tarPATH} -C ./tmp/
  local moduleName="$(grep "horizon.module.name" module.prop | cut -d '=' -f 2 | sed 's/"//g')"
  local moduleTYPE="$(grep "horizon.module.type" module.prop | cut -d '=' -f 2 | sed 's/"//g')"
  local moduleSCRIPTNAME="$(grep "horizon.module.script.name" module.prop | cut -d '=' -f 2 | sed 's/"//g')"
  if [ "${additionalARGUMENTS}" == "--silenced" ] || ask "Do you wanna know what does this system plugin do?"; then
    console_print "${moduleName}, $(grep "horizon.module.description" module.prop | cut -d '=' -f 2 | sed 's/"//g')"
	console_print "Brought to you by $(grep "horizon.module.authors" module.prop | cut -d '=' -f 2 | sed 's/"//g')"
  fi
  
  # unpacking and copying files into the respected directories.
  if [[ "${moduleTYPE}" == "system" ]]; then
    console_print "Installing ${moduleName}..."
	for i in ./tmp/system/*; do
	  if [[ -f "${SYSTEM_DIR}/${i}" ]]; then
	    mv ${i} ${SYSTEM_DIR}/
      else
	    warns "can't find /${i} in the system, the module can't be installed...."
		return 1
        rm -rf ./tmp
	  fi
	done
	console_print "$moduleName has been installed..."
  elif [[ "${moduleTYPE}" == "vendor" ]]; then  
    console_print "Installing ${moduleName}..."
	for i in ./tmp/vendor/*; do
	  if [[ -f "${VENDOR_DIR}/${i}" ]]; then
	    mv ${i} ${VENDOR_DIR}/
      else
	    warns "can't find /${i} in the vendor, the module can't be installed...."
		return 1
        rm -rf ./tmp
	  fi
	done
	console_print "$moduleName has been installed..."
  elif [[ "${moduleTYPE}" == "product" ]]; then
    console_print "Installing ${moduleName}..."
	for i in ./tmp/product/*; do
	  if [[ -f "${PRODUCT_DIR}/${i}" ]]; then
	    mv ${i} ${PRODUCT_DIR}/
      else
	    warns "can't find /${i} in the product, the module can't be installed...."
		return 1
        rm -rf ./tmp
	  fi
	done
	console_print "$moduleName has been installed..."
  elif [[ "${moduleTYPE}" == "script" ]]; then
    console_print "Installing ${moduleName}..."
	./tmp/${moduleSCRIPTNAME} "$SYSTEM_DIR" "$SYSTEM_EXT_DIR" "$VENDOR_DIR" "$PRODUCT_DIR" "$PRISM_DIR"
  else
    console_print "unknown module type, $moduleTYPE can't be installed..."
  fi
}