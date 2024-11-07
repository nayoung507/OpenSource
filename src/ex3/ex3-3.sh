#!/bin/bash

read -p "Enter your height (cm): " height
read -p "Enter your weight (kg): " weight

height_m=$(echo "$height / 100" | bc -l)

bmi=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)

is_underweight=$(echo "$bmi < 18.5" | bc)
is_normal=$(echo "$bmi >= 18.5 && $bmi < 25" | bc)
is_overweight=$(echo "$bmi >= 25" | bc)

if [ "$is_underweight" -eq 1 ]; then
    echo "Underweight"
elif [ "$is_normal" -eq 1 ]; then
    echo "Normal weight"
elif [ "$is_overweight" -eq 1 ]; then
    echo "Overweight"
else
    echo "Error in BMI calculation."
fi
