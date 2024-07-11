#!/bin/bash

FILE=~/tmp/_SUDDEN
DATE=$(date +"%Y/%m/%d %H:%M:%S")

while true
do
#        if -e "$FILE"; then                  # 괄호가 필수인지 궁금해서 안 쓰고 해봤는데 -e:not found 오류가 나타났다.
#        if [-e "$FILE"]; then                # 괄호를 적었는데 다시 [-e:not found 오류가 나타났다. 괄호&공백이 필수인 것으로 확인
        if [ -f "$FILE" ]; then               # 정상적으로 동작!!! e:단순히 파일이 있는지, f: 파일이 있고 일반파일인지
		echo "$DATE,SUDDEN!!!"
	else
		clear
		figlet MASERATI
		DATE=$(date +"%Y/%m/%d %H:%M:%S")
		echo $DATE
	fi
	sleep 3
	DATE=$(date +"%Y/%m/%d %H:%M:%S")
done
