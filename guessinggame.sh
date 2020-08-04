#!/usr/bin/env/ bash
# File: guessinggame.sh

correct_number=$(ls | wc -l)

function guess {
	read guess
	if [[ $guess -eq $correct_number ]]
	then
		echo "Congratulations!!, You guessed it right."
                echo " We have "
                for f in $(ls)
                do
                        echo " - $f "
                done
	elif [[ $guess -lt $correct_number ]]
		then
		echo "Your guess is too low, please try again"
		guess
	else
		echo "Your guess is too high, please try again"
		guess
	fi
}
echo "Welcome to the guessing game!"
echo "How many files are there in the direcoty?"
guess
