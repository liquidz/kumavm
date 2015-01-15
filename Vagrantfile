# vagrant box add utopic64 https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box
# vagrant plugin install vagrant-proxyconf
# vagrant plugin install vagrant-vbox-snapshot

Vagrant.configure("2") do |config|
  config.vm.box = "utopic64"
  config.vm.hostname = "kumavm"
  config.vm.network :private_network, ip: "192.168.99.99"

  config.vm.provision "shell", path: "setup.sh"
end
