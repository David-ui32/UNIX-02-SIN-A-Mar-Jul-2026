#!/bin/bash
FIRST_NAME=$1
LAST_NAME=$2
if [ -z "$FIRST_NAME" ] || [ -z "$LAST_NAME" ]; then
    echo "Error: Por favor, introduce tu nombre y apellido."
    echo "Uso: $0 <David> <Navarrete>"
    exit 1
fi
> output.txt

date +"%d-%m-%Y" >> output.txt
echo "$FIRST_NAME $LAST_NAME" >> output.txt
cp output.txt backup.txt

cat output.txt