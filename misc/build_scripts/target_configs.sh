# idk what else to say, anyways...
bool BATTLEMAGE_HAS_SYSTEM false
bool BATTLEMAGE_HAS_VENDOR false
bool BATTLEMAGE_HAS_PRODUCT false

# let's	capture the output a variable.
katarenai=$(ls $HASH_KEY_FOR_SUPER_BLOCK_PATH/)
if [ "${BATTLEMAGE_BUILD}" == "true" ]; then
	for tmp in system vendor product; do
		if echo $katarenai | grep -q $tmp && echo ${TARGET_BUILD_PARTITIONS[@]} | grep -q $tmp; then
			if [ -f "$HASH_KEY_FOR_SUPER_BLOCK_PATH/$tmp/build.prop" ] || [ -f "$HASH_KEY_FOR_SUPER_BLOCK_PATH/$tmp/$tmp/build.prop" ]; then
			    bool BATTLEMAGE_HAS_$(string_format -u $tmp) true
			fi
		fi
	done
else
# BATTLEMAGE_BUILD = false i guess...
	for tmp in system vendor product; do
		if echo ${TARGET_BUILD_PARTITIONS[@]} | grep -q $tmp; then
			if [ -f "$HASH_KEY_FOR_SUPER_BLOCK_PATH/$tmp/build.prop" ] || [ -f "$HASH_KEY_FOR_SUPER_BLOCK_PATH/$tmp/$tmp/build.prop" ]; then
				abort "required partitions doesn't have an build.prop file to begin with, please extract the firmware package again or just try again..."
			fi
		fi
	done
fi