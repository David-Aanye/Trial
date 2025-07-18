#!/bin/bash
#Author: David
#Date Created: June 30, 2025
#Date Nodified: July 5, 2025
#subject: BASH SCRIPT TO DIRECT CARD PURCHASES ON A WEBSITE

#Welcome note
echo "Welcome!.."

sleep 3s
#Direct to website
echo "To make a purchase, please visit udemy.com"
sleep 4s

#Prompt user to enter the 16-digit card number ending 4412
read -p "Enter the 16-digit card number ending 4412 " card_number_entered

if [ "$card_number_entered" == "0123451201524412" ]; then
	echo "Processing, wait........."
else
	echo "Incorrect number entered"
	exit 1
fi

sleep 4s

#Prompt user to enter 4-digit pin
read -sp "Enter your pin " pin
sleep 3s
echo 
#Pin re-entry
read -sp "Enter pin again " pin1
sleep 3s
echo
#Pin authentication
if [ "$pin" == "1957" ]; then 
	echo "Processing , wait....."
	sleep 4s
else
	echo "Incorrect pin"
	exit 1
fi

#Postcode and CVC authentication
read -p "Enter your postcode " postcode
echo
read -p "Enter your CVC " CVC
echo
if [[ "$postcode" == "T4E5J1" && "$CVC" == "113" ]];then
	echo "Processing, wait......"
	sleep 4s
	echo "Postcode and CVC authenticated"
	sleep 3s
	echo "Transaction successful"
	sleep 3s
else
	echo "Postcode and CVC authentication failed"
	sleep 3s
	echo "Transaction declined, card blocked"
	sleep 2s
	echo "Please contact operator for assistance"
	exit 1
fi
sleep 4s
echo "Thank you for doing business with us!"
#
#
