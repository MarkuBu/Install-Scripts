#!/bin/bash

echo Update system --------------------------------------------------------
sudo apt update && sudo apt upgrade -y

# This will install nodm for now. Will be improved later

echo Install Xorg ---------------------------------------------------------
sudo apt install xorg nodm
