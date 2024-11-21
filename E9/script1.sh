#!/bin/bash
echo "Enter the directory:"
read dir
echo "Enter the prefix or suffix to add:"
read add
for file in "$dir"/*; do
    if [ -f "$file" ]; then
        mv "$file" "$dir/$add$(basename "$file")"
    fi
done
