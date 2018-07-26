#!/bin/bash
BUCKETNAME="__BucketName__"
REPOSITORIOLOCAL="__DirLocal__"
ANO=`date +%Y`
MES=`date +%m`
DIA=`date +%d --date " 1 day ago "`
LastDate="${ANO}-${MES#0}-${DIA#0}"

. .b2-api

cd $REPOSITORIOLOCAL
for volume in `ls ${LastDate}*`
do
	b2 upload-file $BUCKETNAME $volume $ANO/$MES/$DIA/$volume
done
