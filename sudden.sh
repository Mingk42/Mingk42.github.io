#!/bin/bash

FILE=~/tmp/_SUDDEN

while true
do
#        if -e "$FILE"; then                  # 괄호가 필수인지 궁금해서 안 쓰고 해봤는데 -e:not found 오류가 나타났다.
#        if [-e "$FILE"]; then                # 괄호를 적었는데 다시 [-e:not found 오류가 나타났다. 괄호&공백이 필수인 것으로 확인
        if [ -e "$FILE" ]; then               # 정상적으로 동작!!!
		echo "SUDDEN!!!"	
	fi
	echo "check"
	sleep 3
done
