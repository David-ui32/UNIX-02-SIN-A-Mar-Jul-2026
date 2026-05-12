apt update #Update the list of available packages on your system
apt install acl #Install the ACL (Access Control Lists) package, which allows for more advanced permission management.
chow -R $(whoami) . #What it does is change the owner of all files and directories.
setfacl -bnR . #The -b option deletes all ACLs (clears access control lists).
umask 077 #Configure the permission mask for new files/directories
touch secreto.txt #Create an empty file called secret.txt
mkdir privado #Create a directory called "private" With umask 077
ls -l # Lists the files and directories in the current directory in detail.
umask 022 #returns to original values