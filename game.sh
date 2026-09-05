#!/bin/bash


number=$((RANDOM % 10))

   read -p "Hello, welcome to the number guessing game. I have chosen a number between 0 and 9. Try to guess it:  " guess
   

   while true
   do

	if [[ ! $guess =~ ^[0-9]+$ ]]; then
	read -p "Please enter a number!  " guess
	
	elif (( $guess > 9  )); then
	read -p "Please enter a number between 0 and 9:  " guess


	elif [[ $guess == $number ]]; then
	echo "Congratulations, you guessed the number I was thinking of! :)" 
	break

	elif [[ $guess > $number ]]; then
	read -p "The number I am thinking of is smaller than $guess :  " guess

 	elif [[ $guess < $number ]]; then
	read -p "The number I am thinking of is bigger than $guess :  " guess


	fi
   done



