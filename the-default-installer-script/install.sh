# blah blah blah blah blah blah blah
export TMPDIR=/dev/tmp
export OUTFD="$2"
export ZIPFILE="$3"
export INSTALLER=$TMPDIR/install
export IMAGES=${INSTALLER}/images
export ASH_STANDALONE=1
mkdir -p $INSTALLER $TMPDIR 2>/dev/null

function ___check__if__dependencies__exist() {
	local file="$1"
	unzip -l ${ZIPFILE} | grep -q "${file}"
	if [ "$?" == "0" ]; then
		return 0
	else
		return 1
	fi
}

function ___unpack__the__dependencies() {
	local file="$1"
	___check__if__dependencies__exist "$file" && { \
	unzip -o $ZIPFILE $file -d "${INSTALLER}/"; \
		return 0; \
	} || { \
		___abort "- The system file in the zip archive is missing, please re-download the rom package and try again." \
	}
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
	grep -q " $(readlink -f $1) " /proc/mounts 2>/dev/null
	return $?
}

function ___abort() {
	local text="$1"
	___print "$text"
	rm -rf $TMPDIR $INSTALLER
	exit 1	
}

function ___find__real__block() {
	local arguments="$1"
	local block_name="$2"
	local linked_block real_block
	
	# stop running if no argumennts are provided.
	if [ -z "$block_name" ]; then
		return 1
	elif [ -z "$arguments" ]; then
		return 1
	fi
	
	# let's find the block first.
	case "$arguments" in 
	device)
		for i in /dev/block/platform/*/by-name; do
			ls "${i}" | grep -q "${block_name}" && linked_block="${i}/${block_name}"
		done
	;;
	
	kernel)
		for i in /sys/*; do
			ls "${i}" | grep -q "${block_name}" && linked_block="${i}/${block_name}"
		done
	;;
	esac
	
	# weird devices.
	if [ -z "${linked_block}" ]; then
		du /dev/ > /sdcard/file_infos
		print "- Weird device, please report it to the developer and"
		abort "  send the file named \"file_infos\" (present in the root of the internal storage) to the ROM developer"
	fi
	
	# we are using instead of ___print cuz we dont want this to get printed in the installer screen and they
	# will get captured by local variables
	real_block=$(readlink -f ${linked_block})
	if [ -z "$real_block" ]; then
		echo "${linked_block}"
	else
		echo "${real_block}"
	fi
}

function ___install__the__sparse__image() {
	local image_name="$1"
	local block_name="$2"
	local real_block
	if [ -z "$image_name" ]; then
		___print "- Failed to get enough informations, the zip might got corrupted or any unknown reasons, contact the ROM developer"
		___abort "  Here's the error code : 0x696d6167655f6e616d65206e6f7420736574"
	fi
	if [ -z "$block_name" ]; then
		___print "- Failed to get enough informations, the zip might got corrupted or any unknown reasons, contact the ROM developer"
		___abort "  Here's the error code : 0x626c6f636b5f6e616d65206e6f7420736574"
	fi
	___unpack__the__dependencies "${image_name}" || ___abort " - The file wasn't properly extracted, please re-install or reboot into recovery and try again."
	real_block=$(___find__real__block "--device" "${block_name}")
	if [ -z "${real_block}" ]; then
		___print "- Failed to get enough informations, an unknown error has happened, contact the ROM developer"
		___abort "  Here's the error code : 0x7265616c5f626c6f636b206e6f7420736574"
	fi
	tar -xf {INSTALLER}/${image_name} -C ${INSTALLER}/
	for i in ${IMAGES}/*.img; do
		if [ -f "${real_block}" ]; then
			simg2img ${IMAGES}/${i} ${real_block}
		fi
	done
}

# let's fetch the informations of the rom using the variables file.
. ${INSTALLER}/rom.prop
awk '{print}' "${INSTALLER}/banner"
___print "Developer : ${author} "
___print "Version : v${version} "
___print "Codename : ${codename} "
___print "###############################################"
___print " - Installing the ROM package..."
if $THE_DEVICE_HAS_DYNAMIC_PARTITIONS; then
	___unpack__the__dependencies "super.img.xz"
	___install__the__sparse__image "super.img.xz" "super"
else
	for i in system.img.xz vendor.img.xz
		___unpack__the__dependencies "${i}"
		___install__the__sparse__image "${i}" "$(echo "$i" | cut -d. -f1)"
	done
	[ "$PRODUCT_IS_SERVED_AS_ROOT" == "true" ] && ___unpack__the__dependencies "product.img.xz"
fi

# enough, bye bye ❤️