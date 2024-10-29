function existance() {
   local file="$1"
   [ -e "$file" ] && { return 0; } || { return 1; }
}

function warns_f() {
  warns "$1" "FASTBOOTD_PATCHER"
}

if $(echo $RECOVERY_IMAGE_PATH | grep -q lz4); then
  abort "blud extract the image and give the raw image path, im lazy bish"
fi

# Check for recovery images
if existance "$RECOVERY_IMAGE_PATH"; then
  mv "$RECOVERY_IMAGE_PATH" "./build/custom_recovery_with_fastbootd/raw.img"
  warns_f "Found unzipped image!" 
else
  abort "No image to patch found."
fi

# Edit raw image
warns_f "Editing image..."
off=$(grep -ab -o SEANDROIDENFORCE raw.img | tail -n 1 | cut -d : -f 1)
dd if=raw.img of=header.img bs=4k count="$off" iflag=count_bytes

# bomb
warns_f "Done editing the given image!"
warns_f "checking the file..."
if ! existance "./build/custom_recovery_with_fastbootd/header.img"; then
  abort "file check on header.img failed"
fi
warns_f "finished!"

# Make keystore file.
mkdir "./build/custom_recovery_with_fastbootd/keys"
openssl genrsa -f4 -out "$csd/keys/phh.pem" 4096 

# Fragment the edited image
mkdir "./build/custom_recovery_with_fastbootd/fragments"
cd "./build/custom_recovery_with_fastbootd/fragments" || exit
./build/custom_recovery_with_fastbootd/magiskboot unpack "./build/custom_recovery_with_fastbootd/header.img"
./build/custom_recovery_with_fastbootd/magiskboot cpio ramdisk.cpio extract

if existance "./build/custom_recovery_with_fastbootd/fragments/system/bin/recovery"; then
  warns_f "successfully fragmented image!" 
else 
  abort "fragmentation failed!"
fi

# Patch the fragmented image
warns_f "Patching image.."
for patch in \
  "e10313aaf40300aa6ecc009420010034 e10313aaf40300aa6ecc0094" \
  "eec3009420010034 eec3009420010035" \
  "3ad3009420010034 3ad3009420010035" \
  "50c0009420010034 50c0009420010035" \
  "080109aae80000b4 080109aae80000b5" \
  "20f0a6ef38b1681c 20f0a6ef38b9681c" \
  "23f03aed38b1681c 23f03aed38b9681c" \
  "20f09eef38b1681c 20f09eef38b9681c" \
  "26f0ceec30b1681c 26f0ceec30b9681c" \
  "24f0fcee30b1681c 24f0fcee30b9681c" \
  "27f02eeb30b1681c 27f02eeb30b9681c" \
  "b4f082ee28b1701c b4f082ee28b970c1" \
  "9ef0f4ec28b1701c 9ef0f4ec28b9701c" \
  "9ef00ced28b1701c 9ef00ced28b9701c" \
  "2001597ae0000054 2001597ae1000054"
do
  src="${patch%% *}"
  dst="${patch##* }"
  ./build/custom_recovery_with_fastbootd/magiskboot hexpatch "./build/custom_recovery_with_fastbootd/fragments/system/bin/recovery" $src $dst
done

# Reassemble fragmented image
mkdir "./build/custom_recovery_with_fastbootd/output"
warns_f "Attempting to defragment image! If your image is corrupted, this may not end well..."
./build/custom_recovery_with_fastbootd/magiskboot repack "./build/custom_recovery_with_fastbootd/header.img" "./build/custom_recovery_with_fastbootd/output/output.img"

if existance "./build/custom_recovery_with_fastbootd/output/output.img"; then
  warns_f "Assembled output.img!"
  cd "./build/custom_recovery_with_fastbootd/"
else
  abort "output.img not found, exiting.."
fi

# Sign patched image with keyfile
warns_f "Signing patched image with generated openssh key..."
python3 "./build/custom_recovery_with_fastbootd/avbtool" extract_public_key --key "./build/custom_recovery_with_fastbootd/keys/phh.pem" --output "./build/custom_recovery_with_fastbootd/keys/phh.pub.bin" &&
python3 "./build/custom_recovery_with_fastbootd/avbtool" add_hash_footer --image "./build/custom_recovery_with_fastbootd/output/output.img" --partition_name recovery --partition_size "$(wc -c < "$csd/raw.img")" --key "./build/custom_recovery_with_fastbootd/keys/phh.pem" --algorithm SHA256_RSA4096
warns_f "Signed image successfully!"

printf "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] / [:\e[0;36mWARN\e[0;37m:] / [:\e[0;32mFASTBOOTD_PATCHER\e[0;37m:] -\e[0;33m Do you want to make an odin tar for flashing the patched recovery image? (y/n) - \e[0;37m"
read foo
if [ "$(echo "${foo}" | tr '[:upper:]' '[:lower:]')" == "y" ]; then
  tar -cvf "./build/custom_recovery_with_fastbootd/output/output.tar" "./build/custom_recovery_with_fastbootd/output/output.img"
  md5sum -t "./build/custom_recovery_with_fastbootd/output/output.tar" >> "./build/custom_recovery_with_fastbootd/output/output.tar"
  mv "./build/custom_recovery_with_fastbootd/output/output.tar" "./build/custom_recovery_with_fastbootd/output/output.tar.md5"
fi

warns_f "Image has been patched and it's saved in the ./build/custom_recovery_with_fastbootd/output/ directory.."