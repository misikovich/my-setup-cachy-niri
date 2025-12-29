#!/bin/bash

rm -rf files

mkdir -p files/.config/userscripts/
mkdir -p files/.config/alacritty/
mkdir -p files/.config/fish/
mkdir -p files/.config/niri/
mkdir -p files/.config/fastfetch/
mkdir -p files/.config/waybar/
mkdir -p files/Pictures/Wallpapers

# userscripts
# what does --delete flag do?

rsync -av $HOME/.config/userscripts/ files/.config/userscripts/

# alacritty
rsync -av $HOME/.config/alacritty/ files/.config/alacritty/

#fastfetch
rsync -av $HOME/.config/fastfetch/ files/.config/fastfetch/

#fish
rsync -av $HOME/.config/fish/config.fish files/.config/fish/config.fish
rsync -av $HOME/.config/fish/posh.json files/.config/fish/posh.json

#nano
rsync -av $HOME/.nanorc files/.nanorc

#niri
rsync -av $HOME/.config/niri/config.kdl files/.config/niri/config.kdl

#waybar
rsync -av $HOME/.config/waybar/ files/.config/waybar/

#wallpapers
rsync -av $HOME/Pictures/Wallpapers/ files/Pictures/Wallpapers/
