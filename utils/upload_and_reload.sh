#/bin/sh

# Used for reload MainConfig and reload the service

# Vars

FILE="MainConfig.xml"
DIR="/mnt/mtd/iMod/config/"

# Copy new file

cp -a $DIR$FILE $DIR$FILE.old
cp -a $FILE $DIR$FILE

# Restart sevice
imod start