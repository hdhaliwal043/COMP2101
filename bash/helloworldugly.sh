#!/bin/bash
# My third script - helloworldugly.sh
# This script displays the string "Hello World!"

#This is a silly way of creating the output text by starting with something else and stream editing it in a pipeline
echo -n "helb wold" |
#following command is used to replace the given portion to matched pattern
sed -e "s/b/o/g" -e "s/l/ll/" -e "s/ol/orl/" |
#following command in converting lower case letters to upper case letters
tr "h" "H" |
tr "w" "W" |
#it print specified data
awk '{print $1 "\x20" $2 "\41"}'
#following command is used for basic calculations
bc<<< "(($$ * 4 - 24)/2 + 12)/2" |
sed 's/^/I am process # /'
