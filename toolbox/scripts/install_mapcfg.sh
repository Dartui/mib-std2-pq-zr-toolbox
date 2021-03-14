#!/bin/sh
# Info
export TOPIC=mapcfg
export MIBPATH=/tsd/var/nav/cfg/mapcfg
export SDPATH=$TOPIC/
export TYPE="folder"
DESCRIPTION="This script will install custom navigation grapics"

echo $DESCRIPTION
echo
sleep 2

# . /eso/hmi/engdefs/scripts/mqb/util_info.sh # For later

# Check if SD card is inserted
. /tsd/scripts/util_checksd.sh

# Make backup folder
. /tsd/scripts/util_backup.sh
sleep 1

# Copy file(s) to unit
. /tsd/scripts/util_copy.sh
sleep 1

echo
echo "Done. Now restart the unit"

exit 0