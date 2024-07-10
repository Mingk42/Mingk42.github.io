#!/bin/bash

FILE=~/tmp/_SUDDEN

while true
do
	if [ -e "$FILE" ]; then
		echo "SUDDEN!!!"	
	fi
	echo "check"
	sleep 3
done
