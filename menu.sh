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
	echo -e " \t 1: Mostrar información del sistema "
	echo -e " \t 2: Ejecutar un Script en segundo plano "
	echo -e " \t 3: Buscar de manera receursiva un directorio ingresado"
	echo -e " \t 4: Determinar si un proceso se encuentra en ejecucion"
	echo -e " \t 5: Salir"
	
	
	#read option
	read -p "ingrese opcion:" option
	
	echo -e "---------------------------------------------------"
	


	case $option in

		1)./Script2.sh;;
		2)./Script3.sh;;
		3)./Scrip4.sh;;
		4)./Scrip5.sh;;
		5)exit 0;;
		*)echo "Error! Opcion no existente";;	

	esac

	pause 'Press [Enter] key to continue...'

done



