# Install-Scripts
Install scripts to install and configur a basic setup for a mini.iso installation of Ubuntu

This requires a basic installation of Ubuntu with the mini.iso. I usually only add the large fonts and openssl-server.

After reboot you need to install git

    sudo apt install git

Then you need to clone this repository

    git clone https://github.com/MarkuBu/Install-Scripts.git

Run the basic install script first

    cd Install-Scripts
    sh basic-install.sh

This will install basic packages including neovim 0.5. It will also install basic config files.

To install a Rust development environment including additional packages like rust-analyzer and config files for neovim run:

    sh install-rust.sh

