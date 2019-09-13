#!/bin/sh

if [ -z $1 ]
then
	echo "ERROR: INTERFACE must be done."
	echo "Use: sh check_interface.sh INTERFACE"
	return
fi

INTERFACE=$1
echo "Selected interface: $INTERFACE"
STATUS=$(cat /sys/class/net/$INTERFACE/operstate)
if [ $STATUS != "up" ]
then
	echo "$INTERFACE is down. Start reboot"
	reboot
	return
fi
echo "ALL OK"
return
