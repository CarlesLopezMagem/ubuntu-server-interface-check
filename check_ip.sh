#!/bin/sh
IP=$1
COMMAND=$2

ping -c5 $IP

if [ $? -eq 0 ]; then
    echo "ok"
else
    bash -c "$COMMAND"
fi