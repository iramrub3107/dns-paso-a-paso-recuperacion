Vagrant.configure("2") do |config|

  config.vm.box = "debian/bullseye64"
  config.vm.network "private_network", ip: "192.168.67.10"
  config.vm.provision "shell", path: "config/bootstrap.sh"

end
