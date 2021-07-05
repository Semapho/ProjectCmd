#!/bin/bash

address=$1

hostname=$(hostname)

echo "0: hostname: $hostname"

echo "1: kill grey"

ps -ef | grep grey| grep -v grep | awk '{print $2}' | xargs kill -9

echo "2: run grey"

LogNameDATE=`date '+%Y_%m_%d_%H_%M_%S'`
LogFile=./logrey_${hostname}_${LogNameDATE}.log
nohup java -jar /mnt/grey/grey.jar >> $LogFile 2>&1 &

echo "3: sleep 10s"

sleep 10

echo "4: get harvest"

harvest=`tail -n 7 $LogFile | grep 'Harvest' | awk '{print $2}'`

echo "5: harvest: $harvest"

echo "6: Transfer harvest to address: ${address}"

nohup  ./transfer.sh  $address $harvest >> $LogFile 2>&1 &

sleep 10

echo "7: kill grey"

ps -ef | grep grey| grep -v grep | awk '{print $2}' | xargs kill -9

echo "8: run grey"

nohup java -jar /mnt/grey/grey.jar >> $LogFile 2>&1 &

echo "9: sleep 10s"

sleep 10

echo "10: get harvest"

harvest=`tail -n 7 $LogFile | grep 'Harvest' | awk '{print $2}'`

echo "11: harvest: $harvest"

echo "12: end"

