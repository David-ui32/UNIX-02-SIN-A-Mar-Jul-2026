ls
# Shows the files and folders in your current location.

aptitude moo
# Shows a funny hidden message from aptitude.

ls -l
# Shows files and folders with more details.

ls -r
# Shows the list in reverse order.

aptitude -v moo
# Shows the funny message with a little more detail.

aptitude -vv moo
# Shows an even more detailed version of the funny message.

aptitude -vvv moo
# Shows a very detailed version of the funny message.

pwd
# Shows the folder you are currently in.

cd Documents
# Moves into the Documents folder.

cd /
# Moves to the main root folder of the system.

cd /home/sysadmin
# Moves to the sysadmin user’s home folder.

cd ..
# Moves up one folder level.

cd ~
# Moves to your personal home folder.

ls -l /var/log/
# Shows detailed information about files in /var/log.

ls -lt /var/log
# Shows /var/log with details, sorted by newest first.

ls -l -S /var/log
# Shows /var/log with details, sorted by biggest files first.

ls -lSr /var/log
# Shows /var/log with details, sorted by smallest files first.

ls -r /var/log
# Shows /var/log in reverse order.

su -
# Switches to the root user.

exit
# Leaves the current shell or user session.

sl
# Shows a train animation if the program is installed.

sudo sl
# Runs the train animation as administrator.

cd ~/Documents
# Moves into the Documents folder inside your home folder.

ls -l hello.sh
# Shows detailed information about hello.sh.

./hello.sh
# Runs the hello.sh script.

chmod u+x hello.sh
# Gives the file owner permission to run hello.sh.

sudo chown root hello.sh
# Changes the owner of hello.sh to root.

sudo ./hello.sh
# Runs hello.sh as administrator.

cat animals.txt
# Shows all the text inside animals.txt.

head alpha.txt
# Shows the first lines of alpha.txt.

tail alpha.txt
# Shows the last lines of alpha.txt.

head -n 5 alpha.txt
# Shows the first 5 lines of alpha.txt.

tail -n 5 alpha.txt
# Shows the last 5 lines of alpha.txt.

cp /etc/passwd .
# Copies /etc/passwd to the current folder.

dd if=/dev/zero of=/tmp/swapex bs=1M count=50
# Creates a 50 MB file full of zeros in /tmp/swapex.