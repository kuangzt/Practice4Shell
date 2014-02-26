#!/bin/bash
pwd
currenthomepath="/home/kzt/TCC89x_Project/kzt_ics_v13.05_r1-android_4.2.2"

mmADConnect(){
cd ${currenthomepath}
pwd
find ./out/ -type d -name "ADConnect*"
find ./out/ -type d -name "ADConnect*" |xargs rm -rf
find ./out/ -type f -name "libXmlCParse.so"
find ./out/ -type f -name "libXmlCParse.so" |xargs rm -rf

cd ${currenthomepath}/packages/apps/AD
pwd
if [ -d ADConnect ]; then
cd ./ADConnect
if [ -d bin ]; then
sudo chmod 777 gen -R
sudo rm ./bin -rf
fi
if test -d gen
then
sudo chmod 777 bin -R
sudo rm ./gen -rf
fi
mm
fi
}



mmAdvertisingDatabase(){
cd ${currenthomepath}
pwd
find ./out/ -type d -name "AdvertisingDatabase*"
find ./out/ -type d -name "AdvertisingDatabase*" |xargs rm -rf

cd ${currenthomepath}/packages/apps/AD
pwd
if [ -d AdvertisingDatabase ]; then
cd ./AdvertisingDatabase
if [ -d bin ]; then
sudo chmod 777 gen -R
sudo rm ./bin -rf
fi
if test -d gen
then
sudo chmod 777 bin -R
sudo rm ./gen -rf
fi
mm
fi
}


mmMediaBoardEx(){
cd ${currenthomepath}
pwd
find ./out/ -type d -name "MediaBoardEx*"
find ./out/ -type d -name "MediaBoardEx*" |xargs rm -rf

cd ${currenthomepath}/packages/apps/AD
pwd
if [ -d MediaBoardEx ]; then
cd ./MediaBoardEx
if [ -d bin ]; then
sudo chmod 777 gen -R
sudo rm ./bin -rf
fi
if test -d gen
then
sudo chmod 777 bin -R
sudo rm ./gen -rf
fi
mm
fi
}


mmMediaBoardV4(){
cd ${currenthomepath}
pwd
find ./out/ -type d -name "MediaBoardV4*"
find ./out/ -type d -name "MediaBoardV4*" |xargs rm -rf
find ./out/ -type f -name "libmupdf.so"
find ./out/ -type f -name "libmupdf.so" |xargs rm -rf

cd ${currenthomepath}/packages/apps/AD
pwd
if [ -d MediaBoardV4 ]; then
cd ./MediaBoardV4
if [ -d bin ]; then
sudo chmod 777 gen -R
sudo rm ./bin -rf
fi
if test -d gen
then
sudo chmod 777 bin -R
sudo rm ./gen -rf
fi
mm
fi
}


mmNetRemoteService(){
cd ${currenthomepath}
pwd
find ./out/ -type d -name "NetRemoteService*"
find ./out/ -type d -name "NetRemoteService*" |xargs rm -rf

cd ${currenthomepath}/packages/apps/AD
pwd
if [ -d NetRemoteService ]; then
cd ./NetRemoteService
if [ -d bin ]; then
sudo chmod 777 gen -R
sudo rm ./bin -rf
fi
if test -d gen
then
sudo chmod 777 bin -R
sudo rm ./gen -rf
fi
mm
fi
}


mmSimpleDocService(){
cd ${currenthomepath}
pwd
find ./out/ -type d -name "SimpleDocService*"
find ./out/ -type d -name "SimpleDocService*" |xargs rm -rf

cd ${currenthomepath}/packages/apps/AD
pwd
if [ -d SimpleDocService ]; then
cd ./SimpleDocService
if [ -d bin ]; then
sudo chmod 777 gen -R
sudo rm ./bin -rf
fi
if test -d gen
then
sudo chmod 777 bin -R
sudo rm ./gen -rf
fi
mm
fi
}


mmPOIPPT(){
cd ${currenthomepath}
pwd
find ./out/ -type d -name "POI-PPT*"
find ./out/ -type d -name "POI-PPT*" |xargs rm -rf

cd ${currenthomepath}/packages/apps/AD
pwd
if [ -d POI-PPT ]; then
cd ./POI-PPT
if [ -d bin ]; then
sudo chmod 777 gen -R
sudo rm ./bin -rf
fi
if test -d gen
then
sudo chmod 777 bin -R
sudo rm ./gen -rf
fi
. precompile.sh
mm
fi
}

mmApk(){
while [ 1 ];
do

echo "=============================================="
echo "=                                            ="
echo "=    Welcome to AD Project Maker Menu        ="
echo "=                                            ="
echo "=============================================="
echo "**********************************************"
echo "*  1) ADConnect                              *"
echo "*  2) AdvertisingDatabase                    *"
echo "*  3) MediaBoardEx                           *"
echo "*  4) MediaBoardV4                           *"
echo "*  5) NetRemoteService                       *"
echo "*  6) SimpleDocService                       *"
echo "*  7) POI-PPT                                *"
echo "*  all) All                                  *"
echo "*  q) Quit                                   *"
echo "**********************************************"
echo -n "==> "

read N

case $N in 
	1)
		mmADConnect
		;;
	2)  
		mmAdvertisingDatabase
		;;
	3)
		mmMediaBoardEx
		;;
	4)
		mmMediaBoardV4
		;;

	5)
		mmNetRemoteService
		;;
	6)
		mmSimpleDocService
		;;
	7)
		mmPOIPPT
		;;
	all)    
		mmADConnect
		mmAdvertisingDatabase
		mmMediaBoardEx
		mmMediaBoardV4
		mmNetRemoteService
		mmSimpleDocService
		mmPOIPPT
		;;
	q)
		break
		;;
	*)
		echo "default"
		;;
esac


done
}

cd ${currenthomepath}
source build/envsetup.sh
lunch 20
pwd

rm ${currenthomepath}/out/target/product/tcc8930st/system/app/* -rf

cd ${currenthomepath}/packages/apps/AD
sudo chmod 777 ./* -R

mmApk


cd ${currenthomepath}/packages/apps/AD
pwd
sudo chmod 777 makeall.sh
