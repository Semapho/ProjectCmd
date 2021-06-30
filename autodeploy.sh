#!/bin/bash

echo "start:" $(date +"%Y-%m-%d %H:%M:%S")

#设置日志文件名
LogNameDATE=`date '+%Y_%m_%d'`
LogFile=/mnt/logrun/log_$LogNameDATE.log

#判断日志目录是否存在
if [ ! -d "/mnt/logrun/" ];then
    mkdir /mnt/logrun/
fi

#输出启动时间
echo "start:" $(date +"%Y-%m-%d %H:%M:%S") >> $LogFile

if [ -f "/mnt/grey/grey.jar" ];then
    echo "run grey ..."
    echo "run grey ..." >> $LogFile
else
    echo "autodeploy grey start..."
    echo "autodeploy grey start..." >> $LogFile

    sudo -i
    mkdir -p /mnt/grey
    mkdir -p /mnt/grey/logrey/
    cd /mnt/grey

    curl -O  https://greycloud.oss-accelerate.aliyuncs.com/Grey/grey.jar
    curl -O  http://192.168.3.24//run.sh
    curl -O  http://192.168.3.24/kill.sh
    curl -O  http://192.168.3.24/query.sh
    curl -O  http://192.168.3.24/tail.sh
    curl -O  http://192.168.3.24/update.sh

    chmod a+x run.sh | chmod a+x kill.sh | chmod a+x query.sh | chmod a+x tail.sh | chmod a+x update.sh

    /mnt/grey/run.sh
    echo "autodeploy grey end..."
    echo "autodeploy grey end..." >> $LogFile
fi



#设置日志文件名
LogNameDATE=`date '+%Y_%m_%d'`
LogFile=/mnt/logrun/logrey_$LogNameDATE.log
nohup java -jar /mnt/grey/grey.jar 2>&1 & $LogFile










#!/bin/bash

echo "start:" $(date +"%Y-%m-%d %H:%M:%S")

#设置日志文件名
LogNameDATE=`date '+%Y_%m_%d'`
LogFile=/mnt/logrun/log_$LogNameDATE.log

#判断日志目录是否存在
if [ ! -d "/mnt/logrun/" ];then
    mkdir /mnt/logrun/
fi

#输出启动时间
echo "start:" $(date +"%Y-%m-%d %H:%M:%S") >> $LogFile

if [ -f "/mnt/grey/grey.jar" ];then
    echo "run grey ..."
    echo "run grey ..." >> $LogFile
else
    echo "autodeploy grey start..."
    echo "autodeploy grey start..." >> $LogFile

    sudo -i
    mkdir -p /mnt/grey
    mkdir -p /mnt/grey/logrey/
    cd /mnt/grey

    curl -O  https://greycloud.oss-accelerate.aliyuncs.com/Grey/grey.jar
    curl -O  http://192.168.3.24//run.sh
    curl -O  http://192.168.3.24/kill.sh
    curl -O  http://192.168.3.24/query.sh
    curl -O  http://192.168.3.24/tail.sh
    curl -O  http://192.168.3.24/update.sh

    chmod a+x run.sh | chmod a+x kill.sh | chmod a+x query.sh | chmod a+x tail.sh | chmod a+x update.sh

    echo "autodeploy grey end..."
    echo "autodeploy grey end..." >> $LogFile

    /mnt/grey/run.sh

    echo "run grey ..."
    echo "run grey ..." >> $LogFile
fi




#!/bin/bash

echo "start:" $(date +"%Y-%m-%d %H:%M:%S")

#设置日志文件名
LogNameDATE=`date '+%Y_%m_%d'`
LogFile=/mnt/logrun/log_$LogNameDATE.log

#判断日志目录是否存在
if [ ! -d "/mnt/logrun/" ];then
    mkdir /mnt/logrun/
fi

#输出启动时间
echo "start:" $(date +"%Y-%m-%d %H:%M:%S") >> $LogFile

if [ -f "/mnt/grey/grey.jar" ];then
    echo "run grey ..."
    echo "run grey ..." >> $LogFile
else
    echo "autodeploy grey start..."
    echo "autodeploy grey start..." >> $LogFile

    sudo -i
    mkdir -p /mnt/grey
    mkdir -p /mnt/grey/logrey/
    cd /mnt/grey

    curl -O  https://greycloud.oss-accelerate.aliyuncs.com/Grey/grey.jar
    curl -O  https://raw.githubusercontent.com/Semapho/ProjectCmd/main/run.sh
    curl -O  https://raw.githubusercontent.com/Semapho/ProjectCmd/main/kill.sh
    curl -O  https://raw.githubusercontent.com/Semapho/ProjectCmd/main/query.sh
    curl -O  https://raw.githubusercontent.com/Semapho/ProjectCmd/main/tail.sh
    curl -O  https://raw.githubusercontent.com/Semapho/ProjectCmd/main/update.sh

    chmod a+x run.sh | chmod a+x kill.sh | chmod a+x query.sh | chmod a+x tail.sh | chmod a+x update.sh

    echo "autodeploy grey end..."
    echo "autodeploy grey end..." >> $LogFile

    /mnt/grey/run.sh

    echo "run grey ..."
    echo "run grey ..." >> $LogFile
fi
