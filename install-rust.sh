#!/bin/bash

echo Install necessary dependencies
sudo apt install -y curl

echo Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


