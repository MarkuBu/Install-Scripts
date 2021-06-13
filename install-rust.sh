#!/bin/bash
clear
echo Install necessary dependencies
echo ------------------------------
echo
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl

sudo apt install -y gdb-multiarch openocd qemu-system-arm

clear
echo Install Rust
echo ------------------------------
echo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

clear
echo Install Rust Analyzer
echo ------------------------------
echo
curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.cargo/bin/rust-analyzer
chmod +x ~/.cargo/bin/rust-analyzer

export PATH="$HOME/.cargo/bin:$PATH"

cargo install sccache
rm $HOME/.cargo/config
echo "[build]
rustc-wrapper = \"$HOME/.cargo/bin/sccache\"" >> ~/.cargo/config

cargo install cargo-update

clear
echo Install embedded Toolchain
echo ------------------------------
echo
rustup target add thumbv6m-none-eabi
rustup target add thumbv7m-none-eabi
rustup target add thumbv7em-none-eabi
rustup target add thumbv7em-none-eabihf
rustup target add thumbv8m.base-none-eabi
rustup target add thumbv8m.main-none-eabi
rustup target add thumbv8m.main-none-eabihf

cargo install cargo-binutils
rustup component add llvm-tools-preview
cargo install cargo-generate

# Currently necessary for avr-hal
rustup toolchain install nightly-2021-01-07
rustup component add rust-src --toolchain nightly-2021-01-07 
rustup toolchain install nightly
rustup component add rust-src --toolchain nightly

# Components for avr-device
cargo install atdf2svd
cargo install svd2rust
cargo install form
rustup component add --toolchain nightly rustfmt
pip3 install --user svdtools
