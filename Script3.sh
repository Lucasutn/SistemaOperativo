#!/bin/bash

#Frias,Lucas
#Canteros,Luciano
#Fecha: 17/10/2019

#Descripcion: Verifica continunamente, cada cierto tiempo, la conectividad con un determinado host mediante el comando ping

	read -p 'Ingrese Host : ... ' host
	read -p 'Ingrese Intervalo : ...' intervalo
		
	
	#ping -c 10 -i $intervalo $host >> ping-$host &

	
	#ping -c1 -i $intervalo $host &>/dev/null 
	
	# & ejecuta en segundo plano

function delay (){ # Funcion recursiva que verifica los estados anteriores del ping y devuelve si la conexion fue exitosa o no

       ping -c1 -i $intervalo $host &>/dev/null # ping -c1 -i Hace ping a host determina la cantidad de veces que indica -c. -i es el intervalo con la que realiza el ping
						# >/dev/null Tomamos el output y lo enviamos al archivo null
	if [ $? -eq 0 ]; then # $? -eq 0 Compara el resultado del ultimo comando ejecutado, si es igual a 0
	
	
	echo -e $(date +%c) - $host ' Conexion Exitosa' >> archivo &
	
	else
	
	echo -e $(date +%c) - $host ' Fallo Conexion' >> archivo &
	
	fi

	( sleep $intervalo  ; delay)& # Recursividad

}

    (delay)& # Funcion delay 
		




#ping -i 5 google.com

#ping -c 10 -i 5 google.com >> ping.txt &


