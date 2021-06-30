#!/bin/bash
ps -ef | grep grey| grep -v grep | awk '{print $2}' | xargs kill -9
LogNameDATE=`date '+%Y_%m_%d'`
LogFile=/mnt/grey/logrey/logrey_$LogNameDATE.log
nohup java -jar /mnt/grey/grey.jar > $LogFile 2>&1
