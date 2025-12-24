#!/bin/bash

mkdir -p files/.config/userscripts/
mkdir -p files/.config/alacritty/
mkdir -p files/.config/fish/
mkdir -p files/.config/niri/
mkdir -p files/.config/fastfetch/
mkdir -p files/Pictures/Wallpapers

cp /home/misikovich/.config/alacritty/alacritty.toml files/.config/alacritty.toml
cp /home/misikovich/.config/fastfetch/fastfetch.jsonc files/.config/fastfetch/fastfetch.jsonc
cp /home/misikovich/.config/fish/config.fish files/.config/fish/config.fish
cp /home/misikovich/.nanorc files/.nanorc
cp /home/misikovich/.config/niri/config.kdl files/.config/niri/config.kdl
cp /home/misikovich/Pictures/Wallpapers/* files/Pictures/Wallpapers/*