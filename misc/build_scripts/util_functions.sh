# mako mako mako mako Those who know💀
for i in system/product/priv-app system/product/etc system/product/overlay system/etc/permissions system/product/etc/permissions custom_recovery_with_fastbootd/ system/etc/init/; do
    mkdir -p ./build/$i
done

function setprop() {
    awk -v pat="^$1=" -v value="$1=$2" '{ if ($0 ~ pat) print value; else print $0; }' $3 > $3.tmp
    mv $3.tmp $3
}

function abort() {
    echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] [:\e[0;36mABORT\e[0;37m:] -\e[0;31m $1\e[0;37m"
    sleep 0.5
    if [ "${BATTLEMAGE_BUILD}" == "true" ]; then
        umount $HASH_KEY_FOR_SUPER_BLOCK_PATH &>/dev/null
        rm -rf $HASH_KEY_FOR_SUPER_BLOCK_PATH &>/dev/null
    fi
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
    language=$(string_format -l $language)
    country=$(string_format -u $country)
    
    # capture and abort the op if the length is invalid.
    if [ "$(echo ${country} | wc -c)" -ge "4" ]; then
        abort "invalid country string length."
    elif [ "$(echo ${language} | wc -c)" -ge "4" ]; then
        abort "invalid language string length."
    fi
    
    # thing that actually switches the default lang.
    if [ -f "$(absolute_path --product)/omc/${PRODUCT_CSC_NAME}/conf/consumer.xml" ]; then
        sed 's|<DefLanguage>[^<]*</DefLanguage>|<DefLanguage>${language}-${country}</DefLanguage>|g' $(absolute_path --product)/omc/${PRODUCT_CSC_NAME}/conf/consumer.xml
        sed 's|<DefLanguageNoSIM>[^<]*</DefLanguageNoSIM>|<DefLanguageNoSIM>${language}-${country}</DefLanguageNoSIM>|g' $(absolute_path --product)/omc/${PRODUCT_CSC_NAME}/conf/consumer.xml
    else 
        local tmp_dir="$(echo "$(absolute_path --product)/omc/*/conf/consumer.xml")"
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
    local apkFileName
    if [ -f "$extracted_dir_path/apktool.yml" ]; then 
        apkFileName=$(grep apkFileName $extracted_dir_path/apktool.yml | cut -c 14-1000)
    else 
        abort "Invalid Apkfile path.."
    fi
    mkdir -p ./build/sign_applications/
    rm -rf ./build/sign_applications/*
    apktool build --api-level "${BUILD_TARGET_SDK_VERSION}" "${extracted_dir_path}" &>/dev/null
    mv ${extracted_dir_path}/dist/${apkFileName} ./build/sign_applications/
    java -jar ./dependencies/bin/signer.jar --apks ./build/sign_applications/${apkFileName}
    case "$(string_format --lower $type)" in
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
    feature_code="$(string_format -u "${feature_code}")"
    
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
    feature_code="$(string_format --lower "${feature_code}")"
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
    feature_code="$(string_format --lower "${feature_code}")"
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
    # those shits are not working...
    eval "$variable_name=$value"
}

function bool() {
    local variable_name="$1"
    local value="$(string_format -l $2)"
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
        java -jar ./dependencies/bin/omc-decoder.jar -i ${xml_filename}.xml -o ${xml_filename}_decoded.xml
    elif [ "${arg}" == "--encode" ]; then
        java -jar ./dependencies/bin/omc-decoder.jar -e -i ${xml_filename}_decoded.xml -o ${xml_filename}.xml
    fi
}

function ask() {
    local question="$1"
    local answer
    printf "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)\e[0;37m] / [:\e[0;36mMESSAGE\e[0;37m:] / [:\e[0;32mJOB\e[0;37m:] -\e[0;33m $1\e[0;37m (y/n) : "
    read answer
    answer="$(string_format -l "${answer}")"
    if [ "${answer}" == "y" ]; then
        return 0
    else
        return 1
    fi
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
	local shit
	local stuffs2nukeinvintf=(
        "android.hardware.dumpstate*.xml"
        "engmode_manifest.xml"
		"vaultkeeper_manifest.xml"
        "dumpstate-default.xml"
        "wsm_manifest.xml"
    )
	local stuffs2nukeininitdir=(
		"$(absolute_path --vendor)/etc/init/*android.hardware.dumpstate@*.rc"
		"$(absolute_path --vendor)/etc/init/boringssl_self_test.rc"
		"$(absolute_path --vendor)/etc/init/cass.rc"
		"$(absolute_path --vendor)/etc/init/vaultkeeper_common.rc"
		"$(absolute_path --vendor)/etc/init/pa_daemon_teegris.rc"
		"$(absolute_path --vendor)/etc/init/wsm-service.rc"
	)
    for service in "security.wsm" "vendor.samsung.hardware.security.proca"; do
        console_print "Removing ${service} service from the system config files..."
		remove_attributes "${service}"
        for line in "${stuffs2nukeinvintf[@]}"; do
		    if [ -f "$(absolute_path --vendor)/etc/vintf/manifest/${line}" ]; then
			    rm -f "$(absolute_path --vendor)/etc/vintf/manifest/${line}"
			    console_print "Deleting ${line}..."
		    fi
	    done
        for shit in "${stuffs2nukeininitdir[@]}"; do
		    if [ -f "${shit}" ]; then
			    rm -f "${shit}"
			    console_print "Deleting ${shit}...\e[0m"
		    fi
	    done
        # idk man, it feels like it's useless because the vendor has the same codes on a init file.
        rm -rf "$(absolute_path --vendor)/etc/wlan_common_rc $(absolute_path --vendor)/etc/wlan_vendor_rc"
    done
}

function switchprop() {
    local pat="$1"
    local value="$2"
    local filename="$3"
    local temp_file="$(mktemp)"

    # Check if the file exists
    if [[ ! -f "$filename" ]]; then
        echo " - Failed to open file for reading: $filename."
        return 1
    fi

    # Create a temporary file
    touch "$temp_file" || {
        echo " - Failed to create temporary file for writing."
        return 1
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
    local the_type_of_wallpaper="$(string_format -l "$2")"
    local index_score=$3
    local which
    local isDefault

    # Determine the "which" value and the "isDefault" flag based on the wallpaper type
    if [ "$the_type_of_wallpaper" == "home" ]; then
        which=1
        isDefault="true"
    elif [ "$the_type_of_wallpaper" == "lock" ]; then
        which=2
        isDefault="true"
    elif [ "$the_type_of_wallpaper" == "additionals" ]; then
        which=1
        isDefault="false"
    fi
    
    # Append the JSON data to resources_info.json
    echo -e "{\n\t\"isDefault\": \"$isDefault\",\n\t\"index\": $index_score,\n\t\"which\": $which,\n\t\"screen\": 0,\n\t\"type\": 0,\n\t\"filename\": \"wallpaper_${value}.png\",\n\t\"frame_no\": -1,\n\t\"cmf_info\": [\"\"]\n}${special_symbol}" >> resources_info.json
}

function json_header() {
    echo -e "{\n\t\"version\": \"0.0.1\",\n\t\"phone\": [" > resources_info.json
}

function json_ending_stuffs() {
    echo -e "  ]\n}" >> resources_info.json
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

	# hmm, understandable :/
    console_print "Patching the bluetooth system file..."
    xxd -p "$FILE" | tr -d \\n | tr -d " " | sed "s/$FROM/$TO/" | xxd -r -p > "$FILE.tmp"
	  mkdir -p ./patched_resources/system/lib64/
  	mv "$FILE.tmp" "./patched_resources/system/lib64/libbluetooth_jni.so"
    console_print "Patched successfully, the file was moved to \"patched_resources/system/lib64/libbluetooth_jni.so\" folder.."
}

function existance() {
    local file="$1"
    # grrrrrrrrrrrrrr
    if [ -e "$file" ]; then
        return 0
    else
        return 1
    fi
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

function string_format() {
    local string="$2"
    case "$1" in
        -l)
            echo $string | tr '[:upper:]' '[:lower:]'
        ;;

        -u)
            echo $string | tr '[:lower:]' '[:upper:]'
        ;;

        *)
            echo $string
        ;;
    esac
}

function generate_random_hash() {
    local how_much
    int how_much $(echo "$1")
    if [ ! "$#" == "1" ]; then
        warns "Don't you want me like i want you baby?" "arguments"
        abort "Not enough arguments..."
    fi
    timeout 0.1 cat /dev/urandom | xxd -p | head -n 1 | cut -c 1-${how_much}
    unset how_much
}

function execute_scripts() {
    local script="$1"
    $BATTLEMAGE_BUILD && { . $script --battlemage 2>./error_ring.log; } || { . $script --non-battlemage 2>./error_ring.log; }
}

function absolute_path() {
    local parsed_argument=$(string_format -l $1 | wc -c)
    local parsed_argument="$(string_format -l $1 | cut -c 3-$parsed_argument)"
    if $BATTLEMAGE_BUILD; then
        if string_format -l ${TARGET_BUILD_PARTITIONS[@]} | grep -q $parsed_argument; then
            if [ -f "${HASH_KEY_FOR_SUPER_BLOCK_PATH}/$parsed_argument/etc" ]; then
                echo "${HASH_KEY_FOR_SUPER_BLOCK_PATH}/$parsed_argument"
            elif [ -f "${HASH_KEY_FOR_SUPER_BLOCK_PATH}/$parsed_argument/$parsed_argument/etc" ]; then
                echo "${HASH_KEY_FOR_SUPER_BLOCK_PATH}/$parsed_argument/$parsed_argument"
            fi
        else
            abort "no way this cant be happening..."
        fi
    else
        case $parsed_argument in
            system)
                if [ -f "${SYSTEM_DIR}/build.prop" ]; then
                    echo "${SYSTEM_DIR}"
                elif [ -f "${SYSTEM_DIR}/system/build.prop" ]; then
                    echo "${SYSTEM_DIR}/system"
                fi
            ;;
            system_ext)
                # ive chose to find the etc because after android 11 i guess, the build.prop in system_ext was moved to /system_ext/etc/build.prop on newer versions
                # the etc wont get changed that's why lol.
                if [ -f "${SYSTEM_DIR}/system_ext/etc/" ]; then
                    echo "${SYSTEM_DIR}/system_ext"
                elif [ -f "${SYSTEM_DIR}/system_ext/etc/" ]; then
                    echo "${SYSTEM_DIR}/system"
                fi
            ;;
            vendor)
                if [ -f "${VENDOR_DIR}/build.prop" ]; then
                    echo "${VENDOR_DIR}"
                elif [ -f "${VENDOR_DIR}/vendor/build.prop" ]; then
                    echo "${VENDOR_DIR}/vendor"
                fi
            ;;
            product)
                if [ -f "${PRODUCT_DIR}/build.prop" ]; then
                    echo "${PRODUCT_DIR}"
                elif [ -f "${PRODUCT_DIR}/product/build.prop" ]; then
                    echo "${PRODUCT_DIR}/product"
                fi
            ;;
            prism)
                if [ -f "${PRISM_DIR}/build.prop" ]; then
                    echo "${PRISM_DIR}"
                elif [ -f "${PRISM_DIR}/prism/build.prop" ]; then
                    echo "${PRISM_DIR}/prism"
                fi
            ;;
            *)
                echo "/dev/null"
            ;;
        esac
    fi
}

function fetch_rom_arch() {
    local nvm
    local jk
    local arg="$@"
    for jk in $(absolute_path --system)/build.prop $(absolute_path --system_ext)/build.prop $(absolute_path --product)/build.prop; do
        cat $jk | grep -q ro.product.cpu.abi && break;
    done
    nvm=$(grep_prop $jk)
    if [[ "$(string_format --lower $nvm)" == "arm64-v8a|armeabi-v7a" ]]; then
        if [ "$arg" == "--libpath" ]; then
            case "$(string_format --lower $nvm)"; in 
                arm64-v8a)
                    echo "lib64"
                ;;
                armeabi-v7a)
                    echo "lib"
                ;;
            esac
        else 
            string_format --lower $nvm
        return 0
    else 
        abort "Unsupported architecture!!"
        return 1
    fi
}

function apply_diff_patches() {
    local DiffPatchFile="$1"
    local TheFileToPatch="$2"

    if [ "$#" == "0" ] || [ "$#" -lt "2" ] || [ "$#" -ge "3" ]; then
        abort "Usage: <diff .patch file> <the file to patch>"
    fi

    if [ ! -f "${DiffPatchFile}" ]; then
        abort "please provide a valid path or file."
    elif [ ! -f "${TheFileToPatch}" ]; then
        abort "please provide a valid path or file."
    fi

    if ! patch ${TheFileToPatch} < ${DiffPatchFile} &>/dev/null; then
        warns "Couldn't patch the requested file, please try again" "DIFF_PATCHER"
    fi
}