#!/bin/sh

ORIGIMAGE=$1
DESTDIR=$2

if [ "$#" -ne 2 ]
then
    echo "$0 - Script de extraccion de imagen .img para Android"
    echo "v1.0 - CCV para Case On IT S.L."
    echo
    echo "Uso - $0 img/imagen_origen.img directorio_destino"
    exit 1
else
    echo "Extrayendo imagen $1 en directorio $2..."
    bin/mkboot img/$1 $2 > logs/create.log
    cat logs/create.log
fi
