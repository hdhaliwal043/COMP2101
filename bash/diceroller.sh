#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
#displaying "Rolling..."
echo "
Rolling..."
#storing funtion to variables(alphabets of my name)
h=$(( RANDOM % 6 + 1))
a=$(( RANDOM % 6 + 1))
r1=$(( RANDOM % 6 + 1))
i=$(( RANDOM % 6 + 1))
n=$(( RANDOM % 6 + 1))
d=$(( RANDOM % 6 + 1))
e=$(( RANDOM % 6 + 1))
r2=$(( RANDOM % 6 + 1))
#displaying the results of funtions stored in variables
#dice is six sided and my name has 8 alphabets so, rolling it 2 times, the command is used for displaying the stored value in variables
echo "$h, $a, $r1, $e rolled"
echo "$i, $n, $d, $r2 rolled"
