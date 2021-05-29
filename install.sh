#!/bin/sh

mkdir -p "${XDG_CONFIG_HOME-$HOME/.config}/khald"
cp config "${XDG_CONFIG_HOME-$HOME/.config}/khald/"
cp khald "$HOME/.local/bin/"
cp khald.service "${XDG_CONFIG_HOME-$HOME/.config}/systemd/user/"
systemctl --user enable --now khald
