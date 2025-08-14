#!/bin/bash
# Ask for the user's name
echo "Enter your name:"
read name

# Use a here document to display a greeting message
cat << EOF
--------------
Hello, $name!
Welcome to the here document example script.
This script demonstrates how to use a here document in bash.
We are glad to have you here!
--------------
EOF

