#!/usr/bin/bash

# nuke the old log file.
rm -rf ./error_ring.log
TMPDIR=$(mktemp --tmpdir=. || mkdir -p .tmp; echo .tmp)

# check do we have the util_functions.sh file and include it if it's found else exit the terminal section.
if [ ! -f "./misc/build_scripts/util_functions.sh" ]; then
	echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] [:\e[0;36mABORT\e[0;37m:] -\e[0;31m Can't find functions wrapper script, please try again later...\e[0;37m"
	sleep 0.5
	exit 1
else 
	source ./misc/build_scripts/util_functions.sh
fi

# check do we have the makeconfigs.prop file and include it if it's found else exit the terminal section.
if [ ! -f "./makeconfigs.prop" ]; then
	echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] [:\e[0;36mABORT\e[0;37m:] -\e[0;31m Can't find makeconfigs file, please try again later...\e[0;37m"
	sleep 0.5
	exit 1
else 
	source ./makeconfigs.prop
fi

if [ ! -f "./misc/build_scripts/target_configs.sh" ]; then
	echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] [:\e[0;36mABORT\e[0;37m:] -\e[0;31m Can't find target_configs file, please try again later...\e[0;37m"
	sleep 0.5
	exit 1
else
	execute_scripts ./misc/build_scripts/target_configs.sh
fi

# my alibi.
rm -rf $TMPDIR