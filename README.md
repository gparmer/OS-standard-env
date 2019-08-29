# OS-standard-env
A collection of tools and configurations needed to compile and run assignments for CSCI 3411

Using vagrant and virtualbox, spin up a VM that is configured with the correct tools for CSCI 3411.  

## Short install instructions

A more detailed instructions is at the end of this document.  

 - `git clone https://github.com/base0x10/OS-standard-env`
 - `git submodule init`
 - `git submodule update`
 - Install [vagrant](https://www.vagrantup.com/downloads.html) acording to your specific OS
    - For mac and windows, there are instructions online.  If anyone sends me consisce instructions, or a link I will copy them here
    - `sudo dnf isntall vagrant`
    - `sudo apt-get install vagrant`
 - install [virtualbox](https://www.virtualbox.org/wiki/Downloads) - this also depends on your OS
    - For Mac, ensure that you allow the installer to load according to these instructions.
    - `sudo dnf install VirtualBox`
    - `sudo apt-get install virtualbox`
 - `vagrant up`
 - `vagrant ssh`
 - You have setup a VM and are now running a terminal within it.  Here is where you do your homeowork
 - `exit` to exit the VM
 - `vagrant halt` to end the VM
 
## Developing within this environment

This environment syncs a directory on your hard drive to a directory on you VM.  For this repo, it syncs the root of this repo to a folder on the VM called CSCI-3411.  This means that you can use your favorite text editor or IDE on your host machine to edit your code, and as soon as you save it, it is visible in the VM.  

It is possible to do everything in the VM, but I usually find it easier to edit files and interact with git on the host machine, with my prefered tools and editors, and then compile and run my code from within the VM.  Usually I keep one termial open and SSHd into the VM, while I use a edit code in another teminal or editor.  
 
## Full instructions
Cloning this repo and folowing the steps below will setup a standard working environment with everything you need to compile and run code for homeworks and projects for the operating system course.  

First install Vagrant, which is a configurer for VMs.  Manay operating systems provide package managers with Vagrant available.  DNF for CENTOS, FEDORA, and RHEL can install vagrant with `sudo dnf install vagrant`.  Ubuntu's APT package manager can install vagrant with `sudo apt-get install vagrant`.  For Mac users, I am told that the following link correctly sets up vagrant.  http://sourabhbajaj.com/mac-setup/Vagrant/README.html

I do not know how to setup vagrant on Microsoft Windows. However, I am sure it can be done.  

After setting up vagrant, you need to install VirtualBox, which runs VMs.  This can be done from most package managers easily or from their website.  

After installing vagrant and VirtualBox, you are ready to launch your VM.  To do this, run `vagrant up` from within the directory of this repo.  The first time you run this, it downloads everything you need and creates your virutal machine.  In the future, you will run this command to start your VM.  Once your VM is running, you can attach your terminal to it by running `vagrant ssh` from within the same directory as this repo.  This brings you to an ssh terminal in your VM.

To exit the VM, run `exit`.  To stop the VM, run `vagrant halt`.  
