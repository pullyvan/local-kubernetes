# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "kubmaster" do |kubmaster|
    kubmaster.vm.box = "debian/buster64"
    kubmaster.vm.hostname = 'kubmaster'
    kubmaster.vm.provision "docker"
    kubmaster.vm.box_url = "debian/buster64"
    kubmaster.vm.synced_folder "./share", "/home/vagrant/share", create: true
    kubmaster.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
    end

    kubmaster.vm.network :private_network, ip: "192.168.56.101"
    kubmaster.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "kubmaster"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end

  config.vm.define "kubnode1" do |kubnode1|
    kubnode1.vm.box = "debian/buster64"
    kubnode1.vm.hostname = 'kubnode1'
    kubnode1.vm.provision "docker"
    kubnode1.vm.box_url = "debian/buster64"

    kubnode1.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
    end

    kubnode1.vm.network :private_network, ip: "192.168.56.102"

    kubnode1.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "kubnode1"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end 
  
  config.vm.define "kubnode2" do |kubnode2|
    kubnode2.vm.box = "debian/buster64"
    kubnode2.vm.hostname = 'kubnode2'
    kubnode2.vm.provision "docker"
    kubnode2.vm.box_url = "debian/buster64"

    kubnode2.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
    end

    kubnode2.vm.network :private_network, ip: "192.168.56.103"

    kubnode2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "kubnode2"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end
end

