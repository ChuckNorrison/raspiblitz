#!/bin/bash

echo "************* Vagrant Provisioning ********************"

echo 'Syncing local code with RaspiBlitzVM'

# make sure the lastest sync script is in place
cp /vagrant/home.admin/XXsyncScripts.sh /home/admin/XXsyncScripts.sh

# execute 'patch' command to sync laptop with VM
/home/admin/XXsyncScripts.sh -run

echo
echo "************* NEXT ********************"
echo "vagrant ssh --> ssh into your RaspiBlitzVM"
echo "vagrant provision --> trigger code sync from outside VM"
echo "patch --> trigger code sync from inside the VM"
echo 