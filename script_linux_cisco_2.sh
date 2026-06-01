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

# --- module 14.2 ----
grep 'root' passwd
# Searches for lines containing "root" in the passwd file.

grep '^root' /etc/passwd
# Searches for lines that start with "root" in /etc/passwd.

cat alpha-first.txt
# Displays the contents of alpha-first.txt.

grep 'r$' alpha-first.txt
# Searches for lines ending with the letter "r".

cat red.txt
# Displays the contents of red.txt.

grep 'r..f' red.txt
# Searches for lines containing "r" followed by any two characters and then "f".

grep 'r..d' red.txt
# Searches for lines containing "r" followed by any two characters and then "d".

grep '[^0-9]' profile.txt
# Searches for lines containing at least one non-numeric character.

grep '[.]' profile.txt
# Searches for lines containing a literal period (.).

grep 're*d' red.txt
# Searches for lines matching "r" followed by zero or more "e" characters and then "d".

grep 'r[oe]*d' red.txt
# Searches for lines matching "r", followed by any combination of "o" or "e", and ending with "d".

grep 'z*' red.txt
# Searches for lines matching zero or more occurrences of "z".

grep 'e*' red.txt
# Searches for lines matching zero or more occurrences of "e".

grep 'ee*' red.txt
# Searches for lines containing one or more consecutive "e" characters.

grep 'red'
# Searches for lines containing the word "red" from standard input.

# --- module 15 --- 
su -
# Switches to the root user and loads the root environment.

shutdown now
# Shuts down the system immediately.

date
# Displays the current date and time.

shutdown 01:51
# Schedules a system shutdown at 01:51.

shutdown +1 "Goodbye World!"
# Schedules a shutdown in one minute with a broadcast message.

 # --- module 16 --- 
 ifconfig
# Displays or configures network interface settings.

ping -c 4 192.168.1.2
# Sends 4 ICMP echo requests to 192.168.1.2.

ping -c 4 192.168.1.3
# Sends 4 ICMP echo requests to 192.168.1.3.

exit
# Exits the current shell session.}

# --- module 17 --- 
ps
# Displays processes running in the current shell session.

ps -e
# Displays all running processes.

ps -ef
# Displays detailed information about all running processes.

 # --- module 18 ---
 sudo apt-get update
# Updates the package index information from repositories.

apt-cache search cow
# Searches for packages related to the keyword "cow".

sudo apt-get install cowsay
# Installs the cowsay package.

cowsay 'NDG Linux Unhatched'
# Displays the text in a speech bubble from a cow.

sudo apt-get update
# Updates the package index information from repositories.

sudo apt-get upgrade
# Upgrades all installed packages to their latest versions.

sudo apt-get purge cowsay
# Removes the cowsay package and its configuration files.

