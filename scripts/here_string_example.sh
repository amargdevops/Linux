#!/bin/bash

# Get input from the user or use a default value
input=${1:-"Default input text"}
# Use a here string to convert to uppercase
uppercased=$(tr 'a-z' 'A-Z' <<< "$input")

#print the result
echo "Original input: $input"
echo "Uppercased input: $uppercased"
