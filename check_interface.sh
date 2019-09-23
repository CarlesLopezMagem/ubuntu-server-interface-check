#!/bin/sh

if [ -z "$1" ] || [ -z "$2" ]
then
	echo "ERROR: INTERFACE and COMMAND must be done."
	echo "Use: check_interface.sh INTERFACE COMMAND"
	return
fi
MESSAGE=$(date +'%F %R')
INTERFACE=$1
COMMAND=""
MESSAGE="${MESSAGE} | Selected interface: ${INTERFACE}."
STATUS=$(cat /sys/class/net/$INTERFACE/operstate)
if [ $STATUS != "up" ]
then
	COMMAND=$2
	MESSAGE="${MESSAGE} ${INTERFACE} is down. Execute command: '${COMMAND}''"
else
	MESSAGE="${MESSAGE} ALL OK"
fi
echo $MESSAGE
bash -c "$COMMAND"
return
