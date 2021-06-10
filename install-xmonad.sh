#!/bin/bash

clear

echo Update system 
echo ---------------------------------
echo
sudo apt update && sudo apt upgrade -y


echo Install Xorg and Xmonad 
echo ---------------------------------
echo
sudo apt install -y xorg xmonad xmobar
sudo apt install -y --no-install-recommended lightdm
sudo apt install -y lightdm-settings slick-greeter light-locker lightdm-gtk-greeter 
