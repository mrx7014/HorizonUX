# Set up environment and directories
TMPDIR=/dev/tmp
OUTFD="$2"
ZIPFILE="$3"
INSTALLER="$TMPDIR/install"
LOW_LEVEL_PARTITIONS_BACKUP_VOID_AREA="${INSTALLER}/low-level-backups"
IMAGES="${INSTALLER}/"

# detect uhhh, dirty flashes.
{
    ___manage__mounts mount-it /system || ___manage__mounts mount-it /system_root
    hosts_were_backed_up=false
    for alipmarriedhutao in "$(___manage__mounts where /system)" "$(___manage__mounts where /system)/system"; do
        if "$hosts_were_backed_up" || [ -f "$alipmarriedhutao/etc/hosts" ]; then
            cp $alipmarriedhutao/etc/hosts $INSTALLER/hosts.bkp && { 
                hosts_were_backed_up=true
                SYSTEM_PATH=$alipmarriedhutao
            }
            cat $alipmarriedhutao/build.prop | grep ro.build.id | head -n 1 | cut -c $(( $(echo ro.build.id | wc -c) + 1 ))-30 && PREVIOUS_SYSTEM_BUILD_ID=$(cat $(___manage__mounts where /system)/build.prop | grep ro.build.id | head -n 1 | cut -c $(( $(echo ro.build.id | wc -c) + 1 ))-30)
        fi
        [ -z "$PREVIOUS_SYSTEM_BUILD_ID" ] && PREVIOUS_SYSTEM_BUILD_ID="KILL.796f7572.73656c660a"
    done
} >&/dev/null

# Display Header
___print "#########################################################"
___print "   _  _     _   _            _                _   ___  __"
___print " _| || |_  | | | | ___  _ __(_)_______  _ __ | | | \\ \\/ /"
___print "|_  ..  _| | |_| |/ _ \\| '__| |_  / _ \\| '_ \\| | | |\\  / "
___print "|_      _| |  _  | (_) | |  | |/ / (_) | | | | |_| |/  \\ "
___print "  |_||_|   |_| |_|\\___/|_|  |_/___\\___/|_| |_|\\___//_/\\_\\"
___print "                                                         "
___print "#########################################################"
___print "Developer : $author"
___print "Version : v$version"
___print "Codename : $codename"
___print "###############################################"
___print " - Installing packages..."
___print "   please wait, it might take longer than usual..."

# Install the images
if ! ___get__rom__prop "THE_DEVICE_HAS_DYNAMIC_PARTITIONS"; then
    for i in $(echo ${SAR_PARTITIONS_TO_FLASH[@]}); do count=$((count + 1)); done
    SAR_PARTS_SIZE=$(( $count - 1 ))
    for ((i = 0; i < $SAR_PARTS_SIZE; i++)); do 
        ___install__the__disk__image "${SAR_PARTITIONS_TO_FLASH[${i}]}_${FORMAT_SPECIFIER}" "${SAR_PARTITIONS_TO_FLASH[${i}]}"
    done
elif ___get__rom__prop "THE_DEVICE_HAS_DYNAMIC_PARTITIONS"; then
    for i in $(echo ${DYNAMIC_SYSTEM_PARTITIONS_TO_FLASH[@]}); do count=$((count + 1)); done
    DYNAMIC_PARTS_SIZE=$(( $count - 1 ))
    for ((i = 0; i < $DYNAMIC_PARTS_SIZE; i++)); do 
        ___install__the__disk__image "${DYNAMIC_SYSTEM_PARTITIONS_TO_FLASH[${i}]}_${FORMAT_SPECIFIER}" "${DYNAMIC_SYSTEM_PARTITIONS_TO_FLASH[${i}]}"
    done
fi

# let's flash the low-level things of the device...
if $FLASH_LOW_LEVEL_PARTITIONS; then
    for j in $(echo ${LOW_LEVEL_PARTITIONS_TO_FLASH[@]}); do countone=$((countone + 1)); done
    LOW_LEVEL_PARTS_SIZE=$(( $countone - 1 ))
    for ((i = 0; i < $SAR_PARTS_SIZE; i++)); do # shouldve used seq but idc.
        ___install__low__level__images "${LOW_LEVEL_PARTITIONS_TO_FLASH[@]}" "${LOW_LEVEL_PARTITIONS_MD5SUMS[@]}" || low_level_thing_has_failed=true
    done
fi

if [ "$FLASH_LOW_LEVEL_PARTITIONS" == "true" ] && [ "$low_level_thing_has_failed" == "true" ]; then
    ___print " - installing the backup of the low level partitions"
    ___print "   because the installation was failed at some point..."
    for low_level_backups__ in $LOW_LEVEL_PARTITIONS_BACKUP_VOID_AREA/*; do
        cp $low_level_backups__ $(___find__real__block --device "${low_level_backups__%%.*}")
    done
    ___print " "
    ___print " - The things have been reverted back to their original state, the rom probly wont boot."
    ___print "   if the device got bricked then im not responsible for it because, ive alr told that"
    ___print "   im not responsible for any damages you do / did to your device...."
fi

# restore previous hosts file to fix network side issues...
if $hosts_were_backed_up; then
    if [ ! -z "$SYSTEM_PATH" ]; then
        ___manage__mounts mount-it /system || ___manage__mounts mount-it /system_root
        cat $INSTALLER/hosts.bkp > $SYSTEM_PATH/etc/hosts
        CURRENT_SYSTEM_BUILD_ID=$(cat $SYSTEM_PATH/build.prop | grep ro.build.id | head -n 1 | cut -c $(( $(echo ro.build.id | wc -c) + 1 ))-30)
        ___print " - The hosts file was restored from the previous rom with uhh"
        ___print "   build id :- $PREVIOUS_SYSTEM_BUILD_ID to $CURRENT_SYSTEM_BUILD_ID"
    fi
fi

___print " "

# Recovery script setup
if [ -z "$low_level_thing_has_failed" ] || [ $low_level_thing_has_failed == "false" ]; then
    ___setup__recovery__command__file
    ___print " - don't get jumpscared, the device needs to reboot into recovery again for some stuffs"
    ___print "   if your device doesn't boot then congrats! you've fucked your device :D"
    ___print "   After booting into recovery, just reboot the device...\n"
    ___print " - rebooting in 5"
    for ((i = 4; i >= 1; i--)); do  # seq will do the job but idc cuz im a npc..
        ___print "\t\t${i}"
    done
    reboot recovery
fi