#!/usr/bin/env bash

# Update the system and install required packages using pacman
# sudo pacman -Sy --needed archlinux-keyring 
# sudo pacman-key --init
# sudo pacman-key --populate archlinux

# Packages (General)
sudo pacman -Sy --noconfirm --needed git base-devel less neovim bat ttf-jetbrains-mono-nerd 7zip unzip man nushell 

# Install yay
git clone https://aur.archlinux.org/yay-bin.git ~/yay-bin && cd ~/yay-bin && makepkg -sifr

# AUR Packages
# yay -S --noconfirm --needed ventoy-bin

# Install Packer plugin manager for Neovim
# git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install Lazy plugin manager for Neovim
# git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim

# Login git
# git config --global user.email "tandatpham2608@gmail.com"
# git config --global user.name "Sodium727"
