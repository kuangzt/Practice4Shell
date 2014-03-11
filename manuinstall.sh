#!/bin/sh
currentpath=${PWD}
echo "${currentpath}"
 for device in $*; do
   echo ${device}
   adb connect ${device}
   adb wait-for-device
   cat apkname.txt |xargs -i adb install -r {}
   adb disconnect
 done

