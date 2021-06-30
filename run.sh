#!/bin/bash
LogNameDATE=`date '+%Y%m%d'`
nohup java -jar /mnt/grey/grey.jar >output 2>&1 & /mnt/grey/log/log_$LogNameDATE.log
