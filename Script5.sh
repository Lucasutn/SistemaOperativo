#!/bin/bash

		read -p 'Ingrese nombre de proceso/Script:  ' proceso

		pgrep $proceso
		
		if [ $? -eq 0 ]; then
		
		sudo cat /proc/$(pgrep $proceso)/status
		
		read -p 'Desea terminar el proceso S/N :' terminar
		
		if [ "$terminar" == "S" ];then
		pkill $proceso
		fi
				
		else
		echo -e 'EL proceso no se encuentra en ejecucion'

		fi
