ls -l -a -h #lists all files, including hidden ones, with detailed information and easy-to-read sizes
ls -lah #Displays the contents of a directory with complete details
mkdir --rm rf #because it deletes without asking for confirmation and can delete important data.
mkdir -- -rf #because it deletes without asking for confirmation and can delete important data.
 --depth <depth>
           Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless
           --no-single-branch is given to fetch the histories near the tips of all branches. If you want to clone submodules
           shallowly, also pass --shallow-submodules. #A value is missing, that's why it shows as shallow.
man ls #Open the manual for the ls command, which is used to list files and directories.    
man git #Open the general Git manual, explaining what it is and how to use it   
man git-clone #Open the specific git clone manual, showing all the options for cloning repositories
chmod +x script.sh #Grants execution permission to everyone (user, group, and others)
chmod u+x script.sh #Grants execution permission only to the file owner.
chmod o-r secreto.txt #Remove read permission for “others”
chmod u+r,go-rw privado #Grants read permission to the owner user and removes permissions

echo "hola" sudo tee /etc/archivo_protegido > /dev/null #It allows writing to a protected file using sudo, but without displaying anything on the screen.
ls /etc/ #What it does is list the contents of the directory

cat /etc/archivo_protegido #Show the message that is in that folder