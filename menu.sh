#!/bin/bash

#Frias,Lucas
#Canteros,Luciano
#Fecha: 17/9/2019

#Descripcion: Es un menu que muestra por consola 5 opciones que puede elegir el usuario.

function pause(){ # Utilizado para generar una pausa esperando el ingreso de cualquier tecla para continuar con la secuencia del codigo
 read -p "$*"
}

while true #Ciclo do while
do

clear 
	
	
	
	echo -e "----------------------------------------------------"
	date
	echo -e "-----------------MENU-------------------------------"
	echo -e " \t 1: Mostrar informacion del sistema "
	echo -e " \t 2: Ejecutar un Script en segundo plano "
	echo -e " \t 3: Buscar de manera receursiva un directorio ingresado"
	echo -e " \t 4: Determinar si un proceso se encuentra en ejecucion"
	echo -e " \t 5: Salir"
	
	
	#read option
	read -p "ingrese opcion:" option
	
	echo -e "---------------------------------------------------"
	

	# Switch con 5 case,que ejecutan diferentees Scritps
	case $option in

		1)./Script2.sh;;
		2)./Script3.sh;;
		3)./Script4.sh;;
		4)./Script5.sh;;
		5)exit 0;;
		*)echo "Error! Opcion no existente";;	

	esac

	pause 'Press [Enter] key to continue...' # Funcion pause

done



