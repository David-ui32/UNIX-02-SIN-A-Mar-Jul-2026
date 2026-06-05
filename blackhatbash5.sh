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
 