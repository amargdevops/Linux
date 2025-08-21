#!/bin/bash
# String matching example
service_name="httpd"
if systemctl status "$service_name" &> /dev/null; then
    echo "The service '$service_name' is running."
else
    echo "The service '$service_name' is not running."
fi
# Parse and extraact username from email
email="amargnath.reddy@gmail.com"
username=$(echo "$email" | cut -d '@' -f 1)
echo "The username extracted from the email is: $username"
# count occurences of a word in a string
text="The quick brown fox jumps over the lazy dog. The dog was not happy."
word="dog"
count=$(echo "$text" | grep -o -i "$word" | wc -l)
echo "The word '$word' occurs $count times in the text."
# validate input length
input="HelloWorld"
if [ ${#input} -ge 5 ] && [ ${#input} -le 12 ]; then
        echo "Input length is valid."
    else
        echo "Input length is invalid. It should be between 5 and 10 characters."
    fi
    #convert string to uppercase
input_string="hello world"
uppercased_string=$(echo "$input_string" | tr 'a-z' 'A-Z')
echo "Uppercased string: $uppercased_string"

# Remove whitespace from a string
string_with_spaces="  Hello   World  "
trimmed_string=$(echo "$string_with_spaces" | xargs)
echo "Trimmed string: '$trimmed_string'"
# Replace a substring in a string
original_string="Hello, World!"
replaced_string=${original_string/World/Bash}
echo "Replaced string: $replaced_string"