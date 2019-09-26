#!/bin/bash

#Frias,Lucas
#Canteros,Luciano
#Fecha: 17/9/2019

#Descripcion: Script que muestra diferentes caracteristicas del sistema.


		echo -e "Fecha del reporte"
		date
		echo -e
		echo -e "Version del equipo y kernel" 

 		#cat /proc/version
		lsb_release -d # Muestra una descripción de la distribución instalada actualmente.
		uname -rs # Muestra version del equipo y kernel

		echo -e
		echo -e "Version del S.O"
		
		uname -o # Muestra la version del sistema operativo

		
		echo -e 'Hardware: Procesador' 
		#sudo lshw -short -C cpu
		grep -m 1 'model name' /proc/cpuinfo # grep se utiliza para buscar lineas de textos coincedente con la ingresada, dentro del archivo /cpuinfo  
		echo -e				     # -m Muestra un numero de concidencias con el texto ingresado y finaliza la busqueda
		echo -e 'memoria'	
		free -m				     # free Muestra la cantidad de memoria libre y usada en el sistema
		echo -e 'perifericos' 		     # -m Muestra la memoria en mebibytes
		lsusb				
		cat /proc/scsi/scsi		     # cat Muestra la informacion de un archivo por consola	


		echo -e 'Espacio de disco y particiones montadas'
 
		#Df nos mostrará un reporte de las particiones del sistema y sus puntos de montaje

		df -h


