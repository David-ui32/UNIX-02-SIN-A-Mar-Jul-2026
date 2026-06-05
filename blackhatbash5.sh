#!/bin/bash
set -x
top&
touch test && touch test123
(ls; ps)
ls; ps; whoami
lzl || echo "el comnado lzl fallo"
 echo "Hola mundo!" > output.txt
 cat output.txt
 echo "Chao mundo!" >> output.txt
 cat output.txt
 $ ls -l / &> stdout_and_stderr.txt
$ ls -l / 1> stdout.txt 2> stderr.txt
lzl 2> error.txt
cat error.txt
cat < output.txt