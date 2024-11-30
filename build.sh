# nuke the old log file.
rm -rf ./error_ring.log
mkdir -p ./tmp

# check do we have the util_functions.sh file and include it if it's found else exit the terminal section.
if [ ! -f "./misc/build_scripts/util_functions.sh" ]; then
	echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] [:\e[0;36mABORT\e[0;37m:] -\e[0;31m Can't find functions wrapper script, please try again later...\e[0;37m"
	sleep 0.5
	exit 1
else 
	source ./misc/build_scripts/util_functions.sh
fi

# check do we have the makeconfigs.prop file and include it if it's found else exit the terminal section.
if [ ! -f "./misc/build_scripts/makeconfigs.prop" ]; then
	echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] [:\e[0;36mABORT\e[0;37m:] -\e[0;31m Can't find makeconfigs file, please try again later...\e[0;37m"
	sleep 0.5
	exit 1
else 
	source ./misc/build_scripts/makeconfigs.prop
fi

if [ ! -f "./misc/build_scripts/target_configs.sh" ]; then
	echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] [:\e[0;36mABORT\e[0;37m:] -\e[0;31m Can't find target_configs file, please try again later...\e[0;37m"
	sleep 0.5
	exit 1
else
	source ./misc/build_scripts/target_configs.sh
fi

# rouna will gban me frfr
echo ${TARGET_BUILD_PARTITIONS[@]} | grep -q system || abort "the system block is not mentioned on the TARGET_BUILD_PARTITIONS variable, and you can't do anything without the system partition, please add system into the lists to proceed..."
echo ${TARGET_BUILD_PARTITIONS[@]} | grep -q vendor || abort "the vendor block is not mentioned on the TARGET_BUILD_PARTITIONS variable, and you can't do anything without the vendor partition, please add vendor into the lists to proceed..."

# bomb?
printf "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)\e[0;37m] / [:\e[0;36mMESSAGE\e[0;37m:] / [:\e[0;32mJOB\e[0;37m:] -\e[0;33m Do you wanna like ahh? mount the system image and proceed or you've already extracted it?\e[0;37m"
if ask "choose \"yes\" to mount the super image or type anything to proceed to the extracted dir..."; then
	HASH_KEY_FOR_SUPER_BLOCK_PATH=./tmp/`generate_random_hash 100`
	mkdir -p $HASH_KEY_FOR_SUPER_BLOCK_PATH
	printf "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)\e[0;37m] / [:\e[0;36mMESSAGE\e[0;37m:] / [:\e[0;32mJOB\e[0;37m:] -\e[0;33m Please enter the path to the super.img or the super image file to be exact\e[0;37m : "
	read me_you_love_me
	if [ ! -f "$me_you_love_me" ]; then
		abort "Invalid image / block path, please ENSURE that you're GIVING the RIGHT FUCKING FILE PATH!!"
	fi
	sudo mount -o loop $me_you_love_me $HASH_KEY_FOR_SUPER_BLOCK_PATH && bool BATTLEMAGE_BUILD true
	if [ -z "$BATTLEMAGE_BUILD" ]; then
		abort "The given image file is failed to mount into this temp path $HASH_KEY_FOR_SUPER_BLOCK_PATH"
	else
		execute_scripts "./misc/build_scripts/setup.sh"
	fi
else
	# hell nahhhhhhhhhhh.
	bool BATTLEMAGE_BUILD false
	execute_scripts "./misc/build_scripts/setup.sh"
fi

# my alibi.
rm -rf ./tmp
