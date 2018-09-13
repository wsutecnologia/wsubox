#!/bin/bash
RETENTION=90
WORKDIR="__WORKDIR__"
BUCKET="b2:__BUCKETCLIENT__"
Y=`date +%Y --date "1 day ago"`
M=`date +%m --date "1 day ago"`
D=`date +%d --date "1 day ago"`

find $WORKDIR -type f -iname "${Y}-${M#0}-${D#0}*" -exec rclone copy {} $BUCKET/$Y/$M/$D \;
find $WORKDIR -type f -ctime +${RETENTION} -exec echo "rm -Rf {}" \;


