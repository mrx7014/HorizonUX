#!/usr/bin/bash

# nuke the old log file.
rm -rf ./error_ring.log
TMPDIR=$(mktemp --tmpdir=. || mkdir -p .tmp; echo .tmp)

# check if mentioned files do exist or not.
for i in "script ./misc/build_scripts/target_configs.sh" "config ./monika.conf" "config ./makeconfigs.prop" "config ./misc/build_scripts/util_functions.sh"; do
	if [ ! -f "$(echo "$i" | awk '{print $2}')" ]; then
		echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] [:\e[0;36mABORT\e[0;37m:] -\e[0;31m Can't find $i file, please try again later...\e[0;37m"
		sleep 0.5
		exit 1
	else
		[ "$(echo "$i" | awk '{print $1}')" == "script" ] && execute_scripts "$(echo "$i" | awk '{print $2}')"
		[ "$(echo "$i" | awk '{print $1}')" == "config" ] && source "$(echo "$i" | awk '{print $2}')"
	fi
done

# fuck this fucking directory before it fucking fucks up the fucking use cases man, fuck this fucking bullshit that i have to fuck with
# hope this fucking shit ends fucking soon.
rm -rf $TMPDIR