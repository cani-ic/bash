#!/bin/bash
clear;
read -p 'input how many secs you want to count down:' number

echo "countdown $number secs:"

tput sc	# store cursor


for count in `seq $number -1 0`	#count down from 40 to 0
do
	tput rc		 #recover cursor
	tput ed	 	 #delete all behind the cursor
	echo -n $count	# echo without a newline
	sleep 1 	# stop for 1 sec
done
echo 	#print a newline
