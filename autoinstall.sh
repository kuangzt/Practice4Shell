#!/bin/sh
currentpath=${PWD}
echo "${currentpath}"
 for device in $*; do
   echo ${device}
   adb connect ${device}
   adb wait-for-device
   find ${currentpath} -type f -name "*.apk" -exec adb install {} \;
   adb disconnect
 done
