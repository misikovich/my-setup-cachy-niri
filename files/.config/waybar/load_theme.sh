#!/usr/bin/env sh

# if no args list themes
if [ -z "$1" ]; then
    echo "Available themes:"
    ls "$HOME/.config/waybar/themes"
    exit 0
fi

themepath="$HOME/.config/waybar/themes/$1"

if [ ! -d "$themepath" ]; then
    echo "Theme $1 not found"
    exit 1
fi

configpath="$themepath/config.jsonc"
stylepath="$themepath/style.css"

# check if theme config and style exist
if [ ! -f "$configpath" ] || [ ! -f "$stylepath" ]; then
    echo "Theme $1 is missing config.jsonc or style.css"
    exit 1
fi

# save config and style relative to script path persistently
echo "$configpath" > "$HOME/.config/waybar/configpath"
echo "$stylepath" > "$HOME/.config/waybar/stylepath"

# run $HOME/.config/waybar/waybar.sh
$HOME/.config/waybar/waybar.sh

echo "Succesfuly loaded theme $1"
echo "Config path: $configpath"
echo "Style path: $stylepath"
