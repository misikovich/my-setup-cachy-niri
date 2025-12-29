source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    fastfetch -l arch_small --config fastfetch
end

function setwp --description "sets wallpaper by given path"
	set wppath $(realpath $argv[1])
	$HOME/.config/userscripts/setwp.sh $wppath
end

function bartheme --description "reloads bar new with theme, list themes on no path"
	set theme $argv[1]
	echo "Setting new theme $theme"
	$HOME/.config/waybar/load_theme.sh $theme 
end

function gitpush --description "pushes git repo to remote"
	set commit_message $argv[1]
	if test -z $commit_message
		set commit_message "$(date)"
	end
	echo "Pushing to remote with message: $commit_message"
	git add .
	git commit -m "$commit_message"
	git push
end

function scr --description "opens scrcpy to remote adb device"
	set ipaddr $argv[1]
	adb connect $ipaddr
	scrcpy -d --max-fps 60 -m 1280 -b 9M --video-buffer=80
end

alias conf-niri="nano ~/.config/niri/config.kdl"
alias conf-fish="nano ~/.config/fish/config.fish"
alias conf-kitty="nano ~/.config/kitty/kitty.conf"
alias conf-ff="nano ~/.config/fastfetch/fastfetch.jsonc"
alias conf-nano="nano ~/.nanorc"
alias conf-limine="sudo nano /boot/limine.conf"
alias conf-wb="nano $(cat ~/.config/waybar/configpath)"
alias rlbar="~/.config/waybar/waybar.sh"

oh-my-posh init fish --config $HOME/.config/fish/posh.json | source
