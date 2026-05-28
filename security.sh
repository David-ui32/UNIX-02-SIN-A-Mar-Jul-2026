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
