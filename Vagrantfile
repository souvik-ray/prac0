# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "trustyAMD64"
  config.vm.provision "shell", path: "setup.sh"

  config.vm.define "rgw" do |rgw|
    rgw.vm.network :forwarded_port, guest: 80, host: 8080
    rgw.vm.network :private_network, ip: "192.168.33.10"
    rgw.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.customize ["modifyvm", :id, "--memory", "8192"]
      vb.customize ["modifyvm", :id, "--cpus", "8"]
    end
  end

  config.vm.define "keystone" do |keystone|
    keystone.vm.network :forwarded_port, guest: 80, host: 8081
    keystone.vm.network :private_network, ip: "192.168.33.11"
    keystone.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.customize ["modifyvm", :id, "--memory", "4096"]
      vb.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end

end
