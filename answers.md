Task 1 Command: awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv
Result: [ 322 ]
Explanation: El parámetro -F',' define la coma como separador de campos. Al usar la condición NR>1 evitamos contar la cabecera, incrementando la variable 'count' en 1 por cada línea de datos restante y mostrando el total en el bloque END.
Task 4 Command: awk -F',' 'NR>1 {if ($4 < 0.60 * $5) count++} END {print count+0}' Lab03-data.csv
Result: 0
Explanation: Evalúa mediante una condicional 'if' si la nota obtenida ($4) es menor al 60% (0.60) del puntaje máximo ($5) de cada entrega. Al final, en el bloque END, se imprime el contador acumulado sumándole cero para forzar un formato numérico en caso de no haber reprobados.

Task 5 Command: awk -f task5.awk Lab03-data.csv
Result:
Name       Low High Average
Q01         14   14   14.00
Q04         14   14   14.00
FINAL      193  193  193.00
Explanation: Recolecta estadísticas utilizando arreglos asociativos indexados por el nombre de la asignación ($3). En el bloque END calcula el promedio dinámicamente para cada clave e imprime los resultados tabulados con un formato limpio usando printf.

Task 6 Command: awk -f task6.awk Lab03-data.csv
Result:
Student    Percentage Grade
Shane           96.50       A
Noah            70.00       C
Sam             70.00       C
--------------------------------
CLASS           78.83
Explanation: Suma de forma independiente las notas obtenidas y los puntajes máximos de cada estudiante usando arreglos asociativos indexados por el primer campo ($1). En el bloque END calcula el porcentaje individual, evalúa la letra correspondiente con una estructura if/else if y añade una sección final con el promedio global de la clase.

## Bonus
Explanation: Se extendió la lógica del bloque END de la tarea 6 acumulando los porcentajes de cada estudiante en una variable global 'total_pct_sum' y contando las iteraciones con 'student_count'. Al terminar el bucle, se divide el total acumulado entre la cantidad de alumnos para obtener y desplegar la media general de la clase en la fila 'CLASS'.
