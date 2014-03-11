#!/bin/sh
currentpath=${PWD}
echo "${currentpath}"
 for device in $*; do
   echo ${device}
   adb connect ${device}
   adb wait-for-device
   cat packagename.txt |xargs -i adb uninstall {}
   adb disconnect
 done

