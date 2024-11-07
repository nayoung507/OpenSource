#!/bin/bash

name=$1
phone=$2

if [ ! -f DB.txt ]; then
    echo "--my friends--" > DB.txt
else
    if ! grep -q "^--my friends--" DB.txt; then
        echo "--my friends--" > DB.txt
    fi
fi

echo "$name $phone" >> DB.txt
echo "$name $phone 정보가 DB.txt에 추가되었습니다."
