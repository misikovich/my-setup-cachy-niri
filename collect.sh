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
# show status of rsync
rsync -av --progress $HOME/.config/userscripts/ files/.config/userscripts/

# alacritty
# show status of rsync
rsync -av --progress $HOME/.config/alacritty/ files/.config/alacritty/

#fastfetch
rsync -av --progress $HOME/.config/fastfetch/ files/.config/fastfetch/

#fish
rsync -av --progress $HOME/.config/fish/config.fish files/.config/fish/config.fish
rsync -av --progress $HOME/.config/fish/posh.json files/.config/fish/posh.json

#nano
rsync -av --progress $HOME/.nanorc files/.nanorc

#niri
rsync -av --progress $HOME/.config/niri/config.kdl files/.config/niri/config.kdl

#waybar
rsync -av --progress $HOME/.config/waybar/ files/.config/waybar/

#wallpapers
rsync -av --progress $HOME/Pictures/Wallpapers/ files/Pictures/Wallpapers/
