#!/bin/sh
rm -fr output/target/usr/lib/luarocks
rm -fr output/target/usr/sbin/mosquitto output/target/usr/bin/mosquitto_* output/target/etc/mosquitto output/target/etc/init.d/S50mosquitto
rm -f output/target/usr/bin/luac 

#rm output/target/etc/resolv.conf
#cp -a board/slink/rootfs/* output/target/
cp -a board/slink/rootfs/etc/shadow output/target/etc
