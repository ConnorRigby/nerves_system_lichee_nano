#!/bin/sh

APPDATA_PART=/dev/mmcblk0p3
APPDATA_MOUNT=/root
SWAPFILE=$APPDATA_MOUNT/swapfile

# todo only format partition once
mkfs.ext4 -F $APPDATA_PART
mount -t ext4 -o rw $APPDATA_PART $APPDATA_MOUNT
dd if=/dev/zero of=$SWAPFILE bs=1MB count=100
chmod 600 $SWAPFILE
mkswap $SWAPFILE
swapon $SWAPFILE