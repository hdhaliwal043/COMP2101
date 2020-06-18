#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#displaying request for input of three numbers one by one
echo "Please type your first number:"
read firstnum

echo "Please type your second number:"
read secondnum

echo "Please type your third number:"
read thirdnum

#adding and multiplying three numbers
sum=$((firstnum + secondnum + thirdnum))
product=$((firstnum * secondnum * thirdnum))

#displaying the results with label
cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
$firstnum into $secondnum into $thirdnum is $product
EOF
