Vagrant.configure("2") do |config|
    # install ubuntu
    config.vm.box = "chef/ubuntu-14.04"

    # configure network
    config.vm.hostname = "phpdocker"
    config.vm.network "private_network", ip: "192.168.222.11", network: "255.255.0.0"

    # VirtualBox specific config - eg. composer memory problem
    config.vm.provider :virtualbox do |vb, override|
        override.vm.synced_folder ".", "/vagrant", :nfs => true
        vb.customize ["modifyvm", :id, "--rtcuseutc", "on"]
        vb.customize ["modifyvm", :id, "--memory", 1024]
        vb.customize ["modifyvm", :id, "--cpus", 1]
    end

    config.vm.provision :docker

end
