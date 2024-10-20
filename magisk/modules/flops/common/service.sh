#!/system/bin/sh

# ok
while [[ "$(( $(getprop sys.boot_completed) + $(getprop dev.boot_completed) ))" -le "1" ]]; do
    sleep 10
done

# no.
echo "fio" > /sys/block/mmcblk0/queue/scheduler