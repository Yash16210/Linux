#!/bin/bash
echo "Enter a filename:"
read filename
if [ -f "$filename" ]; then
    cat "$filename"
else
    echo "File does not exist. Creating the file."
    touch "$filename"
fi
