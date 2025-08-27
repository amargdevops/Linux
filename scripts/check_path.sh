#!/bin/bash
# check if eactly one argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi
path="$1"
if [ -f "$path" ]; then
    echo "$path is a file."
    exit 0
elif [ -d "$path" ]; then
    echo "$path is a directory."
    exit 0
else
    echo "$path is neither a file nor a directory."
    exit 99
fi