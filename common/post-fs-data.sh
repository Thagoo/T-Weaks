#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
echo 1280000000 > /sys/block/zram0/disksize
echo 80 > /proc/sys/vm/swappiness
echo 100 > /sys/module/vmpressure/parameters/allocstall_threshold
echo 246 > /sys/block/mmcblk0/bdi/read_ahead_kb
echo 246 > /sys/block/mmcblk0/queue/read_ahead_kb
echo 246 > /sys/block/mmcblk0rpmb/bdi/read_ahead_kb
echo 246 > /sys/block/mmcblk0rpmb/queue/read_ahead_kb
echo 246 > /sys/block/dm-0/queue/read_ahead_kb
echo 246 > /sys/block/dm-1/queue/read_ahead_kb
echo 1 > /sys/module/lowmemorykiller/parameters/enable_lmk
echo "15360,19200,23040,26880,34415,43737" > /sys/module/lowmemorykiller/parameters/minfree
echo 53059 > /sys/module/lowmemorykiller/parameters/vmpressure_file_min
echo 0 > /sys/module/lowmemorykiller/parameters/enable_adaptive_lmk
echo 0 > /sys/module/process_reclaim/parameters/enable_process_reclaim
echo 0 > /proc/sys/vm/dirty_expire_centisecs
echo 0 > /proc/sys/vm/dirty_writeback_centisecs
echo 60 > /proc/sys/vm/dirty_background_ratio
echo 95 > /proc/sys/vm/dirty_ratio
echo 10 > /proc/sys/vm/vfs_cache_pressure
echo 1652 > /proc/sys/vm/min_free_kbytes

