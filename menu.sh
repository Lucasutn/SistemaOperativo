#!/bin/bash

function pause(){
 read -p "$*"
}

while true
do

clear
	
	
	
	echo -e "----------------------------------------------------"
	date
	echo -e "-----------------Menu-------------------------------"
	echo -e "1. System Info"
	echo -e "2. Connectivity Checker"
	echo -e "3. All files"
	echo -e "4. System Administrator"
	echo -e "5. Exit"
	
	
	#read option
	read -p "ingrese opcion:" option
	
	echo -e "---------------------------------------------------"
	


	case $option in

		1)./Script2.sh;;
		2);;
		3);;
		4);;
		5)exit 0;;
		*)echo "WRONG!";;	

	esac

	pause 'Press [Enter] key to continue...'

done



