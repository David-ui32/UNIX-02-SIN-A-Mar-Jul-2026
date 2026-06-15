#!/usr/bin/awk -f
# Name: David Navarrete
# Course: Systems Engineering — 2nd Semester
# Description: Calculates weighted percentages and letter grades per student, plus class average.

BEGIN {
    FS = ","
    printf "%-10s %10s %5s\n", "Student", "Percentage", "Grade"
}
NR > 1 {
    student = $1
    earned[student] += $4
    possible[student] += $5
}
END {
    total_pct_sum = 0
    student_count = 0
    
    for (s in earned) {
        pct = (earned[s] / possible[s]) * 100
        total_pct_sum += pct
        student_count++
        
        if (pct >= 90) grade = "A"
        else if (pct >= 80) grade = "B"
        else if (pct >= 70) grade = "C"
        else if (pct >= 60) grade = "D"
        else grade = "E"
        
        printf "%-10s %10.2f   %5s\n", s, pct, grade
    }
    
    if (student_count > 0) {
        class_avg = total_pct_sum / student_count
        print "--------------------------------"
        printf "%-10s %10.2f\n", "CLASS", class_avg
    }
}
