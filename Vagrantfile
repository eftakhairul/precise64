# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  #Vagrant box
  config.vm.box     = "vagrant-precise64"
  config.vm.box_url = "https://dl.dropboxusercontent.com/u/6886596/precise64.box"


  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM                                        
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # need a private network for NFS shares to work
  config.vm.network "private_network", ip: "192.168.50.4"

  
  #Sync with host PC's project root with guest file Example: Project root of Host PC ~/codes/php/hellp_world
  #config.vm.synced_folder "~/codes/php/hellp_world", "/var/www"
  
  #default
  config.vm.synced_folder "./", "/var/www", create: true, group: "www-data", owner: "www-data"

  # Update the server
  config.vm.provision :shell, :inline => "apt-get update --fix-missing"

  #Setup some resource for virtualbox Example: set up memory to 2 GB
  config.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", "2048"]

        #You can more CPU
        #vb.cpus = 2
  end
  
  #Provisioning
  config.vm.provision "shell" do |s|
    s.path "provision/setup.sh"
  end
end
