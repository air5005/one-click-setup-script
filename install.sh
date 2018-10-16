#!/bin/bash 

source $PWD/init_env.sh

export INSTALL_CMD

if [ "$1" == "help" ]
then
	usage
fi

if [ "$1" == "?" ]
then
	usage
fi

INSTALL_CMD=$1

if [ -f $PWD/cmd/$INSTALL_CMD/install.sh ]; then
	$PWD/cmd/$INSTALL_CMD/install.sh
fi

