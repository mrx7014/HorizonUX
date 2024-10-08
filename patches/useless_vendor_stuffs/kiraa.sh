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
	echo "Rewritten XML saved to $OUTPUT_FILE, skipping <hal> with name='$NAME_TO_SKIP'."
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
		echo -e "\e[0;31m [!] - Removing ${service} service from the system config files..."
		remove_attributes "${service}"
	done
	for line in "${stuffs2nukeinvintf[@]}"; do
		if [ -f "${VENDOR_ETC_FOLDER}/vintf/manifest/${line}" ]; then
			rm -f "${VENDOR_ETC_FOLDER}/vintf/manifest/${line}"
			echo " [!] - Deleting ${line}..."
		fi
	done
	for tlc in "$(ls ${VENDOR_ETC_FOLDER}/init/ | grep tlc.)"; do
		if [ -f "${tlc}" ]; then
			rm -f ${tlc}
			echo " [!] - Deleting ${tlc}..."
		fi
	done
	for shit in "${stuffs2nukeininitdir[@]}"; do
		if [ -f "${shit}" ]; then
			rm -f "${shit}"
			echo -e " [!] - Deleting ${shit}...\e[0m"
		fi
	done
	echo ""
}

function main() {
	mkdir -p ./build/vendor/etc/init/
    local i
    local VENDOR_ETC_FOLDER
    local start_added=false
    printf "\n [•] - Please enter the path of the vendor/etc folder - "
    read -r VENDOR_ETC_FOLDER
	echo ""

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

main