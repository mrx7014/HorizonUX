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


function unified() {
	# mod system build.prop
	if [ "${idk}" == "true" ]; then
		printf " - Please enter the path of the system build prop file: "
		read SYSTEM_PROP
	fi

	if [ ! -f "${SYSTEM_PROP}/build.prop" ]; then 
		echo " - The \"build.prop\" from the system wasn't found on the PATH you've provided."
		exit 1 
	fi

	# change the values and enable adb without authorization.
	switchprop "ro.adb.secure" "0" "${SYSTEM_PROP}/build.prop"
	echo "ro.debuggable=0" >> "${SYSTEM_PROP}/build.prop"

	# mod product build.prop
	if [ "${udk}" == "true" ]; then
		printf " - Please enter the path of the product build prop file: "
		read PRODUCT_PROP
	fi

	if [ ! -f "$PRODUCT_PROP" ]; then
		echo " - The \"build.prop\" from the product wasn't found on the PATH you've provided."
		exit 1
	fi

	switchprop "persist.sys.usb.config" "mtp,adb" "$PRODUCT_PROP"
}

# bomboclst
SYSTEM_PROP=$1
PRODUCT_PROP=$2
if [ -z "$1" ]; then
  idk=true
elif [ -z "$2" ]; then
  udk=true
fi