#! /bin/bash
if [ "$1" == "-b" ]
then
	sudo partimage -z2 -b -o -d save /dev/sda2 $2
fi
if [ "$1" == "-r" ]
then
sudo partimage -b restore /dev/sda2 $2
fi
