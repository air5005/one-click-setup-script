#!/bin/bash 

if [ -s /etc/redhat-release ]; then
    System_Distributor=`lsb_release -a |grep Distributor | awk -F ':' '{print $2}'`
    System_Description=`lsb_release -a |grep Description | awk -F ':' '{print $2}'`
    System_Release=`lsb_release -a |grep Release | awk -F ':' '{print $2}'`
	
	System_Release=${System_Release//\./\_}

	System_Distributor=$(echo $System_Distributor)
	System_Description=$(echo $System_Description)
	System_Release=$(echo $System_Release)

	if [ -f /etc/centos-release ]; then
	    System_Types=centos
	else
	    System_Types=fedora
	fi
elif [ -f /etc/debian_version ]; then
    System_Distributor=`lsb_release -a |grep Distributor | awk -F ':' '{print $2}'`
    System_Description=`lsb_release -a |grep Description | awk -F ':' '{print $2}'`
    System_Release=`lsb_release -a |grep Release | awk -F ':' '{print $2}'`
	
	System_Release=${System_Release//\./\_}

	System_Distributor=$(echo $System_Distributor)
	System_Description=$(echo $System_Description)
	System_Release=$(echo $System_Release)
	
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

