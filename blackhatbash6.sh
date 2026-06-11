 #!/bin/bash
 ls -l / 
 grep "bin"
echo "The arguments are: $@"
echo "The total number of arguments is: $#"
# Change "$@" to "$*" to observe behavior.
for args in "$@"; do
 echo "${args}"
done