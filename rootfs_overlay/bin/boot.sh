#!/bin/sh

SWAPFILE=/dev/mmcblk0p3

mkswap $SWAPFILE
swapon $SWAPFILE

