# variables from the makeconfigs.prop
SYSTEM_PROP=${SYSTEM_DIR}/build.prop
PRODUCT_PROP=${PRODUCT_DIR}/build.prop

# fix for older devices....
if ! cat ${PRODUCT_PROP} | grep -q persist.sys.usb.config; then
	PRODUCT_PROP=${SYSTEM_DIR}/product/build.prop
fi

# change the values to enable debugging without authorization.
switchprop "ro.adb.secure" "0" "${SYSTEM_PROP}"
switchprop "ro.debuggable" "1" "${SYSTEM_PROP}"
switchprop "persist.sys.usb.config" "mtp,adb" "${PRODUCT_PROP}"