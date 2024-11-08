#!/bin/bash

read -p "신장(cm)을 입력하세요: " height
read -p "몸무게(kg)를 입력하세요: " weight

height_m=$(echo "$height / 100" | bc -l)

bmi=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)

underweight=$(echo "$bmi < 18.5" | bc)
normal=$(echo "$bmi >= 18.5 && $bmi < 25" | bc)
overweight=$(echo "$bmi >= 25" | bc)

if [ "$underweight" -eq 1 ]; then
    echo "저체중입니다. BMI = $bmi"
elif [ "$normal" -eq 1 ]; then
    echo "정상체중입니다. BMI = $bmi"
elif [ "$overweight" -eq 1 ]; then
    echo "비만입니다. BMI = $bmi"
else
    echo "BMI 계산에 오류가 발생했습니다."
fi
