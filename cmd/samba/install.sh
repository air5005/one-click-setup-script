#!/bin/bash 

case $System_Types in 
  ubuntu | debian) 
      echo "$System_Types $0 install"
  ;; 
  centos | fedora) 
      echo "$System_Types $0 install"
  ;; 
  *) 
	 echo "$0 unknown system type."
  ;; 
esac 
