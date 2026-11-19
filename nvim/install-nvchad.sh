#!/usr/bin/env bash
set -e

# Script to install NvChad configuration

echo "=== Removing existing nvim and NvChad config ==="
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
rm -rf ~/.var/app/io.neovim.nvim/config/nvim ~/.var/app/io.neovim.nvim/data/nvim ~/.var/app/io.neovim.nvim/.local/state/nvim

echo "=== Installing NvChad ==="
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
