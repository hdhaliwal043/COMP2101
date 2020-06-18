#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="Overlord"
#changing the variable to "USER" from "myname" and asking for name
echo "Please type your name:"
read USER

#assigning variable to a funtion used for generating value for hostname
hostname=$(hostname)

#adding day of the weekday
day=$(date +"%A")

#adding time
time=$(date +"%I:%M:%S %p")

#adding titles according to the day of week
if [ $day == "Monday" ]
then
title="Monday is sleepy"

elif [ $day == "Tuesday" ]
then
  title="Tuesday is boring"

elif [ $day == "Wednesday" ]
then
  title="Wednesday is good"

elif [ $day == "Thursday" ]
then
  title="Thursday is intresting"

elif [ $day == "Friday" ]
then
   title="Friday is fantastic"

elif [ $day == "Saturday" ]
then
  title="Saturday is favourite"

else
  title="Sunday is fun-day"

fi

###############
# Main        #
###############
cat <<EOF

Welcome to planet $hostname, "$title $USER!"
It is $day at $time
EOF
