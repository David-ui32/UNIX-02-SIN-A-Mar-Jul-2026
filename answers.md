# AWK Gradebook Reports - Final Evaluation
**Student:** David Navarrete  
**Course:** Systems Engineering — 2nd Semester  

---

## Task 1
- **Command:** `awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv`
- **Result:** `322`
- **Explanation:** The `-F','` parameter sets the comma as the field separator. By using the condition `NR>1`, the header row is skipped. The variable `count` increments by 1 for each subsequent data row, and the total of 322 submissions is printed in the `END` block.

---

## Task 2
- **Command:** `awk -F',' 'NR>1 {students[$1]} END {print length(students)}' Lab03-data.csv`
- **Result:** `3`
- **Explanation:** An associative array named `students` is indexed by the first field (`$1`), which represents the student's name. Since array keys in AWK must be unique, duplicate names are automatically discarded. The `length()` function computes and displays the final count of unique students.

---

## Task 3
- **Command:** `awk -F',' '$3 == "FINAL" {printf "%-10s %3d\n", $1, $4}' Lab03-data.csv`
- **Result:**
- **Explanation:** A conditional filter checks if the third field (`$3`) matches exactly `"FINAL"`. When matched, `printf` formats the output: `%-10s` aligns the student's name to the left within a 10-character wide block, and `%3d` justifies the integer score to the right within 3 spaces.

---

## Task 4
- **Command:** `awk -F',' 'NR>1 {if ($4 < 0.60 * $5) count++} END {print count+0}' Lab03-data.csv`
- **Result:** `0`
- **Explanation:** An `if` statement evaluates whether the earned score (`$4`) is strictly less than 60% (`0.60`) of the maximum possible score (`$5`) for each entry. The `END` block prints the accumulated counter, adding zero to force a numeric output format even if no records match.

---

## Task 5
- **Command:** `awk -f task5.awk Lab03-data.csv`
- **Result:**
- **Explanation:** This task utilizes an independent script (`task5.awk`) that collects evaluation metrics using associative arrays indexed by the assignment name (`$3`). In the `END` block, it dynamically calculates the average for each key and outputs a structured table using `printf`.

---

## Task 6
- **Command:** `awk -f task6.awk Lab03-data.csv`
- **Result:**
- **Explanation:** The script aggregates the total earned points and maximum possible points per student using associative arrays indexed by `$1`. The `END` block computes individual cumulative percentages, assigns letter grades via an `if/else if` structure, and appends a final row showcasing the overall class average.

---

## Bonus
- **Explanation:** Extended the `END` block logic from Task 6 by accumulating each student's final percentage into a global variable `total_pct_sum` and tracking the count with `student_count`. The overall class average is then calculated and appended neatly under the `CLASS` label.

---

## Task 7
- **Command:** `./run.sh Lab03-data.csv`
- **Result:**
- **Explanation:** The `run.sh` wrapper script validates input, executes `task6.awk`, and processes the data stream natively with AWK. It preserves the header row, extracts and sorts the student body alphabetically using `sort`, and ensures that formatting elements and class averages (`/CLASS/` and `/---/`) are perfectly appended at the bottom.
