#!/bin/bash


if [ "$1" == "" ]; 
	then
		echo "You forgot the IP address/domain name. Please enter it"
		echo "Syntax: ./normal_nmap_scan.sh <IP address/domain name>"

else
	gnome-terminal -e "bash -c \"nmap $1; exec bash\"" #The "gnome-terminal" is used to make a new terminal. The bash -c and exec bash are the ones which keep the terminal persistant. 
fi
