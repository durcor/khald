#!/bin/sh

khald_config_dir=${XDG_CONFIG_HOME:-$HOME/.config}/khald

mkdir -p "$khald_config_dir"
if [ -f "$khald_config_dir/config" ]; then
	cp config "$khald_config_dir/config.new"
	echo "NOTE: Installing new config to $khald_config_dir/config.new"
else
	cp config "$khald_config_dir/"
fi
cp khald "$HOME/.local/bin/"
cp khal-import.desktop "$HOME/.local/share/applications/"
cp khald.service "${XDG_CONFIG_HOME:-$HOME/.config}/systemd/user/"
systemctl --user daemon-reload
if systemctl --user is-active khald >/dev/null; then
	systemctl --user restart khald
else
	systemctl --user enable --now khald
fi
