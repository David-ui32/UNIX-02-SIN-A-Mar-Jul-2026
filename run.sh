#!/bin/bash
# Name: David Navarrete
# Course: Systems Engineering — 2nd Semester
# Description: Bash wrapper to execute task6.awk, sorting students alphabetically while preserving headers.

if [ -z "$1" ]; then
    echo "Usage: $0 <csv-file>"
    exit 1
fi

FILE=$1

# Ejecutamos el script de la tarea 6 y guardamos la salida
output=$(awk -f task6.awk "$FILE")

# 1. Imprimir la cabecera (primera línea)
echo "$output" | head -n 1

# 2. Tomar el cuerpo estudiantil (excluyendo cabeceras, guiones y totales) y ordenarlo
echo "$output" | awk 'NR>1 && !/CLASS/ && !/---/' | sort

# 3. Imprimir el separador y la fila de totales al final
echo "$output" | awk '/CLASS/ || /---/'
