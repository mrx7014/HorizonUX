function main() {
	mkdir -p ./build/vendor/etc/init/
    local i
    local VENDOR_ETC_FOLDER="$2/etc/init"
    local start_added=false
	
	if [[ "${VENDOR_ETC_FOLDER}" == "/etc/init" ]] || [[ -z "${VENDOR_ETC_FOLDER}" ]]; then
		printf "\n [•] - Please enter the path of the vendor/etc folder - "
		read -r VENDOR_ETC_FOLDER
		echo ""
	fi
	
    if [ ! -d "${VENDOR_ETC_FOLDER}/init" ] || [ ! -f "${VENDOR_ETC_FOLDER}/init/wifi.rc" ]; then
        echo -e "\e[0;31m - The \"wifi.rc\" file from the vendor/etc/init wasn't found. Please copy the whole init folder from the vendor (in the device) to a directory and try again.\e[0m"
        exit 1
    elif [ ! -d "${VENDOR_ETC_FOLDER}/vintf/" ] || [ ! -d "${VENDOR_ETC_FOLDER}/vintf/manifest" ]; then
		echo -e "\e[0;31m - The \"vintf\" folder from the vendor/etc/ wasn't found. Please copy the whole folder from the vendor (in the device) to a directory and try again.\e[0m"
        exit 1
	fi

    while IFS= read -r i; do
        if echo "$i" | grep -q "mfgloader"; then
            if ! $start_added; then
                start_added=true
                initialize_macloader
            fi
            # Stop processing after initializing
            break
        fi

        # If we haven't added the "start" line yet, copy the lines before it
        if ! $start_added; then
            echo "$i" >> ./build/vendor/etc/init/wifi.rc
        fi
    done < "${VENDOR_ETC_FOLDER}/init/wifi.rc"
		
    # nothing frfr
    nuke_stuffs
	echo -e "\n [ • Finished removing stuffs from wifi.rc file, checkout patched_resources/vendor/etc/init/ folder"
	echo -e "   • and yeah besure to copy that into your actual vendor/etc/init folder and try if it works or not! ]\n"
}

main "${VENDOR_DIR}"