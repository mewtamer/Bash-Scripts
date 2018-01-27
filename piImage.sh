#! /bin/bash
if [ -z "$2" ]
then
	sudo dd bs=1M of=piTemp.img if=/dev/$1
fi
if [ -e "$2" ]
then
	sudo dd bs=1M if="$2" of=/dev/$1
fi

