#!/usr/bin/env bash
set -e

# Installing or updating nvim
curl -fLO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz

# Exporting path variable into .bashrc IF it is not included yet
LINE='export PATH="$PATH:/opt/nvim-linux-x86_64/bin"'
grep -qxF "$LINE" ~/.bashrc || echo "$LINE" >> ~/.bashrc

echo "Neovim wurde erfolgreich installiert/aktualisiert!"
