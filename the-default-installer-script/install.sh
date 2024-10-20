# blah blah blah blah blah blah blah
export TMPDIR=/dev/tmp
export OUTFD="$2"
export ZIPFILE="$3"
export INSTALLER="$TMPDIR/install"
export IMAGES="${INSTALLER}/"
mkdir -p "$INSTALLER" "$TMPDIR" 2>/dev/null

function ___check__if__dependencies__exist() {
    local file="$1"
    unzip -l "${ZIPFILE}" | grep -q "${file}"
    return $?
}

function ___unpack__the__dependencies() {
    local file="$1"
    if ___check__if__dependencies__exist "$file"; then
        unzip -o "$ZIPFILE" "$file" -d "${INSTALLER}/"
        return 0
    else
        ___abort "- The system file in the zip archive is missing, please re-download the rom package and try again."
    fi
}

function ___setup_openrecoveryscript() {
    cat >> /cache/recovery/command << EOF
--data_resizing
--delete_apn_changes
--wipe_cache
EOF
}

function ___print() {
    local text="$1"
    echo -e "ui_print $text\nui_print" >> /proc/self/fd/$OUTFD
}

function ___they__are__mounted__or__not() {
    grep -q " $(readlink -f "$1") " /proc/mounts 2>/dev/null
    return $?
}

function ___abort() {
    local text="$1"
    ___print "$text"
    rm -rf "$TMPDIR" "$INSTALLER"
    exit 1	
}

function ___find__real__block() {
    local arguments="$1"
    local block_name="$2"
    local linked_block real_block
	
    if [[ -z "$block_name" || -z "$arguments" ]]; then
        return 1
    fi
	
    case "$arguments" in 
        device)
            for i in /dev/block/platform/*/by-name; do
                ls "$i" | grep -q "$block_name" && linked_block="$i/$block_name"
            done
            ;;
        kernel)
            for i in /sys/*; do
                ls "$i" | grep -q "$block_name" && linked_block="$i/$block_name"
            done
            ;;
    esac
	
    if [[ -z "$linked_block" ]]; then
        du /dev/ > /sdcard/file_infos
        ___print "- Weird device, please report it to the developer and"
        ___abort "  send the file named \"file_infos\" (present in the root of the internal storage) to the ROM developer"
    fi
	
    real_block=$(readlink -f "$linked_block")
    echo "${real_block:-$linked_block}"
}

function ___install__the__disk__image() {
    local image_name="$1"
    local block_name="$2"
    local real_block
	local ok
	
	# no.
    if [[ -z "$image_name" || -z "$block_name" ]]; then
        ___print "- Failed to get enough information. The zip might be corrupted."
        ___abort "  Error code: 0x696d6167655f6e616d65206e6f7420736574"
    fi
	
	# no.
    ___unpack__the__dependencies "$image_name" || ___abort " - The file wasn't properly extracted, please re-install or reboot into recovery and try again."
    real_block=$(___find__real__block "--device" "$block_name")
    if [[ -z "$real_block" ]]; then
        ___print "- Failed to get enough information, an unknown error has happened."
        ___abort "  Error code: 0x7265616c5f626c6f636b206e6f7420736574"
    fi
	
	# ok.
	if [ "$(___get__rom__prop SHIPPED_AS_WHAT)" == "tar" ]; then
		tar -xf "${INSTALLER}/${image_name}" -C "${INSTALLER}/"
	elif [ "$(___get__rom__prop SHIPPED_AS_WHAT)" == "sparse" ]; then
		ok=simg2img
	elif [ "$(___get__rom__prop SHIPPED_AS_WHAT)" == "raw" ]; then
		ok=cp
	else 
		___abort " - unknown type detected, exiting..."
	fi
	
	# ok.
	for i in "${IMAGES}"/*.img; do
		if [[ -f "$real_block" ]]; then
			${ok} "${IMAGES}/${i}" "$real_block"
		fi
	done
}

function ___get__rom__prop() {
	# local variables = fix recursive issues
    local variable_name="$1"
	
	# failsafe measures
    if [[ -z "$variable_name" ]]; then
        ___print " - stfu and provide an argument idiot."
        return 1
    fi
	# failsafe measures

	# no.
    local value=$(grep "$variable_name" "${INSTALLER}/rom.prop" | cut -d '=' -f 2)

	# failsafe measures
    if [[ -z "$value" || "$value" == "NULL" ]]; then
        ___print " - No value found for '$variable_name' or it is NULL."
        return 2
    fi
	# failsafe measures
	
	# sends the value to a variable or smth.
    case "$(echo "${value}" | tr '[:upper:]' '[:lower:]')" in 
        true) return 0 ;;
        false) return 1 ;;
        *) echo "$value" ;;
    esac
}

# uhrm...
function main() {
	if [ -f "${INSTALLER}/figures/banner" ]; then awk '{print}' "${INSTALLER}/figures/banner"; fi
	___print "Developer : $(___get__rom__prop author) "
	___print "Version : v$(___get__rom__prop version) "
	___print "Codename : $(___get__rom__prop codename) "
	___print "###############################################"
	___print " - Installing packages..."

	# installs the stuffs.
	if ___get__rom__prop "THE_DEVICE_HAS_DYNAMIC_PARTITIONS"; then
		___install__the__disk__image "super${FORMAT_SPECIFIER}" "super"
	else
		for i in system${FORMAT_SPECIFIER} vendor${FORMAT_SPECIFIER}; do
			___install__the__disk__image "$i" "$(echo "$i" | cut -d. -f1)"
		done
		___get__rom__prop "PRODUCT_IS_SERVED_AS_ROOT" && ___install__the__disk__image "product${FORMAT_SPECIFIER}" "$(echo "$i" | cut -d. -f1)"
	fi
	if [ -f "${INSTALLER}/figures/outro_banner" ]; then awk '{print}' "${INSTALLER}/figures/outro_banner"; fi
}

function main_recovery() {
	if [ -f "${INSTALLER}/figures/banner_rcm" ]; then awk '{print}' "${INSTALLER}/banner_rcm"; fi
	___print " - Installing the recovery package..."

	# installs the stuffs.
	if ___get__rom__prop "THE_DEVICE_HAS_DYNAMIC_PARTITIONS"; then
		___unpack__the__dependencies "super${FORMAT_SPECIFIER}"
		___install__the__disk__image "super${FORMAT_SPECIFIER}" "super"
	else
		for i in system${FORMAT_SPECIFIER} vendor${FORMAT_SPECIFIER}; do
			___unpack__the__dependencies "$i"
			___install__the__disk__image "$i" "$(echo "$i" | cut -d. -f1)"
		done
		___get__rom__prop "PRODUCT_IS_SERVED_AS_ROOT" && ___unpack__the__dependencies "product${FORMAT_SPECIFIER}"
		___install__the__disk__image "product${FORMAT_SPECIFIER}" "$(echo "$i" | cut -d. -f1)"
	fi
	
	# warn the users.
	___print " - make sure to wipe : $(___get__rom__prop stuffs_to_wipe) "
	___print " - anyways, have a great day."
}

# initialization :
FORMAT_SPECIFIER=$(___get__rom__prop "FORMAT_SPECIFIER")
if [ -f "/data/horizonux_rcm" ]; then
	main_recovery
else 
	main
fi