#!/bin/bash 

if [ -s /etc/redhat-release ]; then
	# Includes Fedora, CentOS
    System_Distributor=`lsb_release -a |grep Distributor | awk -F ':' '{print $2}'`
    System_Description=`lsb_release -a |grep Description | awk -F ':' '{print $2}'`
    System_Release=`lsb_release -a |grep Release | awk -F ':' '{print $2}'`

	if [ -f /etc/centos-release ]; then
	    System_Types=centos
	else
	    System_Types=fedora
	fi
elif [ -f /etc/debian_version ]; then
    System_Distributor=`lsb_release -a |grep Distributor | awk -F ':' '{print $2}'`
    System_Description=`lsb_release -a |grep Description | awk -F ':' '{print $2}'`
    System_Release=`lsb_release -a |grep Release | awk -F ':' '{print $2}'`

	if [ "$System_Distributor" == "Ubuntu" ];then
		System_Types=ubuntu
	elif [ "$System_Distributor" == "Debian" ]; then
		System_Types=debian
	else
		System_Types=unknown
	fi
else
	echo "unknown system type."
	System_Types=unknown
fi
