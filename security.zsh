apt update #Update the list of available packages on your system
apt install acl #Install the ACL (Access Control Lists) package, which allows for more advanced permission management.
chow -R $(whoami) . #What it does is change the owner of all files and directories.
setfacl -bnR . #The -b option deletes all ACLs (clears access control lists).