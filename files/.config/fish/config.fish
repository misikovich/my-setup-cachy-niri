source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    fastfetch -l arch_small --config fastfetch
end

function setwp --description "sets wallpaper by given path"
	set wppath $(realpath $argv[1])
	/home/misikovich/.config/userscripts/setwp.sh $wppath
end

alias conf-niri="nano ~/.config/niri/config.kdl"
alias conf-fish="nano ~/.config/fish/config.fish"
alias conf-ala="nano ~/.config/alacritty/alacritty.toml"
alias conf-ff="nano ~/.config/fastfetch/fastfetch.jsonc"
alias conf-nano="nano ~/.nanorc"
