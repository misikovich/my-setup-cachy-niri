#!/bin/bash

mkdir -p ~/.config/userscripts/
mkdir -p ~/.config/alacritty/
mkdir -p ~/.config/fish/
mkdir -p ~/.config/niri/
mkdir -p ~/.config/fastfetch/
mkdir -p ~/.config/waybar/
mkdir -p ~/Pictures/Wallpapers

rsync -av files/.config/userscripts/ ~/.config/userscripts/
rsync -av files/.config/alacritty/ ~/.config/alacritty/
rsync -av files/.config/fish/ ~/.config/fish/
rsync -av files/.config/niri/ ~/.config/niri/
rsync -av files/.config/fastfetch/ ~/.config/fastfetch/
rsync -av files/.config/waybar/ ~/.config/waybar/
rsync -av files/Pictures/Wallpapers/ ~/Pictures/Wallpapers/