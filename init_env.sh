#!/bin/bash

source $PWD/decare_val.sh

source $PWD/dist_system_type.sh
if [ "$?" != "0" ]; then
	echo "dist_system_type fail!"
	exit 1
fi

echo "System_Types:$System_Types" 
echo "System_Distributor:$System_Distributor" 
echo "System_Description:$System_Description" 
echo "System_Release:$System_Release" 

source $PWD/help.sh
if [ "$?" != "0" ]; then
	echo "help fail!"
	exit 1
fi
