[1mdiff --git a/answers.md b/answers.md[m
[1mindex 6ae0a24..54a28ee 100644[m
[1m--- a/answers.md[m
[1m+++ b/answers.md[m
[36m@@ -1,27 +1,57 @@[m
[31m-Task 1 Command: awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv[m
[31m-Result: [ 322 ][m
[31m-Explanation: El parámetro -F',' define la coma como separador de campos. Al usar la condición NR>1 evitamos contar la cabecera, incrementando la variable 'count' en 1 por cada línea de datos restante y mostrando el total en el bloque END.[m
[31m-Task 4 Command: awk -F',' 'NR>1 {if ($4 < 0.60 * $5) count++} END {print count+0}' Lab03-data.csv[m
[31m-Result: 0[m
[31m-Explanation: Evalúa mediante una condicional 'if' si la nota obtenida ($4) es menor al 60% (0.60) del puntaje máximo ($5) de cada entrega. Al final, en el bloque END, se imprime el contador acumulado sumándole cero para forzar un formato numérico en caso de no haber reprobados.[m
[31m-[m
[31m-Task 5 Command: awk -f task5.awk Lab03-data.csv[m
[31m-Result:[m
[31m-Name       Low High Average[m
[31m-Q01         14   14   14.00[m
[31m-Q04         14   14   14.00[m
[31m-FINAL      193  193  193.00[m
[31m-Explanation: Recolecta estadísticas utilizando arreglos asociativos indexados por el nombre de la asignación ($3). En el bloque END calcula el promedio dinámicamente para cada clave e imprime los resultados tabulados con un formato limpio usando printf.[m
[31m-[m
[31m-Task 6 Command: awk -f task6.awk Lab03-data.csv[m
[31m-Result:[m
[31m-Student    Percentage Grade[m
[31m-Shane           96.50       A[m
[31m-Noah            70.00       C[m
[31m-Sam             70.00       C[m
[31m---------------------------------[m
[31m-CLASS           78.83[m
[31m-Explanation: Suma de forma independiente las notas obtenidas y los puntajes máximos de cada estudiante usando arreglos asociativos indexados por el primer campo ($1). En el bloque END calcula el porcentaje individual, evalúa la letra correspondiente con una estructura if/else if y añade una sección final con el promedio global de la clase.[m
[32m+[m[32m# AWK Gradebook Reports - Final Evaluation[m
[32m+[m[32m**Student:** David Navarrete[m[41m  [m
[32m+[m[32m**Course:** Systems Engineering — 2nd Semester[m[41m  [m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Task 1[m
[32m+[m[32m- **Command:** `awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv`[m
[32m+[m[32m- **Result:** `322`[m
[32m+[m[32m- **Explanation:** The `-F','` parameter sets the comma as the field separator. By using the condition `NR>1`, the header row is skipped. The variable `count` increments by 1 for each subsequent data row, and the total of 322 submissions is printed in the `END` block.[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Task 2[m
[32m+[m[32m- **Command:** `awk -F',' 'NR>1 {students[$1]} END {print length(students)}' Lab03-data.csv`[m
[32m+[m[32m- **Result:** `3`[m
[32m+[m[32m- **Explanation:** An associative array named `students` is indexed by the first field (`$1`), which represents the student's name. Since array keys in AWK must be unique, duplicate names are automatically discarded. The `length()` function computes and displays the final count of unique students.[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Task 3[m
[32m+[m[32m- **Command:** `awk -F',' '$3 == "FINAL" {printf "%-10s %3d\n", $1, $4}' Lab03-data.csv`[m
[32m+[m[32m- **Result:**[m
[32m+[m[32m- **Explanation:** A conditional filter checks if the third field (`$3`) matches exactly `"FINAL"`. When matched, `printf` formats the output: `%-10s` aligns the student's name to the left within a 10-character wide block, and `%3d` justifies the integer score to the right within 3 spaces.[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Task 4[m
[32m+[m[32m- **Command:** `awk -F',' 'NR>1 {if ($4 < 0.60 * $5) count++} END {print count+0}' Lab03-data.csv`[m
[32m+[m[32m- **Result:** `0`[m
[32m+[m[32m- **Explanation:** An `if` statement evaluates whether the earned score (`$4`) is strictly less than 60% (`0.60`) of the maximum possible score (`$5`) for each entry. The `END` block prints the accumulated counter, adding zero to force a numeric output format even if no records match.[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Task 5[m
[32m+[m[32m- **Command:** `awk -f task5.awk Lab03-data.csv`[m
[32m+[m[32m- **Result:**[m
[32m+[m[32m- **Explanation:** This task utilizes an independent script (`task5.awk`) that collects evaluation metrics using associative arrays indexed by the assignment name (`$3`). In the `END` block, it dynamically calculates the average for each key and outputs a structured table using `printf`.[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Task 6[m
[32m+[m[32m- **Command:** `awk -f task6.awk Lab03-data.csv`[m
[32m+[m[32m- **Result:**[m
[32m+[m[32m- **Explanation:** The script aggregates the total earned points and maximum possible points per student using associative arrays indexed by `$1`. The `END` block computes individual cumulative percentages, assigns letter grades via an `if/else if` structure, and appends a final row showcasing the overall class average.[m
[32m+[m
[32m+[m[32m---[m
 [m
 ## Bonus[m
[31m-Explanation: Se extendió la lógica del bloque END de la tarea 6 acumulando los porcentajes de cada estudiante en una variable global 'total_pct_sum' y contando las iteraciones con 'student_count'. Al terminar el bucle, se divide el total acumulado entre la cantidad de alumnos para obtener y desplegar la media general de la clase en la fila 'CLASS'.[m
[32m+[m[32m- **Explanation:** Extended the `END` block logic from Task 6 by accumulating each student's final percentage into a global variable `total_pct_sum` and tracking the count with `student_count`. The overall class average is then calculated and appended neatly under the `CLASS` label.[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Task 7[m
[32m+[m[32m- **Command:** `./run.sh Lab03-data.csv`[m
[32m+[m[32m- **Result:**[m
[32m+[m[32m- **Explanation:** The `run.sh` wrapper script validates input, executes `task6.awk`, and processes the data stream natively with AWK. It preserves the header row, extracts and sorts the student body alphabetically using `sort`, and ensures that formatting elements and class averages (`/CLASS/` and `/---/`) are perfectly appended at the bottom.[m
