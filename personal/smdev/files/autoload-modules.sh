#!/bin/sh
set -e

if [ "$DEVTYPE" == partition ]; then
    module_name=$(lsblk -no FSTYPE $DEVNAME | grep -v linux_raid_member)
    [ -z "$module_name" ] || modprobe -b $module_name
else
    mod_alias_file=/sys${DEVPATH:-$1}/**/modalias
    [ -f "$mod_alias_file" ] && modprobe -b $(cat $mod_alias_file)
fi
