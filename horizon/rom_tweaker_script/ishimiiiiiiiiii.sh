function grep_prop() {
	local variable_name=$1
	local prop_file=$2
	local args="$#"
	if [ ! "$args" -eq "2" ]; then
		return 1
	fi
	grep "$variable_name" $prop_file | cut -d '=' -f 2 | sed 's/"//g'
}

function restart_audioserver() {
    # Wait for system boot completion and audioserver to boot up
    for i in `seq 1 5`; do
        if [ "`getprop sys.boot_completed`" = "1" ] && [ -n "`getprop init.svc.audioserver`" ]; then
            break
        fi
        sleep 1.3
    done

    # Check if audioserver is running before restarting
    if [ -n "`getprop init.svc.audioserver`" ]; then
        # Restart audioserver if it's running
        setprop ctl.restart audioserver
        sleep 0.2
        if [ "`getprop init.svc.audioserver`" != "running" ]; then
            # Workarounds for older devices where the audioserver hangs
            local pid="`getprop init.svc_debug_pid.audioserver`"
            if [ -n "$pid" ]; then
                kill -HUP $pid 1>/dev/null 2>&1
            fi
            for i in `seq 1 10`; do
                sleep 0.2
                if [ "`getprop init.svc.audioserver`" = "running" ]; then
                    break
                elif [ $i -eq 10 ]; then
                    return 1
                fi
            done
        fi
        return 0
    else
        return 1
    fi
}

function is_boot_completed() {
	if [ "$(getprop sys.boot_completed)" == "1" ]; then
		return 0
	else 
		return 1
	fi
}

function is_bootanimation_exited() {
	if [ "$(getprop service.bootanim.exit)" == "1" ]; then
		return 0
	else 
		return 1
	fi
}

function maybe_set_prop() {
    local prop="$1"
    local contains="$2"
    local value="$3"
    if [[ "$(getprop "$prop")" == *"$contains"* ]]; then
        resetprop "$prop" "$value"
    fi
}

function string_case() {
    local smile="$(echo $1 | tr '[:upper:]' '[:lower:]')"
    local string="$2"
    case $smile in
        --lower*|-l*)
            echo "$string" | tr '[:upper:]' '[:lower:]'
        ;;
        --upper*|-u*)
            echo "$string" | tr '[:lower:]' '[:upper:]'
        ;;
        *)
            echo "$string"
        ;;
    esac
}

function horizon_ishiiimi_logfile() {
    local message="$2"
    local service="$(echo "$1" | string_case -u)"
    if [ -z "${message}" ]; then
        echo " - missing arguments, can't process anything..."
    else
        echo "/ [$(date +%H:%M%p)]-[$(date +%d-%m-%Y)] / $service / ${message} /" >> ${the_logfile}
    fi
}

function maybe_kill_daemons() {
    local daemon_name=$1
    local daemon_pid=$(pidof $daemon_name)
    if [ -z "${daemon_pid}" ]; then
        horizon_ishiiimi_logfile "DAEMON_KILLER" "- The $daemon_name wasn't running or it's removed i guess, well uhh i can't do anything about. Sorry!"
    else
        if ! kill ${daemon_name}; then
            horizon_ishiiimi_logfile "DAEMON_KILLER" "- The $daemon_name can't be killed, well uhh i can't do anything about. Sorry!"
        fi
    fi
}

function dawn() {
    local dir=$1
    local the_fifty_jeez=$(du -h $dir | head -n 1 | cut -c 4-4 | string_case -l)
    if [ "$(echo $the_fifty_jeez | grep -q m)" ] || [ "$(echo $the_fifty_jeez | grep -q g)" ]; then
        return 0
    else
        return 1
    fi
}

function horizon_features() {
    local feature_name="$1"
    local kamg_it="$(grep_prop "$feature_name" "/system/bin/hw/linker_binary")"
    if [[ "$kamg_it" == "available" || "$kamg_it" == "true" ]]; then
        return 0
    else
        return 1
    fi
}

function maybe_nuke_prop() {
    local variable="$@"
    if [[ ! -z "$(command -v resetprop)" && ! -z "$(resetprop $variable)" ]]; then
        if ! resetprop -d $variable; then
            horizon_ishiiimi_logfile "resetprop_services" "Can't remove $variable for some unknown reason..."
        fi
    fi
}

########################################### effectless services #####################################

# let's change the default theme to dark, Thanks to nobletaro for the idea!
if [ "$(settings get secure device_provisioned)" == "0" ]; then
    settings put secure ui_night_mode 2
    cmd uimode night yes
fi

