Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/bionic64"

    config.vm.provider "virtualbox" do |v|
        v.name = "CSCI-3411"
        v.memory = 4096
        
        #   ~~~~ THIS IS WHERE YOU CHANGE THE NUMBER OF CPUS ~~~~
        v.cpus = 2

        v.customize ["modifyvm", :id, "--ioapic", "on"]
        v.customize ["modifyvm", :id, "--paravirtprovider", "kvm"]
        v.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000]
    end

    # Disable the default syncing
    config.vm.synced_folder ".", "/vagrant", disabled: true
    # Instead sync to a more sensible location
    config.vm.synced_folder ".", "/home/vagrant/CSCI-3411"

    # disable GUI applications
    config.ssh.forward_x11 = false

    config.vm.provision "shell", path: "provision.sh"
end
