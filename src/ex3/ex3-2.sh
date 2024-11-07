#!/bin/bash

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter an operator (+ or -): " operator

if [ "$operator" == "+" ]; then
    result=$((num1 + num2))
elif [ "$operator" == "-" ]; then
    result=$((num1 - num2))
else
    echo "Invalid operator. Please use + or -."
    exit 1
fi

echo "Result: $result"
