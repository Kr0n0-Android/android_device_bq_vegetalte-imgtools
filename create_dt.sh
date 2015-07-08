#!/bin/sh

ORIGDIR=$1
DESTIMAGE=$2

if [ "$#" -ne 2 ]
then
    echo "$0 - Script de creacion de imagen devicetree .img para Android"
    echo "v1.0 - CCV para Case On IT S.L."
    echo
    echo "Uso - $0 directorio_kernel_compilado img/imagen_dt_destino.img"
    exit 1
else
    echo "Creando imagen $2 a partir de directorio $1..."
    bin/dtbToolCM -2 -v -s 2048 -o img/$2 -p $1/scripts/dtc/ $1/arch/arm/boot/dts/ > logs/create_dt.log 2>&1
    cat logs/create_dt.log
fi
