#!/bin/bash

packages=(
  flatpak
  neovim
  zsh
  exa
  bat
  google-chrome
  visual-studio-code-bin
  asdf-vm
)

echo "Updating the system..."

pacman -Syyuu --noconfirm

echo "Instaling basel devel packages"

pacman -S base-devel --noconfirm

echo "Instaling yay..."

cd /tmp

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si --noconfirm


