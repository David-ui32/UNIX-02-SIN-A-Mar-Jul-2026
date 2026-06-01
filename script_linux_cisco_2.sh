# Part 2 of the commands used in the Cisco course

# --- module 11.1 ---
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
# Creates a 50 MB file filled with zeros.

dd if=/dev/sda of=/dev/sdb
# Copies the entire contents of one disk to another disk.

# --- module 12 ---
mv people.csv Work
# Moves the file people.csv to the Work directory.

mv numbers.txt letters.txt alpha.txt School
# Moves multiple files to the School directory.

mv animals.txt zoo.txt
# Renames animals.txt to zoo.txt.

# --- module 13 ---
rm linux.txt
# Deletes the file linux.txt.

rm Work
# Attempts to remove the Work directory if it is empty.

rm -r Work
# Recursively removes the Work directory and its contents.

# --- module 14  ---
cp /etc/passwd .
# Copies the passwd file to the current directory.

grep sysadmin passwd
# Searches for lines containing "sysadmin" in the passwd file.
