#!/bin/sh

ORIGDIR=$1
DESTIMAGE=$2

if [ "$#" -ne 2 ]
then
    echo "$0 - Script de creacion de imagen .img para Android"
    echo "v1.0 - CCV para Case On IT S.L."
    echo
    echo "Uso - $0 directorio_origen img/imagen_destino.img"
    exit 1
else
    echo "Creando imagen $2 a partir de directorio $1..."
    bin/mkboot $1 img/$2 > logs/create.log
    cat logs/create.log
fi
