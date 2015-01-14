VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "puppetlabs/debian-7.6-64-nocm"
  config.vm.box_url = "https://vagrantcloud.com/puppetlabs/boxes/debian-7.6-64-nocm/versions/1.0.0/providers/virtualbox.box"

  config.vm.hostname = "fedora.vagrant.dev"
  config.vm.network "private_network", type: :dhcp

  config.vm.provision "shell" do |shell|
        shell.inline = "echo 'deb http://http.debian.net/debian wheezy-backports main' > /etc/apt/sources.list.d/wheezy-backports.list;
                        apt-get update --fix-missing;
                        apt-get upgrade -y;
                        apt-get install -y ansible;
                        /vagrant/provisioning/ansible_provisioning.sh"
        shell.keep_color = true
  end
end
