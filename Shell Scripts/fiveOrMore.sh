#!/bin/bash
#Ejercicio FiveOrMore entregable
#Autor Alejandro González Toro
#Fecha 29/01/2024

clear

fich=$(ls $2)


	if [ $# -ne 2 ]; then
		echo "Número de parámetros incorrectos"
		exit
	fi

	if [ -f $1 ]; then
		echo "Archivo existente"
		exit
	fi

	if [ -d $2 ]; then
                echo "El directorio no existe"
                exit
        fi


	if [ -z $fich ]; then
                echo "El fichero está vacío"
        fi


echo "Alejandro González Toro"


fichero=$(ls $2/*.txt)

for i in $fichero; do
	if [ -f $i ]; then
		lineas=$(cat $i | wc -l)
		if [ $lineas -ge 5 ]; then
			echo $i
			echo $i >> $1
			
			palabras=$(cat $i|WC -w)
			
			echo "El fichero tiene $palabras palabras" > $i.q
			
			cat $i >> $i.q


		fi
	fi

done

numero=$(cat $1| wc -l)

echo $numero >> $1

