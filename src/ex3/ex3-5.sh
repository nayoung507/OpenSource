#!/bin/bash

run_ls() {
    echo "프로그램을 시작합니다."
    echo "함수 안으로 들어옴"
    ls "$@"
    echo "함수 안에서 나옴"
    echo "프로그램을 종료합니다."
}

run_ls "$@"
