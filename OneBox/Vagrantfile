Vagrant.configure(2) do |config|
	config.vm.define "devops-box" do |devbox|
		devbox.vm.box = "hashicorp/bionic64"
    		#devbox.vm.network "private_network", ip: "192.168.199.9"
    		#devbox.vm.hostname = "devops-box"
      		devbox.vm.provision "shell", path: "scripts/install.sh"
    		devbox.vm.provider "virtualbox" do |v|
		  v.name = "devbox"
    		  v.memory = 1024
    		  v.cpus = 1
    		end
	end
end
