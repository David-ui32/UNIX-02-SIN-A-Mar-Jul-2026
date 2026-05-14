apt update #Update the list of available packages on your system
apt install acl #Install the ACL (Access Control Lists) package, which allows for more advanced permission management.
chow -R $(whoami) . #What it does is change the owner of all files and directories.
setfacl -bnR . #The -b option deletes all ACLs (clears access control lists).
umask 077 #Configure the permission mask for new files/directories
touch secreto.txt #Create an empty file called secret.txt
mkdir privado #Create a directory called "private" With umask 077
ls -l # Lists the files and directories in the current directory in detail.
umask 022 #returns to original values
whoami #Displays the name of the current user who is running the session.
echo "Hola" > mi_archivo #Create a file and write hello
ls -l mi_archivo #Shows the details of the file my_file
useradd -m -s /usr/bin/zsh luna #create user name luna 
chown luna mi_archivo #Change the owner of the file my_file to the user luna.
groups # wied groups
groupadd grupo_test # create groups name grupo_test
cat /etc/group  #look up these names
touch comun #Create an empty file called common in the act directory
ls -l comun #Displays the details of the common file.
usermod -a -G grupo_test luna #What it does is add the user luna to the secondary group grupo_test.
chgrp grupo_test comun #Change the common file owner group to the group group_test.
ls - comun #Displays the details of the common file
chown luna:grupo_test mi_archivo #Change the owner of the file mi_archivo to the user luna
ls -l mi_archivo #Displays file details after the change
mkdir -p proyecto/sub #Created directory 
touch proyecto/readme proyecto/sub/datos #Create two empty project/readme files inside the project directory
chown -R luna:grupo_test proyecto #Recursively changes the owner and group of everything inside project (including readme, sub, and data).
ls -lR proyecto #Recursively lists all files and directories within a projecte
ide # view user's numeric identity
at /etc/passwd | head -10 #wiew all users system idi
id -u #
id -g
id -G
# HELP to see uid and git of the current user
 cat /etc/group | grep root #User grp to filter
 mkdir /root/proyecto_unix/ #goes to the folder
  groupadd desarolladores #create group simple 
  groupadd -g 2000 operaciones  #group the system 
   groupadd --system servicios_web  # groupadd --system servicios_web 
   grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs #Wied the system IDGs range
addgroup --gid 2100 marketing #A group called marketing is created with the numerical identifier 2100
addgroup --system chache_web  # wiew the system cache 
grep "diseño\|marketing\|cache_web" /etc/group #It will display all lines in the file