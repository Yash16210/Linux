#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 filename"
    exit 1
fi
filename=$1
if [ -f "$filename" ]; then
    lines=$(wc -l < "$filename")
    words=$(wc -w < "$filename")
    chars=$(wc -m < "$filename")
    echo "Lines: $lines"
    echo "Words: $words"
    echo "Characters: $chars"
else
    echo "File does not exist."
fi
