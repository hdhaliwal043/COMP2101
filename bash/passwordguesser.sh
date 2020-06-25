#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)

#assigning the value to variable
testPassword=password

#displaying a request for guessingPassword
echo "try to guess password"

#adding input for user
read guessPassword

# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong

#adding condition condition according to input
if [ $guessPassword == $testPassword ]
#printing password is correct if the value is entered correct
then
  echo "Password is correct"
#printing incorrect password on every other value
else
  echo "Incorrect Password"
fi

# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

#adding first try condition
if [ $guessPassword == $testPassword ]
then
  echo "Password is correct."
else
  echo "Incorrect password (2nd try):"

#adding second try condition
  read guessPassword
  if [ $guessPassword == $testPassword ]
  then
    echo "Password is correct."
  else
    echo "Incorrect password (3rd try):"

#adding third try condition
    read guessPassword

    if [ $guessPassword == $testPassword ]
    then
      echo "Password is correct"
    else
      echo "Incorrect password (4th try):"

#adding fourth try condition
      read guessPassword

      if [ $guessPassword == $testPassword ]
      then
        echo "Password is correct."
      else
        echo "Incorrect password (last try):"
        read guessPassword

#adding condition for last (5th) try
        if [ $guessPassword == $testPassword ]
        then
          echo "Password is correct."
        else
          echo "Incorrect Password.
          Please try again later"

#ending conditonal statements
        fi
      fi
    fi
  fi
fi
