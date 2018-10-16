#!/bin/bash 

source $PWD/init_env.sh

export INSTALL_CMD

if [ "$1" == "help" ]
then
	help_usage
fi

if [ "$1" == "?" ]
then
	help_usage
fi

INSTALL_CMD=$1

if [ -f $PWD/cmd/$INSTALL_CMD/install.sh ]; then
	$PWD/cmd/$INSTALL_CMD/install.sh
fi

