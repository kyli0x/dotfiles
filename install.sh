#!/bin/bash
# Kyricer (dotfile installation) script
# Written by: kyli0x
# License: GNU GPLv3

cp .aliases ~/.aliases
cp bash/.* ~/

mkdir ~/.config/alacritty && cp alacritty/.config/alacritty/alacritty.yml && ln -s alacritty/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

mkdir ~/.config/neofetch
mkdir ~/.config/nvim
mkdir ~/.config/picom
mkdir ~/.config/polybar
mkdir ~/.config/ranger
mkdir ~/.config/suckless
mkdir ~/.config/zsh


cp zsh/.zshrc ~/.zshrc
cp zsh/.zprofile ~/.zprofile
cp vim/.vimrc ~/.vimrc
cp -r neofetch/.config/neofetch/ ~/.config
cp -r rofi/.config/rofi/config.rasi ~/.config
cp -r bpytop/.config/* ~/.config
