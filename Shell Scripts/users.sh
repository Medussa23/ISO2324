#!/bin/bash
#Ejercicio users entregable
#Autor Alejandro González Toro
#Fecha 02/02/2024

clear


baseUid=${1:-1000}

fecha=$(date +"%d-%m-%Y")
hora=$(date +"%H:%M")


echo "==============================================================================="

echo "Informe de ususarios el día $fecha a las $hora"

userConta=0

while IFS=":" read -r user x uid gid g home shell; do
	if [ "$uid" -gt "$baseUid" ]; then
		echo "$user - $uid"
		((userConta++))
	fi
done < /etc/passwd

echo "Total: $userConta usuarios"

echo "============================================================================="


entra="$fecha - $hora - El usuario $USER ha solicitado un informe de usuarios"

echo "$entra" >> /tmp/logeventos

exit
