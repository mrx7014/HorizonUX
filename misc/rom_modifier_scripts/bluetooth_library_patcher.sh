# initial checks.
if [ ! -f "${SYSTEM_DIR}/lib64/libbluetooth_jni.so" ] || [ ! -f "$1" ]; then
  console_print " - the \"libbluetooth_jni.so\" file from the system/lib64 wasn't found, copy and put them in a random directory"
  abort "   and try again.."
fi

# patch this weird device lib.
HEX_PATCH "${SYSTEM_DIR}/lib64/libbluetooth_jni.so" "6804003528008052" "2b00001428008052"