# gms doze crap 
{
    # Disable collective device administrators for all users
    for U in $(ls /data/user); do
        for C in "auth.managed.admin.DeviceAdminReceiver" "mdm.receivers.MdmDeviceAdminReceiver"; do
            pm disable --user $U com.google.android.gms/com.google.android.gms.$C
        done
    done
    # The GMS0 variable holds the Google Mobile Services package name
    GMS0="\"com.google.android.gms\""
    STR1="allow-unthrottled-location package=$GMS0"
    STR2="allow-ignore-location-settings package=$GMS0"
    STR3="allow-in-power-save package=$GMS0"
    STR4="allow-in-data-usage-save package=$GMS0"
    # Find all XML files under /data/adb directory (case-insensitive search for .xml files)
    find /data/adb/* -type f -iname "*.xml" -print |
    while IFS= read -r XML; do
        for X in $XML; do
        # If any of the defined strings (STR1, STR2, STR3, STR4) are found in the file,
        # execute the following block
        if grep -qE "$STR1|$STR2|$STR3|$STR4" $X 2>/dev/null; then
            # Use sed to remove the matched strings from the XML file
            # It deletes lines containing any of STR1, STR2, STR3, or STR4
            sed -i "/$STR1/d;/$STR2/d;/$STR3/d;/$STR4/d" $X
        fi
        done
    done
    # Add GMS to battery optimization
    dumpsys deviceidle whitelist -com.google.android.gms
}

########################################### effectless services #####################################

############################################ late_start_services ############################################################

# spoof the device to green state, making it seem like an locked device.
if is_bootanimation_exited; then
    for bootmodecrap in ro.bootmode ro.boot.mode vendor.boot.mode; do
        maybe_set_prop $bootmodecrap unknown
    done
    for warranty_bit in ro.warranty_bit ro.vendor.warranty_bit ro.vendor.boot.warranty_bit ro.boot.warranty_bit; do
        maybe_set_prop $warranty_bit 0
    done
    maybe_nuke_prop persist.log.tag.LSPosed
    maybe_nuke_prop persist.log.tag.LSPosed-Bridge
    maybe_nuke_prop ro.build.selinux
    resetprop ro.boot.verifiedbootstate green
    resetprop ro.boot.veritymode enforcing
    resetprop vendor.boot.vbmeta.device_state locked
fi

# let's cook an tmp file to save our logs because we have to save things on it
# and after that we have to move it to the /data/horizonux/logs because we
# still have no idea whether the device is freaking encrypted or not. You might say that
# we can plug things but idc, im just gonna f'round with the temp file and fuckin' move
# it to the directory.
if is_boot_completed; then
    the_logfile="/data/horizonux/logs/$(date +%d-%m-%Y-[%H:%M%p]__horizon__ishiimi__logfile__)"; 
    horizon_ishiiimi_logfile "ishimi" "The ROM decryped the storage, using the $the_logfile file to store logs..."
else
    the_logfile=$(mktemp); 
    horizon_ishiiimi_logfile "ishimi" "using the $the_logfile file to store logs because the storage haven't decryped yet!"
fi
dawn "/data/horizonux/logs/" && rm -rf /data/horizonux/logs/*
# we are gonna remove everything inside the dir if uhhh... it takes up an megabyte(s) of space

# let's initialize the resampler thing.
if horizon_features "persist.horizonux.audio.resampler"; then
    horizon_ishiiimi_logfile "horizonux_features_verifier" "The audio resampler is enabled in this build...."
    if is_boot_completed; then
        horizon_ishiiimi_logfile "late_start_service" "Starting HorizonUX resampler..."
        # pixel things that we don't need to f around...
        #for pixel_craps in enable_at_samplerate stopband halflength cutoff_percent tbwcheat; do
            #resetprop --delete ro.audio.resampler.psd.$pixel_craps
        #done
        resetprop ro.audio.resampler.psd.enable_at_samplerate 44100
        resetprop ro.audio.resampler.psd.stopband 194
        resetprop ro.audio.resampler.psd.halflength 520
        resetprop ro.audio.resampler.psd.cutoff_percent 85
        horizon_ishiiimi_logfile "late_start_service" "Restarting audioserver to apply the changes in your device..."
        if restart_audioserver; then
            horizon_ishiiimi_logfile "late_start_service" "audioserver restarted successfully..."
        else 
            horizon_ishiiimi_logfile "late_start_service" "failed to reboot audioserver, the resampler stuffs aren't saved.. sorryyy"
        fi
    fi
fi

############################################ late_start_services ############################################################

# let's clear the system logs and exit with '0' because we dont want to f-around things lol
logcat -c
exit 0