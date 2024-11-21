#!/bin/bash
echo "Enter a string:"
read str
echo "Length of the string: ${#str}"
echo "Enter another string to concatenate:"
read str2
concat="$str$str2"
echo "Concatenated string: $concat"
echo "Enter another string to compare:"
read str3
if [ "$str" = "$str3" ]; then
    echo "Strings are equal."
else
    echo "Strings are not equal."
fi
