#!/system/bin/sh

while [ "$(getprop sys.boot_completed)" != "1" ] || [ "$(getprop dev.boot_completed)" != "1" ]; do
    sleep 1
done

if [ "$(id -u)" == "0" ]; then
	echo "fio" > /sys/block/mmcblk0/queue/scheduler
else
	echo " - root privilages are required."
fi