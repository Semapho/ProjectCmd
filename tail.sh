#!/bin/bash
LogNameDATE=`date '+%Y_%m_%d'`
LogFile=/mnt/grey/logrey/logrey_$LogNameDATE.log
tail -f $LogFile
