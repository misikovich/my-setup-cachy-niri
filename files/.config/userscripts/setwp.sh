#!/bin/bash

wppathfile="$(pwd)/wppath"

failpath=0
if [ -n "$1" ]; then
    if [ ! -f "$1" ]; then
        echo "Path invalid: '$1'"
        failpath=1
        exit 1
    fi
    echo "$1" > "$wppathfile"
    echo "Saved Wallpaper: $1"
fi


if [ -f "$wppathfile" ]; then
    WP=$(< "$wppathfile")
    swww img "$WP" --transition-type fade --transition-fps 60 --transition-duration 2
	echo "Loaded saved wallpaper: '$WP'"
else
    echo "Error: No wallpaper saved in 'wppath' and no argument provided."
    echo "	Run the command again with the path as an argument"
    exit 1
fi
