#!/bin/bash

# This script needs one mandatory parameter,
# which represents the remote destination folder
# on Dropbox cloud.
#
# Example: ./scheduled_dropbox_backup.bash aurone.com


# The [Remote destination folder] parameter is mandatory
if [ -z $1 ]
then
	exit 1
fi

# Upload to Dropbox only if the backup has succeeded
if [ "1" == $BACKUP_STATUS ]
then
	REMOTE_DESTINATION_FOLDER=$1
	LATEST_BACKUP_FOLDER=`date +$BACKUP_DEST`
	/root/Dropbox-Uploader/dropbox_uploader.sh upload $LATEST_BACKUP_FOLDER/* /ServerBackup/$REMOTE_DESTINATION_FOLDER/
fi
