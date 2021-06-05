#!/bin/bash

echo Install necessary dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl

echo Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source $HOME/.cargo/env

echo Install Rust Analyzer
curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.cargo/bin/rust-analyzer
chmod +x ~/.cargo/bin/rust-analyzer

cargo install cargo-update
