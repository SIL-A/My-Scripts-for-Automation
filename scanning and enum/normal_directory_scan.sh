#!/bin/bash

echo "This script is a little buggy. So be careful if when you give the input. For example this script has not way of checking if the site is https or http."
echo "You have to be careful about things like that."

url="${1}/FUZZ"
if [ "$1" == "" ]; then 								#checking if the input is empty
	echo "You have missed the IP address/domain name"
	echo "Syntax: ./normal_dirb_scan.sh <domain name>"

else
	if [[ $1 = *http* ]]
	then
		<Location of FFUF and wordlist>						#In my computer,	~/./ffuf/ffuf -w ~/Desktop/WAP/newpass.txt -u $url
	else										#In my computer FFUF is in the home directory. Change it to yours when you use it.
		url="http://${url}"							#This is to add the http part before the url or ip address. If you want to do it for https, change it to that. 
		<Location of FFUF and wordlist>						#In my computer,	~/./ffuf/ffuf -w ~/Desktop/WAP/newpass.txt -u $url
	fi
fi
