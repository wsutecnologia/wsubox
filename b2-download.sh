#!/bin/bash
BUCKETNAME="bkp-noruega-dados"
REPLOCAL="/mnt/backup/restore"
if [ -z $1 ]
then
	echo "$0 <file name>"
	exit 0
fi
. .b2-api > /dev/null 2>&1
LOCALFILE=`echo $1 | sed "s/[0-9]\\{4\\}\\/[0-9]\\{2\\}\\/[0-9]\\{2\\}\\///g"`
LOCALFILE=`echo ${LOCALFILE#/} `
REMOTEFILE=`echo ${1#/}`
b2 download-file-by-name $BUCKETNAME $REMOTEFILE $REPLOCAL/$LOCALFILE
