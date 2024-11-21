#!/bin/bash
echo "Enter a filename:"
read filename
echo "Enter the pattern to search for:"
read pattern
if [ -f "$filename" ]; then
    grep "$pattern" "$filename"
else
    echo "File does not exist."
fi
