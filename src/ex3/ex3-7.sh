#!/bin/bash

folder_name=$1

if [ -z "$folder_name" ]; then
    echo "사용법: $0 <folder_name>"
    exit 1
fi

if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
    echo "$folder_name 디렉토리가 생성되었습니다."
else
    echo "$folder_name 디렉토리가 이미 존재합니다."
fi

for i in {0..4}
do
    touch "$folder_name/file$i.txt"
done
echo "5개의 파일이 $folder_name 디렉토리에 생성되었습니다."

for i in {0..4}
do
    subfolder="$folder_name/file$i"
    mkdir "$subfolder"
    ln -s "../file$i.txt" "$subfolder/file$i.txt"
done
echo "각 파일 이름으로 하위 폴더가 생성되고, 해당 파일에 대한 링크가 생성되었습니다."
