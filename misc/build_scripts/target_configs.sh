console_print "Do you want to mount the system image and proceed?"
if ask "Type \"yes\" to mount the super image..."; then
    printf "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)\e[0;37m] / [:\e[0;36mMESSAGE\e[0;37m:] / [:\e[0;32mJOB\e[0;37m:] -\e[0;33m Please enter the path to the super.img file: \e[0;37m"
    read super_image_path
    if [ ! -f "$super_image_path" ]; then
        abort "Invalid image path: $super_image_path. Ensure the correct path is provided."
    fi
    mount_super_image "$super_image_path"
    bool BATTLEMAGE_BUILD true
    execute_scripts "./misc/build_scripts/setup.sh"
else
    bool BATTLEMAGE_BUILD false
    execute_scripts "./misc/build_scripts/setup.sh"
fi

# Cache these headaches
if ! $BATTLEMAGE_BUILD; then
    if [ ! -f "${SYSTEM_DIR}/build.prop" ] && [ ! -f "${SYSTEM_DIR}/system/build.prop" ]; then
        abort "The system partition is not found."
    elif [ ! -f "${SYSTEM_EXT_DIR}/etc" ] && [ ! -f "${SYSTEM_EXT_DIR}/system_ext/etc" ]; then
        abort "The system_ext partition is not found."
    elif [ ! -f "${VENDOR_DIR}" ] && [ ! -f "${VENDOR_DIR}/vendor" ]; then
        abort "The vendor partition is not found."
    elif [ ! -f "${PRODUCT_DIR}" ] && [ ! -f "${PRODUCT_DIR}/product" ]; then
        abort "The product partition is not found."
    fi
else
    for partition in system vendor product prism; do
        if echo "$katarenai" | grep -q "$partition" && echo "${TARGET_BUILD_PARTITIONS[@]}" | grep -q "$partition"; then
            if check_build_prop "$HASH_KEY_FOR_SUPER_BLOCK_PATH/$partition"; then
                set_partition_flag "$partition"
            fi
        fi
    done
    HORIZON_PRISM_DIR=$(kang_dir "prism")
    HORIZON_PRODUCT_DIR=$(kang_dir "product")
    HORIZON_SYSTEM_DIR=$(kang_dir "system")
    HORIZON_SYSTEM_EXT_DIR=$(kang_dir "system_ext")
    HORIZON_VENDOR_DIR=$(kang_dir "vendor")
fi

if ! $BATTLEMAGE_BUILD; then
    for partition in system vendor product; do
        check_partition_in_target "$partition"
        if ! check_build_prop "$HASH_KEY_FOR_SUPER_BLOCK_PATH/$partition"; then
            abort "The $partition partition doesn't have a build.prop file. Please extract or mount the images again..."
        fi
    done
    HORIZON_PRISM_DIR=$PRISM_DIR
    HORIZON_PRODUCT_DIR=$PRODUCT_DIR
    HORIZON_SYSTEM_DIR=$SYSTEM_DIR
    HORIZON_SYSTEM_EXT_DIR=$SYSTEM_EXT_DIR
    HORIZON_VENDOR_DIR=$VENDOR_DIR
fi

for partition in system vendor; do
    check_partition_in_target "$partition"
done

# Stack build properties into a temporary directory
console_print "Storing the ROM's build properties into a temporary directory..."
stack_build_properties

# cook a temporary file.. 
if command -v mktemp; then
	TMPFILE=$(mktemp)
else
	TMPFILE=$(touch $TMPDIR/bomboclattt; echo "$TMPDIR/bomboclattt")
fi

# make a variable to route to the build.prop files directly
HORIZON_PRISM_PROPERTY_FILE=$(find_partition_property_file "prism")
HORIZON_PRODUCT_PROPERTY_FILE=$(find_partition_property_file "product")
HORIZON_SYSTEM_PROPERTY_FILE=$(find_partition_property_file "system")
HORIZON_SYSTEM_EXT_PROPERTY_FILE=$(find_partition_property_file "system_ext")
HORIZON_VENDOR_PROPERTY_FILE=$(find_partition_property_file "vendor")

# boom
if ! $testEnv; then
	if [ ! -d "${SCRIPTS[1]}" ]; then
		abort "Script files are missing, exiting..."
	elif [ -z "$(command -v zip)" ]; then
		abort "zip is not installed. Please install it to proceed."
	elif [ ! -d "$(command -v python3)" ]; then
		warns "python3 is not installed. It's not required unless you want to patch your recovery image." "$(echo "DEPENDENCIES_ERRORS" | tr '[:lower:]' '[:upper:]')"
	elif [ -z "${JAVA_HOME}" ]; then
		abort "Please install the latest openjdk to proceed."
	fi
fi

# bomboclatt
for i in $HORIZON_SYSTEM_DIR/etc/floating_feature.xml $HORIZON_VENDOR_DIR/etc/floating_feature.xml; do
    [ -f "${i}" ] && TARGET_BUILD_FLOATING_FEATURE_PATH="${i}"
done