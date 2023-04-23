#!/bin/bash

script_dir=$(realpath "$(dirname "$0")")

# shellcheck source=/dev/null
source "$script_dir/utils/variables.sh"
# shellcheck source=/dev/null
source "$script_dir/utils/functions.sh"

# echo "Installing base devel packages..."
# sudo pacman -S --needed base-devel git "$noConfirm"

# echo "Installing yay"

# cd /tmp || exit
# git clone https://aur.archlinux.org/yay.git
# cd yay || exit
# makepkg -si $noConfirm

echo -e "\
 ██▓███   ██▀███   ▓█████ ▄████  █    ██   ██▓  ▄████▄  ▄▄▄     
▓██░  ██ ▓██ ▒ ██▒ ▓█   ▀ ██▒ ▀█ ██  ▓██▒▒▓██▒ ▒██▀ ▀█ ▒████▄   
▓██░ ██▓▒▓██ ░▄█ ▒ ▒███  ▒██░▄▄▄▓██  ▒██░▒▒██▒ ▒▓█    ▄▒██  ▀█▄ 
▒██▄█▓▒ ▒▒██▀▀█▄   ▒▓█  ▄░▓█  ██▓▓█  ░██░░░██░▒▒▓▓▄ ▄██░██▄▄▄▄██
▒██▒ ░  ░░██▓ ▒██▒▒░▒████▒▓███▀▒▒▒█████▓ ░░██░░▒ ▓███▀ ▒▓█   ▓██
▒▓▒░ ░  ░░ ▒▓ ░▒▓░░░░ ▒░ ░▒   ▒ ░▒▓▒ ▒ ▒  ░▓  ░░ ░▒ ▒  ░▒▒   ▓▒█
░▒ ░       ░▒ ░ ▒ ░ ░ ░   ░   ░ ░░▒░ ░ ░ ░ ▒ ░   ░  ▒  ░ ░   ▒▒ 
░░         ░░   ░     ░   ░   ░  ░░░ ░ ░ ░ ▒ ░ ░         ░   ▒  
            ░     ░   ░       ░    ░       ░   ░ ░           ░  \
"

run installPackages

run installAsdf

run installAsdfLanguages

run addingDotFiles
