#!/bin/bash

clear

# neovim 0.5 is necessary. Unstable PPA will be replaced with stable PPA when 0.5 is released
echo Add neovim unstable PPA
sudo add-apt-repository ppa:neovim-ppa/unstable

echo Update System
sudo apt update && sudo apt upgrade -y

echo Basic Installation
sudo apt install -y curl neovim upower acpi

echo Install development stuff
sudo apt install -y build-essential g++ pkg-config libssl-dev

echo Install Network Manager
sudo apt --no-install-recommends install -y network-manager 
