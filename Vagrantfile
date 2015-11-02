# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "vagrant-s3proxy"
  config.vm.network "private_network", ip: "192.168.200.3"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision "shell", path: "restart.sh",
    run: "always"
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
end
