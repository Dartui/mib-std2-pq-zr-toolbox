#!/bin/sh
# This script is meant to recover all skin mcf files
# author: Jille
# Modified by Olli for MIB2STD Toolbox
########################
# Info
export TOPIC=skins
export MIBPATH=/tsd/hmi/Resources
export TYPE="file"
DESCRIPTION="This script will recover the skinfiles and ambienceColorMaps from backup"

echo $DESCRIPTION
echo
sleep 2

# . /eso/hmi/engdefs/scripts/mqb/util_info.sh # For later

# Check if SD card is inserted
. /tsd/etc/persistence/esd/scripts/util_checksd.sh

# Restore file(s) to unit
BACKUP=$VOLUME/backup/$TOPIC

# Mount system as read/write
. /tsd/etc/persistence/esd/scripts/util_mount.sh
sleep 1

echo "Copying all skin files from backup folder to the unit"
echo "Please be patient"
sleep 1
if [ -f $BACKUP/skin0/images.mcf ]; then
	cp $BACKUP/skin0/images.mcf $MIBPATH/skin0/images.mcf
	echo "Skin0 restored"
	RESTORE=yes
	sleep 1
else
	echo "No skin0 backup found"
	sleep 1
fi
if [ -f $BACKUP/skin1/images.mcf ]; then
	cp $BACKUP/skin1/images.mcf $MIBPATH/skin1/images.mcf
	echo "Skin1 restored"
	RESTORE=yes
	sleep 1
else
	echo "No skin1 backup found"
	sleep 1
fi
if [ -f $BACKUP/skin2/images.mcf ]; then
	cp $BACKUP/skin2/images.mcf $MIBPATH/skin2/images.mcf
	echo "Skin2 restored"
	RESTORE=yes
	sleep 1
else
	echo "No skin2 backup found"
	sleep 1
fi	
if [ -f $BACKUP/skin3/images.mcf ]; then
	cp $BACKUP/skin3/images.mcf $MIBPATH/skin3/images.mcf
	echo "Skin3 restored"
	RESTORE=yes
	sleep 1
else
	echo "No skin3 backup found"
	sleep 1
fi
if [ -f $BACKUP/skin4/images.mcf ]; then
	cp $BACKUP/skin4/images.mcf $MIBPATH/skin4/images.mcf
	echo "Skin4 restored"
	RESTORE=yes
	sleep 1
else
	echo "No skin4 backup found"
	sleep 1
fi
if [ -f $BACKUP/skin5/images.mcf ]; then
	cp $BACKUP/skin5/images.mcf $MIBPATH/skin5/images.mcf
	echo "Skin5 restored"
	RESTORE=yes
	sleep 1
else
	echo "No skin5 backup found"
	sleep 1
fi
if [ -f $BACKUP/skin6/images.mcf ]; then
	cp $BACKUP/skin6/images.mcf $MIBPATH/skin6/images.mcf
	echo "Skin6 restored"
	RESTORE=yes
	sleep 1
else
	echo "No skin6 backup found"
	sleep 1
fi
echo
echo "Copying all ambience files from backup folder to the unit"
echo "Please be patient"
sleep 1
if [ -f $BACKUP/skin1/ambienceColorMap.res ]; then
	cp $BACKUP/skin1/ambienceColorMap.res $MIBPATH/skin1/ambienceColorMap.res
	echo "Skin1 ambience restored"
	RESTORE=yes
	sleep 1
else
	echo "No skin1 ambience backup found"
	sleep 1
fi
if [ -f $BACKUP/skin2/ambienceColorMap.res ]; then
	cp $BACKUP/skin2/ambienceColorMap.res $MIBPATH/skin2/ambienceColorMap.res
	echo "Skin2 ambience restored"
	RESTORE=yes
	sleep 1
else
	echo "No skin2 ambience backup found"
	sleep 1
fi	
if [ -f $BACKUP/skin3/ambienceColorMap.res ]; then
	cp $BACKUP/skin3/ambienceColorMap.res $MIBPATH/skin3/ambienceColorMap.res
	echo "Skin3 ambience restored"
	RESTORE=yes
	sleep 1
else
	echo "No skin3 ambience backup found"
	sleep 1
fi
if [ -f $BACKUP/skin4/ambienceColorMap.res ]; then
	cp $BACKUP/skin4/ambienceColorMap.res $MIBPATH/skin4/ambienceColorMap.res
	echo "Skin4 ambience restored"
	RESTORE=yes
	sleep 1
else
	echo "No skin4 ambience backup found"
	sleep 1
fi
if [ -f $BACKUP/skin5/ambienceColorMap.res ]; then
	cp $BACKUP/skin5/ambienceColorMap.res $MIBPATH/skin5/ambienceColorMap.res
	echo "Skin5 ambience restored"
	RESTORE=yes
	sleep 1
else
	echo "No skin5 ambience backup found"
	sleep 1
fi
if [ -f $BACKUP/skin6/ambienceColorMap.res ]; then
	cp $BACKUP/skin6/ambienceColorMap.res $MIBPATH/skin6/ambienceColorMap.res
	echo "Skin6 ambiencerestored"
	RESTORE=yes
	sleep 1
else
	echo "No skin6 ambience backup found"
	sleep 1
fi

# Conclusion
if [ "$RESTORE" == "yes" ]; then
	echo
	echo "Done. Now restart the unit"
else
	echo
	echo "No backups found. Nothing to restore"
fi

exit 0
