#!/bin/bash 

source $PWD/init_env.sh

export UNINSTALL_CMD

if [ "$1" == "help" ]
then
	usage
fi

if [ "$1" == "?" ]
then
	usage
fi

UNINSTALL_CMD=$1

if [ -f $PWD/cmd/$UNINSTALL_CMD/uninstall.sh ]; then
	$PWD/cmd/$UNINSTALL_CMD/uninstall.sh
fi

