#!/bin/bash

source $PWD/decare_val.sh

source $PWD/dist_system_type.sh
if [ "$?" != "0" ]; then
	echo "$0 dist_system_type fail!"
	exit 1
fi

System_Arch=`uname -m`

echo "System_Types:$System_Types" 
echo "System_Distributor:$System_Distributor" 
echo "System_Description:$System_Description" 
echo "System_Release:$System_Release" 
echo "System_Arch:$System_Arch" 

source $PWD/function.sh
if [ "$?" != "0" ]; then
	echo "$0 function fail!"
	exit 1
fi
