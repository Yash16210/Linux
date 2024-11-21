#!/bin/bash
echo "Enter numbers separated by space:"
read -a nums
echo "Sort in ascending (a) or descending (d) order?"
read order
if [ "$order" = "a" ]; then
    for ((i=0; i<${#nums[@]}; i++)); do
        for ((j=i+1; j<${#nums[@]}; j++)); do
            if [ ${nums[i]} -gt ${nums[j]} ]; then
                temp=${nums[i]}
                nums[i]=${nums[j]}
                nums[j]=$temp
            fi
        done
    done
else
    for ((i=0; i<${#nums[@]}; i++)); do
        for ((j=i+1; j<${#nums[@]}; j++)); do
            if [ ${nums[i]} -lt ${nums[j]} ]; then
                temp=${nums[i]}
                nums[i]=${nums[j]}
                nums[j]=$temp
            fi
        done
    done
fi
echo "Sorted numbers: ${nums[@]}"
