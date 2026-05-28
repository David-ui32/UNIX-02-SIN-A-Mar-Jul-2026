id #show where I am root
id -gn #only main group name
touch ~/test_grupo_heredado.txt
ls -la ~/test_grupo_heredado.txt
#the group it is the user's primary group
(id -gn) #group main 
touch ~/antes_de_nwegrp.txt  
ls -la ~/antes_de_nwegrp.txt 
#created a file before nwegrp
id -gn #wiew group actually
newgrp desarrolladores # change the group to developers
touch ~/dentro_de_newgrp.txt
ls ~/dentro_de_newgrp.txt 
# The group is desarrolador
#create a directory 
mkdir -p ~/proyecto_dev/src
ls -la ~/
exit #exit the group
sudo groupadd grupo_restringido 
 gpasswd grupo_restringido
 #The system asks for a password for the group
 newgrp grupo_restringido #the system It will ask for a password, but since I am root I don't have to enter it
 