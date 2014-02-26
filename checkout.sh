#!/bin/bash
svn checkout svn://218.17.160.254:6071/svn/skyworth_android_bs/ADConnectSky ./ADConnect
svn checkout svn://218.17.160.254:6071/svn/skyworth_android_bs/AdvertisingDatabase ./AdvertisingDatabase
svn checkout svn://218.17.160.254:6071/svn/skyworth_android_bs/MediaBoardEx ./MediaBoardEx
svn checkout svn://218.17.160.254:6071/svn/skyworth_android_bs/MediaBoardV4 ./MediaBoardV4
svn checkout svn://218.17.160.254:6071/svn/skyworth_android_bs/NetRemoteService ./NetRemoteService
svn checkout svn://218.17.160.254:6071/svn/skyworth_android_bs/SimplePPTService/ppt ./POI-PPT
svn checkout svn://218.17.160.254:6071/svn/skyworth_android_bs/SimpleDocService ./SimpleDocService
sudo chmod 777 checkout.sh
