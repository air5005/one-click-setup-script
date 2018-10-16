#!/bin/bash 

export CUR_PATH=$PWD/cmd/$UNINSTALL_CMD/

source $CUR_PATH/common.sh

case $System_Types in 
  ubuntu | debian) 
      echo "$System_Types $0 uninstall"
  ;; 
  centos | fedora) 
      echo "$System_Types $0 uninstall"
  ;; 
  *) 
	 echo "$0 unknown system type."
	 exit 1
  ;; 
esac 

rm_old_version_${System_Types}_${System_Release}_${System_Arch}

