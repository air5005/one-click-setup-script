#!/bin/bash 

case $System_Types in 
  ubuntu | debian) 
      echo "$System_Types $0 uninstall"
  ;; 
  centos | fedora) 
      echo "$System_Types $0 uninstall"
  ;; 
  *) 
	 echo "$0 unknown system type."
  ;; 
esac 
