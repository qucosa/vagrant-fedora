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

## VirtualBox Guest Additions not installed or outdated

If you get the following message when you do ```vagrant up``` means that the Virtual Guest Additions are not installed or outdated:

```
==> default: Checking for guest additions in VM...
    default: No guest additions were detected on the base box for this VM! Guest
    default: additions are required for forwarded ports, shared folders, host only
    default: networking, and more. If SSH fails on this machine, please install
    default: the guest additions and repackage the box to continue.
    default: 
    default: This is not an error message; everything may continue to work properly,
```
Fortunately there is the Vagrant plugin ```vagrant-vbguest``` that helps you with the installation of the VirtualBox Guest Additions. To install go to the directory that contains the ```Vagrantfile``` and type the following command:

Vagrant < 1.1.5: ```$ vagrant gem install vagrant-vbguest```
Vagrant >= 1.1.5: ```$ vagrant plugin install vagrant-vbguest```

Further information: http://kvz.io/blog/2013/01/16/vagrant-tip-keep-virtualbox-guest-additions-in-sync/

## VirtualBox DHCP server won't start
If `vagrant up` failes with some error regarding host only adapter, check here for
a workaround: https://github.com/berngp/docker-zabbix/issues/8

## SWORD Server 500 Response
The currently uses SWORD Server build has a critical bug in the response generation
code: https://github.com/slub/sword-fedora/issues/2

The deposit itself might be actually successful. I cannot fix this by next week, but
there should be a fix in September.

