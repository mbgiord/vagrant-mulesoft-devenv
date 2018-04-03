Vagrant.configure("2") do |config|
  
  config.vm.box = "debian/jessie64"
  config.vm.box_version = "8.10.0"
  config.vm.box_download_insecure=true
  config.vm.post_up_message = "If this is your first time running 'vagrant up' please run 'vagrant reload'."

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.memory = 4096
    v.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
  end

  config.vm.provision :shell, path: "bootstrap.sh"

end