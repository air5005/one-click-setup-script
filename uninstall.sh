#!/bin/bash 

source $PWD/init_env.sh

export UNINSTALL_CMD

if [ "$1" == "help" ]
then
	help_usage
fi

if [ "$1" == "?" ]
then
	help_usage
fi

UNINSTALL_CMD=$1

if [ -f $PWD/cmd/$UNINSTALL_CMD/uninstall.sh ]; then
	$PWD/cmd/$UNINSTALL_CMD/uninstall.sh
fi

