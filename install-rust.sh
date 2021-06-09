#!/bin/bash

echo Install necessary dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl

sudo apt install gdb-multiarch openocd qemu-system-arm

echo Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


echo Install Rust Analyzer
curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.cargo/bin/rust-analyzer
chmod +x ~/.cargo/bin/rust-analyzer

~/.cargo/bin/cargo install cargo-update

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
