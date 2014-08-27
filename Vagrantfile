VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "puppetlabs/debian-7.5-64-nocm"
  config.vm.box_url = "https://vagrantcloud.com/puppetlabs/debian-7.5-64-nocm/version/1/provider/virtualbox.box"

  config.vm.hostname = "fedora.vagrant.dev"
  config.vm.network "private_network", type: :dhcp

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
    ansible.sudo = true
    ansible.verbose = "vvv"
  end
end
