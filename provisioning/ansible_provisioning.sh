#!/bin/bash

# Setup inventory
mkdir -p /etc/ansible
echo "localhost" > /etc/ansible/hosts

# Run ansible playbook
echo "Provisioning: Run Ansible playbook"
export PYTHONUNBUFFERED=1
export ANSIBLE_FORCE_COLOR=true
ansible-playbook /vagrant/provisioning/playbook.yml -vvvv --connection=local
