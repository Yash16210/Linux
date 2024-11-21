#!/bin/bash
echo "Enter the directory to search in:"
read dir
echo "Enter file extension to search for (e.g., .txt):"
read ext
echo "Enter minimum file size in bytes (e.g., 1000):"
read size
find "$dir" -type f -name "*$ext" -size +"$size"c
