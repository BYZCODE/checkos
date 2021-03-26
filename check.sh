#!/bin/bash
Linux_OS() {
OS=`hostnamectl | grep System | awk '{print $3}'`
VER=`cat /etc/os-release  | grep VER | grep ID`

if [ $OS == 'CentOS' ] && [ $VER == 'VERSION_ID="7"' ];then
        os='centos7'

elif [ $OS == 'CentOS' ] && [ $VER == 'VERSION_ID="8"' ];then
        os='centos8'

elif [ $OS == 'Ubuntu' ] && [ $VER == 'VERSION_ID="16.04"' ];then
        os='ubuntu16'

elif [ $OS == 'Ubuntu' ] && [ $VER == 'VERSION_ID="18.04"' ];then
        os='ubuntu18'
fi

echo $os
}

Linux_OS
