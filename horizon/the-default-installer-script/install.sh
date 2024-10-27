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
        ___abort "- The system file in the zip archive is missing. Please re-download the ROM package and try again."
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
        --device)
            for i in /dev/block/platform/*/by-name /dev/block/*/by-name; do
                ls "$i" | grep -q "$block_name" && linked_block="$i/$block_name"
            done
            ;;
        --kernel)
            for i in /sys/*; do
                ls "$i" | grep -q "$block_name" && linked_block="$i/$block_name"
            done
            ;;
    esac

    if [[ -z "$linked_block" ]]; then
        du /dev/ > /sdcard/file_infos
        ___print "- Weird device. Please report this to the developer and send the file named \"file_infos\" (located in the root of internal storage)."
        ___abort ""
    fi

    real_block=$(readlink -f "$linked_block")
    echo "${real_block:-$linked_block}"
}

function ___install__the__disk__image() {
    local image_name="$1"
    local block_name="$2"
    local image_name_blah="${image_name%%.*}"
    
    if [[ -z "$image_name" || -z "$block_name" ]]; then
        ___print "- Insufficient information. The zip might be corrupted."
        ___abort "  Error code: 0x696d6167655f6e616d65206e6f7420736574"
    fi

    ___unpack__the__dependencies "$image_name" || ___abort " - The file wasn't properly extracted, please re-install or reboot into recovery and try again."

    local real_block=$(___find__real__block --device "$block_name")
    if [[ -z "$real_block" ]]; then
        ___print "- Failed to gather sufficient information. An unknown error occurred."
        ___abort "  Error code: 0x7265616c5f626c6f636b206e6f7420736574"
    fi

    local ok
    case "$(___get__rom__prop SHIPPED_AS_WHAT)" in
        "tar")
            tar -xf "${INSTALLER}/${image_name}" -C "${INSTALLER}/"
            ;;
        "sparse")
            ok=simg2img
            ;;
        "raw")
            ok=cp
            ;;
        *)
            ___abort " - Unknown type detected, exiting..."
            ;;
    esac

    if [[ "$(___get__rom__prop THE_DEVICE_HAS_DYNAMIC_PARTITIONS)" == "false" && -f "${image_name_blah}.img" ]]; then
        $ok "${image_name_blah}.img" "$real_block"
    fi
}

function ___get__rom__prop() {
    local variable_name="$1"
    if [[ -z "$variable_name" ]]; then
        ___print " - stfu bish, gimme an argument to fuck."
        return 1
    fi

    local value
    value=$(grep "$variable_name" "${INSTALLER}/rom.prop" | cut -d '=' -f 2)
    if [[ -z "$value" || "$value" == "NULL" ]]; then
        ___print " - No value found for '$variable_name' or it is NULL."
        return 2
    fi

    case "$(echo "${value}" | tr '[:upper:]' '[:lower:]')" in 
        true) return 0 ;;
        false) return 1 ;;
        *) echo "$value" ;;
    esac
}

###########################################
export TMPDIR=/dev/tmp
export OUTFD="$2"
export ZIPFILE="$3"
export INSTALLER="$TMPDIR/install"
export IMAGES="${INSTALLER}/"
mkdir -p "$INSTALLER" "$TMPDIR" 2>/dev/null
###########################################

###############################################################################################
FORMAT_SPECIFIER=$(___get__rom__prop "FORMAT_SPECIFIER")
___print "#########################################################"
___print "   _  _     _   _            _                _   ___  __"
___print " _| || |_  | | | | ___  _ __(_)_______  _ __ | | | \\ \\/ /"
___print "|_  ..  _| | |_| |/ _ \\| '__| |_  / _ \\| '_ \\| | | |\\  / "
___print "|_      _| |  _  | (_) | |  | |/ / (_) | | | | |_| |/  \\ "
___print "  |_||_|   |_| |_|\\___/|_|  |_/___\\___/|_| |_|\\___//_/\\_\\"
___print "                                                         "
___print "#########################################################"
___print "Developer : $(___get__rom__prop author) "
___print "Version : v$(___get__rom__prop version) "
___print "Codename : $(___get__rom__prop codename) "
___print "###############################################"
___print " - Installing packages..."
___print "   please wait, it might take longer..."
###############################################################################################

###############################################################################################
# Install the images.
if ___get__rom__prop "THE_DEVICE_HAS_DYNAMIC_PARTITIONS"; then
    ___install__the__disk__image "super${FORMAT_SPECIFIER}" "super"
else
    for i in system${FORMAT_SPECIFIER} vendor${FORMAT_SPECIFIER}; do
        ___install__the__disk__image "$i" "$(echo "$i" | cut -d. -f1)"
    done
    ___get__rom__prop "PRODUCT_IS_SERVED_AS_ROOT" && ___install__the__disk__image "product${FORMAT_SPECIFIER}" "$(echo "$i" | cut -d. -f1)"
fi
###############################################################################################

###############################################################################################
# Recovery script setup.
___setup_openrecoveryscript
___print " "
___print " - don't get jumpscared, the device needs to reboot into recovery again for some stuffs"
___print "   After booting into recovery, just reboot the device...\n"
___print " - rebooting in 5"
for ((i = 4; i >= 1; i--)); do 
    ___print "\t\t${i}"
done
reboot recovery