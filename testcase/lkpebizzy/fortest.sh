#!/bin/bash -x
ip_of_android="192.168.2.35"
tmp_result_dir="lkp_tmp_result"
cd "$(dirname "$0")" 
apt-get install -y android-tools-adb
adb connect $ip_of_android

./lkpebizzy.sh  $ip_of_android  5555   $tmp_result_dir
