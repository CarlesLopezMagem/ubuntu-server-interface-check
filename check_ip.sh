#!/bin/sh

ping -c5 $1

if [ $? -eq 0 ]; then
    echo "ok"
else
    reboot
fi