apt update
apt install acl
chow -R $(whoami) .
setfacl -bnR .