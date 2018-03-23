#!/bin/bash
Branches=( dc zabbix backup pbx unifi guacamole )
URL="https://github.com/wsutecnologia/wsubox.git"
for branch in ${Branches[@]}
do 
	git clone -b $branch --single-branch $URL $branch
done
