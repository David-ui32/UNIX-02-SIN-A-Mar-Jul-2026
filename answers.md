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
