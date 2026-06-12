#!/bin/bash

# Take the first argument passed to the script as the IP address
IP_ADDRESS="${1}"

# Use a case statement to check which network the IP belongs to
case ${IP_ADDRESS} in
  # If the IP starts with 192.168, it's in the 192.168.x.x private network
  192.168.*)
    echo "Network is 192.168.x.x"
    ;;
  
  # If the IP starts with 10.0, it's in the 10.0.x.x private network
  10.0.*)
    echo "Network is 10.0.x.x"
    ;;
  
  # If it doesn't match any of the above patterns
  *)
    echo "Could not identify the network"
    ;;
esac

bash case_ip_address_check.sh 192.168.12.43
#When I enter this, I get the two x.x at the end that are in the command above.
bash case_ip_address_check.sh 192.168.hola.hola
#When I enter this, it plays infinitely until I stop it with this command. : network is 192.168.x.x
#Network is 192.168.x.x
#Network is 192.168.x.x
