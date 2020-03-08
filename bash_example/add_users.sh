#!/bin/bash

#function: add users to the system, user name stored in a file.

USER_LIST=$(cat userlist.txt)

read -p "Please Enter initial passwd for all users:" PASSWD

for USER in $USER_LIST
do
	id $USER &> /dev/null
	if [ $? -eq 0 ]; then
		echo "$USER already exists"
	else 
		useradd  $USER
		echo "$PASSWD" | passwd --stdin $USER &>/dev/null
		if [ $? -eq 0 ]; then
			echo "user $USRER add successfully."
		else
			echo "user $USRER add failed."
		fi
	fi

done
