#!/usr/bin/env sh

#load config and style paths form files
config=$(<"$HOME/.config/waybar/configpath")
style=$(<"$HOME/.config/waybar/stylepath")

# Terminate already running bar instances
killall -q waybar

# Wait until the processes have been shut down
while pgrep -x waybar >/dev/null; do sleep 1; done

# Launch main
waybar -c "$config" -s "$style" &
