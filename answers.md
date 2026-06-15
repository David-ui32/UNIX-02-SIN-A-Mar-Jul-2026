Task 1 Command: awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv
Result: [ 322 ]
Explanation: El parámetro -F',' define la coma como separador de campos. Al usar la condición NR>1 evitamos contar la cabecera, incrementando la variable 'count' en 1 por cada línea de datos restante y mostrando el total en el bloque END.