#!/bin/bash



		echo -e "Fecha del reporte"
		date
		echo -e
		echo -e "Version del equipo y kernel" 

 		#cat /proc/version
		lsb_release -d
		uname -rs

		echo -e
		echo -e "Version del S.O"
		
		uname -o

		
		echo -e 'Hardware: Procesador' 
		#sudo lshw -short -C cpu
		grep -m 1 'model name' /proc/cpuinfo
		echo -e
		echo -e 'memoria'	
		free -m
		echo -e 'perifericos' 
		lsusb
		cat /proc/scsi/scsi


		echo -e 'Espacio de disco y particiones montadas'
 
		#Df nos mostrará un reporte de las particiones del sistema y sus puntos de montaje

		df -h


