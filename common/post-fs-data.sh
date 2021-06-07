#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# Mod by Rendy
swapoff /dev/block/zram0 /dev/null 2>&1
echo 1 > /sys/block/zram0/reset
echo 6048M > /sys/block/zram0/disksize
mkswap /dev/block/zram0 /dev/null 2>&1
swapon /dev/block/zram0 /dev/null 2>&1
echo 100 > /proc/sys/vm/swappiness

# This script will be executed in post-fs-data mode
