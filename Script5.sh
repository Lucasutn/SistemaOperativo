#!/bin/bash

#Frias,Lucas
#Canteros,Luciano
#Fecha: 17/10/2019

#Descripcion: Este script recibe el nombre de un proceso,determina si se encuentra en ejecucion, y ofrece la posibiliad de cerrar el proceso(matarlo)

		read -p 'Ingrese nombre de proceso/Script:  ' proceso

		pgrep $proceso # busca un proceso determinado, con un el nombre  de un proceso ingresado
		
		if [ $? -eq 0 ]; then # Compara si es estado anterior es igual a 0
		
		sudo cat /proc/$(pgrep $proceso)/status # sudo accede como administrador
							# cat /proc/$(pgrep $proceso)/status lee los datos en esta dirrecion y muestra la informacion del proceso
		read -p 'Desea terminar el proceso S/N :' terminar
		
		if [ "$terminar" == "S" ] || [ "$terminar" == "s" ];then
		pkill $proceso # Mata/termina un proceso 
		fi
				
		else
		echo -e 'EL proceso no se encuentra en ejecucion'

		fi
