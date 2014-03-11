#!/bin/bash
#文件名称：~/bin/apkpackage
#实现功能：在Linux下查看apk文件的程序包名(而不需要解压)；
currentpath=${PWD}
echo "${currentpath}"
find ${currentpath} -type f -name "*.apk" |xargs -i aapt dump xmltree {} AndroidManifest.xml | sed -n "/package=/p" |awk -F'"' '{print $2}'
exit 0
