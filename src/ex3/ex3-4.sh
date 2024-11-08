#!/bin/bash

read -p "리눅스가 재미있나요? (yes / no): " answer

case $answer in
    [yY] | [yY][eE][sS])
        echo "좋아요!"
        ;;
    [nN] | [nN][oO])
        echo "안타깝네요."
        ;;
    *)
        echo "yes 또는 no로 입력해 주세요."
        ;;
esac
