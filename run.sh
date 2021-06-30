#!/bin/bash
LogNameDATE=`date '+%Y_%m_%d'`
LogFile=/mnt/grey/logrey/logrey_$LogNameDATE.log
nohup java -jar /mnt/grey/grey.jar > $LogFile 2>&1
