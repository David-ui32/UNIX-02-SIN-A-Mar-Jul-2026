#!/bin/bash
for ip_address in "$@"; do
 echo "Taking some action on IP address ${ip_address}"
done
chmod u+x for_loop_arguments.sh
./for_loop_arguments.sh 10.0.0.1 10.0.0.2 192.168.1.1 192.
168.1.2
