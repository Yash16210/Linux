#!/bin/bash
factorial() {
    n=$1
    result=1
    for ((i=2; i<=n; i++)); do
        result=$((result * i))
    done
    echo "Factorial of $n is $result"
}

factorial 5
factorial 7
factorial 10
