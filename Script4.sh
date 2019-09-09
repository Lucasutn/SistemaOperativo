#!/bin/bash

	
	read -p 'Ingrese una directorio a buscar : ' directorio
	read -p 'Ingrese extension de fichero a buscar: ' extension

	 if [ -e $directorio ]; then
		cd $directorio
		lista=$(ls -R .)
		touch archivos-.$extension-en-$directorio
		ls *.$extension >> archivos-$extension>en-$directorio
	else
		echo "::: El directorio $directorio no existe :::"
	fi
