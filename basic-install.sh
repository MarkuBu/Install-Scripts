#!/bin/bash

clear
echo Basic Installation

sudo apt install -y curl neovim upower acpi 

echo Install Network Manager
sudo apt --no-install-recommends install -y network-manager 
