# motherfucking functions.

function dos2unixconv() {
    local localDoSFile="$1"
    local countedArguments="$#"

    # let's skip if we are not running in a wsl shell - nein nein nein!
    #if ! uname -a | grep microsoft; then
        #return 0
    #fi

    # let's skip this instance if the given file is already an unix file
    if awk '{if (index($0, "\r")) exit 0} END {exit 1}'; then
        echo " - Skipping the conversion of ${localDoSFile}..."
        return 0
    fi

    # Check for argument count
    if [ "$countedArguments" -ne 1 ]; then
        echo " - Can't convert this file. Please provide both a source file and a target directory."
        return 1
    fi

    # Check if dos2unix is available
    if ! command -v dos2unix >/dev/null 2>&1; then
        echo " - Can't find the dos2unix binary to convert this file. Please install it."
        return 1
    fi

    # Perform the conversion
    dos2unix "$localDoSFile" "${localDoSFile}.unix" || {
        echo " - Error: Failed to convert $localDoSFile"
        return 1
    }

    # Remove the original file and move the converted file
    if [ -f "${localDoSFile}.unix" ]; then
        rm -f "$localDoSFile"
        mv "${localDoSFile}.unix" "$localDoSFile" || {
            echo " - Error: Failed to convert this file: $localDoSFile"
            return 1
        }
        return 0
    else
        echo " - Conversion failed. The .unix file doesn't exist."
        return 1
    fi
}

# go fucking learn shit if you dont know what these does.

# force users to install dos2unix.
if [ -z "$(command -v dos2unix)" ]; then
    echo " - Please install dos2unix to proceed..."
    sleep 2
    exit 1
fi

SCRIPTS=(
    "./misc/rom_modifier_scripts/add_unlimited_backups.sh"
    "./misc/rom_modifier_scripts/resolution_app_permissions_xml_conf.sh"
    "./misc/rom_modifier_scripts/bring_fastbootd_into_recovery.sh"
    "./misc/rom_modifier_scripts/github_at_luna__FLOSSPAPER.sh"
    "./misc/rom_modifier_scripts/debloater_unifed.sh"
    "./diff_patches/system/etc/restart_radio_process_unified_29-33.patch"
    "./diff_patches/vendor/etc/init/wifi_29.patch"
    "./diff_patches/vendor/etc/init/wifi_unified_30-31.patch"
    "./diff_patches/vendor/etc/init/wifi_unified_32-33.patch"
)

# let's convert these script files.
for i in "${SCRIPTS[@]}"; do
    dos2unixconv "${i}"
done