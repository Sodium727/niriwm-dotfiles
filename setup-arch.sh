#!/usr/bin/env bash

# Update the system and install required packages using pacman
# sudo pacman -Sy --needed archlinux-keyring 
# sudo pacman-key --init
# sudo pacman-key --populate archlinux

# Packages (General)
sudo pacman -Sy --noconfirm --needed git base-devel less qbittorrent ripgrep neovim imv bat eza fcitx5 fcitx5-unikey fcitx5-config-qt mpv firefox flatpak ttf-jetbrains-mono-nerd 7zip alacritty noto-fonts-cjk man nnn brightnessctl playerctl

# Install yay
git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -sifr



# Setup Audio
# sudo pacman -Rns pulseaudio pulseaudio-alsa jack --noconfirm
# sudo pacman -S --needed --noconfirm pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber
# sudo systemctl mask pulseaudio
# sudo systemctl enable --now pipewire.socket pipewire-pulse.socket wireplumber.service

# sudo usermod -aG video $USER # Replace $USER with your actual username.

# Packages (Sway)
yay -S swaylock-effects --noconfirm 
sudo pacman -S --noconfirm --needed swaybg swaync cliphist swayidle gammastep xorg-xwayland bemoji sway fuzzel hyprshot
# If you want the vanilla sway
# sudo pacman -S sway

bemoji --download all

# Packages (Hyprland)
# sudo pacman -S --noconfirm --needed hyprlock hyprland hyprpaper hyprpolkitagent hyprsunset hyprpicker waybar
# yay -S --noconfirm --needed hyprshot wlogout waypaper

# Other AUR Packages
# yay -S --noconfirm --needed ventoy-bin

# Install Packer plugin manager for Neovim
# git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install Lazy plugin manager for Neovim
# git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim

# JaKooLit's hyprland 
# git clone https://github.com/JaKooLit/Arch-Hyprland.git ~/Arch-Hyprland
# cd ~/Arch-Hyprland
# chmod +x install.sh
# ./install.sh

# end-4's illogical impulse hyprland
# bash <(curl -s "https://end-4.github.io/dots-hyprland-wiki/setup.sh")

# OhMyZsh Setup
sudo pacman -S --noconfirm --needed zsh zsh-syntax-highlighting git-zsh-completion zsh-autosuggestions zsh-autocomplete zsh-history-substring-search zsh-completion
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

# cat "alias connect-wifi=\"sudo wpa_supplicant -B -i wlp2s0 -c /etc/wpa_supplicant/wpa_supplicant.conf && sudo dhcpcd\"" >> ~/.zshrc

# PowerLevel10k for Zsh
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Wine (and other driver stuffs)
# sudo pacman -Sy --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader wine-staging winetricks vulkan-headers lib32-mesa lib32-vulkan-icd-loader mesa vulkan-intel gnutls lib32-gnutls vulkan-intel lib32-vulkan-intel wine-mono

# winetricks d3dcompiler_47 d3d9 d3d11 dxvk vulkan

# Login git
# git config --global user.email "tandatpham2608@gmail.com"
# git config --global user.name "Sodium727"
