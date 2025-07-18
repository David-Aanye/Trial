#!/bin/bash

#Author: David
#Date Created: July 10, 2025
#Date modified: JUly 15, 2025
#Subject: BASH SCRIPT FOR ATM CARD ACTIVATION


#Welcome to RBC
echo "Welcome to RBC"

sleep 2s

#Promt user to insert card to begin
echo "Please insert your card to start"
sleep 3s

echo "Please wait, processing..........."
sleep 3s

echo "Hello Kofi Adin, welcome to RBC "

sleep 2s

#Prompt for last four digits of card
echo "The last four digits of your card are required to activate it"

sleep 3s

read -p "Please enter the last four digits of your card " Card_four_digits
echo "Please wait, processing ........"
sleep 3s
#Authenticate Card last four digits
if [ "$Card_four_digits" == "4412" ]; then

	echo "Four digits authenticated"
else
	echo "Four digits entered incorrect"
	sleep 3s
	echo "try again"
	exit 1
fi

sleep 4s

#Prompt to CVC
read -sp "Please enter your CVC " CVC
echo
sleep 3s

#Prompt to set a pin
read -sp "Please enter 4-digit pin " pin
sleep 3s

echo 
#Prompt pin re-entry for authentication
read -sp "Re-enter pin again " pin1
sleep 2s

echo
echo "Please wait, processing"
sleep 4s

if [ "$pin" == "$pin1" ]; then
	echo "Pin set, card successfully activated"

else
	echo "Pin authentication failed, card activation unsuccessful"
        sleep 4s
	echo "try again"
	exit 1
fi

sleep 4s

echo "Thank you for using our servuces"
