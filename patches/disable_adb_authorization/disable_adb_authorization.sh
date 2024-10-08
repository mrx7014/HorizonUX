if [ ! -f "utilites/switchprop" ]; then 
	gcc utilites/switchprop.c -o utilites/compiled_bins/switchprop
	chmod 755 utilites/compiled_bins/switchprop
	export PATH="${PATH}:utilites/compiled_bins/"
fi
printf " - Please enter the path of the system build prop - "
read SYSTEM_PROP
if [ ! -f "${SYSTEM_PROP}/build.prop" ]; then 
	echo " - the \"build.prop\" from the system wasn't found, copy and put them in a random directory"
	echo "   and try again.."
	exit 1 
elif [ ! -f "${SYSTEM_PROP}" ]; then 
	echo " - the \"build.prop\" from the system wasn't found, copy and put them in a random directory"
	echo "   and try again.."
	exit 1 
fi
switchprop "ro.adb.secure" "0" "${SYSTEM_PROP}"
printf " - Please enter the path of the product build prop - "
read PRODUCT_PROP
if [ ! -f "$PRODUCT_PROP" ]; then
	echo " - the file wasn't found."
	exit 1
fi
switchprop "persist.sys.usb.config" "mtp,adb" "${PRODUCT_PROP}"