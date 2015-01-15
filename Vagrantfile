# vagrant box add utopic64 https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box
# vagrant plugin install vagrant-proxyconf
# vagrant plugin install vagrant-vbox-snapshot

Vagrant.configure("2") do |config|
  if Vagrant.has_plugin?('vagrant-proxyconf')
    config.proxy.http     = 'http://webgate-1.office.nifty.co.jp:8080/'
    config.proxy.https    = 'http://webgate-1.office.nifty.co.jp:8080/'
    config.proxy.no_proxy = 'localhost,127.0.0.1,192.168.,172.'
  end

  config.vm.box = "utopic64"
  config.vm.hostname = "kumavm"
  config.vm.network :private_network, ip: "192.168.99.99"

  config.vm.provision "shell", path: "setup.sh"
end
