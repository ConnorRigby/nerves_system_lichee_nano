#!/bin/sh

set -e

# dd if=/dev/zero of=$BINARIES_DIR/swapfile bs=1MB count=512
# chmod 600 $BINARIES_DIR/swapfile
# mkswap $BINARIES_DIR/swapfile

# Create the revert script for manually switching back to the previously
# active firmware.
mkdir -p $TARGET_DIR/usr/share/fwup
$HOST_DIR/usr/bin/fwup -c -f $NERVES_DEFCONFIG_DIR/fwup-revert.conf -o $TARGET_DIR/usr/share/fwup/revert.fw

# Copy the fwup includes to the images dir
cp -rf $NERVES_DEFCONFIG_DIR/fwup_include $BINARIES_DIR
