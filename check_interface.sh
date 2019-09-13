#!/bin/sh

if [ -z $1 ] || [ -z $2 ]
then
	echo "ERROR: INTERFACE must be done."
	echo "Use: check_interface.sh INTERFACE COMMAND"
	return
fi

INTERFACE=$1
COMMAND=$2
echo "Selected interface: $INTERFACE"
STATUS=$(cat /sys/class/net/$INTERFACE/operstate)
if [ $STATUS != "up" ]
then
	echo "$INTERFACE is down. Execute command: $COMMAND"
	bash -c $COMMAND
	return
fi
echo "ALL OK"
return
