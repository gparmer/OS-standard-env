# OS-standard-env
A collection of tools and configurations needed to compile and run assignments for CSCI 3411

Using vagrant and virtualbox, spin up a VM that is configured with the correct tools for CSCI 3411.  

## Short instructions:
 - `git clone https://github.com/base0x10/OS-standard-env`
 - `git submodule update`
 - Install vagrant acording to your specific OS
    - `sudo dnf isntall vagrant`
    - `sudo apt-get install vagrant`
 - install virtualbox - this also depends on your OS
    - `sudo dnf install VirtualBox`
    - `sudo apt-get install virtualbox`
 - `vagrant up`
 - `vagrant ssh`
 - You have setup a VM and are now running a terminal within it.  Here is where you do your homeowork
 - `exit` to exit the VM
 - `vagrant halt` to end the VM
 
 ## Full instructions
Cloning this repo and folowing the steps below will setup a standard working enviornment with everything you need to compile and run code for homeworks and projects for the operating system course.  

First install Vagrant, which is a configurer for VMs.  Manay operating systmes provide package managers with Vagrant available.  DNF for CENTOS, FEDORA, and RHEL can install vagrant with `sudo dnf install vagrant`.  Ubuntu's APT package manager can install vagrant with `sudo apt-get install vagrant`.  For mac users, I am told that the following link correctly sets up vagrant.  http://sourabhbajaj.com/mac-setup/Vagrant/README.html

I do not know how to setup vagrant on microsoft windows, however I am sure it can be done.  

After setting up vagrant, you need to install VirtualBox, which runs VMs.  This can be done from most package managers easily or from their website.  

After installing vagrant and VirtualBox, you are ready to launch your VM.  To do this, run `vagrant up` from within the directory of this repo.  The first time you run this, it downloads everything you need and creates your virutal machine.  In the future, you will run this command to start your VM.  Once your VM is running, you can attach your terminal to it by running `vagrant ssh` from within the same directory as this repo.  This brings you to an ssh terminal in your VM.

To exit the VM, run `exit`.  To stop the VM, run `vagrant halt`.  
