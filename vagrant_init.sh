#!/bin/bash

# install
wget https://releases.hashicorp.com/vagrant/2.2.19/vagrant_2.2.19_x86_64.deb
sudo dpkg -i vagrant_2.2.19_x86_64.deb
rm -rf vagrant_2.2.19_x86_64.deb

echo export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1" >> ~/.bashrc
echo export PATH="$PATH:/mnt/c/Program Files/Oracle/VirtualBox" >> ~/.bashrc
source ~/.bashrc
vagrant plugin install vagrant-vbguest --plugin-version 0.21