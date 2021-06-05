#!/bin/bash

clear
echo Update System
sudo apt update && sudo apt upgrade -y

echo Basic Installation

sudo apt install -y curl neovim upower acpi 

echo Install Network Manager
sudo apt --no-install-recommends install -y network-manager 
