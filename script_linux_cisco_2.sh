# Part 2 of the commands used in the Cisco course

# module 11.1 
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
# Creates a 50 MB file filled with zeros.

dd if=/dev/sda of=/dev/sdb
# Copies the entire contents of one disk to another disk.