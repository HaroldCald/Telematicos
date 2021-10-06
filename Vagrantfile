# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
config.vm.define :maestro do |maestro|
maestro.vm.box = "bento/centos-7.9"
maestro.vm.network :private_network, ip: "192.168.100.2"
maestro.vm.hostname = "maestro"
maestro.vm.provision "shell", path: "script2.sh"
end
config.vm.define :ftpseguro do |ftpseguro|
ftpseguro.vm.box = "bento/centos-7.9"
ftpseguro.vm.network :private_network, ip: "192.168.100.3"
ftpseguro.vm.hostname = "ftpseguro"
ftpseguro.vm.network :"forwarded_port", guest:80, host:80
ftpseguro.vm.provision "shell", path: "script.sh"
end
config.vm.define :firewall do |firewall|
firewall.vm.box = "bento/centos-7.9"
firewall.vm.network :private_network, ip: "192.168.100.4"
firewall.vm.network :private_network, ip: "192.168.100.5"
firewall.vm.hostname = "firewall"
end
end
