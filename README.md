# Vagrant File for Fedora Commons Setup

Uses [Vagrant](https://www.vagrantup.com/) to spin up a developer friendly
VirtualBox VM containing a base Fedora Commons repository instance.

It uses [Ansible](http://www.ansible.com/home) to provision the required
software in order to provide the Fedora Service.

## Requirements

- Git
- VirtualBox
- Vagrant
- Ansible
- Quick Internet connection (because it's going to download a lot of stuff)

# Usage

1. Clone the Git repository
2. Run `vagrant up` to install, run and provision the Virtual Machine
3. Run the `getip.sh` script to obtain the IP of the VM just started
4. Connect your browser to http://`IP_OF_VM`:8080/fedora and see the Repository
   Description Page.

# Known Issues

## VirtualBox DHCP server won't start
If `vagrant up` failes with some error regarding host only adapter, check here for
a workaround: https://github.com/berngp/docker-zabbix/issues/8

## SWORD Server 500 Response
The currently uses SWORD Server build has a critical bug in the response generation
code: https://github.com/slub/sword-fedora/issues/2

The deposit itself might be actually successful. I cannot fix this by next week, but
there should be a fix in September.

