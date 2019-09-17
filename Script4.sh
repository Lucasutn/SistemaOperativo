#!/bin/bash

#Frias,Lucas
#Canteros,Luciano
#Fecha: 17/10/2019

#Descripcion: Scrip que busca archivos con determinada extension, dentro de un directorio determinado de manera recursiva.
	

	read -p 'Ingrese un directorio a buscar : ' directorio
	read -p 'Ingrese extension de fichero a buscar: ' extension
	
	
	
	

	 if [ -e $directorio ]; then
		cd $directorio
		
		
		find . -name $extension >> archivos-$extension-en-$directorio #find -name busca archivos que coincidan con el name ingresado
										# y los escribe en un archivo




	else
		echo "::: El directorio '$directorio' no existe :::"
	fi
