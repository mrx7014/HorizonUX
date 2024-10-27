# boom.
CODENAME=Alpha_Centuari
CODENAME_VERSION_REFERENCE_ID=1.0
BUILD_TARGET_REFERENCE_ID=11

# replace these with your dir
SYSTEM_DIR=""
SYSTEM_EXT_DIR=""
VENDOR_DIR=""
PRODUCT_DIR=""
PRISM_DIR=""
		
SCRIPTS=(
    "./misc/scripts/add_unlimited_backups.sh"
    "./horizon/patches/disable_adb_authorization/disable_adb_authorization.sh"
    "./horizon/patches/bluetooth_library_patcher/patch.sh"
    "./misc/scripts/github_at_luna__FLOSSPAPER.sh"
)

TARS=(
    "./packages/horizonux_salvo-unica-updater/smali.tar"
    "./packages/horizonux_salvo-unica-updater/original/META-INF.tar"
)

BUILD_DIR=./build/system
OVERLAY_DIR=./build/system/product/overlay
ETC_DIR=./build/system/etc/sysconfig
PRIV_APP_DIR=./build/system/priv-app

for script in ${SCRIPTS[@]}; do
	[ -f $script ] || { 
		echo " - Error: Script $$script does not exist. Please check the path."; 
		exit 1;
	};
done
for tar in ${TARS[@]}; do
	[ -f $tar ] || { 
		echo " - Error: Tar file $$tar does not exist. Please check the path.";
		exit 1; 
	}; 
done
	
#cat >> ./build/system/etc/init/init.${CODENAME}.rc <<
#on property:service.bootanim.exit=1
#	exec u:r:magisk:s0 root root -- /system/bin/horizonprop -n ro.boot.verifiedbootstate green
#	exec u:r:su:s0 root root -- /system/bin/horizonprop -n ro.boot.verifiedbootstate green
#EOF

command -v apktool >/dev/null 2>&1 || { \
		echo " - Error: apktool is not installed. Please install it to proceed."; \
		exit 1; \
}

command -v zip >/dev/null 2>&1 || { \
		echo " - Error: zip is not installed. Please install it to proceed."; \
		exit 1; \
}

function build_target() {
	echo " - Building $1..."
	mkdir -p $2
	apktool build $3 > /dev/null 2>&1 && { \
		mv $4 $2; \
	} || { \
		echo " - Failed to build $1, please try again."; \
	}
	echo " - Build finished by $(shell id -un) at $(shell date +\"%I:%M%p\") on $(shell date +\"%Y-%m-%d\")"
	echo "   Check the /build folder for the items you have built."
	echo "   Please sign the built overlay or application packages manually with your own private keys; do not use any public keys."
}

if [ "${BUILD_TARGET_REFERENCE_ID}" -ge "14" ]; then
	cd ${SYSTEM_DIR}
	rm -rf etc/permissions/privapp-permissions-com.samsung.android.kgclient.xml \
	etc/public.libraries-wsm.samsung.txt \
	lib/libhal.wsm.samsung.so \
	lib/vendor.samsung.hardware.security.wsm.service-V1-ndk.so \
	lib64/libhal.wsm.samsung.so \
	lib64/vendor.samsung.hardware.security.wsm.service-V1-ndk.so priv-app/KnoxGuard
fi