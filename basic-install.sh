#!/bin/bash

clear
echo Update repo and install natest packages
echo ---------------------------------------
echo

sudo apt update && sudo apt upgrade -y
sudo apt install software-properties-common

# neovim 0.5 is necessary. Unstable PPA will be replaced with stable PPA when 0.5 is released
echo Add neovim unstable PPA
echo ---------------------------------------
echo
sudo add-apt-repository -y ppa:neovim-ppa/unstable

echo Update System
echo ---------------------------------------
echo
sudo apt update -y 

echo Basic Installation
echo ---------------------------------------
echo
sudo apt install -y curl neovim upower acpi dialog xterm fzf zip unzip 

echo Install development stuff
echo ---------------------------------------
echo
sudo apt install -y build-essential g++ pkg-config libssl-dev linux-headers-generic libssl-dev

echo Install Network Manager
echo ---------------------------------------
echo
sudo apt --no-install-recommends install -y network-manager 
