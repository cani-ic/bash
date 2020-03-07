#!/bin/bash

#funcion: guess the price of goods, print out the price and the times of guessing

GOODS_PRICE=$(expr $RANDOM % 1000)	#note: there should be NO SPACES around '=',
guess_time=0

#while [ $OFFER_PRICE -ne $GOODS_PRICE ]	#note: the gramma of while-do-done
while true	
do
	read -p "Please input your Price:" OFFER_PRICE
	let guess_time++ 
	if [ $OFFER_PRICE -gt $GOODS_PRICE ];then
		echo "Your Guess is High"
		echo "you already have $guess_time guesses"
	elif [ $OFFER_PRICE -lt $GOODS_PRICE ]; then 	#note: elif-branch also need the keyword 'then'
		echo "Your Guess is LOW"
		echo "you already have $guess_time guesses"
	else
		echo "You Guess is RIGHT, ^_^ "
		echo "you totally have $guess_time guesses"
		exit 0	# return as normal
	fi
done
