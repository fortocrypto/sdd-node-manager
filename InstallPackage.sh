#!/bin/bash

function install() {
sudo apt --fix-broken install
sudo apt-get update && sudo apt-get upgrade -y
sudo dpkg --configure -a
sudo apt-get install -f -y
sudo apt install git zlib1g zlib1g-dev python3 -y
wget -O sdd-node-manager.tar.gz https://raw.githubusercontent.com/fortocrypto/sdd-node-manager/master/sdd-node-manager.tar.gz
tar -xvzf sdd-node-manager.tar.gz
sudo dpkg -i package.deb
rm package.deb
rm sdd-node-manager.tar.gz
}

install
