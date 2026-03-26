gpg --list-secret-keys --kwyid-format=long #listar las llaves privadsa
gpg --armor --export-secret-keys A3F0B7B744E84CA4 # exportamos la llave publica 
gpg --output doc_cifrado.txt --encrypt --recipient josueandresra2006@gmail.com doc_no_cifrado.txt #Que cifra el archivo o el mesanej que puse ahi 
gpg --decrypt doc_cifradoJ.txt #Logra descifrar el mensaje y que se logre ver 