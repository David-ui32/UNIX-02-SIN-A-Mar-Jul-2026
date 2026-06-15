## Task 1
Command: grep -Ec "^[0-9]" firewall.log
Result: 100000
Explanation: The caret anchor `^` restricts the match to the very beginning of each line, ensuring we target lines starting with a digit (the year) and automatically skip the header comments that start with `#`.

## Task 2
Command: grep -Ec " (DROP|REJECT) " firewall.log
Result: 49831
Explanation: Parentheses `()` define a logical capture group, and the pipe `|` acts as an alternation operator for OR logic. Surrounding the pattern with explicit spaces prevents matching these words if they appear inside other fields.

## Task 3
Command: grep -Ec " 11\." firewall.log
Result: 25114
Explanation: The backslash `\.` escapes the dot operator to force a literal period match rather than matching any character. The leading space anchors the pattern to the exact start of the source IP address field.

## Task 4
Command: grep -Ec " [0-9]{7}$" firewall.log
Result: 9478
Explanation: The character class `[0-9]` matches any numeric digit, and the quantifier `{7}` ensures exactly seven occurrences. The dollar sign anchor `$` ensures this sequence occurs at the absolute end of the line, matching the size field.

## Task 5
Command: sed -E 's/^([^ ]+) [^ ]+ ([^ ]+) ([^ ]+).*/\1 \2 \3/' firewall.log | head -n 5
Result: 
2018-05-25 FORWARD TCP
2018-05-25 FORWARD TCP
2018-05-25 FORWARD TCP
2018-05-25 FORWARD TCP
2018-05-25 FORWARD TCP
Explanation: The sed substitution patterns `([^ ]+)` leverage negated character classes within capture groups to store fields, allowing backreferences `\1`, `\2`, and `\3` to reconstruct only the date, action, and protocol fields.

## Task 6
Command: grep -Ec " ACCEPT TCP .* 80 [0-9]+$" firewall.log
Result: 6415
Explanation: This pattern sequentially matches the literal words "ACCEPT TCP", skips the dynamic IP and source port fields using `.*`, and ensures the destination port is exactly 80 by ensuring it is only followed by the final numeric size field and the line anchor `$`.

## Task 7
Command: grep -Ec "^[0-9]{4}-[0-9]{2}-[0-9]{2} 0[0-2]:" firewall.log
Result: 12411
Explanation: The pattern anchors the full date format to the start of the line `^`, followed by a separating space, and uses the character class range `0[0-2]:` to strictly filter for logs generated during hours 00, 01, and 02.

## Bonus
Regex: ^[^ ]+$
Explanation: The anchors `^` and `$` encapsulate the entire string, while the negated character class `[^ ]+` forces the line to consist strictly of non-space characters, correctly excluding strings containing white spaces.
