# nuke the old log file.
rm -rf ./error_ring.log
TMPDIR=$(mktemp --tmpdir=.)

# check if mentioned files do exist or not.
for i in "./misc/build_scripts/util_functions.sh" "./monika.conf" "./makeconfigs.prop" "./misc/build_scripts/target_configs.sh"; do
	if [ ! -f "$i" ]; then
		echo -e "[\e[0;35m$(date +%d-%m-%Y) \e[0;37m- \e[0;32m$(date +%H:%M%p)] [:\e[0;36mABORT\e[0;37m:] -\e[0;31m Can't find $i file, please try again later...\e[0;37m"
		sleep 0.5
		exit 1
	else
		. "$i"
	fi
done

# fuck this fucking directory before it fucking fucks up the fucking use cases man, fuck this fucking bullshit that i have to fuck with
# hope this fucking shit ends fucking soon.
rm -rf $TMPDIR