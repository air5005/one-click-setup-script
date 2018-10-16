#!/bin/bash 

usage()
{
	echo "Usage:"
	echo "      ./install.sh \$CMD"
	echo "      ./uninstall.sh \$CMD"
    echo ""
    echo "\$CMD:" 
    for tmp in $(ls $PWD/cmd/)
	do 
		echo "       $tmp"
	done

	return 0
}


