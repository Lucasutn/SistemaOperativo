#!/bin/bash


	read -p 'Ingrese Host : ... ' host
	read -p 'Ingrese Intervalo : ...' intervalo
	


	
	
	#ping -c 10 -i $intervalo $host >> ping-$host &

	
	#ping -c1 -i $intervalo $host &>/dev/null 

function delay (){

       ping -c1 -i $intervalo $host &>/dev/null 

	if [ $? -eq 0 ]; then
	
	
	echo -e $(date +%c) - $host ' Conexion Exitosa' >> archivo &
	
	else
	
	echo -e $(date +%c) - $host ' Fallo Conexion' >> archivo &
	
	fi

	( sleep 5  ; delay)&

}

    (delay)&
		




#ping -i 5 google.com

#ping -c 10 -i 5 google.com >> ping.txt &


