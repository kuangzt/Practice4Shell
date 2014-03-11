#!/bin/sh
currentpath=${PWD}
echo "${currentpath}"
 for device in $*; do
   echo ${device}
   adb connect ${device}
   adb wait-for-device
   find ${currentpath} -type f -name "*.apk" |xargs -i aapt dump xmltree {} AndroidManifest.xml | sed -n "/package=/p" |awk -F'"' '{print $2}' |xargs -i adb uninstall {}
   adb disconnect
 done
