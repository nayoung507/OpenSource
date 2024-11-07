#!/bin/bash

search_term=$1

if [ -z "$search_term" ]; then
    echo "사용법: $0 <검색할 이름 또는 전화번호 일부>"
    exit 1
fi

result=$(grep -i "$search_term" DB.txt)

if [ -n "$result" ]; then
    echo "$result"
else
    echo "$search_term 정보를 찾을 수 없습니다."
fi
