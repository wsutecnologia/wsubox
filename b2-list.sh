#!/bin/bash
BUCKETNAME="__BucketName__"
. .b2-api > /dev/null 2>&1
b2 list-file-names $BUCKETNAME | egrep fileName| awk '{ print $ 2 }' | cut -d ',' -f 1
