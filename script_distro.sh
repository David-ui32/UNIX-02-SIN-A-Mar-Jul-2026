sudo apt update
#Download the latest list of available packages from the repositories
sudo apt upgrade
#Install the latest versions of the packages you already have installed.
sudo apt install
#Install a specific package
git clone --depth 1 https://github.com/torvalds/linux.git
#copy a repository
cd linux
#What you do is change your current working directory to the folder called linux
make menuconfig
#It is a command used in Linux to configure the kernel before compiling it
make -j 2 #controls the number of jobs (processes) that run in parallel during compilation
sudo mkdir #You will see the new folder created in the indicated path.
sudo cp #It allows you to copy files to locations where a normal user does not have permissions.
git clone --depth 1 https://git.busybox.net/busybox #Download the BusyBox source code from its official repository, but with a superficial cloning.
cd busybox #What you do is enter the directory called busybox that was created when you cloned the repository with git clone
 make menuconfig
#to be able to access the settings
make -j 2 # This allows us to compile
sudo mkdir /boot-files/initramfs #This command creates a folder called initramfs inside /boot-files, with administrator privileges
sudo make CONFIG_PREFIX=/boot-files/initramfs install #It involves compiling and installing BusyBox (or another project you use with make) inside the /boot-files/initramfs folder