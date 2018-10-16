#!/bin/bash

pushd $PWD
	
	source $PWD/decare_val.sh

	source $PWD/dist_system_type.sh
	if [ "$?" != "0" ]; then
		echo "dist_system_type fail!"
		popd
    else
	    echo "dist_system_type success!"
	fi
    
	echo "System_Types is $System_Types" 
	echo "System_Distributor is $System_Distributor" 
	echo "System_Description is $System_Description" 
	echo "System_Release is $System_Release" 
	
popd
