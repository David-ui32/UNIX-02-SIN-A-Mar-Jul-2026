## Task 1
Command: grep -Ec "^[0-9]" firewall.log
Result: 100000
Explanation: The caret anchor `^` ensures the match looks at the very beginning of each line, and `[0-9]` matches any starting digit (the year), effectively skipping the header lines that start with `#`.

## Task 2
Command: grep -Ec " (DROP|REJECT) " firewall.log
Result: 49831
Explanation: The parentheses `()` create a capture group and the pipe `|` acts as an OR operator to match either DROP or REJECT. Surrounding the group with spaces ensures we only match the standalone "action" field.

## Task 3
Command: grep -Ec " 11\." firewall.log
Result: 25114
Explanation: The backslash escapes the dot `\.` to treat it as a literal period instead of a regex wildcard. The leading space ensures it matches the beginning of the source IP field rather than an arbitrary sequence.

## Task 3
Command: grep -Ec " 11\." firewall.log
Result: 25114
Explanation: The backslash escapes the dot `\.` to treat it as a literal period instead of a regex wildcard. The leading space ensures it matches the beginning of the source IP field rather than an arbitrary sequence.

## Task 4
Command: grep -Ec " [0-9]{7}$" firewall.log
Result: 9478
Explanation: The character class `[0-9]` combined with the quantifier `{7}` matches exactly seven consecutive digits, and the `$` anchor restricts this match to the very end of the line where the size field resides.

## Task 5
Command: sed -E 's/^([^ ]+) [^ ]+ ([^ ]+) ([^ ]+).*/\1 \2 \3/' firewall.log | head -n 5
Result: 
2018-05-25 FORWARD TCP
2018-05-25 FORWARD TCP
2018-05-25 FORWARD TCP
2018-05-25 FORWARD TCP
2018-05-25 FORWARD TCP
Explanation: Parentheses `([^ ]+)` capture non-space sequences into groups, allowing us to reference the 1st (date), 3rd (action), and 4th (protocol) fields, discarding the rest of the line with `.*` and rewriting it using backreferences `\1 \2 \3`.

## Task 5
Command: sed -E 's/^([^ ]+) [^ ]+ ([^ ]+) ([^ ]+).*/\1 \2 \3/' firewall.log | head -n 5
Result: 
2018-05-25 FORWARD TCP
2018-05-25 FORWARD TCP
2018-05-25 FORWARD TCP
2018-05-25 FORWARD TCP
2018-05-25 FORWARD TCP
Explanation: Parentheses `([^ ]+)` capture non-space sequences into groups, allowing us to reference the 1st (date), 3rd (action), and 4th (protocol) fields, discarding the rest of the line with `.*` and rewriting it using backreferences `\1 \2 \3`.

## Task 6
Command: grep -Ec " ACCEPT TCP .* 80 [0-9]+$" firewall.log
Result: 6415
Explanation: This regex explicitly matches the adjacent "ACCEPT TCP" fields, uses `.*` to skip the intermediate IP addresses, and ensures that the destination port is exactly 80 by checking that it is followed only by the final size digits and the end-of-line anchor `$`.
