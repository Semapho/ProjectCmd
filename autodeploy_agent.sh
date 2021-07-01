#!/bin/bash

echo "start:" $(date +"%Y-%m-%d %H:%M:%S")

LogNameDATE=`date '+%Y_%m_%d'`
LogFile=/mnt/logrun/log_$LogNameDATE.log

if [ ! -d "/mnt/logrun/" ];then
    mkdir /mnt/logrun/
fi

echo "start:" $(date +"%Y-%m-%d %H:%M:%S") >> $LogFile

if [ -f "/mnt/grey/grey.jar" ];then
    echo "run grey ..."
    echo "run grey ..." >> $LogFile

    /mnt/grey/run.sh

else
    echo "autodeploy grey start..."
    echo "autodeploy grey start..." >> $LogFile

    sudo -i
    mkdir -p /mnt/grey
    mkdir -p /mnt/grey/logrey/
    cd /mnt/grey
    timedatectl set-timezone Asia/Shanghai
    yum install -y java-1.8.0-openjdk.x86_64
    yum -y install vim*
    yum -y install net-tools
    echo "root:123456" | chpasswd
    yum -y install openssh*
    yum -y install initscripts
    curl -O  https://ghproxy.com/https://raw.githubusercontent.com/Semapho/ProjectCmd/main/grey_0.0.4-2/grey.jar
    curl -O  https://ghproxy.com/https://raw.githubusercontent.com/Semapho/ProjectCmd/main/run.sh
    curl -O  https://ghproxy.com/https://raw.githubusercontent.com/Semapho/ProjectCmd/main/kill.sh
    curl -O  https://ghproxy.com/https://raw.githubusercontent.com/Semapho/ProjectCmd/main/query.sh
    curl -O  https://ghproxy.com/https://raw.githubusercontent.com/Semapho/ProjectCmd/main/tail.sh
    curl -O  https://ghproxy.com/https://raw.githubusercontent.com/Semapho/ProjectCmd/main/update.sh
    curl -O  https://ghproxy.com/https://raw.githubusercontent.com/Semapho/ProjectCmd/main/rc.local
    curl -O  https://ghproxy.com/https://raw.githubusercontent.com/Semapho/ProjectCmd/main/sshd_config
    cp -rf /mnt/grey/sshd_config  /etc/ssh/
    cp -rf /mnt/grey/rc.local  /etc/rc.d/
    chmod +x /etc/rc.d/rc.local
    chmod a+x run.sh | chmod a+x kill.sh | chmod a+x query.sh | chmod a+x tail.sh | chmod a+x update.sh

    echo "autodeploy grey end..."
    echo "autodeploy grey end..." >> $LogFile

    echo "run grey ..."
    echo "run grey ..." >> $LogFile

    /mnt/grey/run.sh
fi
