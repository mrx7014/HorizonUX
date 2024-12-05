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
    local the_50_jeez=$(du -h $dir | head -n 1 | cut -c 4-4 | string_case -l)
    if [ "$(echo $the_50_jeez | grep -q m)" ] || [ "$(echo $the_50_jeez | grep -q g)" ]; then
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

########################################### effectless services #####################################

# let's change the default theme to dark, Thanks to nobletaro for the idea!
if [ "$(settings get secure device_provisioned)" == "0" ]; then
    settings put secure ui_night_mode 2
    cmd uimode night yes
fi

# Disable collective device administrators for all users
for U in $(ls /data/user); do
    for C in "auth.managed.admin.DeviceAdminReceiver" "mdm.receivers.MdmDeviceAdminReceiver"; do
        pm disable --user $U com.google.android.gms/com.google.android.gms.$C
    done
done

########################################### effectless services #####################################

############################################ late_start_services ############################################################

# spoof the device to green state, making it seem like an locked device.
if is_bootanimation_exited; then
    resetprop --delete ro.build.selinux
    resetprop ro.boot.warranty_bit 0
    resetprop ro.vendor.boot.warranty_bit 0
    resetprop ro.vendor.warranty_bit 0
    resetprop ro.warranty_bit 0
    resetprop ro.boot.verifiedbootstate green
    resetprop ro.boot.veritymode enforcing
    resetprop vendor.boot.vbmeta.device_state locked
    maybe_set_prop ro.bootmode recovery unknown
    maybe_set_prop ro.boot.mode recovery unknown
    maybe_set_prop vendor.boot.mode recovery unknown
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

# let's exit with '0' because we dont want to f-around things lol
exit 0