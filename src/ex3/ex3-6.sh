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

tar -cvf "$folder_name/files.tar" "$folder_name"/*.txt
echo "$folder_name 디렉토리 내 파일들이 files.tar로 압축되었습니다."

extracted_folder="${folder_name}_extracted"
mkdir "$extracted_folder"

tar -xvf "$folder_name/files.tar" -C "$extracted_folder"
echo "압축이 $extracted_folder 디렉토리에 해제되었습니다."
