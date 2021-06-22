#!/bin/sh

mkdir -p "${XDG_CONFIG_HOME:-$HOME/.config}/khald"
cp config "${XDG_CONFIG_HOME:-$HOME/.config}/khald/"
cp khald "$HOME/.local/bin/"
cp khal-import.desktop "$HOME/.local/share/applications/"
cp khald.service "${XDG_CONFIG_HOME-$HOME/.config}/systemd/user/"
systemctl --user enable --now khald
