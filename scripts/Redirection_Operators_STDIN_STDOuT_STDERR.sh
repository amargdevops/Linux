#!/bin/bash
#Output redirection examples
# > to create or overwrite a file
echo "This is a sample text." > output.txt
# >> to append to a file
echo "This text is appended." >> output.txt
#input redirection from a file
cat < output.txt
#STDOUT STDIN STDERR redirection
java -version 1> java_version.txt 2> java_errors.txt
cat java_version.txt
cat java_errors.txt
#1> successful output
#2> error output
#&>file_name redirects both STDOUT and STDERR to the same file