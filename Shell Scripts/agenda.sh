#!/bin/bash
#Ejercicio Agenda entregable
#Autor Alejandro González Toro
#Fecha 17/01/2024

clear

while true; do

	echo "a) Añadir una entrada"
	echo "b) Buscar por dni"
	echo "c) Ver la agenda completa"
	echo "d) Eliminar todas las entradas de la agenda"
	echo "e) Finalizar"
	echo
	read -p "Introduce una opcion " opcion

	case $opcion in


	a)

			read -p "Introduzca DNI " dni
		if grep "^$dni:" agenda.txt 2>/dev/null ; then
			echo "Error, usuario existente"
		else
			read -p "Nombre " nombre
			read -p "Apellido " apellido
			read -p "Localidad " localidad

			echo $dni:$nombre:$apellido:$localidad >> agenda.txt
			echo "Se ha creado una entrada nueva en la agenda"
		fi
		;;


	b)
			read -p "Introduzca DNI " dni
		if grep "^$dni:" agenda.txt 2>/dev/null ; then
			nombre=$(grep "^$dni:" agenda.txt | cut -d ":" -f 2)
			apellido=$(grep "^$dni:" agenda.txt | cut -d ":" -f 3)
			localidad=$(grep "^$dni:" agenda.txt | cut -d ":" -f 4)

			echo "La persona con DNI número $dni es: $nombre $apellido, y vive en $localidad"
		else
			echo "DNI $dni no encontrado"
		fi
		;;


	c)
		if [ -s agenda.txt ]; then

			echo "Este es el contenido de la agenda "
			cat agenda.txt
		else
			echo "Agenda vacía"
		fi
		;;


	d)
		> agenda.txt

			echo "Acaba de borrar todas las entradas de la agenda"
			echo "Agenda vacía"
		;;


	e)
			echo "Acabas de Salir"
		exit
		;;


	*)
			echo "Opción incorrecta, por favor seleccione una de las opciones especificadas"
		;;


	esac

done
