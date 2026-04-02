# 1 movernor al directorio raiz
cd /
# 2 listo enlaces simbolicos
ls -F
sudo apt update # actualiza con exito el repositorio

apt upgrade # actualiza 

apt install parted #instalar el  paquete en partes
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n" #Me da la informacion del sector y del disco y todos los datos 
sudo parted -l # me da particiones 
lsblk # 