#!/usr/bin/awk -f
# Name: David Navarrete
# Course: Systems Engineering — 2nd Semester
# Description: Generates a summary (min, max, avg) for each unique assignment.

BEGIN {
    FS = ","
    printf "%-10s %3s %4s %7s\n", "Name", "Low", "High", "Average"
}
NR > 1 {
    task = $3
    score = $4
    
    if (!(task in count)) {
        min[task] = score
        max[task] = score
    }
    
    if (score < min[task]) min[task] = score
    if (score > max[task]) max[task] = score
    
    sum[task] += score
    count[task]++
}
END {
    for (task in count) {
        avg = sum[task] / count[task]
        printf "%-10s %3d %4d %7.2f\n", task, min[task], max[task], avg
    }
}
