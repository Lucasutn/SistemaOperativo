#!/bin/bash


	read -p 'Ingrese Host : ... ' host
	read -p 'Ingrese Intervalo : ...' intervalo

	ping -c 10 -i $intervalo $host >> ping-$host &






#ping -i 5 google.com

#ping -c 10 -i 5 google.com >> ping.txt &


