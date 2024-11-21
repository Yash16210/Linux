#!/bin/bash
echo "Enter first number:"
read a
echo "Enter second number:"
read b
gcd() {
    while [ $b -ne 0 ]; do
        temp=$b
        b=$((a % b))
        a=$temp
    done
    echo $a
}
lcm() {
    gcd_value=$(gcd $a $b)
    echo $((a * b / gcd_value))
}
gcd_value=$(gcd $a $b)
lcm_value=$(lcm $a $b)
echo "GCD: $gcd_value"
echo "LCM: $lcm_value"
