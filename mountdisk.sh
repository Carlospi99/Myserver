#!/bin/bash
#listing the disk and saving the partion in used
drive1=`fdisk -l | grep 465.7G | head -c 9` > /tmp/mount.txt


#10:20 pm turn the hard drive on.
#10:25 pm run script to mount the harddrive.
#mounting the drive.
mount -t ntfs-3g -o uid=1000,gid=1000,umask=007 $drive1 /media/owncloud/


#3:20 am turn off the hardrive
#3:20 am reboot server.
