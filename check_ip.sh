#!/bin/sh

if [ -z "$1" ] || [ -z "$2" ]
then
	echo "ERROR: IP and COMMAND must be done."
	echo "Use: check_ip.sh IP COMMAND"
	return
fi

MESSAGE=$(date +'%F %R')
IP=$1

MESSAGE="${MESSAGE} | Test IP: ${IP}."

ping -c5 $IP > /dev/null
if [ $? -eq 0 ]; then
    MESSAGE="${MESSAGE} ALL OK"
else
    COMMAND=$2
	MESSAGE="${MESSAGE} IP is down. Execute command: '${COMMAND}''"
fi

echo $MESSAGE
bash -c "$COMMAND"
return